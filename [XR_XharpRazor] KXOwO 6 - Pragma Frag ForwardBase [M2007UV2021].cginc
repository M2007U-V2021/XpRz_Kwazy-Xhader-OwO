//fixed4 frag (v2f i) : SV_TARGET

//get distort color
fixed4 Piksel1Dist;
fixed4 Piksel2Dist;

//get distort power
float Piksel1XOofset;
float Piksel1YOofset;
float Piksel2XOofset;
float Piksel2YOofset;


if(_KontrolTextureLayer1 == 0)
{
    Piksel1Dist = float4(0,0,0,0);
    Piksel1XOofset = 0;
    Piksel1YOofset = 0;
}
else
{

    Piksel1Dist = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _TextureLayer1DistImge, 1, 
        _TextureLayer1DistTMod0, _TextureLayer1DistTMod1,
        _TextureLayer1DistTVec0, _TextureLayer1DistTVec1, _TextureLayer1DistTVec2, _TextureLayer1DistTVec3,
        _TextureLayer1DistTVec4, _TextureLayer1DistTVec5, _TextureLayer1DistTVec6, _TextureLayer1DistTVec7
    );

    Piksel1XOofset = Piksel1Dist.r * _TextureLayer1DistPowR.x + Piksel1Dist.g * _TextureLayer1DistPowG.x + Piksel1Dist.b * _TextureLayer1DistPowB.x + Piksel1Dist.a * _TextureLayer1DistPowA.x;
    Piksel1YOofset = Piksel1Dist.r * _TextureLayer1DistPowR.y + Piksel1Dist.g * _TextureLayer1DistPowG.y + Piksel1Dist.b * _TextureLayer1DistPowB.y + Piksel1Dist.a * _TextureLayer1DistPowA.y;
}

if(_KontrolTextureLayer2 == 0)
{
    Piksel2Dist = float4(0,0,0,0);
    Piksel2XOofset = 0;
    Piksel2YOofset = 0;
}
else
{
    Piksel2Dist = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _TextureLayer2DistImge, 1, 
        _TextureLayer2DistTMod0, _TextureLayer2DistTMod1,
        _TextureLayer2DistTVec0, _TextureLayer2DistTVec1, _TextureLayer2DistTVec2, _TextureLayer2DistTVec3,
        _TextureLayer2DistTVec4, _TextureLayer2DistTVec5, _TextureLayer2DistTVec6, _TextureLayer2DistTVec7
    );

    Piksel2XOofset = Piksel2Dist.r * _TextureLayer2DistPowR.x + Piksel2Dist.g * _TextureLayer2DistPowG.x + Piksel2Dist.b * _TextureLayer2DistPowB.x + Piksel2Dist.a * _TextureLayer2DistPowA.x;
    Piksel2YOofset = Piksel2Dist.r * _TextureLayer2DistPowR.y + Piksel2Dist.g * _TextureLayer2DistPowG.y + Piksel2Dist.b * _TextureLayer2DistPowB.y + Piksel2Dist.a * _TextureLayer2DistPowA.y;
}






//get mask color
fixed4 Piksel1Mask1;
fixed4 Piksel2Mask1;
//invert mask
fixed4 Piksel1Mask2;
fixed4 Piksel2Mask2;
//thresholdcut
fixed4 Piksel1Mask3;
fixed4 Piksel2Mask3;
//calculate filter power
float Piksel1MaskPower;
float Piksel2MaskPower;

if(_KontrolTextureLayer1 == 0)
{
    Piksel1Mask1 = float4(0,0,0,0);
    Piksel1MaskPower = 0;
}
else
{

    Piksel1Mask1 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _TextureLayer1MaskImge, 1, 
        _TextureLayer1MaskTMod0, _TextureLayer1MaskTMod1,
        _TextureLayer1MaskTVec0, _TextureLayer1MaskTVec1, _TextureLayer1MaskTVec2, _TextureLayer1MaskTVec3,
        _TextureLayer1MaskTVec4, _TextureLayer1MaskTVec5, _TextureLayer1MaskTVec6, _TextureLayer1MaskTVec7
    );

    Piksel1Mask2 = float4
    (
    FOwO_Lerp_Simple(Piksel1Mask1.r,1-Piksel1Mask1.r,_TextureLayer1MaskInvR,_KontrolLerpClamp),
    FOwO_Lerp_Simple(Piksel1Mask1.g,1-Piksel1Mask1.g,_TextureLayer1MaskInvG,_KontrolLerpClamp),
    FOwO_Lerp_Simple(Piksel1Mask1.b,1-Piksel1Mask1.b,_TextureLayer1MaskInvB,_KontrolLerpClamp),
    FOwO_Lerp_Simple(Piksel1Mask1.a,1-Piksel1Mask1.a,_TextureLayer1MaskInvA,_KontrolLerpClamp)
    );

    Piksel1Mask3 = float4
    (
    FOwO_Lerp_Thresh(_TextureLayer1MaskRLow,_TextureLayer1MaskRHgh,0,1,Piksel1Mask2.r),
    FOwO_Lerp_Thresh(_TextureLayer1MaskGLow,_TextureLayer1MaskGHgh,0,1,Piksel1Mask2.g),
    FOwO_Lerp_Thresh(_TextureLayer1MaskBLow,_TextureLayer1MaskBHgh,0,1,Piksel1Mask2.b),
    FOwO_Lerp_Thresh(_TextureLayer1MaskALow,_TextureLayer1MaskAHgh,0,1,Piksel1Mask2.a)
    );

    Piksel1MaskPower = dot(Piksel1Mask3,float4(_TextureLayer1MaskPowR,_TextureLayer1MaskPowG,_TextureLayer1MaskPowB,_TextureLayer1MaskPowA));
}

