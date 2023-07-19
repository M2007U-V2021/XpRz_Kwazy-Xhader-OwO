// CTRL ---------------------------------------------------------------------------------------



float _KontrolTextureLayer1;//("Texture Layer 1",Range(0,1)) = 1
float _KontrolTextureLayer2;//("Texture Layer 2",Range(0,1)) = 1
float _KontrolGlitterLayer1;
float _KontrolLightMap;
float _KontrolRuntimeLight;
float _KontrolLerpClamp;

float _LayerBlendMode;





// VERT ---------------------------------------------------------------------------------------


sampler2D _AxisDistortXImge;//("X Distwot texture",2D) = "black" {}
vector _AxisDistortXTMod0;
vector _AxisDistortXTMod1;
vector _AxisDistortXTVec0;
vector _AxisDistortXTVec1;
vector _AxisDistortXTVec2;
vector _AxisDistortXTVec3;
vector _AxisDistortXTVec4;
vector _AxisDistortXTVec5;
vector _AxisDistortXTVec6;
vector _AxisDistortXTVec7;
vector _AxisDistortXPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
float _AxisDistortXAdjt;//("Distwot Adjust",Float) = 0



sampler2D _AxisDistortYImge;//("X Distwot texture",2D) = "black" {}
vector _AxisDistortYTMod0;
vector _AxisDistortYTMod1;
vector _AxisDistortYTVec0;
vector _AxisDistortYTVec1;
vector _AxisDistortYTVec2;
vector _AxisDistortYTVec3;
vector _AxisDistortYTVec4;
vector _AxisDistortYTVec5;
vector _AxisDistortYTVec6;
vector _AxisDistortYTVec7;
vector _AxisDistortYPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
float _AxisDistortYAdjt;//("Distwot Adjust",Float) = 0

sampler2D _AxisDistortZImge;//("X Distwot texture",2D) = "black" {}
vector _AxisDistortZTMod0;
vector _AxisDistortZTMod1;
vector _AxisDistortZTVec0;
vector _AxisDistortZTVec1;
vector _AxisDistortZTVec2;
vector _AxisDistortZTVec3;
vector _AxisDistortZTVec4;
vector _AxisDistortZTVec5;
vector _AxisDistortZTVec6;
vector _AxisDistortZTVec7;
vector _AxisDistortZPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
float _AxisDistortZAdjt;//("Distwot Adjust",Float) = 0






sampler2D _NormalExtrudeMainImge;//("Extrude Teksture",2D) = "white" {}
vector _NormalExtrudeMainTMod0;
vector _NormalExtrudeMainTMod1;
vector _NormalExtrudeMainTVec0;
vector _NormalExtrudeMainTVec1;
vector _NormalExtrudeMainTVec2;
vector _NormalExtrudeMainTVec3;
vector _NormalExtrudeMainTVec4;
vector _NormalExtrudeMainTVec5;
vector _NormalExtrudeMainTVec6;
vector _NormalExtrudeMainTVec7;

vector _NormalExtrudeRS;//("Rwed Stwength",Vector) = (0,0,0,0)
vector _NormalExtrudeRD;//("Rwed Duwation",Vector) = (1,0,0,0)
vector _NormalExtrudeGS;//("Gwin Stwength",Vector) = (0,0,0,0)
vector _NormalExtrudeGD;//("Gwin Duwation",Vector) = (1,0,0,0)
vector _NormalExtrudeBS;//("Bwoo Stwength",Vector) = (0,0,0,0)
vector _NormalExtrudeBD;//("Bwoo Duwation",Vector) = (1,0,0,0)
vector _NormalExtrudeAS;//("Afwa Stwength",Vector) = (0,0,0,0)
vector _NormalExtrudeAD;//("Afwa Duwation",Vector) = (1,0,0,0)

float _NormDistortAmpl;//("Ampwitude",Float) = 0
float _NormDistortFreq;//("Fwikuensy",Float) = 0




// FRAG FORWARD BASE --------------------------------------------------------------------------

sampler2D _TextureLayer1MainImge;
vector _TextureLayer1MainTMod0;
vector _TextureLayer1MainTMod1;
vector _TextureLayer1MainTVec0;
vector _TextureLayer1MainTVec1;
vector _TextureLayer1MainTVec2;
vector _TextureLayer1MainTVec3;
vector _TextureLayer1MainTVec4;
vector _TextureLayer1MainTVec5;
vector _TextureLayer1MainTVec6;
vector _TextureLayer1MainTVec7;

