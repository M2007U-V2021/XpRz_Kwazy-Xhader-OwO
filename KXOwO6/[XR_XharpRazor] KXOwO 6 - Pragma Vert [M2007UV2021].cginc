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
    AxisDistortXPass0 = FOwO_Color_ReadFromTexture_Vec8
    (
        v.uv, _AxisDistortXImge, 0, 
        _AxisDistortXTMod0, _AxisDistortXTMod1,
        _AxisDistortXTVec0, _AxisDistortXTVec1, _AxisDistortXTVec2, _AxisDistortXTVec3,
        _AxisDistortXTVec4, _AxisDistortXTVec5, _AxisDistortXTVec6, _AxisDistortXTVec7
    );
}

if(FOwO_Vec4Mag(_AxisDistortYPowr) == 0)
{
    AxisDistortYPass0 = float4(0,0,0,0);
}
else
{
    AxisDistortYPass0 = FOwO_Color_ReadFromTexture_Vec8
    (
        v.uv, _AxisDistortYImge, 0, 
        _AxisDistortYTMod0, _AxisDistortYTMod1,
        _AxisDistortYTVec0, _AxisDistortYTVec1, _AxisDistortYTVec2, _AxisDistortYTVec3,
        _AxisDistortYTVec4, _AxisDistortYTVec5, _AxisDistortYTVec6, _AxisDistortYTVec7
    );
}

if(FOwO_Vec4Mag(_AxisDistortZPowr) == 0)
{
    AxisDistortZPass0 = float4(0,0,0,0);
}
else
{

    AxisDistortZPass0 = FOwO_Color_ReadFromTexture_Vec8
    (
        v.uv, _AxisDistortZImge, 0, 
        _AxisDistortZTMod0, _AxisDistortZTMod1,
        _AxisDistortZTVec0, _AxisDistortZTVec1, _AxisDistortZTVec2, _AxisDistortZTVec3,
        _AxisDistortZTVec4, _AxisDistortZTVec5, _AxisDistortZTVec6, _AxisDistortZTVec7
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
    NormDistortPass0 = FOwO_Color_ReadFromTexture_Vec8
    (
        v.uv, _NormalExtrudeMainImge, 0, 
        _NormalExtrudeMainTMod0, _NormalExtrudeMainTMod1,
        _NormalExtrudeMainTVec0, _NormalExtrudeMainTVec1, _NormalExtrudeMainTVec2, _NormalExtrudeMainTVec3,
        _NormalExtrudeMainTVec4, _NormalExtrudeMainTVec5, _NormalExtrudeMainTVec6, _NormalExtrudeMainTVec7
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

//o.viewdir = normalize(_WorldSpaceCameraPos - o.worldPos);


o.lightmapUV.xy = v.uv.xy * unity_LightmapST.xy + unity_LightmapST.zw;
o.lightmapUV.zw = float2(0,0);


TRANSFER_VERTEX_TO_FRAGMENT(o);

//has something to deal with lightning