if(_KontrolTextureLayer2 == 0)
{
    Piksel2Mask1 = float4(1,1,1,1);
    Piksel2MaskPower = 0;
}
else
{

    Piksel2Mask1 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _TextureLayer2MaskImge, 1, 
        _TextureLayer2MaskTMod0, _TextureLayer2MaskTMod1,
        _TextureLayer2MaskTVec0, _TextureLayer2MaskTVec1, _TextureLayer2MaskTVec2, _TextureLayer2MaskTVec3,
        _TextureLayer2MaskTVec4, _TextureLayer2MaskTVec5, _TextureLayer2MaskTVec6, _TextureLayer2MaskTVec7
    );

    Piksel2Mask2 = float4
    (
    FOwO_Lerp_Simple(Piksel2Mask1.r,1-Piksel2Mask1.r,_TextureLayer2MaskInvR,_KontrolLerpClamp),
    FOwO_Lerp_Simple(Piksel2Mask1.g,1-Piksel2Mask1.g,_TextureLayer2MaskInvG,_KontrolLerpClamp),
    FOwO_Lerp_Simple(Piksel2Mask1.b,1-Piksel2Mask1.b,_TextureLayer2MaskInvB,_KontrolLerpClamp),
    FOwO_Lerp_Simple(Piksel2Mask1.a,1-Piksel2Mask1.a,_TextureLayer2MaskInvA,_KontrolLerpClamp)
    );

    Piksel2Mask3 = float4
    (
    FOwO_Lerp_Thresh(_TextureLayer2MaskRLow,_TextureLayer2MaskRHgh,0,1,Piksel2Mask2.r),
    FOwO_Lerp_Thresh(_TextureLayer2MaskGLow,_TextureLayer2MaskGHgh,0,1,Piksel2Mask2.g),
    FOwO_Lerp_Thresh(_TextureLayer2MaskBLow,_TextureLayer2MaskBHgh,0,1,Piksel2Mask2.b),
    FOwO_Lerp_Thresh(_TextureLayer2MaskALow,_TextureLayer2MaskAHgh,0,1,Piksel2Mask2.a)
    );

    Piksel2MaskPower = dot(Piksel2Mask3,float4(_TextureLayer2MaskPowR,_TextureLayer2MaskPowG,_TextureLayer2MaskPowB,_TextureLayer2MaskPowA));
}







//get original texture
fixed4 Piksel1Pass0of1;
fixed4 Piksel2Pass0of1;
//alpha check
//_TextureLayer1AlphChck("If Afwa==0, then RGB = 0",Range(0,1)) = 1
fixed4 Piksel1Pass0of2 = fixed4(0,0,0,0);
fixed4 Piksel2Pass0of2 = fixed4(0,0,0,0);
//invert main
fixed4 Piksel1Pass1;
fixed4 Piksel2Pass1;
//HSVA shift
fixed4 Piksel1Pass2of1;
fixed4 Piksel1Pass2of2;
fixed4 Piksel1Pass2of3;
fixed4 Piksel2Pass2of1;
fixed4 Piksel2Pass2of2;
fixed4 Piksel2Pass2of3;
//color multiplication
fixed4 Piksel1Pass3of1;
fixed4 Piksel2Pass3of1;
fixed4 Piksel1Pass3of2;
fixed4 Piksel2Pass3of2;
//final color + alpha influnced by mask + influnced by distance fading ?
float Piksel1DistanceFade,Piksel2DistanceFade;
fixed4 Piksel1Pass4;
fixed4 Piksel2Pass4;



if(_KontrolTextureLayer1 == 0)
{
    Piksel1Pass0of1 = float4(1,1,1,1);
    Piksel1Pass4 = float4(0,0,0,0);
}
else
{

    Piksel1Pass0of1 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv + float2(Piksel1XOofset,Piksel1YOofset) , _TextureLayer1MainImge, 1, 
        _TextureLayer1MainTMod0, _TextureLayer1MainTMod1,
        _TextureLayer1MainTVec0, _TextureLayer1MainTVec1, _TextureLayer1MainTVec2, _TextureLayer1MainTVec3,
        _TextureLayer1MainTVec4, _TextureLayer1MainTVec5, _TextureLayer1MainTVec6, _TextureLayer1MainTVec7
    );

    if(_TextureLayer1AlphChck == 1)
    {Piksel1Pass0of2 = fixed4(Piksel1Pass0of1.r,Piksel1Pass0of1.g,Piksel1Pass0of1.b,1) * Piksel1Pass0of1.a;		}
    else
    {Piksel1Pass0of2 = Piksel1Pass0of1;}

    Piksel1Pass1 = float4
    (
        //float FOwO_Lerp_Simple(float Start,float End,float T,int Clamp)
        FOwO_Lerp_Simple(Piksel1Pass0of2.r,1 - Piksel1Pass0of2.r,_TextureLayer1MainInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Piksel1Pass0of2.g,1 - Piksel1Pass0of2.g,_TextureLayer1MainInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Piksel1Pass0of2.b,1 - Piksel1Pass0of2.b,_TextureLayer1MainInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Piksel1Pass0of2.a,1 - Piksel1Pass0of2.a,_TextureLayer1MainInvA,_KontrolLerpClamp)
    );

    Piksel1Pass2of1 = FOwO_Color_RGBAtoHSVA(Piksel1Pass1.r,Piksel1Pass1.g,Piksel1Pass1.b,Piksel1Pass1.a);
    Piksel1Pass2of2 = fixed4((Piksel1Pass2of1.r + _TextureLayer1MainHSVh)%1,Piksel1Pass2of1.g + _TextureLayer1MainHSVs,Piksel1Pass2of1.b + _TextureLayer1MainHSVv,Piksel1Pass2of1.a);
    Piksel1Pass2of3 = FOwO_Color_HSVAtoRGBA(Piksel1Pass2of2.r,Piksel1Pass2of2.g,Piksel1Pass2of2.b,Piksel1Pass2of2.a);

    Piksel1Pass3of1 = FOwO_Lerp_Color4Intervals
    (	
        _TextureLayer1MainClr0,_TextureLayer1MainClr1,_TextureLayer1MainClr2,_TextureLayer1MainClr3,
        _TextureLayer1MainClrT.x,_TextureLayer1MainClrT.y,_TextureLayer1MainClrT.z,_TextureLayer1MainClrT.w,
        _KontrolLerpClamp
    );
    Piksel1Pass3of2 = Piksel1Pass3of1 * Piksel1Pass2of3;

    if(_TextureLayer1MainDtcu == 0)
    {
        Piksel1DistanceFade = 1;
    }
    else
    {
        Piksel1DistanceFade = FOwO_Lerp_ThreshLerp
        (
            _TextureLayer1MainDtcv.y,
            _TextureLayer1MainDtcv.z,
            _TextureLayer1MainDtcv.x,
            _TextureLayer1MainDtcv.w,
            FOwO_Vec3Mag(_WorldSpaceCameraPos.xyz - i.worldPos.xyz)
        );
    }

    Piksel1Pass4 = fixed4(Piksel1Pass3of2.r,Piksel1Pass3of2.g,Piksel1Pass3of2.b,Piksel1Pass3of2.a * Piksel1MaskPower * Piksel1DistanceFade);
}