float _TextureLayer1AlphChck;//("If Afwa==0, then RGB = 0",Range(0,1)) = 1

float _TextureLayer1MainInvR;//("Kolor : InvR",Range(0,1)) = 0
float _TextureLayer1MainInvG;//("Kolor : InvG",Range(0,1)) = 0
float _TextureLayer1MainInvB;//("Kolor : InvB",Range(0,1)) = 0
float _TextureLayer1MainInvA;//("Kolor : InvA",Range(0,1)) = 0

float _TextureLayer1MainHSVh;//("HSVOf : Hue",Range(0,1)) = 0
float _TextureLayer1MainHSVs;//("HSVOf : Sat",Range(-1,1)) = 0
float _TextureLayer1MainHSVv;//("HSVOf : Vbr",Range(-1,1)) = 0

fixed4 _TextureLayer1MainClr0;//("Kolor : Klr0",Color) = (1,1,1,1)
fixed4 _TextureLayer1MainClr1;//("Kolor : Klr1",Color) = (1,1,1,1)
fixed4 _TextureLayer1MainClr2;//("Kolor : Klr2",Color) = (1,1,1,1)
fixed4 _TextureLayer1MainClr3;//("Kolor : Klr3",Color) = (1,1,1,1)
vector _TextureLayer1MainClrT;//("Kolor : Dur0, Dur1, Dur2, Dur3",Vector) = (1,1,0,0)

float _TextureLayer1MainDtcu;//("Use Distance Fade ?, 1 = yes, else no",Range(0,1)) = 0
vector _TextureLayer1MainDtcv;//("Distance : Near Value, Near Distance, Far Distance, Far Value",vector) = (1,0,1,0)

float _TextureLayer1VcCrInfl;//("Vekter Kolor Infwunce",Range(0,1)) = 0
float _TextureLayer1VcCrFrcA;//("Vekter Kolor Force Afwa",Range(0,1)) = 1
float _TextureLayer1FrslInfl;//("Fwensel Infwunce",Range(0,1)) = 0
float _TextureLayer1FrslFrcA;//("Fwensel ForceAfwa",Range(0,1)) = 0




sampler2D _TextureLayer1DistImge;//("Distwot Teksture",2D) = "black" {}
vector _TextureLayer1DistTMod0;
vector _TextureLayer1DistTMod1;
vector _TextureLayer1DistTVec0;
vector _TextureLayer1DistTVec1;
vector _TextureLayer1DistTVec2;
vector _TextureLayer1DistTVec3;
vector _TextureLayer1DistTVec4;
vector _TextureLayer1DistTVec5;
vector _TextureLayer1DistTVec6;
vector _TextureLayer1DistTVec7;

vector _TextureLayer1DistPowR;//("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1DistPowG;//("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1DistPowB;//("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1DistPowA;//("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)




sampler2D _TextureLayer1MaskImge;//("Mask Teksture",2D) = "white" {}
vector _TextureLayer1MaskTMod0;
vector _TextureLayer1MaskTMod1;
vector _TextureLayer1MaskTVec0;
vector _TextureLayer1MaskTVec1;
vector _TextureLayer1MaskTVec2;
vector _TextureLayer1MaskTVec3;
vector _TextureLayer1MaskTVec4;
vector _TextureLayer1MaskTVec5;
vector _TextureLayer1MaskTVec6;
vector _TextureLayer1MaskTVec7;

float _TextureLayer1MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _TextureLayer1MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _TextureLayer1MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _TextureLayer1MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

//1 = "I'll let you through", 0 = "I'll block you"
float _TextureLayer1MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _TextureLayer1MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _TextureLayer1MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _TextureLayer1MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _TextureLayer1MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _TextureLayer1MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _TextureLayer1MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _TextureLayer1MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _TextureLayer1MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _TextureLayer1MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _TextureLayer1MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _TextureLayer1MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1







sampler2D _TextureLayer2MainImge;

vector _TextureLayer2MainTMod0;
vector _TextureLayer2MainTMod1;
vector _TextureLayer2MainTVec0;
vector _TextureLayer2MainTVec1;
vector _TextureLayer2MainTVec2;
vector _TextureLayer2MainTVec3;
vector _TextureLayer2MainTVec4;
vector _TextureLayer2MainTVec5;
vector _TextureLayer2MainTVec6;
vector _TextureLayer2MainTVec7;

