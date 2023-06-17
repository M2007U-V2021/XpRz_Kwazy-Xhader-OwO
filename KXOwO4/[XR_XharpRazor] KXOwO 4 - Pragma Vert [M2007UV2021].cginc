//v2f frag (v)

#include "UnityCG.cginc"

//Texture Offsets
fixed4 AxisDistortXPass0;
fixed4 AxisDistortYPass0;
fixed4 AxisDistortZPass0;

if(FOwO_Vec4Mag(_AxisDistortXPowr) == 0)
{
    AxisDistortXPass0 = float4(0,0,0,0);
}
else
{
    AxisDistortXPass0 = FOwO_Color_ReadFromTexture
    (
        _AxisDistortXImge, 1,v.uv.x, v.uv.y, 
        _AxisDistortXTShft, 
        _AxisDistortXTRott, 
        _AxisDistortXTScPx,
        _AxisDistortXTSkew,
        _AxisDistortXTRadl,
        _AxisDistortXTCrpj,
        _AxisDistortXTMod
    );
}

if(FOwO_Vec4Mag(_AxisDistortYPowr) == 0)
{
    AxisDistortYPass0 = float4(0,0,0,0);
}
else
{
    AxisDistortYPass0 = FOwO_Color_ReadFromTexture
    (
        _AxisDistortYImge, 1,v.uv.x, v.uv.y, 
        _AxisDistortYTShft,
        _AxisDistortYTRott, 
        _AxisDistortYTScPx,
        _AxisDistortYTSkew,
        _AxisDistortYTRadl,
        _AxisDistortYTCrpj,
        _AxisDistortYTMod
    );
}

if(FOwO_Vec4Mag(_AxisDistortZPowr) == 0)
{
    AxisDistortZPass0 = float4(0,0,0,0);
}
else
{
    AxisDistortZPass0 = FOwO_Color_ReadFromTexture
    (
        _AxisDistortZImge, 1, v.uv.x, v.uv.y, 
        _AxisDistortZTShft, 
        _AxisDistortZTRott, 
        _AxisDistortZTScPx,
        _AxisDistortZTSkew,
        _AxisDistortZTRadl,
        _AxisDistortZTCrpj,
        _AxisDistortZTMod
    );
}

float4 AxisDistortTotal = float4
(
    dot(AxisDistortXPass0,_AxisDistortXPowr) + _AxisDistortXAdjt,
    dot(AxisDistortYPass0,_AxisDistortYPowr) + _AxisDistortYAdjt,
    dot(AxisDistortZPass0,_AxisDistortZPowr) + _AxisDistortZAdjt,
    0
);






//Normal Extrude
fixed4 NormDistortPass0;
float NormDistortPowerR;
float NormDistortPowerG;
float NormDistortPowerB;
float NormDistortPowerA;
float NormDistortPass1;
float4 NormDistortPass2;

if(_NormDistortAmpl == 0)
{
    NormDistortPass0 = float4(0,0,0,0);
    NormDistortPowerR = 0;
    NormDistortPowerG = 0;
    NormDistortPowerB = 0;
    NormDistortPowerA = 0;
    NormDistortPass1 = 0;
    NormDistortPass2 = float4(0,0,0,0);
}
else
{
    NormDistortPass0 = FOwO_Color_ReadFromTexture
    (
        _NormalExtrudeMainImge, 1, v.uv.x, v.uv.y, 
        _NormalExtrudeMainTShft, 
        _NormalExtrudeMainTRott, 
        _NormalExtrudeMainTScPx,
        _NormalExtrudeMainTSkew,
        _NormalExtrudeMainTRadl,
        _NormalExtrudeMainTCrpj,
        _NormalExtrudeMainTMod
    );

    NormDistortPowerR = FOwO_Lerp_Simple4Intervals(_NormalExtrudeRS.x, _NormalExtrudeRS.y, _NormalExtrudeRS.z, _NormalExtrudeRS.w, _NormalExtrudeRD.x, _NormalExtrudeRD.y, _NormalExtrudeRD.z, _NormalExtrudeRD.w, _NormDistortFreq);
    NormDistortPowerG = FOwO_Lerp_Simple4Intervals(_NormalExtrudeGS.x, _NormalExtrudeGS.y, _NormalExtrudeGS.z, _NormalExtrudeGS.w, _NormalExtrudeGD.x, _NormalExtrudeGD.y, _NormalExtrudeGD.z, _NormalExtrudeGD.w, _NormDistortFreq);
    NormDistortPowerB = FOwO_Lerp_Simple4Intervals(_NormalExtrudeBS.x, _NormalExtrudeBS.y, _NormalExtrudeBS.z, _NormalExtrudeBS.w, _NormalExtrudeBD.x, _NormalExtrudeBD.y, _NormalExtrudeBD.z, _NormalExtrudeBD.w, _NormDistortFreq);
    NormDistortPowerA = FOwO_Lerp_Simple4Intervals(_NormalExtrudeAS.x, _NormalExtrudeAS.y, _NormalExtrudeAS.z, _NormalExtrudeAS.w, _NormalExtrudeAD.x, _NormalExtrudeAD.y, _NormalExtrudeAD.z, _NormalExtrudeAD.w, _NormDistortFreq);

    NormDistortPass1 = dot(NormDistortPass0,float4(NormDistortPowerR,NormDistortPowerG,NormDistortPowerB,NormDistortPowerA)) * _NormDistortAmpl;

    NormDistortPass2 = float4(v.normal.xyz,0) * NormDistortPass1;
}







o.position = UnityObjectToClipPos(v.vertex + AxisDistortTotal + NormDistortPass2);//float4
o.uv = v.uv;

//o.uv1 = v.uv1;
//o.uv2 = v.uv2;
//o.uv3 = v.uv3;

o.normal = normalize(UnityObjectToWorldNormal(v.normal));
o.tangent = normalize(UnityObjectToWorldDir(v.tangent.xyz));
o.binormal = cross(o.normal,o.tangent) * v.tangent.w * unity_WorldTransformParams.w;

o.viewdir = float3(normalize(WorldSpaceViewDir(v.vertex)));
o.worldPos = mul(unity_ObjectToWorld,v.vertex);


o.lightmapUV.xy = v.uv.xy * unity_LightmapST.xy + unity_LightmapST.zw;
o.lightmapUV.zw = float2(0,0);


TRANSFER_VERTEX_TO_FRAGMENT(o);

//has something to deal with lightning


