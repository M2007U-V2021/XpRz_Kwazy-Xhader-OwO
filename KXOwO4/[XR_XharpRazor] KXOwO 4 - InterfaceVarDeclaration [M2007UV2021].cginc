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
float _AxisDistortXTMod;//("Transform Mode",Range(0,1)) = 0
vector _AxisDistortXTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _AxisDistortXTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _AxisDistortXTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _AxisDistortXTSkew;
vector _AxisDistortXTRadl;
vector _AxisDistortXTCrpj;
vector _AxisDistortXPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
float _AxisDistortXAdjt;//("Distwot Adjust",Float) = 0

sampler2D _AxisDistortYImge;//("X Distwot texture",2D) = "black" {}
float _AxisDistortYTMod;//("Transform Mode",Range(0,1)) = 0
vector _AxisDistortYTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _AxisDistortYTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _AxisDistortYTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _AxisDistortYTSkew;
vector _AxisDistortYTRadl;
vector _AxisDistortYTCrpj;
vector _AxisDistortYPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
float _AxisDistortYAdjt;//("Distwot Adjust",Float) = 0

sampler2D _AxisDistortZImge;//("X Distwot texture",2D) = "black" {}
float _AxisDistortZTMod;//("Transform Mode",Range(0,1)) = 0
vector _AxisDistortZTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _AxisDistortZTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _AxisDistortZTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _AxisDistortZTSkew;
vector _AxisDistortZTRadl;
vector _AxisDistortZTCrpj;
vector _AxisDistortZPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
float _AxisDistortZAdjt;//("Distwot Adjust",Float) = 0






sampler2D _NormalExtrudeMainImge;//("Extrude Teksture",2D) = "white" {}
float _NormalExtrudeMainTMod;//("Transform Mode",Range(0,1)) = 0
vector _NormalExtrudeMainTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _NormalExtrudeMainTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _NormalExtrudeMainTScPx;//("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
vector _NormalExtrudeMainTSkew;
vector _NormalExtrudeMainTRadl;
vector _NormalExtrudeMainTCrpj;

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
float  _TextureLayer1MainTMod;
vector _TextureLayer1MainTShft;//("POS : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _TextureLayer1MainTRott;//("ROT : Afwa, Roll, CenX, CenY",Vector) = (0,0,0,0)
vector _TextureLayer1MainTScPx;//("POS : SclX, SclY, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1MainTSkew;
vector _TextureLayer1MainTRadl;
vector _TextureLayer1MainTCrpj;

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
float  _TextureLayer1DistTMod;
vector _TextureLayer1DistTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _TextureLayer1DistTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _TextureLayer1DistTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _TextureLayer1DistTSkew;
vector _TextureLayer1DistTRadl;
vector _TextureLayer1DistTCrpj;

vector _TextureLayer1DistPowR;//("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1DistPowG;//("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1DistPowB;//("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer1DistPowA;//("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)




sampler2D _TextureLayer1MaskImge;//("Mask Teksture",2D) = "white" {}
float  _TextureLayer1MaskTMod;
vector _TextureLayer1MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _TextureLayer1MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _TextureLayer1MaskTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _TextureLayer1MaskTSkew;
vector _TextureLayer1MaskTRadl;
vector _TextureLayer1MaskTCrpj;

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

float  _TextureLayer2MainTMod;
vector _TextureLayer2MainTShft;//("POS : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _TextureLayer2MainTRott;//("ROT : Afwa, Roll, CenX, CenY",Vector) = (0,0,0,0)
vector _TextureLayer2MainTScPx;//("POS : SclX, SclY, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2MainTSkew;
vector _TextureLayer2MainTRadl;
vector _TextureLayer2MainTCrpj;

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
float  _TextureLayer2DistTMod;
vector _TextureLayer2DistTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _TextureLayer2DistTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _TextureLayer2DistTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _TextureLayer2DistTSkew;
vector _TextureLayer2DistTRadl;
vector _TextureLayer2DistTCrpj;

vector _TextureLayer2DistPowR;//("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2DistPowG;//("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2DistPowB;//("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
vector _TextureLayer2DistPowA;//("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)