float _TextureLayer2AlphChck;//("If Afwa==0, then RGB = 0",Range(0,1)) = 1

float _TextureLayer2MainInvR;//("Kolor : InvR",Range(0,1)) = 0
float _TextureLayer2MainInvG;//("Kolor : InvG",Range(0,1)) = 0
float _TextureLayer2MainInvB;//("Kolor : InvB",Range(0,1)) = 0
float _TextureLayer2MainInvA;//("Kolor : InvA",Range(0,1)) = 0

float _TextureLayer2MainHSVh;//("HSVOf : Hue",Range(0,1)) = 0
float _TextureLayer2MainHSVs;//("HSVOf : Sat",Range(-1,1)) = 0
float _TextureLayer2MainHSVv;//("HSVOf : Vbr",Range(-1,1)) = 0

fixed4 _TextureLayer2MainClr0;//("Kolor : Klr0",Color) = (1,1,1,1)
fixed4 _TextureLayer2MainClr1;//("Kolor : Klr1",Color) = (1,1,1,1)
fixed4 _TextureLayer2MainClr2;//("Kolor : Klr2",Color) = (1,1,1,1)
fixed4 _TextureLayer2MainClr3;//("Kolor : Klr3",Color) = (1,1,1,1)
vector _TextureLayer2MainClrT;//("Kolor : Dur0, Dur1, Dur2, Dur3",Vector) = (1,1,0,0)

float _TextureLayer2MainDtcu;//("Use Distance Fade ?, 1 = yes, else no",Range(0,1)) = 0
vector _TextureLayer2MainDtcv;//("Distance : Near Value, Near Distance, Far Distance, Far Value",vector) = (1,0,1,0)

float _TextureLayer2VcCrInfl;//("Vekter Kolor Infwunce",Range(0,1)) = 0
float _TextureLayer2VcCrFrcA;//("Vekter Kolor Force Afwa",Range(0,1)) = 1
float _TextureLayer2FrslInfl;//("Fwensel Infwunce",Range(0,1)) = 0
float _TextureLayer2FrslFrcA;//("Fwensel ForceAfwa",Range(0,1)) = 0




sampler2D _TextureLayer2DistImge;//("Distwot Teksture",2D) = "black" {}
vector _TextureLayer2DistTMod0;
vector _TextureLayer2DistTMod1;
vector _TextureLayer2DistTVec0;
vector _TextureLayer2DistTVec1;
vector _TextureLayer2DistTVec2;
vector _TextureLayer2DistTVec3;
vector _TextureLayer2DistTVec4;
vector _TextureLayer2DistTVec5;
vector _TextureLayer2DistTVec6;
vector _TextureLayer2DistTVec7;

vector _TextureLayer2DistPowR;//("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2DistPowG;//("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2DistPowB;//("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2DistPowA;//("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)




sampler2D _TextureLayer2MaskImge;//("Mask Teksture",2D) = "white" {}
vector _TextureLayer2MaskTMod0;
vector _TextureLayer2MaskTMod1;
vector _TextureLayer2MaskTVec0;
vector _TextureLayer2MaskTVec1;
vector _TextureLayer2MaskTVec2;
vector _TextureLayer2MaskTVec3;
vector _TextureLayer2MaskTVec4;
vector _TextureLayer2MaskTVec5;
vector _TextureLayer2MaskTVec6;
vector _TextureLayer2MaskTVec7;

float _TextureLayer2MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _TextureLayer2MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _TextureLayer2MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _TextureLayer2MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

//1 = "I'll let you through", 0 = "I'll block you"
float _TextureLayer2MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _TextureLayer2MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _TextureLayer2MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _TextureLayer2MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _TextureLayer2MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _TextureLayer2MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _TextureLayer2MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _TextureLayer2MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _TextureLayer2MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _TextureLayer2MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _TextureLayer2MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _TextureLayer2MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1





float _FresnelLayer1MainStwg;//("Intensity",Range(0,1)) = 0

fixed4 _FresnelLayer1MainClr0;//("Kolor0",Color) = (1,1,1,1)
fixed4 _FresnelLayer1MainClr1;//("Kolor1",Color) = (1,1,1,1)
fixed4 _FresnelLayer1MainClr2;//("Kolor2",Color) = (1,1,1,1)
fixed4 _FresnelLayer1MainClr3;//("Kolor3",Color) = (1,1,1,1)
vector _FresnelLayer1MainClrT;//("Kolor Duration",vector) = (1,1,1,1)
float _FresnelLayer1MainRgIv;//("Wejen Invert",Range(0,1)) = 0
float _FresnelLayer1MainRamp;//("Ramp",Range(0,8)) = 1
float _FresnelLayer1MainTrLw;//("Tweshhold Low",Range(0,1)) = 0
float _FresnelLayer1MainTrHg;//("Tweshhold Hgh",Range(0,1)) = 1



