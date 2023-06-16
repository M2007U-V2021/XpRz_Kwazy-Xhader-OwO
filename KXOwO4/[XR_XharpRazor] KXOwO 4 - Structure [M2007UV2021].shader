/*

	Kwazy Xhader 4 OwO

	by:
		XR_XharpRazor



	department:
		M2007UA2009
		M2007UA20093D2+010U2019
		M2007UA20093D2010V2021



	SpecialThanks:

		Unity
			(Built in Unity Shader Var) : https://docs.unity3d.com/Manual/SL-UnityShaderVariables.html
			https://docs.unity3d.com/Manual/SL-BuiltinFunctions.html

		Microsoft Visual Studio Code
			(Text Editor)

		Freya Holmer                         
			(Shader Analysis)           : https://www.youtube.com/watch?v=kfM-yu0iQBk
			(built in Unity Shader Var) : https://www.youtube.com/watch?v=mL8U8tIiRRg where t = 2:25:17

		quill18creates                       
			(General Concept)           : https://www.youtube.com/watch?v=C0uJ4sZelio

		Makin' Stuff Look Good               
			(General Concept)           : https://www.youtube.com/watch?v=T-HXmQAMhG0

		Dapper Dino                          
			(General Concept)           : https://www.youtube.com/watch?v=bR8DHcj6Htg&list=PLS6sInD7ThM3giqACaYCBtIhkMNucqmna

		NiceChord                            
			(ADSR Concept)              : https://www.youtube.com/watch?v=U55KRu68ls8

		Benjamin Swee - Custom Unity Shaders 
			(Fresnel Effect)            : https://www.youtube.com/watch?v=nuoQdbJwAHo
			(Blending Mode)             : https://www.youtube.com/watch?v=vr1u8HbWTbo

		Exsy                                 
			(Fur Shader Explain)        : https://vrchat.com/home/user/usr_f9a43067-7a87-41ea-8514-20d68c049b2f

		Learn Unity@Yang                     
			(Shader Format : Header)    : https://www.youtube.com/watch?v=Xc9pGc8I1fA
			(Normal extrusion)          : https://www.youtube.com/watch?v=Xc9pGc8I1fA
			(Directional Light)         : https://www.youtube.com/watch?v=Xc9pGc8I1fA

		Poiyomi                              
			(Shader Format : Space)
			(Enum)

		Daniel llett
			(Glitter Feature Idea)      : https://www.youtube.com/watch?v=jAOqmx764dA
*/