if(_KontrolTextureLayer2 == 0)
{
    Piksel2Pass0of1 = float4(1,1,1,1);
    Piksel2Pass4 = float4(0,0,0,0);
}
else
{

    Piksel2Pass0of1 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv + float2(Piksel2XOofset,Piksel2YOofset) , _TextureLayer2MainImge, 1, 
        _TextureLayer2MainTMod0, _TextureLayer2MainTMod1,
        _TextureLayer2MainTVec0, _TextureLayer2MainTVec1, _TextureLayer2MainTVec2, _TextureLayer2MainTVec3,
        _TextureLayer2MainTVec4, _TextureLayer2MainTVec5, _TextureLayer2MainTVec6, _TextureLayer2MainTVec7
    );

    if(_TextureLayer2AlphChck == 1)
    {Piksel2Pass0of2 = fixed4(Piksel2Pass0of1.r,Piksel2Pass0of1.g,Piksel2Pass0of1.b,1) * Piksel2Pass0of1.a;		}
    else
    {Piksel2Pass0of2 = Piksel2Pass0of1;}

    Piksel2Pass1 = float4
    (
        //float FOwO_Lerp_Simple(float Start,float End,float T,int Clamp)
        FOwO_Lerp_Simple(Piksel2Pass0of2.r,1 - Piksel2Pass0of2.r,_TextureLayer2MainInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Piksel2Pass0of2.g,1 - Piksel2Pass0of2.g,_TextureLayer2MainInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Piksel2Pass0of2.b,1 - Piksel2Pass0of2.b,_TextureLayer2MainInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Piksel2Pass0of2.a,1 - Piksel2Pass0of2.a,_TextureLayer2MainInvA,_KontrolLerpClamp)
    );

    Piksel2Pass2of1 = FOwO_Color_RGBAtoHSVA(Piksel2Pass1.r,Piksel2Pass1.g,Piksel2Pass1.b,Piksel2Pass1.a);
    Piksel2Pass2of2 = fixed4((Piksel2Pass2of1.r + _TextureLayer2MainHSVh)%1,Piksel2Pass2of1.g + _TextureLayer2MainHSVs,Piksel2Pass2of1.b + _TextureLayer2MainHSVv,Piksel2Pass2of1.a);
    Piksel2Pass2of3 = FOwO_Color_HSVAtoRGBA(Piksel2Pass2of2.r,Piksel2Pass2of2.g,Piksel2Pass2of2.b,Piksel2Pass2of2.a);

    Piksel2Pass3of1 = FOwO_Lerp_Color4Intervals
    (	
        _TextureLayer2MainClr0,_TextureLayer2MainClr1,_TextureLayer2MainClr2,_TextureLayer2MainClr3,
        _TextureLayer2MainClrT.x,_TextureLayer2MainClrT.y,_TextureLayer2MainClrT.z,_TextureLayer2MainClrT.w,
        _KontrolLerpClamp
    );
    Piksel2Pass3of2 = Piksel2Pass3of1 * Piksel2Pass2of3;

    if(_TextureLayer2MainDtcu == 0)
    {
        Piksel2DistanceFade = 1;
    }
    else
    {
        Piksel2DistanceFade = FOwO_Lerp_ThreshLerp
        (
            _TextureLayer2MainDtcv.y,
            _TextureLayer2MainDtcv.z,
            _TextureLayer2MainDtcv.x,
            _TextureLayer2MainDtcv.w,
            FOwO_Vec3Mag(_WorldSpaceCameraPos.xyz - i.worldPos.xyz)
        );
    }

    Piksel2Pass4 = fixed4(Piksel2Pass3of2.r,Piksel2Pass3of2.g,Piksel2Pass3of2.b,Piksel2Pass3of2.a * Piksel2MaskPower * Piksel2DistanceFade);
}





    






//get vector color
float Vectorcr1Pass0; //get dot product and ramp
float Vectorcr2Pass0;
float Vectorcr3Pass0;
float Vectorcr4Pass0;

fixed4 Vectorcr1Pass1of0; //get mask color
fixed4 Vectorcr2Pass1of0;
fixed4 Vectorcr3Pass1of0;
fixed4 Vectorcr4Pass1of0;
fixed4 Vectorcr1Pass1of1; //invert mask
fixed4 Vectorcr2Pass1of1;
fixed4 Vectorcr3Pass1of1;
fixed4 Vectorcr4Pass1of1;
fixed4 Vectorcr1Pass1of2; //mask threshold cut
fixed4 Vectorcr2Pass1of2;
fixed4 Vectorcr3Pass1of2;
fixed4 Vectorcr4Pass1of2;
float Vectorcr1Pass1of3; //mask filter power
float Vectorcr2Pass1of3;
float Vectorcr3Pass1of3;
float Vectorcr4Pass1of3;

fixed4 Vectorcr1Pass2; //dot product * Strength * Vector Color
fixed4 Vectorcr2Pass2;
fixed4 Vectorcr3Pass2;
fixed4 Vectorcr4Pass2;


