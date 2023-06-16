struct v2f //VertexToFragment
{
    float4 position : SV_POSITION; //the type, the name, then what it is equivalent to Unity

    float2 uv : TEXCOORD0;
    //float2 uv1 : TEXCOORD1;
    //float2 uv2 : TEXCOORD2;
    //float2 uv3 : TEXCOORD3;

    float3 normal : TEXCOORD4;
    float3 tangent : TEXCOORD5;
    float3 binormal : TEXCOORD6;

    float3 viewdir : TEXCOORD7;
    float3 worldPos : TEXCOORD8;

    LIGHTING_COORDS(1,2)

    float4 lightmapUV : TEXCOORD12;

    /*
    from POIYOMI
    float4 pos : SV_POSITION;
    float2 uv[4] : TEXCOORD0;
    float3 objNormal : TEXCOORD4;
    float3 normal : TEXCOORD5;
    float3 tangent : TEXCOORD6;
    float3 binormal : TEXCOORD7;
    float4 worldPos : TEXCOORD8;
    float4 localPos : TEXCOORD9;
    float3 objectPos : TEXCOORD10;
    float4 vertexColor : TEXCOORD11;
    float4 lightmapUV : TEXCOORD12;
    float4 grabPos: TEXCOORD13;
    float4 worldDirection: TEXCOORD14;
    */

    //float4 directionalLightingColor : COLOR0;
};