sampler2D _FresnelLayer1MaskImge;//("Mask Teksture",2D) = "white" {}

vector _FresnelLayer1MaskTMod0;
vector _FresnelLayer1MaskTMod1;
vector _FresnelLayer1MaskTVec0;
vector _FresnelLayer1MaskTVec1;
vector _FresnelLayer1MaskTVec2;
vector _FresnelLayer1MaskTVec3;
vector _FresnelLayer1MaskTVec4;
vector _FresnelLayer1MaskTVec5;
vector _FresnelLayer1MaskTVec6;
vector _FresnelLayer1MaskTVec7;

float _FresnelLayer1MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _FresnelLayer1MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _FresnelLayer1MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _FresnelLayer1MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

//1 = "I'll let you through", 0 = "I'll block you"
float _FresnelLayer1MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _FresnelLayer1MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _FresnelLayer1MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _FresnelLayer1MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _FresnelLayer1MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _FresnelLayer1MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _FresnelLayer1MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _FresnelLayer1MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _FresnelLayer1MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _FresnelLayer1MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _FresnelLayer1MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _FresnelLayer1MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1




float _FresnelLayer2MainStwg;//("Intensity",Range(0,1)) = 0

fixed4 _FresnelLayer2MainClr0;//("Kolor0",Color) = (1,1,1,1)
fixed4 _FresnelLayer2MainClr1;//("Kolor1",Color) = (1,1,1,1)
fixed4 _FresnelLayer2MainClr2;//("Kolor2",Color) = (1,1,1,1)
fixed4 _FresnelLayer2MainClr3;//("Kolor3",Color) = (1,1,1,1)
vector _FresnelLayer2MainClrT;//("Kolor Duration",vector) = (1,1,1,1)
float _FresnelLayer2MainRgIv;//("Wejen Invert",Range(0,1)) = 0
float _FresnelLayer2MainRamp;//("Ramp",Range(0,8)) = 1
float _FresnelLayer2MainTrLw;//("Tweshhold Low",Range(0,1)) = 0
float _FresnelLayer2MainTrHg;//("Tweshhold Hgh",Range(0,1)) = 1



sampler2D _FresnelLayer2MaskImge;//("Mask Teksture",2D) = "white" {}
vector _FresnelLayer2MaskTMod0;
vector _FresnelLayer2MaskTMod1;
vector _FresnelLayer2MaskTVec0;
vector _FresnelLayer2MaskTVec1;
vector _FresnelLayer2MaskTVec2;
vector _FresnelLayer2MaskTVec3;
vector _FresnelLayer2MaskTVec4;
vector _FresnelLayer2MaskTVec5;
vector _FresnelLayer2MaskTVec6;
vector _FresnelLayer2MaskTVec7;

float _FresnelLayer2MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _FresnelLayer2MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _FresnelLayer2MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _FresnelLayer2MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

//1 = "I'll let you through", 0 = "I'll block you"
float _FresnelLayer2MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _FresnelLayer2MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _FresnelLayer2MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _FresnelLayer2MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _FresnelLayer2MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _FresnelLayer2MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _FresnelLayer2MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _FresnelLayer2MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _FresnelLayer2MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _FresnelLayer2MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _FresnelLayer2MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _FresnelLayer2MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1







fixed4 _VectorCrLayer1MainClr0;//("Kolor0",Color) = (1,1,1,1)
vector _VectorCrLayer1MainVect;//("Vekter0XYZ, NULL",Vector) = (0,0,0,0)
float _VectorCrLayer1MainRamp;
float _VectorCrLayer1MainStwg;//("Stwengh0",Range(0,1)) = 0

sampler2D _VectorCrLayer1MaskImge;//("Mask Teksture",2D) = "white" {}
vector _VectorCrLayer1MaskTMod0;
vector _VectorCrLayer1MaskTMod1;
vector _VectorCrLayer1MaskTVec0;
vector _VectorCrLayer1MaskTVec1;
vector _VectorCrLayer1MaskTVec2;
vector _VectorCrLayer1MaskTVec3;
vector _VectorCrLayer1MaskTVec4;
vector _VectorCrLayer1MaskTVec5;
vector _VectorCrLayer1MaskTVec6;
vector _VectorCrLayer1MaskTVec7;