if(_VectorCrLayer1MainStwg == 0)
{
    Vectorcr1Pass2 = float4(0,0,0,0);
}
else
{
    Vectorcr1Pass0 = pow(max(0,dot(i.normal,_VectorCrLayer1MainVect)),_VectorCrLayer1MainRamp);

    Vectorcr1Pass1of0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _VectorCrLayer1MaskImge, 1, 
        _VectorCrLayer1MaskTMod0, _VectorCrLayer1MaskTMod1,
        _VectorCrLayer1MaskTVec0, _VectorCrLayer1MaskTVec1, _VectorCrLayer1MaskTVec2, _VectorCrLayer1MaskTVec3,
        _VectorCrLayer1MaskTVec4, _VectorCrLayer1MaskTVec5, _VectorCrLayer1MaskTVec6, _VectorCrLayer1MaskTVec7
    );

    Vectorcr1Pass1of1 = float4
    (
        FOwO_Lerp_Simple(Vectorcr1Pass1of0.r,1-Vectorcr1Pass1of0.r,_VectorCrLayer1MaskInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr1Pass1of0.g,1-Vectorcr1Pass1of0.g,_VectorCrLayer1MaskInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr1Pass1of0.b,1-Vectorcr1Pass1of0.b,_VectorCrLayer1MaskInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr1Pass1of0.a,1-Vectorcr1Pass1of0.a,_VectorCrLayer1MaskInvA,_KontrolLerpClamp)
    );

    Vectorcr1Pass1of2 = float4
    (
        FOwO_Lerp_Thresh(_VectorCrLayer1MaskRLow,_VectorCrLayer1MaskRHgh,0,1,Vectorcr1Pass1of1.r),
        FOwO_Lerp_Thresh(_VectorCrLayer1MaskGLow,_VectorCrLayer1MaskGHgh,0,1,Vectorcr1Pass1of1.g),
        FOwO_Lerp_Thresh(_VectorCrLayer1MaskBLow,_VectorCrLayer1MaskBHgh,0,1,Vectorcr1Pass1of1.b),
        FOwO_Lerp_Thresh(_VectorCrLayer1MaskALow,_VectorCrLayer1MaskAHgh,0,1,Vectorcr1Pass1of1.a)
    );

    Vectorcr1Pass1of3 = dot(Vectorcr1Pass1of2,float4(_VectorCrLayer1MaskPowR,_VectorCrLayer1MaskPowG,_VectorCrLayer1MaskPowB,_VectorCrLayer1MaskPowA));

    Vectorcr1Pass2 = Vectorcr1Pass0 * _VectorCrLayer1MainStwg * _VectorCrLayer1MainClr0 * Vectorcr1Pass1of3;
}

if(_VectorCrLayer2MainStwg == 0)
{
    Vectorcr2Pass2 = float4(0,0,0,0);
}
else
{
    Vectorcr2Pass0 = pow(max(0,dot(i.normal,_VectorCrLayer2MainVect)),_VectorCrLayer2MainRamp);

    Vectorcr2Pass1of0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _VectorCrLayer2MaskImge, 1, 
        _VectorCrLayer2MaskTMod0, _VectorCrLayer2MaskTMod1,
        _VectorCrLayer2MaskTVec0, _VectorCrLayer2MaskTVec1, _VectorCrLayer2MaskTVec2, _VectorCrLayer2MaskTVec3,
        _VectorCrLayer2MaskTVec4, _VectorCrLayer2MaskTVec5, _VectorCrLayer2MaskTVec6, _VectorCrLayer2MaskTVec7
    );

    Vectorcr2Pass1of1 = float4
    (
        FOwO_Lerp_Simple(Vectorcr2Pass1of0.r,1-Vectorcr2Pass1of0.r,_VectorCrLayer2MaskInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr2Pass1of0.g,1-Vectorcr2Pass1of0.g,_VectorCrLayer2MaskInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr2Pass1of0.b,1-Vectorcr2Pass1of0.b,_VectorCrLayer2MaskInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr2Pass1of0.a,1-Vectorcr2Pass1of0.a,_VectorCrLayer2MaskInvA,_KontrolLerpClamp)
    );

    Vectorcr2Pass1of2 = float4
    (
        FOwO_Lerp_Thresh(_VectorCrLayer2MaskRLow,_VectorCrLayer2MaskRHgh,0,1,Vectorcr2Pass1of1.r),
        FOwO_Lerp_Thresh(_VectorCrLayer2MaskGLow,_VectorCrLayer2MaskGHgh,0,1,Vectorcr2Pass1of1.g),
        FOwO_Lerp_Thresh(_VectorCrLayer2MaskBLow,_VectorCrLayer2MaskBHgh,0,1,Vectorcr2Pass1of1.b),
        FOwO_Lerp_Thresh(_VectorCrLayer2MaskALow,_VectorCrLayer2MaskAHgh,0,1,Vectorcr2Pass1of1.a)
    );

    Vectorcr2Pass1of3 = dot(Vectorcr2Pass1of2,float4(_VectorCrLayer2MaskPowR,_VectorCrLayer2MaskPowG,_VectorCrLayer2MaskPowB,_VectorCrLayer2MaskPowA));

    Vectorcr2Pass2 = Vectorcr2Pass0 * _VectorCrLayer2MainStwg * _VectorCrLayer2MainClr0 * Vectorcr2Pass1of3;
}

