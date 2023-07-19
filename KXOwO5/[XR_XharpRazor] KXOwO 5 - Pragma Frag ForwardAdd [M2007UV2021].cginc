
if(_KontrolRuntimeLight == 0)
{
    return float4(0,0,0,0);
}
else
{
   
    //Normal Maps

    //read from textures
    //these are still in tangent space, not world space

    float3 NormalMapNormal1Pass0 =  UnpackNormal(FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _RuntimeLightNorm1Imge, 1, 
        _RuntimeLightNorm1TMod0, _RuntimeLightNorm1TMod1,
        _RuntimeLightNorm1TVec0, _RuntimeLightNorm1TVec1, _RuntimeLightNorm1TVec2, _RuntimeLightNorm1TVec3,
        _RuntimeLightNorm1TVec4, _RuntimeLightNorm1TVec5, _RuntimeLightNorm1TVec6, _RuntimeLightNorm1TVec7
    ));

    float3 NormalMapNormal2Pass0 =  UnpackNormal(FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _RuntimeLightNorm2Imge, 1, 
        _RuntimeLightNorm2TMod0, _RuntimeLightNorm2TMod1,
        _RuntimeLightNorm2TVec0, _RuntimeLightNorm2TVec1, _RuntimeLightNorm2TVec2, _RuntimeLightNorm2TVec3,
        _RuntimeLightNorm2TVec4, _RuntimeLightNorm2TVec5, _RuntimeLightNorm2TVec6, _RuntimeLightNorm2TVec7
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
    float3 VectorL = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz); //
    float3 VectorN = normalize( lerp( i.normal.xyz , NormalMapNormalAPass3 , _RuntimeLightNormAStrength)  );
    float3 VectorR = reflect(-VectorL,VectorN);
    float3 VectorV = normalize(i.viewdir.xyz);
    float LambertEval = max(0,dot(VectorN, VectorL));
    //float3 VectorV = (_WorldSpaceCameraPos - i.worldPos);


    //Diffuse
    float3 DiffuseLight = max(0,dot(VectorL,VectorN)) * _LightColor0 * _RuntimeLightDiffStrg * LIGHT_ATTENUATION(i);


    //Specular
    float3 VectorH;
    float3 SpecularLight;
    float SpecPower;
    float SpecularDotProduct;

    if(_RuntimeLightSpecStrg == 0)
    {
        SpecularLight = float3(0,0,0);
    }
    else
    {
        SpecPower = pow(_RuntimeLightSpecGlos.x,_RuntimeLightSpecGlos.y);

        if(_RuntimeLightSpecType == 0) //phong
        {
            SpecularDotProduct = max(0,dot(VectorR,VectorV)) * (LambertEval > 0); 
        }
        else if(_RuntimeLightSpecType == 1) //blinn phong
        {
            VectorH = normalize(VectorL + VectorV);
            SpecularDotProduct = max(0,dot(VectorH,VectorN)) * (LambertEval > 0);  
        }
        else if(_RuntimeLightSpecType == 2) //blinn phong alt
        {
            VectorH = normalize(VectorL + VectorN);
            SpecularDotProduct = max(0,dot(VectorH,VectorN)) * (LambertEval > 0);
        }

        SpecularLight = _LightColor0 * (pow(SpecularDotProduct,SpecPower) * _RuntimeLightSpecGlos.y) * _RuntimeLightSpecStrg * LIGHT_ATTENUATION(i);
    }
    



    return float4(DiffuseLight.xyz + SpecularLight.xyz,1);
}