float _VectorCrLayer1MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _VectorCrLayer1MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _VectorCrLayer1MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _VectorCrLayer1MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

float _VectorCrLayer1MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _VectorCrLayer1MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _VectorCrLayer1MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _VectorCrLayer1MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _VectorCrLayer1MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _VectorCrLayer1MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer1MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _VectorCrLayer1MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer1MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _VectorCrLayer1MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer1MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _VectorCrLayer1MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1



fixed4 _VectorCrLayer2MainClr0;//("Kolor1",Color) = (1,1,1,1)
vector _VectorCrLayer2MainVect;//("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
float _VectorCrLayer2MainRamp;
float _VectorCrLayer2MainStwg;//("Stwengh1",Range(0,1)) = 0

sampler2D _VectorCrLayer2MaskImge;//("Mask Teksture",2D) = "white" {}
vector _VectorCrLayer2MaskTMod0;
vector _VectorCrLayer2MaskTMod1;
vector _VectorCrLayer2MaskTVec0;
vector _VectorCrLayer2MaskTVec1;
vector _VectorCrLayer2MaskTVec2;
vector _VectorCrLayer2MaskTVec3;
vector _VectorCrLayer2MaskTVec4;
vector _VectorCrLayer2MaskTVec5;
vector _VectorCrLayer2MaskTVec6;
vector _VectorCrLayer2MaskTVec7;

float _VectorCrLayer2MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _VectorCrLayer2MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _VectorCrLayer2MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _VectorCrLayer2MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

float _VectorCrLayer2MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _VectorCrLayer2MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _VectorCrLayer2MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _VectorCrLayer2MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _VectorCrLayer2MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _VectorCrLayer2MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer2MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _VectorCrLayer2MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer2MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _VectorCrLayer2MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer2MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _VectorCrLayer2MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1



fixed4 _VectorCrLayer3MainClr0;//("Kolor1",Color) = (1,1,1,1)
vector _VectorCrLayer3MainVect;//("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
float _VectorCrLayer3MainRamp;
float _VectorCrLayer3MainStwg;//("Stwengh1",Range(0,1)) = 0

sampler2D _VectorCrLayer3MaskImge;//("Mask Teksture",2D) = "white" {}
vector _VectorCrLayer3MaskTMod0;
vector _VectorCrLayer3MaskTMod1;
vector _VectorCrLayer3MaskTVec0;
vector _VectorCrLayer3MaskTVec1;
vector _VectorCrLayer3MaskTVec2;
vector _VectorCrLayer3MaskTVec3;
vector _VectorCrLayer3MaskTVec4;
vector _VectorCrLayer3MaskTVec5;
vector _VectorCrLayer3MaskTVec6;
vector _VectorCrLayer3MaskTVec7;

float _VectorCrLayer3MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _VectorCrLayer3MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _VectorCrLayer3MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _VectorCrLayer3MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

float _VectorCrLayer3MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _VectorCrLayer3MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _VectorCrLayer3MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _VectorCrLayer3MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _VectorCrLayer3MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _VectorCrLayer3MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer3MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _VectorCrLayer3MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer3MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _VectorCrLayer3MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer3MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _VectorCrLayer3MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1



fixed4 _VectorCrLayer4MainClr0;//("Kolor1",Color) = (1,1,1,1)
vector _VectorCrLayer4MainVect;//("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
float _VectorCrLayer4MainRamp;
float _VectorCrLayer4MainStwg;//("Stwengh1",Range(0,1)) = 0

sampler2D _VectorCrLayer4MaskImge;//("Mask Teksture",2D) = "white" {}
vector _VectorCrLayer4MaskTMod0;
vector _VectorCrLayer4MaskTMod1;
vector _VectorCrLayer4MaskTVec0;
vector _VectorCrLayer4MaskTVec1;
vector _VectorCrLayer4MaskTVec2;
vector _VectorCrLayer4MaskTVec3;
vector _VectorCrLayer4MaskTVec4;
vector _VectorCrLayer4MaskTVec5;
vector _VectorCrLayer4MaskTVec6;
vector _VectorCrLayer4MaskTVec7;