if(_VectorCrLayer3MainStwg == 0)
{
    Vectorcr3Pass2 = float4(0,0,0,0);
}
else
{
    Vectorcr3Pass0 = pow(max(0,dot(i.normal,_VectorCrLayer3MainVect)),_VectorCrLayer3MainRamp);

    Vectorcr3Pass1of0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _VectorCrLayer3MaskImge, 1, 
        _VectorCrLayer3MaskTMod0, _VectorCrLayer3MaskTMod1,
        _VectorCrLayer3MaskTVec0, _VectorCrLayer3MaskTVec1, _VectorCrLayer3MaskTVec2, _VectorCrLayer3MaskTVec3,
        _VectorCrLayer3MaskTVec4, _VectorCrLayer3MaskTVec5, _VectorCrLayer3MaskTVec6, _VectorCrLayer3MaskTVec7
    );

    Vectorcr3Pass1of1 = float4
    (
        FOwO_Lerp_Simple(Vectorcr3Pass1of0.r,1-Vectorcr3Pass1of0.r,_VectorCrLayer3MaskInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr3Pass1of0.g,1-Vectorcr3Pass1of0.g,_VectorCrLayer3MaskInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr3Pass1of0.b,1-Vectorcr3Pass1of0.b,_VectorCrLayer3MaskInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr3Pass1of0.a,1-Vectorcr3Pass1of0.a,_VectorCrLayer3MaskInvA,_KontrolLerpClamp)
    );

    Vectorcr3Pass1of2 = float4
    (
        FOwO_Lerp_Thresh(_VectorCrLayer3MaskRLow,_VectorCrLayer3MaskRHgh,0,1,Vectorcr3Pass1of1.r),
        FOwO_Lerp_Thresh(_VectorCrLayer3MaskGLow,_VectorCrLayer3MaskGHgh,0,1,Vectorcr3Pass1of1.g),
        FOwO_Lerp_Thresh(_VectorCrLayer3MaskBLow,_VectorCrLayer3MaskBHgh,0,1,Vectorcr3Pass1of1.b),
        FOwO_Lerp_Thresh(_VectorCrLayer3MaskALow,_VectorCrLayer3MaskAHgh,0,1,Vectorcr3Pass1of1.a)
    );

    Vectorcr3Pass1of3 = dot(Vectorcr3Pass1of2,float4(_VectorCrLayer3MaskPowR,_VectorCrLayer3MaskPowG,_VectorCrLayer3MaskPowB,_VectorCrLayer3MaskPowA));

    Vectorcr3Pass2 = Vectorcr3Pass0 * _VectorCrLayer3MainStwg * _VectorCrLayer3MainClr0 * Vectorcr3Pass1of3;
}

if(_VectorCrLayer4MainStwg == 0)
{
    Vectorcr4Pass2 = float4(0,0,0,0);
}
else
{
    Vectorcr4Pass0 = pow(max(0,dot(i.normal,_VectorCrLayer4MainVect)),_VectorCrLayer4MainRamp);

    Vectorcr4Pass1of0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _VectorCrLayer4MaskImge, 1, 
        _VectorCrLayer4MaskTMod0, _VectorCrLayer4MaskTMod1,
        _VectorCrLayer4MaskTVec0, _VectorCrLayer4MaskTVec1, _VectorCrLayer4MaskTVec2, _VectorCrLayer4MaskTVec3,
        _VectorCrLayer4MaskTVec4, _VectorCrLayer4MaskTVec5, _VectorCrLayer4MaskTVec6, _VectorCrLayer4MaskTVec7
    );

    Vectorcr4Pass1of1 = float4
    (
        FOwO_Lerp_Simple(Vectorcr4Pass1of0.r,1-Vectorcr4Pass1of0.r,_VectorCrLayer4MaskInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr4Pass1of0.g,1-Vectorcr4Pass1of0.g,_VectorCrLayer4MaskInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr4Pass1of0.b,1-Vectorcr4Pass1of0.b,_VectorCrLayer4MaskInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Vectorcr4Pass1of0.a,1-Vectorcr4Pass1of0.a,_VectorCrLayer4MaskInvA,_KontrolLerpClamp)
    );

    Vectorcr4Pass1of2 = float4
    (
        FOwO_Lerp_Thresh(_VectorCrLayer4MaskRLow,_VectorCrLayer4MaskRHgh,0,1,Vectorcr4Pass1of1.r),
        FOwO_Lerp_Thresh(_VectorCrLayer4MaskGLow,_VectorCrLayer4MaskGHgh,0,1,Vectorcr4Pass1of1.g),
        FOwO_Lerp_Thresh(_VectorCrLayer4MaskBLow,_VectorCrLayer4MaskBHgh,0,1,Vectorcr4Pass1of1.b),
        FOwO_Lerp_Thresh(_VectorCrLayer4MaskALow,_VectorCrLayer4MaskAHgh,0,1,Vectorcr4Pass1of1.a)
    );

    Vectorcr4Pass1of3 = dot(Vectorcr4Pass1of2,float4(_VectorCrLayer4MaskPowR,_VectorCrLayer4MaskPowG,_VectorCrLayer4MaskPowB,_VectorCrLayer4MaskPowA));

    Vectorcr4Pass2 = Vectorcr4Pass0 * _VectorCrLayer4MainStwg * _VectorCrLayer4MainClr0 * Vectorcr4Pass1of3;
}

fixed4 VectorcrFinal = Vectorcr1Pass2 + Vectorcr2Pass2 + Vectorcr3Pass2 + Vectorcr4Pass2;


//are main layers influenced ?
fixed4 Piksel1Pass5;
fixed4 Piksel2Pass5;

if(_KontrolTextureLayer1 == 0)
{
    Piksel1Pass5 = float4(0,0,0,0);
}
else
{
    Piksel1Pass5 = Piksel1Pass4 * FOwO_Lerp_ColorSimple(fixed4(1,1,1,1),VectorcrFinal + fixed4(0,0,0,_TextureLayer1VcCrFrcA),_TextureLayer1VcCrInfl,_KontrolLerpClamp);
}

if(_KontrolTextureLayer2 == 0)
{
    Piksel2Pass5 = float4(0,0,0,0);
}
else
{
    Piksel2Pass5 = Piksel2Pass4 * FOwO_Lerp_ColorSimple(fixed4(1,1,1,1),VectorcrFinal + fixed4(0,0,0,_TextureLayer2VcCrFrcA),_TextureLayer2VcCrInfl,_KontrolLerpClamp);
}





