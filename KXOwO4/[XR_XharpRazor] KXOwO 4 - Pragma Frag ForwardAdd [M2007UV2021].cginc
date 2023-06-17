
if(_KontrolRuntimeLight == 0)
{
    return float4(0,0,0,0);
}
else
{
   
    //Normal Maps

    //read from textures
    //these are still in tangent space, not world space

    float3 NormalMapNormal1Pass0 =  UnpackNormal(FOwO_Color_ReadFromTexture
    (
        _RuntimeLightNorm1Imge, 0, i.uv.x, i.uv.y, 
        _RuntimeLightNorm1TShft, _RuntimeLightNorm1TRott, _RuntimeLightNorm1TScPx, 
        _RuntimeLightNorm1TSkew, _RuntimeLightNorm1TRadl, _RuntimeLightNorm1TCrpj,
        _RuntimeLightNorm1TMod
    ));

    float3 NormalMapNormal2Pass0 =  UnpackNormal(FOwO_Color_ReadFromTexture
    (
        _RuntimeLightNorm2Imge, 0, i.uv.x, i.uv.y, 
        _RuntimeLightNorm2TShft, _RuntimeLightNorm2TRott, _RuntimeLightNorm2TScPx, 
        _RuntimeLightNorm2TSkew, _RuntimeLightNorm2TRadl, _RuntimeLightNorm2TCrpj,
        _RuntimeLightNorm2TMod
    ));

    //lerp by using normal strength
    //still in tangent space
    float3 NormalMapNormal1Pass1 = lerp(float3(0,0,1), NormalMapNormal1Pass0, _RuntimeLightNorm1Strength);
    float3 NormalMapNormal2Pass1 = lerp(float3(0,0,1), NormalMapNormal2Pass0, _RuntimeLightNorm2Strength);

    //average the result from the 2 normalmaps
    //still in tangent space
    float3 NormalMapNormalAPass2 = normalize(NormalMapNormal1Pass1 + NormalMapNormal2Pass1);

    //convert from tangent space to worldspace

    float3x3 TangentToWorldMatrix = float3x3
	(
		i.tangent.x, i.binormal.x, i.normal.x,
		i.tangent.y, i.binormal.y, i.normal.y,
		i.tangent.z, i.binormal.z, i.normal.z
    );

    float3 NormalMapNormalAPass3 = mul(TangentToWorldMatrix,NormalMapNormalAPass2);//this one is now in worldspace and ready





    //Vector calcs
    float3 VectorL = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
    float3 VectorN = normalize( lerp( i.normal.xyz , NormalMapNormalAPass3 , _RuntimeLightNormAStrength)  );
    float3 VectorV = normalize(i.viewdir.xyz);


    //Diffuse
    float3 DiffuseLight = max(0,dot(VectorL,VectorN)) * _LightColor0 * _RuntimeLightDiffStrg * LIGHT_ATTENUATION(i);

    //Specular
    float3 VectorH = normalize(VectorL + VectorN);
    float SpecPower = pow(_RuntimeLightSpecGlos.x,_RuntimeLightSpecGlos.y);
    float3 SpecularLight =  pow(max(0,dot(VectorH,VectorN)),SpecPower) * _LightColor0 * _RuntimeLightSpecStrg * LIGHT_ATTENUATION(i);

    


    return float4(DiffuseLight.xyz + SpecularLight.xyz,1);
}