float _VectorCrLayer4MaskInvR;//("Kolor : InvR",Range(0,1)) = 0
float _VectorCrLayer4MaskInvG;//("Kolor : InvG",Range(0,1)) = 0
float _VectorCrLayer4MaskInvB;//("Kolor : InvB",Range(0,1)) = 0
float _VectorCrLayer4MaskInvA;//("Kolor : InvA",Range(0,1)) = 0

float _VectorCrLayer4MaskPowR;//("Rwed is Mask",Range(0,1)) = 1
float _VectorCrLayer4MaskPowG;//("Gwin is Mask",Range(0,1)) = 1
float _VectorCrLayer4MaskPowB;//("Bwoo is Mask",Range(0,1)) = 1
float _VectorCrLayer4MaskPowA;//("Afwa is Mask",Range(0,1)) = 1

float _VectorCrLayer4MaskRLow;//("Rwed Thresh Low",Range(0,1)) = 0
float _VectorCrLayer4MaskRHgh;//("Rwed Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer4MaskGLow;//("Gwin Thresh Low",Range(0,1)) = 0
float _VectorCrLayer4MaskGHgh;//("Gwin Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer4MaskBLow;//("Bwoo Thresh Low",Range(0,1)) = 0
float _VectorCrLayer4MaskBHgh;//("Bwoo Thresh Hgh",Range(0,1)) = 1
float _VectorCrLayer4MaskALow;//("Afwa Thresh Low",Range(0,1)) = 0
float _VectorCrLayer4MaskAHgh;//("Afwa Thresh Hgh",Range(0,1)) = 1








sampler2D _LightmapLayerMainImge;







sampler2D _GlitterLayer1MainImge;//("Noise Texture",2D) = "black" {}
vector _GlitterLayer1MainTMod0;
vector _GlitterLayer1MainTMod1;
vector _GlitterLayer1MainTVec0;
vector _GlitterLayer1MainTVec1;
vector _GlitterLayer1MainTVec2;
vector _GlitterLayer1MainTVec3;
vector _GlitterLayer1MainTVec4;
vector _GlitterLayer1MainTVec5;
vector _GlitterLayer1MainTVec6;
vector _GlitterLayer1MainTVec7;


float _GlitterLayer1MainHueS;//("Noise Texture Hue Scroll",float) = 0

float _GlitterLayer1GltTrshR;//("Gwitter Thweshhold : Rwed",Range(0,1)) = 0.5
float _GlitterLayer1GltTrshG;//("Gwitter Thweshhold : Gwin",Range(0,1)) = 0.5
float _GlitterLayer1GltTrshB;//("Gwitter Thweshhold : Bwoo",Range(0,1)) = 0.5
float _GlitterLayer1GltTrshA;//("Gwitter Thweshhold : Afwa",Range(0,1)) = 0

fixed4 _GlitterLayer1GlitClor;//("Gwitter Kolor",Color) = (1,1,1,1)








// FRAG FOWARDADD -----------------------------------------------------------------------------

float _RuntimeLightDiffStrg;
float _RuntimeLightSpecStrg;
vector _RuntimeLightSpecGlos;
float _RuntimeLightSpecType;

float _RuntimeLightNormAStrength;

float _RuntimeLightNorm1Strength;
sampler2D _RuntimeLightNorm1Imge;
vector _RuntimeLightNorm1TMod0;
vector _RuntimeLightNorm1TMod1;
vector _RuntimeLightNorm1TVec0;
vector _RuntimeLightNorm1TVec1;
vector _RuntimeLightNorm1TVec2;
vector _RuntimeLightNorm1TVec3;
vector _RuntimeLightNorm1TVec4;
vector _RuntimeLightNorm1TVec5;
vector _RuntimeLightNorm1TVec6;
vector _RuntimeLightNorm1TVec7;


float _RuntimeLightNorm2Strength;
sampler2D _RuntimeLightNorm2Imge;
vector _RuntimeLightNorm2TMod0;
vector _RuntimeLightNorm2TMod1;
vector _RuntimeLightNorm2TVec0;
vector _RuntimeLightNorm2TVec1;
vector _RuntimeLightNorm2TVec2;
vector _RuntimeLightNorm2TVec3;
vector _RuntimeLightNorm2TVec4;
vector _RuntimeLightNorm2TVec5;
vector _RuntimeLightNorm2TVec6;
vector _RuntimeLightNorm2TVec7;







float _PPSColorCrunchChunkR;
float _PPSColorCrunchChunkG;
float _PPSColorCrunchChunkB;
float _PPSColorCrunchChunkA;