//get Fresnel Color
fixed4 Fresnel1Color;
fixed4 Fresnel2Color;
//get Fresnel Vector Amount
float Fresnel1Pass0;
float Fresnel1Pass1;
float Fresnel1Pass2;
float Fresnel2Pass0;
float Fresnel2Pass1;
float Fresnel2Pass2;
//get Fresnel Mask Color
fixed4 Fresnel1Pass4of0;
fixed4 Fresnel2Pass4of0;
//invert mask
fixed4 Fresnel1Pass4of1;
fixed4 Fresnel2Pass4of1;
//ThresholdCut
fixed4 Fresnel1Pass4of2;
fixed4 Fresnel2Pass4of2;
//calculate filter power
float Fresnel1MaskPower;
float Fresnel2MaskPower;

//colorMix
float4 Fresnel1Pass3; //fresnel result
float4 Fresnel2Pass3; //fresnel result

//TextureLayerInflunced


if(_FresnelLayer1MainStwg == 0)
{
    Fresnel1Pass3 = float4(0,0,0,0);
}
else
{
    Fresnel1Color = FOwO_Lerp_Color4Intervals(_FresnelLayer1MainClr0, _FresnelLayer1MainClr1, _FresnelLayer1MainClr2, _FresnelLayer1MainClr3, _FresnelLayer1MainClrT.x, _FresnelLayer1MainClrT.y, _FresnelLayer1MainClrT.z, _FresnelLayer1MainClrT.w,_KontrolLerpClamp);

    Fresnel1Pass0 = FOwO_BlendOneMinus(max(0,dot(i.normal,i.viewdir)),1,_FresnelLayer1MainRgIv);
    Fresnel1Pass1 = pow(Fresnel1Pass0,_FresnelLayer1MainRamp);
    Fresnel1Pass2 = FOwO_Lerp_Thresh(_FresnelLayer1MainTrLw, _FresnelLayer1MainTrHg, 0, 1, Fresnel1Pass1);

    Fresnel1Pass4of0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _FresnelLayer1MaskImge, 1, 
        _FresnelLayer1MaskTMod0, _FresnelLayer1MaskTMod1,
        _FresnelLayer1MaskTVec0, _FresnelLayer1MaskTVec1, _FresnelLayer1MaskTVec2, _FresnelLayer1MaskTVec3,
        _FresnelLayer1MaskTVec4, _FresnelLayer1MaskTVec5, _FresnelLayer1MaskTVec6, _FresnelLayer1MaskTVec7
    );

    Fresnel1Pass4of1 = float4
    (
        FOwO_Lerp_Simple(Fresnel1Pass4of0.r,1-Fresnel1Pass4of0.r,_FresnelLayer1MaskInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Fresnel1Pass4of0.g,1-Fresnel1Pass4of0.g,_FresnelLayer1MaskInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Fresnel1Pass4of0.b,1-Fresnel1Pass4of0.b,_FresnelLayer1MaskInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Fresnel1Pass4of0.a,1-Fresnel1Pass4of0.a,_FresnelLayer1MaskInvA,_KontrolLerpClamp)
    );

    Fresnel1Pass4of2 = float4
    (
        FOwO_Lerp_Thresh(_FresnelLayer1MaskRLow,_FresnelLayer1MaskRHgh,0,1,Fresnel1Pass4of1.r),
        FOwO_Lerp_Thresh(_FresnelLayer1MaskGLow,_FresnelLayer1MaskGHgh,0,1,Fresnel1Pass4of1.g),
        FOwO_Lerp_Thresh(_FresnelLayer1MaskBLow,_FresnelLayer1MaskBHgh,0,1,Fresnel1Pass4of1.b),
        FOwO_Lerp_Thresh(_FresnelLayer1MaskALow,_FresnelLayer1MaskAHgh,0,1,Fresnel1Pass4of1.a)
    );

    Fresnel1MaskPower = dot(Fresnel1Pass4of2,float4(_FresnelLayer1MaskPowR,_FresnelLayer1MaskPowG,_FresnelLayer1MaskPowB,_FresnelLayer1MaskPowA));

    Fresnel1Pass3 = Fresnel1Color * Fresnel1Pass2 * Fresnel1MaskPower * _FresnelLayer1MainStwg;

}

if(_FresnelLayer2MainStwg == 0)
{
    Fresnel2Pass3 = float4(0,0,0,0);
}
else
{
    Fresnel2Color = FOwO_Lerp_Color4Intervals(_FresnelLayer2MainClr0, _FresnelLayer2MainClr1, _FresnelLayer2MainClr2, _FresnelLayer2MainClr3, _FresnelLayer2MainClrT.x, _FresnelLayer2MainClrT.y, _FresnelLayer2MainClrT.z, _FresnelLayer2MainClrT.w,_KontrolLerpClamp);

    Fresnel2Pass0 = FOwO_BlendOneMinus(max(0,dot(i.normal,i.viewdir)),1,_FresnelLayer2MainRgIv);
    Fresnel2Pass1 = pow(Fresnel2Pass0,_FresnelLayer2MainRamp);
    Fresnel2Pass2 = FOwO_Lerp_Thresh(_FresnelLayer2MainTrLw, _FresnelLayer2MainTrHg, 0, 1, Fresnel2Pass1);

    Fresnel2Pass4of0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _FresnelLayer2MaskImge, 1, 
        _FresnelLayer2MaskTMod0, _FresnelLayer2MaskTMod1,
        _FresnelLayer2MaskTVec0, _FresnelLayer2MaskTVec1, _FresnelLayer2MaskTVec2, _FresnelLayer2MaskTVec3,
        _FresnelLayer2MaskTVec4, _FresnelLayer2MaskTVec5, _FresnelLayer2MaskTVec6, _FresnelLayer2MaskTVec7
    );

    Fresnel2Pass4of1 = float4
    (
        FOwO_Lerp_Simple(Fresnel2Pass4of0.r,1-Fresnel2Pass4of0.r,_FresnelLayer2MaskInvR,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Fresnel2Pass4of0.g,1-Fresnel2Pass4of0.g,_FresnelLayer2MaskInvG,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Fresnel2Pass4of0.b,1-Fresnel2Pass4of0.b,_FresnelLayer2MaskInvB,_KontrolLerpClamp),
        FOwO_Lerp_Simple(Fresnel2Pass4of0.a,1-Fresnel2Pass4of0.a,_FresnelLayer2MaskInvA,_KontrolLerpClamp)
    );

    Fresnel2Pass4of2 = float4
    (
        FOwO_Lerp_Thresh(_FresnelLayer2MaskRLow,_FresnelLayer2MaskRHgh,0,1,Fresnel2Pass4of1.r),
        FOwO_Lerp_Thresh(_FresnelLayer2MaskGLow,_FresnelLayer2MaskGHgh,0,1,Fresnel2Pass4of1.g),
        FOwO_Lerp_Thresh(_FresnelLayer2MaskBLow,_FresnelLayer2MaskBHgh,0,1,Fresnel2Pass4of1.b),
        FOwO_Lerp_Thresh(_FresnelLayer2MaskALow,_FresnelLayer2MaskAHgh,0,1,Fresnel2Pass4of1.a)
    );

    
    Fresnel2MaskPower = dot(Fresnel2Pass4of2,float4(_FresnelLayer2MaskPowR,_FresnelLayer2MaskPowG,_FresnelLayer2MaskPowB,_FresnelLayer2MaskPowA));

    Fresnel2Pass3 = Fresnel2Color * Fresnel2Pass2 * Fresnel2MaskPower * _FresnelLayer2MainStwg;	
}



