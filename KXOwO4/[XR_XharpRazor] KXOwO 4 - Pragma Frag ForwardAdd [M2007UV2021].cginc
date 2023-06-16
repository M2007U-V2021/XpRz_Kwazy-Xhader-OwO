//_WorldSpaceLightPos0.xyz
//return float4(INCOMING.worldPos.xyz,1);
//return float4(INCOMING.viewdir.xyz,1);
//lambert = max(0,dot(L,N))
//fixed atten = LIGHT_ATTENUATION(INCOMING);

//float distance =  FOwO_Vec3Mag(_WorldSpaceLightPos0.xyz - INCOMING.worldPos.xyz);
//float atten = 1 / pow(distance,2);

if(_KontrolRuntimeLight == 0)
{
    return float4(0,0,0,0);
}
else
{
    //Diffuse
    float3 VectorL = normalize(_WorldSpaceLightPos0.xyz - INCOMING.worldPos.xyz);
    float3 VectorN = normalize(INCOMING.normal.xyz);
    float3 VectorV = normalize(INCOMING.viewdir.xyz);



    float3 DiffuseLight = max(0,dot(VectorL,VectorN)) * _LightColor0 * _RuntimeLightDiffStrg;// * atten;

    //Specular
    float3 VectorH = normalize(VectorL + VectorN);
    float3 SpecularLight =  pow(max(0,dot(VectorH,VectorN)),_RuntimeLightSpecGlos) * _LightColor0 * _RuntimeLightSpecStrg;// * atten;


    return float4(DiffuseLight.xyz + SpecularLight.xyz,1);
}