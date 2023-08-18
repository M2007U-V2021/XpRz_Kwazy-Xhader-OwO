/*

	Kwazy Xhader OwO 5

	by:
		XR_XharpRazor

	department:
		M2007UA2009
		M2007UA20093D2010U2019
		M2007UA20093D2010V2021



	SpecialThanks:

		Unity
			(Built in Unity Shader Variables) : https://docs.unity3d.com/Manual/SL-UnityShaderVariables.html
			(Built in Unity Shader Functions) : https://docs.unity3d.com/Manual/SL-BuiltinFunctions.html

		Microsoft Visual Studio Code
			(Text Editor)

		Freya Holmér        
			(Shader Analysis)                 : https://www.youtube.com/watch?v=kfM-yu0iQBk
			(built in Unity Shader Var)       : https://www.youtube.com/watch?v=mL8U8tIiRRg where t = 2:25:17
			(Runtime Lights)                  : https://www.youtube.com/watch?v=E4PHFnvMzFc
			(Property tag [NoScaleOffset])    : https://www.youtube.com/watch?v=E4PHFnvMzFc where t = 1:12:29

		quill18creates                       
			(General Concept)                 : https://www.youtube.com/watch?v=C0uJ4sZelio

		Makin' Stuff Look Good               
			(General Concept)                 : https://www.youtube.com/watch?v=T-HXmQAMhG0

		Dapper Dino                          
			(General Concept)                 : https://www.youtube.com/watch?v=bR8DHcj6Htg&list=PLS6sInD7ThM3giqACaYCBtIhkMNucqmna

		NiceChord                            
			(ADSR Concept)                    : https://www.youtube.com/watch?v=U55KRu68ls8

		Benjamin Swee - Custom Unity Shaders 
			(Fresnel Effect)                  : https://www.youtube.com/watch?v=nuoQdbJwAHo
			(Blending Mode)                   : https://www.youtube.com/watch?v=vr1u8HbWTbo

		Exsy                                 
			(Fur Shader Explain)              : https://vrchat.com/home/user/usr_f9a43067-7a87-41ea-8514-20d68c049b2f

		Learn Unity@Yang                     
			(Property tag [Header])           : https://www.youtube.com/watch?v=Xc9pGc8I1fA
			(Normal extrusion)                : https://www.youtube.com/watch?v=Xc9pGc8I1fA
			(Directional Light)               : https://www.youtube.com/watch?v=Xc9pGc8I1fA

		Poiyomi                              
			(Shader Format : Space)
			(Enum)
			(Stochastic Sampling as Inspitation)

		Daniel llett
			(Glitter Feature Idea)            : https://www.youtube.com/watch?v=jAOqmx764dA
*/