Shader "M2007U - A2009 - 3D2010 - V2021/[XR_XharpRazor] Kwazy Xhader OwO 4 [M2007UA20093D2010V2021]"
{
Properties
{
	[Header(Kwazy Xhader OwO 4.1.b)]
	[Space(128)]

	[Header(Blend Method)]
	[Enum(UnityEngine.Rendering.BlendMode)] _BlendModeSrc("Bwend Mode Sos ^w^",Float) = 5
	[Enum(UnityEngine.Rendering.BlendMode)] _BlendModeBhd("Bwend Mode Beehind ^w^", Float) = 10
	[Enum(UnityEngine.Rendering.BlendOp)]   _BlendModeOpp("Bwend Mode Opewation ^w^", Float) = 0
	[Enum(Back,0,Front,1,Off,2)] _CullType("Kull Taip ^w^",Float) = 2
	[Space(64)]






	[Header(Stwength Kontrol Panel)]
	[Space(8)]
	_KontrolTextureLayer1("Teksture Layer 1",Range(0,4)) = 1
	_KontrolTextureLayer2("Teksture Layer 2",Range(0,4)) = 1
	_KontrolGlitterLayer1("Gwitter Layer 0",Range(0,4)) = 1
	_KontrolLightMap("Lightmap Layer",Range(0,1)) = 0
	_KontrolRuntimeLight("Runtime Light",Range(0,1)) = 0
	_KontrolLerpClamp("Cwamp Lwerp ?",Range(0,1)) = 1

	[Enum(ChannelAdd,0,StackLayer1First,1,StackLayer2First,2,ShaderTesting,3)] _LayerBlendMode("Layer Bwend Mode",Float) = 0
	[Space(128)]







	[Header(Teksture Layer 01)]
	[Space(64)]
	_TextureLayer1MainImge("Mwain Teksture",2D) = "white" {}
	_TextureLayer1MainTMod("Transform Mode",float) = 0
	_TextureLayer1MainTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer1MainTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer1MainTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer1MainTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_TextureLayer1MainTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_TextureLayer1MainTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_TextureLayer1AlphChck("If Afwa==0, then RGB = 0",Range(0,1)) = 1

	_TextureLayer1MainInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer1MainInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer1MainInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer1MainInvA("Kolor : InvA",Range(0,1)) = 0

	_TextureLayer1MainHSVh("HSV : Hue",Range(-1,1)) = 0
	_TextureLayer1MainHSVs("HSV : Sat",Range(-1,1)) = 0
	_TextureLayer1MainHSVv("HSV : Vbr",Range(-1,1)) = 0

	_TextureLayer1MainClr0("Kolor : Klr0",Color) = (1,1,1,1)
	_TextureLayer1MainClr1("Kolor : Klr1",Color) = (1,1,1,1)
	_TextureLayer1MainClr2("Kolor : Klr2",Color) = (1,1,1,1)
	_TextureLayer1MainClr3("Kolor : Klr3",Color) = (1,1,1,1)
	_TextureLayer1MainClrT("Kolor : Dur0, Dur1, Dur2, Dur3",Vector) = (1,1,0,0)

	_TextureLayer1MainDtcu("Use Distance Fade ?, 0 = no, else yes",Range(0,1)) = 0
	_TextureLayer1MainDtcv("Distance : Near Value, Near Distance, Far Distance, Far Value",vector) = (1,0,1,0)
	

	_TextureLayer1VcCrInfl("Vekter Kolor Infwunce",Range(0,1)) = 0
	_TextureLayer1VcCrFrcA("Vekter Kolor Force Afwa",Range(0,1)) = 0
	_TextureLayer1FrslInfl("Fwensel Infwunce",Range(0,1)) = 0
	_TextureLayer1FrslFrcA("Fwensel ForceAfwa",Range(-1,1)) = 0
	[Space(64)]



	_TextureLayer1DistImge("Distwot Teksture",2D) = "black" {}
	_TextureLayer1DistTMod("Transform Mode",float) = 0
	_TextureLayer1DistTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer1DistTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer1DistTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer1DistTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_TextureLayer1DistTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_TextureLayer1DistTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)


	_TextureLayer1DistPowR("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowG("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowB("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowA("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	[Space(64)]



	_TextureLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_TextureLayer1MaskTMod("Transform Mode",float) = 0
	_TextureLayer1MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer1MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer1MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer1MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_TextureLayer1MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_TextureLayer1MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_TextureLayer1MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer1MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer1MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer1MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_TextureLayer1MaskPowR("Rwed is Mask",Range(0,1)) = 0
	_TextureLayer1MaskPowG("Gwin is Mask",Range(0,1)) = 0
	_TextureLayer1MaskPowB("Bwoo is Mask",Range(0,1)) = 0
	_TextureLayer1MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_TextureLayer1MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_TextureLayer1MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_TextureLayer1MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_TextureLayer1MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_TextureLayer1MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_TextureLayer1MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_TextureLayer1MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_TextureLayer1MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1
	[Space(128)]






	[Header(Teksture Layer 02)]
	[Space(64)]
	_TextureLayer2MainImge("Mwain Teksture",2D) = "white" {}
	_TextureLayer2MainTMod("Transform Mode",float) = 0
	_TextureLayer2MainTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer2MainTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer2MainTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer2MainTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_TextureLayer2MainTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_TextureLayer2MainTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_TextureLayer2AlphChck("If Afwa==0, then RGB = 0",Range(0,1)) = 1

	_TextureLayer2MainInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer2MainInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer2MainInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer2MainInvA("Kolor : InvA",Range(0,1)) = 0

	_TextureLayer2MainHSVh("HSVOf : Hue",Range(-1,1)) = 0
	_TextureLayer2MainHSVs("HSVOf : Sat",Range(-1,1)) = 0
	_TextureLayer2MainHSVv("HSVOf : Vbr",Range(-1,1)) = 0

	_TextureLayer2MainClr0("Kolor : Klr0",Color) = (1,1,1,1)
	_TextureLayer2MainClr1("Kolor : Klr1",Color) = (1,1,1,1)
	_TextureLayer2MainClr2("Kolor : Klr2",Color) = (1,1,1,1)
	_TextureLayer2MainClr3("Kolor : Klr3",Color) = (1,1,1,1)
	_TextureLayer2MainClrT("Kolor : Dur0, Dur1, Dur2, Dur3",Vector) = (1,1,0,0)

	_TextureLayer2MainDtcu("Use Distance Fade ?, 0 = no, else yes",Range(0,1)) = 0
	_TextureLayer2MainDtcv("Distance : Near Value, Near Distance, Far Distance, Far Value",vector) = (1,0,1,0)

	_TextureLayer2VcCrInfl("Vekter Kolor Infwunce",Range(0,1)) = 0
	_TextureLayer2VcCrFrcA("Vekter Kolor Force Afwa",Range(0,1)) = 0
	_TextureLayer2FrslInfl("Fwensel Infwunce",Range(0,1)) = 0
	_TextureLayer2FrslFrcA("Fwensel ForceAfwa",Range(-1,1)) = 0
	[Space(64)]



	_TextureLayer2DistImge("Distwot Teksture",2D) = "black" {}
	_TextureLayer2DistTMod("Transform Mode",float) = 0
	_TextureLayer2DistTShft("Trf_Shift : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer2DistTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer2DistTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer2DistTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_TextureLayer2DistTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_TextureLayer2DistTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_TextureLayer2DistPowR("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowG("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowB("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowA("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	[Space(64)]



	_TextureLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_TextureLayer2MaskTMod("Transform Mode",float) = 0
	_TextureLayer2MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer2MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer2MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer2MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_TextureLayer2MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_TextureLayer2MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_TextureLayer2MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer2MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer2MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer2MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_TextureLayer2MaskPowR("Rwed is Mask",Range(0,1)) = 0
	_TextureLayer2MaskPowG("Gwin is Mask",Range(0,1)) = 0
	_TextureLayer2MaskPowB("Bwoo is Mask",Range(0,1)) = 0
	_TextureLayer2MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_TextureLayer2MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_TextureLayer2MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_TextureLayer2MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_TextureLayer2MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_TextureLayer2MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_TextureLayer2MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_TextureLayer2MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_TextureLayer2MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1
	[Space(128)]







	//fresnel
	[Header(Fresnel Layer 01)]
	[Space(64)]
	_FresnelLayer1MainStwg("Intensity",Range(0,1)) = 0
	_FresnelLayer1MainClr0("Kolor0",Color) = (1,1,1,1)
	_FresnelLayer1MainClr1("Kolor1",Color) = (1,1,1,1)
	_FresnelLayer1MainClr2("Kolor2",Color) = (1,1,1,1)
	_FresnelLayer1MainClr3("Kolor3",Color) = (1,1,1,1)
	_FresnelLayer1MainClrT("Kolor Duration",vector) = (1,1,1,1)
	_FresnelLayer1MainRgIv("Wejen Invert",Range(0,1)) = 0
	_FresnelLayer1MainRamp("Ramp",Range(0,8)) = 1
	_FresnelLayer1MainTrLw("Tweshhold Low",Range(0,1)) = 0
	_FresnelLayer1MainTrHg("Tweshhold Hgh",Range(0,1)) = 1
	[Space(64)]




	_FresnelLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_FresnelLayer1MaskTMod("Transform Mode",float) = 0
	_FresnelLayer1MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_FresnelLayer1MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_FresnelLayer1MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_FresnelLayer1MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_FresnelLayer1MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_FresnelLayer1MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_FresnelLayer1MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_FresnelLayer1MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_FresnelLayer1MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_FresnelLayer1MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_FresnelLayer1MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_FresnelLayer1MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_FresnelLayer1MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_FresnelLayer1MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_FresnelLayer1MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_FresnelLayer1MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_FresnelLayer1MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_FresnelLayer1MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_FresnelLayer1MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_FresnelLayer1MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_FresnelLayer1MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_FresnelLayer1MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1
	[Space(64)]








	[Header(Fresnel Layer 02)]
	[Space(64)]
	_FresnelLayer2MainStwg("Intensity",Range(0,1)) = 0
	_FresnelLayer2MainClr0("Kolor0",Color) = (1,1,1,1)
	_FresnelLayer2MainClr1("Kolor1",Color) = (1,1,1,1)
	_FresnelLayer2MainClr2("Kolor2",Color) = (1,1,1,1)
	_FresnelLayer2MainClr3("Kolor3",Color) = (1,1,1,1)
	_FresnelLayer2MainClrT("Kolor Duration",vector) = (1,1,1,1)
	_FresnelLayer2MainRgIv("Wejen Invert",Range(0,1)) = 0
	_FresnelLayer2MainRamp("Ramp",Range(0,8)) = 1
	_FresnelLayer2MainTrLw("Tweshhold Low",Range(0,1)) = 0
	_FresnelLayer2MainTrHg("Tweshhold Hgh",Range(0,1)) = 1
	[Space(64)]




	_FresnelLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_FresnelLayer2MaskTMod("Transform Mode",float) = 0
	_FresnelLayer2MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_FresnelLayer2MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_FresnelLayer2MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_FresnelLayer2MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_FresnelLayer2MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_FresnelLayer2MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_FresnelLayer2MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_FresnelLayer2MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_FresnelLayer2MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_FresnelLayer2MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_FresnelLayer2MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_FresnelLayer2MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_FresnelLayer2MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_FresnelLayer2MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_FresnelLayer2MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_FresnelLayer2MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_FresnelLayer2MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_FresnelLayer2MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_FresnelLayer2MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_FresnelLayer2MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_FresnelLayer2MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_FresnelLayer2MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1
	[Space(128)]





	[Header(Vekter Kolor)]
	[Space(8)]

	[Header(Vekter Kolor 1)]

	_VectorCrLayer1MainClr0("Kolor0",Color) = (1,1,1,1)
	_VectorCrLayer1MainVect("Vekter0XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer1MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer1MainStwg("Stwengh0",Range(0,1)) = 0

	_VectorCrLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer1MaskTMod("Transform Mode",float) = 0
	_VectorCrLayer1MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_VectorCrLayer1MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_VectorCrLayer1MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_VectorCrLayer1MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_VectorCrLayer1MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_VectorCrLayer1MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_VectorCrLayer1MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer1MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer1MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer1MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer1MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer1MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer1MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer1MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer1MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer1MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer1MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer1MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1

	[Space(8)]

	[Header(Vekter Kolor 2)]

	_VectorCrLayer2MainClr0("Kolor1",Color) = (1,1,1,1)
	_VectorCrLayer2MainVect("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer2MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer2MainStwg("Stwengh1",Range(0,1)) = 0

	_VectorCrLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer2MaskTMod("Transform Mode",float) = 0
	_VectorCrLayer2MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_VectorCrLayer2MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_VectorCrLayer2MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_VectorCrLayer2MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_VectorCrLayer2MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_VectorCrLayer2MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)


	_VectorCrLayer2MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer2MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer2MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer2MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer2MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer2MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer2MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer2MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer2MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer2MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer2MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer2MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1

	[Space(8)]

	[Header(Vekter Kolor 3)]

	_VectorCrLayer3MainClr0("Kolor1",Color) = (1,1,1,1)
	_VectorCrLayer3MainVect("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer3MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer3MainStwg("Stwengh1",Range(0,1)) = 0

	_VectorCrLayer3MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer3MaskTMod("Transform Mode",float) = 0
	_VectorCrLayer3MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_VectorCrLayer3MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_VectorCrLayer3MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_VectorCrLayer3MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_VectorCrLayer3MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_VectorCrLayer3MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)


	_VectorCrLayer3MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer3MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer3MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer3MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer3MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer3MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer3MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer3MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer3MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer3MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer3MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer3MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1

	[Space(8)]

	[Header(Vekter Kolor 4)]

	_VectorCrLayer4MainClr0("Kolor1",Color) = (1,1,1,1)
	_VectorCrLayer4MainVect("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer4MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer4MainStwg("Stwengh1",Range(0,1)) = 0

	_VectorCrLayer4MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer4MaskTMod("Transform Mode",float) = 0
	_VectorCrLayer4MaskTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_VectorCrLayer4MaskTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_VectorCrLayer4MaskTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_VectorCrLayer4MaskTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_VectorCrLayer4MaskTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_VectorCrLayer4MaskTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)


	_VectorCrLayer4MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer4MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer4MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer4MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer4MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer4MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer4MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer4MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer4MaskRLow("Rwed Thresh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskRHgh("Rwed Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer4MaskGLow("Gwin Thresh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskGHgh("Gwin Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer4MaskBLow("Bwoo Thresh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskBHgh("Bwoo Thresh Hgh",Range(0,1)) = 1
	_VectorCrLayer4MaskALow("Afwa Thresh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskAHgh("Afwa Thresh Hgh",Range(0,1)) = 1
	[Space(128)]




	[Header(Lightmap Layer)]
	[Space(64)]
	_LightmapLayerMainImge("Lightmap from Unity", 2D) = "white" {}





	[Header(Gwitters)]
	[Space(64)]
	_GlitterLayer1MainImge("Noise Texture",2D) = "black" {}
	_GlitterLayer1MainTMod("Transform Mode",float) = 0
	_GlitterLayer1MainTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_GlitterLayer1MainTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_GlitterLayer1MainTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_GlitterLayer1MainTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_GlitterLayer1MainTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_GlitterLayer1MainTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)


	_GlitterLayer1MainHueS("Noise Texture Hue Scroll",float) = 0

	_GlitterLayer1GltTrshR("Gwitter Thweshhold : Rwed",Range(0,1)) = 0.5
	_GlitterLayer1GltTrshG("Gwitter Thweshhold : Gwin",Range(0,1)) = 0.5
	_GlitterLayer1GltTrshB("Gwitter Thweshhold : Bwoo",Range(0,1)) = 0.5
	_GlitterLayer1GltTrshA("Gwitter Thweshhold : Afwa",Range(0,1)) = 0

	_GlitterLayer1GlitClor("Gwitter Kolor",Color) = (1,1,1,1)
	[Space(128)]






	[Header(Verteks Distwot)]
	[Space(64)]

	_AxisDistortXImge("X Distwot texture",2D) = "black" {}
	_AxisDistortXTMod("Transform Mode",float) = 0
	_AxisDistortXTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_AxisDistortXTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_AxisDistortXTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_AxisDistortXTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_AxisDistortXTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_AxisDistortXTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_AxisDistortXPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortXAdjt("Distwot Adjust",Float) = 0

	[Space(64)]
	_AxisDistortYImge("Y Distwot texture",2D) = "black" {}
	_AxisDistortYTMod("Transform Mode",float) = 0
	_AxisDistortYTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_AxisDistortYTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_AxisDistortYTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_AxisDistortYTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_AxisDistortYTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_AxisDistortYTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_AxisDistortYPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortYAdjt("Distwot Adjust",Float) = 0

	[Space(64)]
	_AxisDistortZImge("Z Distwot texture",2D) = "black" {}
	_AxisDistortZTMod("Transform Mode",float) = 0
	_AxisDistortZTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_AxisDistortZTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_AxisDistortZTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_AxisDistortZTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_AxisDistortZTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_AxisDistortZTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_AxisDistortZPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortZAdjt("Distwot Adjust",Float) = 0
	[Space(128)]





	[Header(Verteks Normal Extwude)]
	[Space(64)]

	_NormalExtrudeMainImge("Extrude Teksture",2D) = "white" {}
	_NormalExtrudeMainTMod("Transform Mode",float) = 0
	_NormalExtrudeMainTShft("Trf_Shft : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_NormalExtrudeMainTRott("Trf_Rott : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_NormalExtrudeMainTScPx("Trf_ScPx : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_NormalExtrudeMainTSkew("Trf_Skew : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_NormalExtrudeMainTRadl("Trf_Radl : CenX, CenY, Afwa, Roll",vector) = (0.5,0.5,0,0)
	_NormalExtrudeMainTCrpj("Trf_Crpj : XHgh, XRad, YHgh, YRad",vector) = (0.5,0.5,0.5,0.5)

	_NormDistortAmpl("Ampwitude",Float) = 0
	_NormDistortFreq("Fwikuensy",Float) = 0
	_NormalExtrudeRS("Rwed Stwength",Vector) = (0,0,0,0)
	_NormalExtrudeRD("Rwed Duwation",Vector) = (1,0,0,0)
	_NormalExtrudeGS("Gwin Stwength",Vector) = (0,0,0,0)
	_NormalExtrudeGD("Gwin Duwation",Vector) = (1,0,0,0)
	_NormalExtrudeBS("Bwoo Stwength",Vector) = (0,0,0,0)
	_NormalExtrudeBD("Bwoo Duwation",Vector) = (1,0,0,0)
	_NormalExtrudeAS("Afwa Stwength",Vector) = (0,0,0,0)
	_NormalExtrudeAD("Afwa Duwation",Vector) = (1,0,0,0)
	//[Space(128)]





	[Header(Runtime Light)]
	[Space(64)]

	_RuntimeLightDiffStrg("Diff Stwength",range(0,1)) = 1
	_RuntimeLightSpecStrg("Spek Stwength",range(0,1)) = 1
	_RuntimeLightSpecGlos("Gwos Stwength",float) = 1



	
	//[Header(Post Processing)]
	//[Space(64)]

	//[Header(Color Crunch)]
	//[Space(8)]
	//_PPSColorCrunchChunkR("Rwed Chunks",float) = 1
	//_PPSColorCrunchChunkG("Gwin Chunks",float) = 1
	//_PPSColorCrunchChunkB("Bwoo Chunks",float) = 1
	//_PPSColorCrunchChunkA("Afwa Chunks",float) = 1
	

	
	

	
}

SubShader
{
	Tags
	{
		"Queue" = "Transparent"
		"RenderType" = "Transparent"	
	}

	Pass
	{

		Tags
		{
			"LightMode" = "ForwardBase" //base pass
		}

		//Blend SrcAlpha OneMinusSrcAlpha
		Blend [_BlendModeSrc] [_BlendModeBhd]
		BlendOp [_BlendModeOpp]

		Cull [_CullType]

		
		// 0: Zero	                float4(0.0, 0.0, 0.0, 0.0),
		// 1: One	                float4(1.0, 1.0, 1.0, 1.0),
		// 2: DstColor	            destinationColor,
		// 3: SrcColor	            sourceColor,
		// 4: OneMinusDstColor	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
		// 5: SrcAlpha	            sourceColor.aaaa,
		// 6: OneMinusSrcColor	    float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
		// 7: DstAlpha	            destinationColor.aaaa,
		// 8: OneMinusDstAlpha	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor.,
		// 9: SrcAlphaSaturate     	saturate(sourceColor.aaaa),
		// 10: OneMinusSrcAlpha		float4(1.0, 1.0, 1.0, 1.0) - sourceColor.aaaa,
		
	
		
		

		CGPROGRAM

			#pragma vertex verteksXD
			#pragma fragment furagmentXD
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			//#include "UnityLightingCommon.cginc"

			
			#include "[XR_XharpRazor] KXOwO 4 - Struct Appdata [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO 4 - Struct V2F [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO 4 - FOwO Functions [M2007UV2021].cginc"

			#include "[XR_XharpRazor] KXOwO 4 - InterfaceVarDeclaration [M2007UV2021].cginc"


			v2f verteksXD(appdata v)
			{
				v2f o;
				#include "[XR_XharpRazor] KXOwO 4 - Pragma Vert [M2007UV2021].cginc"
				return o;
			}

			fixed4 furagmentXD(v2f i) : SV_Target
			{
				#include "[XR_XharpRazor] KXOwO 4 - Pragma Frag ForwardBase [M2007UV2021].cginc"
			}

		ENDCG
		
	}

	Pass
	{
		Tags
		{
			"LightMode" = "ForwardAdd"
		}

		Blend One One

		CGPROGRAM

			#pragma vertex verteksXD
			#pragma fragment furagmentXD
			#pragma multi_compile_fwdadd
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"

			#include "[XR_XharpRazor] KXOwO 4 - Struct Appdata [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO 4 - Struct V2F [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO 4 - FOwO Functions [M2007UV2021].cginc"

			#include "[XR_XharpRazor] KXOwO 4 - InterfaceVarDeclaration [M2007UV2021].cginc"

			

			v2f verteksXD(appdata v)
			{
				v2f o;
				#include "[XR_XharpRazor] KXOwO 4 - Pragma Vert [M2007UV2021].cginc"
				return o;
			}

			

			fixed4 furagmentXD(v2f i) : SV_Target
			{
				#include "[XR_XharpRazor] KXOwO 4 - Pragma Frag ForwardAdd [M2007UV2021].cginc"
			}

		ENDCG
	}
}

}