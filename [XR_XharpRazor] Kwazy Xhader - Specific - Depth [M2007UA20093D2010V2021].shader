// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "M2007U - A2009 - 3D2010 - V2021/KX_Spcf_Depth"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _depth ("depth",float) = 0
        _depthSlide ("depth slide",range(0,1)) = 1

        _BoundCheck ("Use boundary ? 0 = no, else yes",Range(0,1)) = 1
        _OutColor ("Out Color",Color) = (0,0,0,1)

    }
    SubShader
    {
       Tags
        {
            "Queue" = "Transparent"
            "RenderType" = "Transparent"
            "LightMode" = "ForwardBase"
        }

        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;//for vertex
				float2 uv : TEXCOORD0; //for uv
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				float3 normal : NORMAL;
                float3 tangent : TANGENT;
                //float3 binormal : BINORMAL;

            };

            struct v2f
            {
               float4 position : SV_POSITION; //the type, the name, then what it is equivalent to Unity

				float2 uv : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				float3 normal : TEXCOORD4;
				float3 viewdir : TEXCOORD5;
                float3 worldPos : TEXCOORD6;
                float3 tangent : TEXCOORD7;
                float3 binormal : TEXCOORD8;
				float4 lightmapUV : TEXCOORD12;
            };

            float FOwO_Vector3Mag(float3 vek)
            {
                return pow(pow(vek.x,2) + pow(vek.y,2) + pow(vek.z,2),0.5);
            }

            sampler2D _MainTex;
            float _depth;
            float _depthSlide;
            fixed4 _OutColor;
            float _BoundCheck;
            

            v2f vert (appdata INCOMING)
            {
                v2f OUTGOING;

                OUTGOING.position = UnityObjectToClipPos(INCOMING.vertex);//float4
				OUTGOING.uv = INCOMING.uv;
				OUTGOING.normal = normalize(UnityObjectToWorldNormal(INCOMING.normal));
                OUTGOING.tangent = normalize(mul(unity_ObjectToWorld,INCOMING.tangent));
                OUTGOING.binormal = normalize(mul(unity_ObjectToWorld,cross(INCOMING.normal,INCOMING.tangent)));
				
				OUTGOING.viewdir = float3(normalize(WorldSpaceViewDir(INCOMING.vertex)));

                OUTGOING.worldPos = mul(unity_ObjectToWorld,INCOMING.vertex);


				//#if defined(LIGHTMAP_ON)
				OUTGOING.lightmapUV.xy = INCOMING.uv.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				//#endif
				//#if defined(DYNAMICLIGHTMAP_ON)
				//OUTGOING.lightmapUV.xy = INCOMING.uv.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				//#endif

				return OUTGOING;
            }

            fixed4 frag (v2f i) : SV_Target
            {

                //to know how it works, use the diagram : KX_SP_Depth.sai

                //===== method 1 to calculate deltaXY
                /*
                float theta = acos(dot(i.normal,i.viewdir)); 
                float delta = tan(theta) * _depth;

                float k = 1/(dot(i.normal,i.viewdir));
                float3 viewdirFake = i.viewdir * k;
                float3 u = i.normal - viewdirFake;

                float f = delta/FOwO_Vector3Mag(u);
                float3 uFake = u * f;

                float deltaX = dot(i.tangent,uFake);
                float deltaY = dot(i.binormal,uFake);

                return tex2D(_MainTex,i.uv.xy - float2(-1 * deltaX,deltaY));
                */


                //===== method 2 to calculate deltaXY

                float theta = acos(dot(i.normal,i.viewdir));
                float depthTRUE = _depth * _depthSlide;
                float delta = tan(theta) * depthTRUE;

                float3 v1 = i.viewdir * -1;

                float k = pow(pow(depthTRUE,2) + pow(delta,2),0.5)/FOwO_Vector3Mag(i.viewdir);
                float3 v2 = v1 * k;

                float3 dv = i.normal * depthTRUE;

                float3 u = v2 + dv;

                float deltaX = dot(u,i.tangent);
                float deltaY = dot(u,i.binormal);

                float2 TotalUV = i.uv.xy - float2(-1 * deltaX,deltaY);

                fixed4 FinalColor;

                if((TotalUV.x > 1 || TotalUV.x < 0 || TotalUV.y > 1 || TotalUV.y < 0) && (_BoundCheck != 0))
                {
                    FinalColor = _OutColor;
                }
                else
                {
                    FinalColor = tex2D(_MainTex,TotalUV);
                }

                return FinalColor;



                
            }
            ENDCG
        }
    }
}
