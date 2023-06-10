Shader "M2007U - A2009 - 3D2010 - V2021/KX_Spcf_Voronoi"
{
    Properties
    {
        
        _Point00("Point 0",vector) = (0.00,0.00,1,4) //(posX,posY,IsUsingThisPoint(if yes, type 1, if no, type 1024),radius)
        _Point01("Point 1",vector) = (0.00,0.25,1,4)
        _Point02("Point 2",vector) = (0.00,0.50,1,4)
        _Point03("Point 3",vector) = (0.00,0.75,1024,4)
        _Point04("Point 4",vector) = (0.25,0.00,1024,4)
        _Point05("Point 5",vector) = (0.25,0.25,1024,4)
        _Point06("Point 6",vector) = (0.25,0.50,1024,4)
        _Point07("Point 7",vector) = (0.25,0.75,1024,4)
        _Point08("Point 8",vector) = (0.50,0.00,1024,4)
        _Point09("Point 9",vector) = (0.50,0.25,1024,4)
        _Point0A("Point A",vector) = (0.50,0.50,1024,4)
        _Point0B("Point B",vector) = (0.50,0.75,1024,4)
        _Point0C("Point C",vector) = (0.75,0.00,1024,4)
        _Point0D("Point D",vector) = (0.75,0.25,1024,4)
        _Point0E("Point E",vector) = (0.75,0.50,1024,4)
        _Point0F("Point F",vector) = (0.75,0.75,1024,4)

        //

        _Color00("Color 0",color) = (1.0000,1.0000,1.0000,1)
        _Color01("Color 1",color) = (1.0000,0.9648,0.3515,1)
        _Color02("Color 2",color) = (1.0000,0.7500,0.0000,1)
        _Color03("Color 3",color) = (1.0000,0.5468,0.0000,1)
        _Color04("Color 4",color) = (1.0000,0.3320,0.0000,1)
        _Color05("Color 5",color) = (1.0000,0.0000,0.0000,1)
        _Color06("Color 6",color) = (1.0000,0.0000,0.5234,1)
        _Color07("Color 7",color) = (1.0000,0.0000,0.9101,1)
        _Color08("Color 8",color) = (0.6484,0.0000,1.0000,1)
        _Color09("Color 9",color) = (0.4609,0.0000,1.0000,1)
        _Color0A("Color A",color) = (0.0000,0.1953,0.7890,1)
        _Color0B("Color B",color) = (0.0000,0.5156,1.0000,1)
        _Color0C("Color C",color) = (0.0000,1.0000,1.0000,1)
        _Color0D("Color D",color) = (0.7500,0.7500,0.7500,1)
        _Color0E("Color E",color) = (0.5000,0.5000,0.5000,1)
        _Color0F("Color F",color) = (0.2500,0.2500,0.2500,1)

        _ColorWrong("Color Wrong",color) = (0,0,0,1)

        _DistanceFull("DistanceFull", float) = 1
        _ColorRamp("Color Ramp",float) = 1

        _PointDistortImge ("Point Distort Text", 2D) = "black" {}
        _PointDistortTPos ("TrPos : OffX, OffY, ScrX, ScrY",vector) = (0,0,0,0)
        _PointDistortTScl ("TrScl : SclX, SclY, NULL, NULL",vector) = (1,1,0,0)
        _PointDistortPowX ("Power X : RGBA", vector) = (0,0,0,0)
        _PointDistortPowY ("Power Y : RGBA", vector) = (0,0,0,0)
        

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
            //#pragma multi_compile_fog

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;//for vertex
				float2 uv : TEXCOORD0; //for uv
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				float3 normal : NORMAL;
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
				float4 lightmapUV : TEXCOORD12;
            };


            
            vector _Point00,_Point01,_Point02,_Point03;
            vector _Point04,_Point05,_Point06,_Point07;
            vector _Point08,_Point09,_Point0A,_Point0B;
            vector _Point0C,_Point0D,_Point0E,_Point0F;

            fixed4 _Color00,_Color01,_Color02,_Color03;
            fixed4 _Color04,_Color05,_Color06,_Color07;
            fixed4 _Color08,_Color09,_Color0A,_Color0B;
            fixed4 _Color0C,_Color0D,_Color0E,_Color0F;
            fixed4 _ColorWrong;

            float _DistanceFull;
            float _ColorRamp;

            sampler2D _PointDistortImge;
            vector _PointDistortTPos,_PointDistortTScl;
            vector _PointDistortPowX,_PointDistortPowY;


            float FOwO_Distance(float2 PointA,float2 PointB)
            {
                return pow(pow(PointA.x - PointB.x,2) + pow(PointA.y - PointB.y,2),0.5);
            }

            float4 FOwO_4x4min(float4x4 Mtx)
            {
                float Row0min = min(min(Mtx[0].x,Mtx[0].y) , min(Mtx[0].z,Mtx[0].w));
                float Row1min = min(min(Mtx[1].x,Mtx[1].y) , min(Mtx[1].z,Mtx[1].w));
                float Row2min = min(min(Mtx[2].x,Mtx[2].y) , min(Mtx[2].z,Mtx[2].w));
                float Row3min = min(min(Mtx[3].x,Mtx[3].y) , min(Mtx[3].z,Mtx[3].w));

                float MtxMin = min(min(Row0min,Row1min),min(Row2min,Row3min));

                int MtxId = 20;

                if      (MtxMin == Mtx[0].x){MtxId = 0;}
                else if (MtxMin == Mtx[0].y){MtxId = 1;}
                else if (MtxMin == Mtx[0].z){MtxId = 2;}
                else if (MtxMin == Mtx[0].w){MtxId = 3;}
                else if (MtxMin == Mtx[1].x){MtxId = 4;}
                else if (MtxMin == Mtx[1].y){MtxId = 5;}
                else if (MtxMin == Mtx[1].z){MtxId = 6;}
                else if (MtxMin == Mtx[1].w){MtxId = 7;}
                else if (MtxMin == Mtx[2].x){MtxId = 8;}
                else if (MtxMin == Mtx[2].y){MtxId = 9;}
                else if (MtxMin == Mtx[2].z){MtxId = 10;}
                else if (MtxMin == Mtx[2].w){MtxId = 11;}
                else if (MtxMin == Mtx[3].x){MtxId = 12;}
                else if (MtxMin == Mtx[3].y){MtxId = 13;}
                else if (MtxMin == Mtx[3].z){MtxId = 14;}
                else if (MtxMin == Mtx[3].w){MtxId = 15;}
                else {MtxId = 20;}

                return float4(MtxMin,MtxId,0,0);

            }

            fixed4 FOwO_IDtoColor
            (
                fixed4 C00, fixed4 C01, fixed4 C02, fixed4 C03,
                fixed4 C04, fixed4 C05, fixed4 C06, fixed4 C07,
                fixed4 C08, fixed4 C09, fixed4 C0A, fixed4 C0B,
                fixed4 C0C, fixed4 C0D, fixed4 C0E, fixed4 C0F,
                fixed4 C0W,
                float4 P00, float4 P01, float4 P02, float4 P03,
                float4 P04, float4 P05, float4 P06, float4 P07,
                float4 P08, float4 P09, float4 P0A, float4 P0B,
                float4 P0C, float4 P0D, float4 P0E, float4 P0F,
                int IncomingID,
                float distanceFull,
                float distance
            )
            {
                fixed4 FinalColor = float4(0,0,0,0);
                float GetRadius = 0;
                float2 GetPosition = float2(0,0);

                if     (IncomingID == 0){FinalColor = C00 ;GetRadius = P00.w;GetPosition = P00.xy;}
                else if(IncomingID == 1){FinalColor = C01 ;GetRadius = P01.w;GetPosition = P01.xy;}
                else if(IncomingID == 2){FinalColor = C02 ;GetRadius = P02.w;GetPosition = P02.xy;}
                else if(IncomingID == 3){FinalColor = C03 ;GetRadius = P03.w;GetPosition = P03.xy;}
                else if(IncomingID == 4){FinalColor = C04 ;GetRadius = P04.w;GetPosition = P04.xy;}
                else if(IncomingID == 5){FinalColor = C05 ;GetRadius = P05.w;GetPosition = P05.xy;}
                else if(IncomingID == 6){FinalColor = C06 ;GetRadius = P06.w;GetPosition = P06.xy;}
                else if(IncomingID == 7){FinalColor = C07 ;GetRadius = P07.w;GetPosition = P07.xy;}
                else if(IncomingID == 8){FinalColor = C08 ;GetRadius = P08.w;GetPosition = P08.xy;}
                else if(IncomingID == 9){FinalColor = C09 ;GetRadius = P09.w;GetPosition = P09.xy;}
                else if(IncomingID == 10){FinalColor = C0A;GetRadius = P0A.w;GetPosition = P0A.xy;}
                else if(IncomingID == 11){FinalColor = C0B;GetRadius = P0B.w;GetPosition = P0B.xy;}
                else if(IncomingID == 12){FinalColor = C0C;GetRadius = P0C.w;GetPosition = P0C.xy;}
                else if(IncomingID == 13){FinalColor = C0D;GetRadius = P0D.w;GetPosition = P0D.xy;}
                else if(IncomingID == 14){FinalColor = C0E;GetRadius = P0E.w;GetPosition = P0E.xy;}
                else if(IncomingID == 15){FinalColor = C0F;GetRadius = P0F.w;GetPosition = P0F.xy;}
                else {FinalColor = C0W;}

                //FinalColor = FinalColor * pow((distance),GetRadius);
                //FinalColor.rgb = pow(FinalColor.rgb,_ColorRamp);

                if(distance < GetRadius)
                {
                    FinalColor = FinalColor;
                }
                else
                {
                    FinalColor.rgb = FinalColor.rgb * min((distanceFull/distance),1);
                }
                

                return FinalColor; 
            }

            float FOwO_4SineToRandom(float4 wave0, float4 wave1, float4 wave2, float4 wave3)
            {
                //x = phase, y = freq, z = amp, w = 0



                float r0 = wave0.z * sin((wave0.x + _Time[1]) * wave0.y);
                float r1 = wave1.z * sin((wave1.x + _Time[1]) * wave1.y);
                float r2 = wave2.z * sin((wave2.x + _Time[1]) * wave2.y);
                float r3 = wave3.z * sin((wave3.x + _Time[1]) * wave3.y);

                return r0 + r1 + r2 + r3;
            }

            float2 FOwO_Distort_ReadFromtexture_Fixed(sampler2D Image, float2 InUV, vector TPos, vector TScl, vector PowerX, vector PowerY)
            {
                fixed4 ReadColor = tex2D(Image,(InUV + TPos.xy + TPos.zw * _Time[1]) * TScl.xy);
                float FinalPowerX = ReadColor.r * PowerX.x + ReadColor.g * PowerX.y + ReadColor.z * PowerX.z + ReadColor.a * PowerX.w;
                float FinalPowerY = ReadColor.r * PowerY.x + ReadColor.g * PowerY.y + ReadColor.z * PowerY.z + ReadColor.a * PowerY.w;


                return float2(FinalPowerX,FinalPowerY);
            }

            

            

            v2f vert (appdata INCOMING)
            {
                v2f OUTGOING;

                OUTGOING.position = UnityObjectToClipPos(INCOMING.vertex);//float4
				OUTGOING.uv = INCOMING.uv;
				OUTGOING.normal = UnityObjectToWorldNormal(INCOMING.normal);
				//OUTGOING.viewdir = float4(normalize(WorldSpaceViewDir(INCOMING.vertex)),0);
				OUTGOING.viewdir = float3(normalize(WorldSpaceViewDir(INCOMING.vertex)));

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
                // sample the texture
                // fixed4 col = tex2D(_MainTex, i.uv);

                float4x4 DistanceMatrix = float4x4
                (
                    FOwO_Distance(i.uv.xy,_Point00.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point00.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point00.z ,
                    FOwO_Distance(i.uv.xy,_Point01.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point01.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point01.z ,
                    FOwO_Distance(i.uv.xy,_Point02.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point02.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point02.z ,
                    FOwO_Distance(i.uv.xy,_Point03.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point03.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point03.z ,
                    FOwO_Distance(i.uv.xy,_Point04.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point04.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point04.z ,
                    FOwO_Distance(i.uv.xy,_Point05.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point05.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point05.z ,
                    FOwO_Distance(i.uv.xy,_Point06.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point06.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point06.z ,
                    FOwO_Distance(i.uv.xy,_Point07.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point07.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point07.z ,
                    FOwO_Distance(i.uv.xy,_Point08.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point08.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point08.z ,
                    FOwO_Distance(i.uv.xy,_Point09.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point09.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point09.z ,
                    FOwO_Distance(i.uv.xy,_Point0A.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point0A.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point0A.z ,
                    FOwO_Distance(i.uv.xy,_Point0B.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point0B.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point0B.z ,
                    FOwO_Distance(i.uv.xy,_Point0C.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point0C.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point0C.z ,
                    FOwO_Distance(i.uv.xy,_Point0D.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point0D.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point0D.z ,
                    FOwO_Distance(i.uv.xy,_Point0E.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point0E.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point0E.z ,
                    FOwO_Distance(i.uv.xy,_Point0F.xy + FOwO_Distort_ReadFromtexture_Fixed(_PointDistortImge,_Point0F.xy,_PointDistortTPos,_PointDistortTScl,_PointDistortPowX,_PointDistortPowY)) * _Point0F.z 
                );

                

                float4 FinalDecision = FOwO_4x4min(DistanceMatrix);//x = min distance, y = point id, z = 0, w = 0

                fixed4 FinalColor = FOwO_IDtoColor
                (
                    _Color00, _Color01, _Color02, _Color03,
                    _Color04, _Color05, _Color06, _Color07,
                    _Color08, _Color09, _Color0A, _Color0B,
                    _Color0C, _Color0D, _Color0E, _Color0F,
                    _ColorWrong,
                    _Point00,_Point01,_Point02,_Point03,
                    _Point04,_Point05,_Point06,_Point07,
                    _Point08,_Point09,_Point0A,_Point0B,
                    _Point0C,_Point0D,_Point0E,_Point0F,
                    FinalDecision.y,
                    _DistanceFull,FinalDecision.x
                );

                

                return FinalColor;

                
                //return float4(i.uv.x,i.uv.y,0,1);
            }
            ENDCG
        }
    }
}