//is Texture layer influnced ?
fixed4 Piksel1Pass6 = Piksel1Pass5 * FOwO_Lerp_ColorSimple(fixed4(1,1,1,1),Fresnel1Pass3 + Fresnel2Pass3,_TextureLayer1FrslInfl,_KontrolLerpClamp) + fixed4(0,0,0,_TextureLayer1FrslFrcA);
fixed4 Piksel2Pass6 = Piksel2Pass5 * FOwO_Lerp_ColorSimple(fixed4(1,1,1,1),Fresnel1Pass3 + Fresnel2Pass3,_TextureLayer2FrslInfl,_KontrolLerpClamp) + fixed4(0,0,0,_TextureLayer2FrslFrcA);
if(Piksel1Pass6.a > 1){Piksel1Pass6.a = 1;}else if (Piksel1Pass6.a < 0){Piksel1Pass6.a = 0;}
if(Piksel2Pass6.a > 1){Piksel2Pass6.a = 1;}else if (Piksel2Pass6.a < 0){Piksel2Pass6.a = 0;}




//---===<<< Glitter >>>===---

//get Glitter Color
fixed4 Glitter1Pass0;
//huescroll
fixed4 Glitter1Pass1of1;
fixed4 Glitter1Pass1of2;
fixed4 Glitter1Pass1of3;
//did it pass the threshold ? + result
fixed4 Glitter1Pass2 = fixed4(0,0,0,0);

if(_KontrolGlitterLayer1 == 0)
{
    Glitter1Pass2 = float4(0,0,0,0);
}
else
{

    Glitter1Pass0 = FOwO_Color_ReadFromTexture_Vec8
    (
        i.uv, _GlitterLayer1MainImge, 1, 
        _GlitterLayer1MainTMod0, _GlitterLayer1MainTMod1,
        _GlitterLayer1MainTVec0, _GlitterLayer1MainTVec1, _GlitterLayer1MainTVec2, _GlitterLayer1MainTVec3,
        _GlitterLayer1MainTVec4, _GlitterLayer1MainTVec5, _GlitterLayer1MainTVec6, _GlitterLayer1MainTVec7
    );

    Glitter1Pass1of1 = FOwO_Color_RGBAtoHSVA(Glitter1Pass0.r, Glitter1Pass0.g, Glitter1Pass0.b, Glitter1Pass0.a);//1of1 is HSVA
    Glitter1Pass1of2 = fixed4((Glitter1Pass1of1.r + _GlitterLayer1MainHueS * _Time[1])%1,Glitter1Pass1of1.g,Glitter1Pass1of1.b,Glitter1Pass1of1.a);//1of2 is HShifted
    Glitter1Pass1of3 = FOwO_Color_HSVAtoRGBA(Glitter1Pass1of2.r, Glitter1Pass1of2.g, Glitter1Pass1of2.b, Glitter1Pass1of2.a);//back to RGBA

    if 
    (
        Glitter1Pass1of3.r > _GlitterLayer1GltTrshR &&
        Glitter1Pass1of3.g > _GlitterLayer1GltTrshG &&
        Glitter1Pass1of3.b > _GlitterLayer1GltTrshB &&
        Glitter1Pass1of3.a > _GlitterLayer1GltTrshA
    )
    {
        Glitter1Pass2 = _GlitterLayer1GlitClor;
    }
    else
    {
        Glitter1Pass2 = fixed4(0,0,0,0);
    }

}








//---===<<< Light Map >>>===---




//float2 LMUV = (i.uv + unity_LightmapST.zw) * unity_LightmapST.xy;
fixed4 LightmapPass0 = float4(DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap,i.lightmapUV)),1);

/*
return 
    Piksel1Pass6 * _KontrolTextureLayer1 + 
    Piksel2Pass6 * _KontrolTextureLayer2 + 
    Glitter1Pass2 * _KontrolGlitterLayer1 ;
*/

/*
return 
    Piksel1Pass6 * _KontrolTextureLayer1 + 
    Piksel2Pass6 * _KontrolTextureLayer2 + 
    Glitter1Pass2 * _KontrolGlitterLayer1 +
    LightmapPass0 * _KontrolLightMap ;
*/

//return float4(i.lightmapUV.xy,0,1);

//return float4(DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap,i.lightmapUV)),1);
//_LightmapLayerMainImge

//return tex2D(unity_Lightmap,i.lightmapUV.xy);

//return float4(i.lightmapUV.xy,0,1);