Shader "M2007U - A2009 - 3D2010 - V2021/[XR_XharpRazor] KXOwO 6 EN [M2007UV2021]"
{
Properties
{
	[Header(Kwazy Xhader OwO 6.1)]
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
	[NoScaleOffset] _TextureLayer1MainImge("Mwain Teksture",2D) = "white" {}
	_TextureLayer1MainTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_TextureLayer1MainTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_TextureLayer1MainTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_TextureLayer1MainTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_TextureLayer1MainTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_TextureLayer1MainTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_TextureLayer1MainTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_TextureLayer1MainTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_TextureLayer1MainTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_TextureLayer1MainTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_TextureLayer1AlphChck("If Afwa==0, then RGB = 0",Range(0,1)) = 1

	_TextureLayer1MainInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer1MainInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer1MainInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer1MainInvA("Kolor : InvA",Range(0,1)) = 0

	_TextureLayer1MainHSVh("HSV : Hue",Range(-1,1)) = 0
	_TextureLayer1MainHSVs("HSV : Sat",Range(-1,1)) = 0
	_TextureLayer1MainHSVv("HSV : Vbr",Range(-1,1)) = 0

	_TextureLayer1MainClr0("Kolor Anim : Klr0",Color) = (1,1,1,1)
	_TextureLayer1MainClr1("Kolor Anim : Klr1",Color) = (1,1,1,1)
	_TextureLayer1MainClr2("Kolor Anim : Klr2",Color) = (1,1,1,1)
	_TextureLayer1MainClr3("Kolor Anim : Klr3",Color) = (1,1,1,1)
	_TextureLayer1MainClrT("Kolor Anim : Duwations",Vector) = (1,1,0,0)

	_TextureLayer1MainDtcu("Use Distance Fade ?, 0 = no, else yes",Range(0,1)) = 0
	_TextureLayer1MainDtcv("Distance : Near Value, Near Distance, Far Distance, Far Value",vector) = (1,0,1,0)
	

	_TextureLayer1VcCrInfl("Vekter Kolor Infwunce",Range(0,1)) = 0
	_TextureLayer1VcCrFrcA("Vekter Kolor Force Afwa",Range(0,1)) = 0
	_TextureLayer1FrslInfl("Fwensel Infwunce",Range(0,1)) = 0
	_TextureLayer1FrslFrcA("Fwensel ForceAfwa",Range(-1,1)) = 0
	[Space(64)]



	[NoScaleOffset] _TextureLayer1DistImge("Distwot Teksture",2D) = "black" {}
	_TextureLayer1DistTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_TextureLayer1DistTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_TextureLayer1DistTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_TextureLayer1DistTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_TextureLayer1DistTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_TextureLayer1DistTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_TextureLayer1DistTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_TextureLayer1DistTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_TextureLayer1DistTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_TextureLayer1DistTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)


	_TextureLayer1DistPowR("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowG("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowB("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowA("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	[Space(64)]



	[NoScaleOffset] _TextureLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_TextureLayer1MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_TextureLayer1MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_TextureLayer1MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_TextureLayer1MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer1MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer1MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer1MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_TextureLayer1MaskPowR("Rwed is Mask",Range(0,1)) = 0
	_TextureLayer1MaskPowG("Gwin is Mask",Range(0,1)) = 0
	_TextureLayer1MaskPowB("Bwoo is Mask",Range(0,1)) = 0
	_TextureLayer1MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_TextureLayer1MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_TextureLayer1MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_TextureLayer1MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_TextureLayer1MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_TextureLayer1MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_TextureLayer1MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_TextureLayer1MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_TextureLayer1MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1
	[Space(128)]






	[Header(Teksture Layer 02)]
	[Space(64)]
	[NoScaleOffset] _TextureLayer2MainImge("Mwain Teksture",2D) = "white" {}
	_TextureLayer2MainTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_TextureLayer2MainTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_TextureLayer2MainTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_TextureLayer2MainTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_TextureLayer2MainTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_TextureLayer2MainTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_TextureLayer2MainTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_TextureLayer2MainTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_TextureLayer2MainTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_TextureLayer2MainTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_TextureLayer2AlphChck("If Afwa==0, then RGB = 0",Range(0,1)) = 1

	_TextureLayer2MainInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer2MainInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer2MainInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer2MainInvA("Kolor : InvA",Range(0,1)) = 0

	_TextureLayer2MainHSVh("HSVOf : Hue",Range(-1,1)) = 0
	_TextureLayer2MainHSVs("HSVOf : Sat",Range(-1,1)) = 0
	_TextureLayer2MainHSVv("HSVOf : Vbr",Range(-1,1)) = 0

	_TextureLayer2MainClr0("Kolor Anim : Klr0",Color) = (1,1,1,1)
	_TextureLayer2MainClr1("Kolor Anim : Klr1",Color) = (1,1,1,1)
	_TextureLayer2MainClr2("Kolor Anim : Klr2",Color) = (1,1,1,1)
	_TextureLayer2MainClr3("Kolor Anim : Klr3",Color) = (1,1,1,1)
	_TextureLayer2MainClrT("Kolor Anim : Duwations",Vector) = (1,1,0,0)

	_TextureLayer2MainDtcu("Use Distance Fade ?, 0 = no, else yes",Range(0,1)) = 0
	_TextureLayer2MainDtcv("Distance : Near Value, Near Distance, Far Distance, Far Value",vector) = (1,0,1,0)

	_TextureLayer2VcCrInfl("Vekter Kolor Infwunce",Range(0,1)) = 0
	_TextureLayer2VcCrFrcA("Vekter Kolor Force Afwa",Range(0,1)) = 0
	_TextureLayer2FrslInfl("Fwensel Infwunce",Range(0,1)) = 0
	_TextureLayer2FrslFrcA("Fwensel ForceAfwa",Range(-1,1)) = 0
	[Space(64)]



	[NoScaleOffset] _TextureLayer2DistImge("Distwot Teksture",2D) = "black" {}
	_TextureLayer2DistTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_TextureLayer2DistTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_TextureLayer2DistTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_TextureLayer2DistTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_TextureLayer2DistTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_TextureLayer2DistTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_TextureLayer2DistTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_TextureLayer2DistTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_TextureLayer2DistTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_TextureLayer2DistTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_TextureLayer2DistPowR("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowG("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowB("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowA("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	[Space(64)]



	[NoScaleOffset] _TextureLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_TextureLayer2MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_TextureLayer2MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_TextureLayer2MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_TextureLayer2MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_TextureLayer2MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_TextureLayer2MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_TextureLayer2MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_TextureLayer2MaskPowR("Rwed is Mask",Range(0,1)) = 0
	_TextureLayer2MaskPowG("Gwin is Mask",Range(0,1)) = 0
	_TextureLayer2MaskPowB("Bwoo is Mask",Range(0,1)) = 0
	_TextureLayer2MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_TextureLayer2MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_TextureLayer2MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_TextureLayer2MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_TextureLayer2MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_TextureLayer2MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_TextureLayer2MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_TextureLayer2MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_TextureLayer2MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1
	[Space(128)]







	//fresnel
	[Header(Fresnel Layer 01)]
	[Space(64)]
	_FresnelLayer1MainStwg("Intensity",Range(0,1)) = 0
	_FresnelLayer1MainClr0("Kolor Anim : Klr0",Color) = (1,1,1,1)
	_FresnelLayer1MainClr1("Kolor Anim : Klr1",Color) = (1,1,1,1)
	_FresnelLayer1MainClr2("Kolor Anim : Klr2",Color) = (1,1,1,1)
	_FresnelLayer1MainClr3("Kolor Anim : Klr3",Color) = (1,1,1,1)
	_FresnelLayer1MainClrT("Kolor Anim : Duwations",vector) = (1,1,1,1)
	_FresnelLayer1MainRgIv("Wejen Invert",Range(0,1)) = 0
	_FresnelLayer1MainRamp("Ramp",Range(0,8)) = 1
	_FresnelLayer1MainTrLw("Tweshhold Low",Range(0,1)) = 0
	_FresnelLayer1MainTrHg("Tweshhold Hgh",Range(0,1)) = 1
	[Space(64)]




	[NoScaleOffset] _FresnelLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_FresnelLayer1MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_FresnelLayer1MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_FresnelLayer1MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)
	

	_FresnelLayer1MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_FresnelLayer1MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_FresnelLayer1MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_FresnelLayer1MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_FresnelLayer1MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_FresnelLayer1MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_FresnelLayer1MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_FresnelLayer1MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_FresnelLayer1MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_FresnelLayer1MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_FresnelLayer1MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_FresnelLayer1MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_FresnelLayer1MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_FresnelLayer1MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_FresnelLayer1MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_FresnelLayer1MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1
	[Space(64)]








	[Header(Fresnel Layer 02)]
	[Space(64)]
	_FresnelLayer2MainStwg("Intensity",Range(0,1)) = 0
	_FresnelLayer2MainClr0("Kolor Anim : Klr0",Color) = (1,1,1,1)
	_FresnelLayer2MainClr1("Kolor Anim : Klr1",Color) = (1,1,1,1)
	_FresnelLayer2MainClr2("Kolor Anim : Klr2",Color) = (1,1,1,1)
	_FresnelLayer2MainClr3("Kolor Anim : Klr3",Color) = (1,1,1,1)
	_FresnelLayer2MainClrT("Kolor Anim : Duwations",vector) = (1,1,1,1)
	_FresnelLayer2MainRgIv("Wejen Invert",Range(0,1)) = 0
	_FresnelLayer2MainRamp("Ramp",Range(0,8)) = 1
	_FresnelLayer2MainTrLw("Tweshhold Low",Range(0,1)) = 0
	_FresnelLayer2MainTrHg("Tweshhold Hgh",Range(0,1)) = 1
	[Space(64)]




	[NoScaleOffset] _FresnelLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_FresnelLayer2MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_FresnelLayer2MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_FresnelLayer2MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_FresnelLayer2MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_FresnelLayer2MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_FresnelLayer2MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_FresnelLayer2MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_FresnelLayer2MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_FresnelLayer2MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_FresnelLayer2MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_FresnelLayer2MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_FresnelLayer2MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_FresnelLayer2MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_FresnelLayer2MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_FresnelLayer2MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_FresnelLayer2MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_FresnelLayer2MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_FresnelLayer2MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_FresnelLayer2MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1
	[Space(128)]





	[Header(Vekter Kolor)]
	[Space(8)]

	[Header(Vekter Kolor 1)]

	_VectorCrLayer1MainClr0("Kolor",Color) = (1,1,1,1)
	_VectorCrLayer1MainVect("VekterXYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer1MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer1MainStwg("Stwengh",Range(0,1)) = 0

	[NoScaleOffset] _VectorCrLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer1MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_VectorCrLayer1MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)
	

	_VectorCrLayer1MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer1MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer1MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer1MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer1MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer1MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer1MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer1MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer1MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer1MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer1MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer1MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer1MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1

	[Space(8)]

	[Header(Vekter Kolor 2)]

	_VectorCrLayer2MainClr0("Kolor",Color) = (1,1,1,1)
	_VectorCrLayer2MainVect("VekterXYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer2MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer2MainStwg("Stwengh",Range(0,1)) = 0

	[NoScaleOffset] _VectorCrLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer2MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_VectorCrLayer2MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)


	_VectorCrLayer2MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer2MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer2MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer2MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer2MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer2MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer2MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer2MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer2MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer2MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer2MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer2MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer2MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1

	[Space(8)]

	[Header(Vekter Kolor 3)]

	_VectorCrLayer3MainClr0("Kolor",Color) = (1,1,1,1)
	_VectorCrLayer3MainVect("VekterXYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer3MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer3MainStwg("Stwengh",Range(0,1)) = 0

	[NoScaleOffset] _VectorCrLayer3MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer3MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_VectorCrLayer3MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)


	_VectorCrLayer3MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer3MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer3MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer3MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer3MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer3MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer3MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer3MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer3MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer3MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer3MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer3MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer3MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1

	[Space(8)]

	[Header(Vekter Kolor 4)]

	_VectorCrLayer4MainClr0("Kolor",Color) = (1,1,1,1)
	_VectorCrLayer4MainVect("VekterXYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer4MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer4MainStwg("Stwengh",Range(0,1)) = 0

	[NoScaleOffset] _VectorCrLayer4MaskImge("Mask Teksture",2D) = "white" {}
	_VectorCrLayer4MaskTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_VectorCrLayer4MaskTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)


	_VectorCrLayer4MaskInvR("Kolor : InvR",Range(0,1)) = 0
	_VectorCrLayer4MaskInvG("Kolor : InvG",Range(0,1)) = 0
	_VectorCrLayer4MaskInvB("Kolor : InvB",Range(0,1)) = 0
	_VectorCrLayer4MaskInvA("Kolor : InvA",Range(0,1)) = 0

	//1 = "I'll let you through", 0 = "I'll block you"
	_VectorCrLayer4MaskPowR("Rwed is Mask",Range(0,1)) = 1
	_VectorCrLayer4MaskPowG("Gwin is Mask",Range(0,1)) = 1
	_VectorCrLayer4MaskPowB("Bwoo is Mask",Range(0,1)) = 1
	_VectorCrLayer4MaskPowA("Afwa is Mask",Range(0,1)) = 1

	_VectorCrLayer4MaskRLow("Rwed Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskRHgh("Rwed Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer4MaskGLow("Gwin Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskGHgh("Gwin Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer4MaskBLow("Bwoo Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskBHgh("Bwoo Thwesh Hgh",Range(0,1)) = 1
	_VectorCrLayer4MaskALow("Afwa Thwesh Low",Range(0,1)) = 0
	_VectorCrLayer4MaskAHgh("Afwa Thwesh Hgh",Range(0,1)) = 1
	[Space(128)]




	[Header(Lightmap Layer)]
	[Space(64)]
	[NoScaleOffset] _LightmapLayerMainImge("Lightmap from Unity", 2D) = "white" {}





	[Header(Gwitters)]
	[Space(64)]
	[NoScaleOffset] _GlitterLayer1MainImge("Noise Teksture",2D) = "black" {}
	_GlitterLayer1MainTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_GlitterLayer1MainTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_GlitterLayer1MainTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)
	


	_GlitterLayer1MainHueS("Noise Teksture Hue Scwoll",float) = 0

	_GlitterLayer1GltTrshR("Gwitter Thweshhold : Rwed",Range(0,1)) = 0.5
	_GlitterLayer1GltTrshG("Gwitter Thweshhold : Gwin",Range(0,1)) = 0.5
	_GlitterLayer1GltTrshB("Gwitter Thweshhold : Bwoo",Range(0,1)) = 0.5
	_GlitterLayer1GltTrshA("Gwitter Thweshhold : Afwa",Range(0,1)) = 0

	_GlitterLayer1GlitClor("Gwitter Kolor",Color) = (1,1,1,1)
	[Space(128)]






	[Header(Verteks Distwot)]
	[Space(64)]

	[NoScaleOffset] _AxisDistortXImge("X Distwot Teksture",2D) = "black" {}
	_AxisDistortXTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_AxisDistortXTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_AxisDistortXTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_AxisDistortXTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_AxisDistortXTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_AxisDistortXTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_AxisDistortXTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_AxisDistortXTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_AxisDistortXTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_AxisDistortXTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_AxisDistortXPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortXAdjt("Distwot Adjust",Float) = 0

	[Space(64)]
	[NoScaleOffset] _AxisDistortYImge("Y Distwot Teksture",2D) = "black" {}
	_AxisDistortYTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_AxisDistortYTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_AxisDistortYTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_AxisDistortYTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_AxisDistortYTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_AxisDistortYTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_AxisDistortYTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_AxisDistortYTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_AxisDistortYTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_AxisDistortYTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_AxisDistortYPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortYAdjt("Distwot Adjust",Float) = 0

	[Space(64)]
	[NoScaleOffset] _AxisDistortZImge("Z Distwot Teksture",2D) = "black" {}
	_AxisDistortZTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_AxisDistortZTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_AxisDistortZTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_AxisDistortZTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_AxisDistortZTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_AxisDistortZTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_AxisDistortZTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_AxisDistortZTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_AxisDistortZTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_AxisDistortZTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	_AxisDistortZPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortZAdjt("Distwot Adjust",Float) = 0
	[Space(128)]





	[Header(Verteks Normal Extwude)]
	[Space(64)]

	[NoScaleOffset] _NormalExtrudeMainImge("Extwude Teksture",2D) = "white" {}
	_NormalExtrudeMainTMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_NormalExtrudeMainTMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_NormalExtrudeMainTVec7("Twansfowm Vec 7",vector) = (0,0,0,0)
	
	
	

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
	[Space(128)]





	[Header(Runtime Light)]
	[Space(64)]

	[Header(Basic Lighting)]
	_RuntimeLightDiffStrg("Diff Stwength",Range(0,1)) = 1
	_RuntimeLightSpecStrg("Spek Stwength",Range(0,1)) = 1
	_RuntimeLightSpecGlos("Gwos : base, pow",Vector) = (2,8,0,0)
	[Enum(Fong,0,bwinFong1,1,bwinFong2,2)] _RuntimeLightSpecType ("Spek Taip",Float) = 2
	[Space(64)]

	[Header(Normal Map)]
	_RuntimeLightNormAStrength("Normal Map Total Stwengh",range(0,1)) = 1


	[Space(32)]
	[Header(Layer 1)]
	_RuntimeLightNorm1Strength("Normal Map Stwength",Range(0,1)) = 1
	_RuntimeLightNorm1Imge("Normal Teksture",2D) = "bump" {}
	_RuntimeLightNorm1TMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_RuntimeLightNorm1TMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_RuntimeLightNorm1TVec7("Twansfowm Vec 7",vector) = (0,0,0,0)

	[Space(32)]


	[Header(Layer 2)]
	_RuntimeLightNorm2Strength("Normal Map Stwength",Range(0,1)) = 1
	_RuntimeLightNorm2Imge("Normal Teksture",2D) = "bump" {}
	_RuntimeLightNorm2TMod0("Twansfowm Mode 0",vector) = (0,0,0,0)
	_RuntimeLightNorm2TMod1("Twansfowm Mode 1",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec0("Twansfowm Vec 0",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec1("Twansfowm Vec 1",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec2("Twansfowm Vec 2",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec3("Twansfowm Vec 3",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec4("Twansfowm Vec 4",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec5("Twansfowm Vec 5",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec6("Twansfowm Vec 6",vector) = (0,0,0,0)
	_RuntimeLightNorm2TVec7("Twansfowm Vec 7",vector) = (0,0,0,0)
	



	
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

			
			#include "[XR_XharpRazor] KXOwO 6 - Struct Appdata [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO 6 - Struct V2F [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO X - FOwO Functions [M2007UV2021].cginc"

			#include "[XR_XharpRazor] KXOwO 6 - InterfaceVarDeclaration [M2007UV2021].cginc"


			v2f verteksXD(appdata v)
			{
				v2f o;
				#include "[XR_XharpRazor] KXOwO 6 - Pragma Vert [M2007UV2021].cginc"
				return o;
			}

			fixed4 furagmentXD(v2f i) : SV_Target
			{
				#include "[XR_XharpRazor] KXOwO 6 - Pragma Frag ForwardBase [M2007UV2021].cginc"
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

			#include "[XR_XharpRazor] KXOwO 6 - Struct Appdata [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO 6 - Struct V2F [M2007UV2021].cginc"
			#include "[XR_XharpRazor] KXOwO X - FOwO Functions [M2007UV2021].cginc"

			#include "[XR_XharpRazor] KXOwO 6 - InterfaceVarDeclaration [M2007UV2021].cginc"

			

			v2f verteksXD(appdata v)
			{
				v2f o;
				#include "[XR_XharpRazor] KXOwO 6 - Pragma Vert [M2007UV2021].cginc"
				return o;
			}

			

			fixed4 furagmentXD(v2f i) : COLOR //SV_Target
			{
				#include "[XR_XharpRazor] KXOwO 6 - Pragma Frag ForwardAdd [M2007UV2021].cginc"
			}

		ENDCG
	}
}

Fallback "Standard"

}