sampler2D _TextureLayer2MaskImge;//("Mask Teksture",2D) = "white" {}
float  _TextureLayer2MaskTMod;
vector _TextureLayer2MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _TextureLayer2MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _TextureLayer2MaskTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _TextureLayer2MaskTSkew;
vector _TextureLayer2MaskTRadl;
vector _TextureLayer2MaskTCrpj;

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
float  _FresnelLayer1MaskTMod;
vector _FresnelLayer1MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _FresnelLayer1MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _FresnelLayer1MaskTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _FresnelLayer1MaskTSkew;
vector _FresnelLayer1MaskTRadl;
vector _FresnelLayer1MaskTCrpj;

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
float  _FresnelLayer2MaskTMod;
vector _FresnelLayer2MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _FresnelLayer2MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _FresnelLayer2MaskTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _FresnelLayer2MaskTSkew;
vector _FresnelLayer2MaskTRadl;
vector _FresnelLayer2MaskTCrpj;

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
float _VectorCrLayer1MaskTMod;//("Transform Mode",float) = 0
vector _VectorCrLayer1MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _VectorCrLayer1MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _VectorCrLayer1MaskTScPx;//("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
vector _VectorCrLayer1MaskTSkew;//("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
vector _VectorCrLayer1MaskTRadl;
vector _VectorCrLayer1MaskTCrpj;

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
float _VectorCrLayer2MaskTMod;//("Transform Mode",float) = 0
vector _VectorCrLayer2MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _VectorCrLayer2MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _VectorCrLayer2MaskTScPx;//("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
vector _VectorCrLayer2MaskTSkew;//("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
vector _VectorCrLayer2MaskTRadl;
vector _VectorCrLayer2MaskTCrpj;

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
float _VectorCrLayer3MaskTMod;//("Transform Mode",float) = 0
vector _VectorCrLayer3MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _VectorCrLayer3MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _VectorCrLayer3MaskTScPx;//("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
vector _VectorCrLayer3MaskTSkew;//("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
vector _VectorCrLayer3MaskTRadl;
vector _VectorCrLayer3MaskTCrpj;

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
float _VectorCrLayer4MaskTMod;//("Transform Mode",float) = 0
vector _VectorCrLayer4MaskTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _VectorCrLayer4MaskTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _VectorCrLayer4MaskTScPx;//("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
vector _VectorCrLayer4MaskTSkew;//("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
vector _VectorCrLayer4MaskTRadl;
vector _VectorCrLayer4MaskTCrpj;

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
float _GlitterLayer1MainTMod;//("Transform Mode",Range(0,1)) = 0
vector _GlitterLayer1MainTShft;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
vector _GlitterLayer1MainTRott;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
vector _GlitterLayer1MainTScPx;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
vector _GlitterLayer1MainTSkew;
vector _GlitterLayer1MainTRadl;
vector _GlitterLayer1MainTCrpj;

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

float _RuntimeLightNormAStrength;

float _RuntimeLightNorm1Strength;
sampler2D _RuntimeLightNorm1Imge;
float _RuntimeLightNorm1TMod;
vector _RuntimeLightNorm1TShft;
vector _RuntimeLightNorm1TRott;
vector _RuntimeLightNorm1TScPx;
vector _RuntimeLightNorm1TSkew;
vector _RuntimeLightNorm1TRadl;
vector _RuntimeLightNorm1TCrpj;

float _RuntimeLightNorm2Strength;
sampler2D _RuntimeLightNorm2Imge;
float _RuntimeLightNorm2TMod;
vector _RuntimeLightNorm2TShft;
vector _RuntimeLightNorm2TRott;
vector _RuntimeLightNorm2TScPx;
vector _RuntimeLightNorm2TSkew;
vector _RuntimeLightNorm2TRadl;
vector _RuntimeLightNorm2TCrpj;







float _PPSColorCrunchChunkR;
float _PPSColorCrunchChunkG;
float _PPSColorCrunchChunkB;
float _PPSColorCrunchChunkA;