/*
    this will be used for StackLayer1First and StackLayer2First, this is used to calculate the alpha of each layer
    Layer = float4
    (
        layerAlpha = the maximum alpha that this layer can have, = 1 - preAcu from prev layer, preAcu will be explained down there
        shaderAlpha = the alpha value caused by the shader,
        trueAlpha = the final true output alpha, = layerAlpha * shaderAlpha
        preAcu = the sum of alpha of layers before this layer including itself
    )

    what is given : shaderAlpha
    what are needed to be calculated : layerAlpha, trueAlpha, preAcu

    example:

    |            | Layer1   | Layer2   | Layer3   | Layer4   | 
    |layerAlpha  | 1.000000 | ?        | ?        | ?        |
    |shaderAlpha | 0.250000 | 0.300000 | 0.500000 | 0.750000 |
    |trueAlpha   | ?        | ?        | ?        | ?        |
    |preAcu      | ?        | ?        | ?        | ?        |

    Layer1.z = Layer1.x * Layer1.y = 1 * 0.25 = 0.25
    Layer1.w = 0.25

    |            | Layer1   | Layer2   | Layer3   | Layer4   | 
    |layerAlpha  | 1.000000 | ?        | ?        | ?        |
    |shaderAlpha | 0.250000 | 0.300000 | 0.500000 | 0.750000 |
    |trueAlpha   | 0.250000 | ?        | ?        | ?        |
    |preAcu      | 0.250000 | ?        | ?        | ?        |

    Layer2.x = 1 - sum of true alpha before the layer = 1 - 0.25 = 0.75
    Layer2.z = Layer2.x * Layer2.y = 0.75 * 0.3 = 0.225

    |            | Layer1   | Layer2   | Layer3   | Layer4   | 
    |layerAlpha  | 1.000000 | 0.750000 | ?        | ?        |
    |shaderAlpha | 0.250000 | 0.300000 | 0.500000 | 0.750000 |
    |trueAlpha   | 0.250000 | 0.225000 | ?        | ?        |
    |preAcu      | 0.250000 | 0.475000 | ?        | ?        |

    and so on...

    |            | Layer1   | Layer2   | Layer3   | Layer4   | 
    |layerAlpha  | 1.000000 | 0.750000 | 0.525000 | 0.262500 |
    |shaderAlpha | 0.250000 | 0.300000 | 0.500000 | 0.750000 |
    |trueAlpha   | 0.250000 | 0.225000 | 0.262500 | 0.196875 |
    |preAcu      | 0.250000 | 0.475000 | 0.737500 | 0.934375 |




*/

if (_LayerBlendMode == 0) //Channel Add
{
    return
    (Piksel1Pass6 * _KontrolTextureLayer1 + Piksel2Pass6 * _KontrolTextureLayer2) * FOwO_Lerp_ColorSimple(float4(1,1,1,1),LightmapPass0,_KontrolLightMap,_KontrolLerpClamp) +
    Glitter1Pass2 * _KontrolGlitterLayer1;
}
else if(_LayerBlendMode == 1) //Layer1 is on top of Layer2
{
    float4 fLayer1;
    float4 fLayer2;

    fLayer1 = float4(1,Piksel1Pass6.a * _KontrolTextureLayer1,0,0);
    fLayer2 = float4(0,Piksel2Pass6.a * _KontrolTextureLayer2,0,0);

    fLayer1.z = fLayer1.x * fLayer1.y;
    fLayer1.w = fLayer1.z;

    fLayer2.x = 1 - fLayer1.w;
    fLayer2.z = fLayer2.x * fLayer2.y;

    float3 fColor31 = float3
    (
        FOwO_Lerp_Simple(Piksel1Pass6.r,Piksel2Pass6.r,fLayer2.z/(fLayer1.z + fLayer2.z),1),
        FOwO_Lerp_Simple(Piksel1Pass6.g,Piksel2Pass6.g,fLayer2.z/(fLayer1.z + fLayer2.z),1),
        FOwO_Lerp_Simple(Piksel1Pass6.b,Piksel2Pass6.b,fLayer2.z/(fLayer1.z + fLayer2.z),1)
    );//who has stronger alpha gets more pieces of the final color
    
    return
        float4(fColor31,fLayer1.z + fLayer2.z) * FOwO_Lerp_ColorSimple(float4(1,1,1,1),LightmapPass0,_KontrolLightMap,_KontrolLerpClamp) +
        Glitter1Pass2 * _KontrolGlitterLayer1;

    
}
else if(_LayerBlendMode == 2) //Layer2 is on top of Layer1
{
    float4 fLayer1;
    float4 fLayer2;

    fLayer1 = float4(1,Piksel2Pass6.a * _KontrolTextureLayer2,0,0);
    fLayer2 = float4(0,Piksel1Pass6.a * _KontrolTextureLayer1,0,0);

    fLayer1.z = fLayer1.x * fLayer1.y;
    fLayer1.w = fLayer1.z;

    fLayer2.x = 1 - fLayer1.w;
    fLayer2.z = fLayer2.x * fLayer2.y;

    float3 fColor31 = float3
    (
        FOwO_Lerp_Simple(Piksel2Pass6.r,Piksel1Pass6.r,fLayer2.z/(fLayer1.z + fLayer2.z),1),
        FOwO_Lerp_Simple(Piksel2Pass6.g,Piksel1Pass6.g,fLayer2.z/(fLayer1.z + fLayer2.z),1),
        FOwO_Lerp_Simple(Piksel2Pass6.b,Piksel1Pass6.b,fLayer2.z/(fLayer1.z + fLayer2.z),1)
    );

    return
        float4(fColor31,fLayer1.z + fLayer2.z) * FOwO_Lerp_ColorSimple(float4(1,1,1,1),LightmapPass0,_KontrolLightMap,_KontrolLerpClamp) +
        Glitter1Pass2 * _KontrolGlitterLayer1;


}
else //shader testing
{
    return float4(i.uv.xy,0,1);
    //return float4(i.worldPos.xyz,1);
    //return float4(_WorldSpaceCameraPos.xyz,1);
    //return float4(i.binormal.xyz,1);
}