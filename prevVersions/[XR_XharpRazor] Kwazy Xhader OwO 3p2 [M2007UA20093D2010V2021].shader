/*

	Kwazy Xayder 3.4 OwO

	by:
		XR_XharpRazor



	department:
		M2007UA2009
		M2007UA20093D2010U2019
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





Shader "M2007U - A2009 - 3D2010 - V2021/[XR_XharpRazor] Kwazy Xhader OwO 3.2023.05.29 [M2007UA20093D2010V2021]"
{
Properties
{
	[Header(Kwazy Xhader OwO 3.4)]
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
	_KontrolLerpClamp("Cwamp Lwerp ?",Range(0,1)) = 1
	[Space(128)]







	[Header(Teksture Layer 01)]
	[Space(64)]
	_TextureLayer1MainImge("Mwain Teksture",2D) = "white" {}
	_TextureLayer1MainTMod("Transform Mode",float) = 4213
	_TextureLayer1MainTPos("Transform : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer1MainTRot("Transform : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer1MainTScl("Transform : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer1MainTSkw("Transform : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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

	_TextureLayer1VcCrInfl("Vekter Kolor Infwunce",Range(0,1)) = 0
	_TextureLayer1VcCrFrcA("Vekter Kolor Force Afwa",Range(0,1)) = 0
	_TextureLayer1FrslInfl("Fwensel Infwunce",Range(0,1)) = 0
	_TextureLayer1FrslFrcA("Fwensel ForceAfwa",Range(-1,1)) = 0
	[Space(64)]



	_TextureLayer1DistImge("Distwot Teksture",2D) = "black" {}
	_TextureLayer1DistTMod("Transform Mode",float) = 4213
	_TextureLayer1DistTPos("Transform : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer1DistTRot("Transform : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer1DistTScl("Transform : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer1DistSkXY("Transform : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

	_TextureLayer1DistPowR("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowG("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowB("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer1DistPowA("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	[Space(64)]



	_TextureLayer1MaskImge("Mask Teksture",2D) = "white" {}
	_TextureLayer1MaskTMod("Transform Mode",float) = 4213
	_TextureLayer1MaskTPos("Transform : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer1MaskTRot("Transform : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer1MaskTScl("Transform : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer1MaskTSkw("Transform : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	_TextureLayer2MainTMod("Transform Mode",float) = 4213
	_TextureLayer2MainTPos("Transform : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer2MainTRot("Transform : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer2MainTScl("Transform : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer2MainTSkw("Transform : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	_TextureLayer2VcCrInfl("Vekter Kolor Infwunce",Range(0,1)) = 0
	_TextureLayer2VcCrFrcA("Vekter Kolor Force Afwa",Range(0,1)) = 0
	_TextureLayer2FrslInfl("Fwensel Infwunce",Range(0,1)) = 0
	_TextureLayer2FrslFrcA("Fwensel ForceAfwa",Range(-1,1)) = 0
	[Space(64)]



	_TextureLayer2DistImge("Distwot Teksture",2D) = "black" {}
	_TextureLayer2DistTMod("Transform Mode",float) = 4213
	_TextureLayer2DistTPos("Transform : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer2DistTRot("Transform : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer2DistTScl("Transform : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer2DistTSkw("Transform : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

	_TextureLayer2DistPowR("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowG("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowB("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	_TextureLayer2DistPowA("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
	[Space(64)]



	_TextureLayer2MaskImge("Mask Teksture",2D) = "white" {}
	_TextureLayer2MaskTMod("Transform Mode",float) = 4213
	_TextureLayer2MaskTPos("Transform : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_TextureLayer2MaskTRot("Transform : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_TextureLayer2MaskTScl("Transform : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_TextureLayer2MaskTSkw("Transform : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	_FresnelLayer1MaskTMod("Transform Mode",float) = 4213
	_FresnelLayer1MaskTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_FresnelLayer1MaskTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_FresnelLayer1MaskTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_FresnelLayer1MaskTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	_FresnelLayer2MaskTMod("Transform Mode",float) = 4213
	_FresnelLayer2MaskTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_FresnelLayer2MaskTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_FresnelLayer2MaskTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_FresnelLayer2MaskTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	_VectorCrLayer1MainClr0("Kolor0",Color) = (1,1,1,1)
	_VectorCrLayer1MainVect("Vekter0XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer1MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer1MainStwg("Stwengh0",Range(0,1)) = 0
	[Space(8)]
	_VectorCrLayer2MainClr0("Kolor1",Color) = (1,1,1,1)
	_VectorCrLayer2MainVect("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer2MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer2MainStwg("Stwengh1",Range(0,1)) = 0
	[Space(8)]
	_VectorCrLayer3MainClr0("Kolor1",Color) = (1,1,1,1)
	_VectorCrLayer3MainVect("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer3MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer3MainStwg("Stwengh1",Range(0,1)) = 0
	[Space(8)]
	_VectorCrLayer4MainClr0("Kolor1",Color) = (1,1,1,1)
	_VectorCrLayer4MainVect("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
	_VectorCrLayer4MainRamp("Wamp",Range(0,8)) = 1
	_VectorCrLayer4MainStwg("Stwengh1",Range(0,1)) = 0
	[Space(128)]




	[Header(Lightmap Layer)]
	[Space(64)]
	_LightmapLayerMainImge("Lightmap from Unity", 2D) = "white" {}





	[Header(Gwitters)]
	[Space(64)]
	_GlitterLayer1MainImge("Noise Texture",2D) = "black" {}
	_GlitterLayer1MainTMod("Transform Mode",float) = 4213
	_GlitterLayer1MainTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_GlitterLayer1MainTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_GlitterLayer1MainTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_GlitterLayer1MainTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	_AxisDistortXTMod("Transform Mode",float) = 4213
	_AxisDistortXTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_AxisDistortXTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_AxisDistortXTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_AxisDistortXTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_AxisDistortXPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortXAdjt("Distwot Adjust",Float) = 0
	[Space(64)]
	_AxisDistortYImge("Y Distwot texture",2D) = "black" {}
	_AxisDistortYTMod("Transform Mode",float) = 4213
	_AxisDistortYTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_AxisDistortYTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_AxisDistortYTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_AxisDistortYTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_AxisDistortYPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortYAdjt("Distwot Adjust",Float) = 0
	[Space(64)]
	_AxisDistortZImge("Z Distwot texture",2D) = "black" {}
	_AxisDistortZTMod("Transform Mode",float) = 4213
	_AxisDistortZTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_AxisDistortZTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_AxisDistortZTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_AxisDistortZTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)
	_AxisDistortZPowr("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
	_AxisDistortZAdjt("Distwot Adjust",Float) = 0
	[Space(128)]





	[Header(Verteks Normal Extwude)]
	[Space(64)]

	_NormalExtrudeMainImge("Extrude Teksture",2D) = "white" {}
	_NormalExtrudeMainTMod("Transform Mode",float) = 4213
	_NormalExtrudeMainTPos("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
	_NormalExtrudeMainTRot("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
	_NormalExtrudeMainTScl("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
	_NormalExtrudeMainTSkw("TrSkw : SkXd, SkXu, SkYl, SkYr",Vector) = (0,0,0,0)

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
	

	
	

	
}

SubShader
{
	Tags
	{
		"Queue" = "Transparent"
		"RenderType" = "Transparent"
		"LightMode" = "ForwardBase"
	}

	Pass
	{
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
			#include "UnityLightingCommon.cginc"
			//#include "Lightning.cginc"
			//#include "AutoLight.cginc"

			

			struct appdata
			{
				float4 vertex : POSITION;//for vertex
				float2 uv : TEXCOORD0; //for uv
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				float3 normal : NORMAL;

				/*
				from POIYOMI
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				*/
			}; 
	
			struct v2f //VertexToFragment
			{
				float4 position : SV_POSITION; //the type, the name, then what it is equivalent to Unity

				float2 uv : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				float3 normal : TEXCOORD4;
				float3 viewdir : TEXCOORD5;
				float4 lightmapUV : TEXCOORD12;

				/*
				from POIYOMI
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				*/

				//float4 directionalLightingColor : COLOR0;
			};



			float FOwO_BlendOneMinus(float InCurrent,float InFull,float K)
			{
				return InCurrent * K + (InFull - InCurrent) * (1 - K);
			}

			float FOwO_Lerp_Simple(float Start,float End,float T,int Cwamp)
			{
				float Result;

				Result = (End - Start) * T + Start;

				if(Cwamp == 1)
				{
					if(Start < End)
					{
						if(Result < Start){Result = Start;}
						if(Result > End){Result = End;}
					}
					else if(Start > End)
					{
						if(Result > Start){Result = Start;}
						if(Result < End){Result = End;}
					}
				}

				return Result;
			}

			float FOwO_Lerp_Map(float XStart,float XEnd,float YStart,float YEnd,float Incoming)
			{
				float T = (Incoming - XStart)/(XEnd - XStart);
				float R = (YEnd - YStart) * T + YStart;

				return R;
			}

			float FOwO_Lerp_Thresh(float ThreshLow, float ThreshHgh, float OutLow, float OutHgh, float Incoming)
			{
				if(ThreshLow < ThreshHgh)
				{
					if(Incoming < ThreshLow){return OutLow;}
					else if(ThreshHgh < Incoming){return OutHgh;}
					else{return Incoming;}
				}
				else
				{
					return Incoming;
				}
			}

			fixed4 FOwO_Lerp_ColorSimple(fixed4 Start, fixed4 End, float T, int Cwamp)
			{
				fixed4 Result;


				return float4
				(
					FOwO_Lerp_Simple(Start.r,End.r,T,Cwamp),
					FOwO_Lerp_Simple(Start.g,End.g,T,Cwamp),
					FOwO_Lerp_Simple(Start.b,End.b,T,Cwamp),
					FOwO_Lerp_Simple(Start.a,End.a,T,Cwamp)
				);

			}

			float FOwO_Lerp_Simple4Intervals(float P0, float P1, float P2, float P3, float D0, float D1, float D2, float D3, float SpeedUp)
			{
				float T0 = 0;
				float T1 = T0 + D0;
				float T2 = T1 + D1;
				float T3 = T2 + D2;
				float T4 = T3 + D3;

				float CurrentTime = (_Time[1] * SpeedUp) % T4;
				float LerpT;

				if     ( 0 <= CurrentTime && CurrentTime < T1){LerpT = (CurrentTime - T0)/D0;return FOwO_Lerp_Simple(P0,P1,LerpT,1);}
				else if(T1 <= CurrentTime && CurrentTime < T2){LerpT = (CurrentTime - T1)/D1;return FOwO_Lerp_Simple(P1,P2,LerpT,1);}
				else if(T2 <= CurrentTime && CurrentTime < T3){LerpT = (CurrentTime - T2)/D2;return FOwO_Lerp_Simple(P2,P3,LerpT,1);}
				else if(T3 <= CurrentTime && CurrentTime < T4){LerpT = (CurrentTime - T3)/D3;return FOwO_Lerp_Simple(P3,P0,LerpT,1);}
				else {return 0;}
			}

			fixed4 FOwO_Lerp_Color4Intervals(fixed4 C0, fixed4 C1, fixed4 C2, fixed4 C3, float D0, float D1, float D2, float D3, float Cwamp)
			{
				float T0 = 0;
				float T1 = T0 + D0;
				float T2 = T1 + D1;
				float T3 = T2 + D2;
				float T4 = T3 + D3;

				float CurrentTime = _Time[1] % T4;

				float LerpT;

				if     ( 0 <= CurrentTime && CurrentTime < T1){LerpT = (CurrentTime - T0)/D0;return FOwO_Lerp_ColorSimple(C0,C1,LerpT,Cwamp);}
				else if(T1 <= CurrentTime && CurrentTime < T2){LerpT = (CurrentTime - T1)/D1;return FOwO_Lerp_ColorSimple(C1,C2,LerpT,Cwamp);}
				else if(T2 <= CurrentTime && CurrentTime < T3){LerpT = (CurrentTime - T2)/D2;return FOwO_Lerp_ColorSimple(C2,C3,LerpT,Cwamp);}
				else if(T3 <= CurrentTime && CurrentTime < T4){LerpT = (CurrentTime - T3)/D3;return FOwO_Lerp_ColorSimple(C3,C0,LerpT,Cwamp);}
				else {return fixed4(0,0,0,0);}

			}

			float FOwO_Clamp(float DetectLow, float DetectHigh, float OutputLow, float OutputHigh, float Incoming)
			{
				if(DetectLow < DetectHigh)
				{
					if(Incoming < DetectLow){return OutputLow;}
					else if(Incoming > DetectHigh){return OutputHigh;}
					else {return Incoming;}
				}
				else
				{
					return 0.5;
				}
			}

			float4 FOwO_Color_RGBAtoHSVA(float R, float G, float B, float A)
			{

				float KonstZ = 0.0001;
				float KonstO = 1.0;

				float C1Rp, C1Gp, C1Bp, C1Rn, C1Gn, C1Bn;
				float C2Rp, C2Gp, C2Bp, C2Rn, C2Gn, C2Bn;
				float C3Rp, C3Gp, C3Bp, C3Rn, C3Gn, C3Bn;

				C1Rp = min(max(KonstZ,R),KonstO);
				C1Gp = min(max(KonstZ,G),KonstO);
				C1Bp = min(max(KonstZ,B),KonstO);

				float H, S, V;
				float f, k;

				V = max(max(C1Rp,C1Gp),C1Bp);
				f = 1 / V;

				C2Rp = C1Rp * f;
				C2Gp = C1Gp * f;
				C2Bp = C1Bp * f;

				C2Rn = 1 - C2Rp;
				C2Gn = 1 - C2Gp;
				C2Bn = 1 - C2Bp;

				S = max(max(C2Rn, C2Gn), C2Bn);
				k = 1 / S;

				C3Rn = C2Rn * k;
				C3Gn = C2Gn * k;
				C3Bn = C2Bn * k;

				C3Rp = 1 - C3Rn;
				C3Gp = 1 - C3Gn;
				C3Bp = 1 - C3Bn;


				if (C3Rp > C3Gp && C3Gp == C3Bp && C3Bp < C3Rp)/*FF0000*/      { H = 0;}
				else if (C3Rp > C3Gp && C3Gp > C3Bp && C3Bp < C3Rp) /*FFAA00*/ { H = 000 + (C3Gp * 60); }//C3Gp = (H - 000)/60
				else if (C3Rp == C3Gp && C3Gp > C3Bp && C3Bp < C3Rp)/*FFFF00*/ { H = 60;}
				else if (C3Rp < C3Gp && C3Gp > C3Bp && C3Bp < C3Rp) /*AAFF00*/ { H = 120 - (C3Rp * 60); }//C3Rp = (120 - H)/60
				else if (C3Rp < C3Gp && C3Gp > C3Bp && C3Bp == C3Rp)/*00FF00*/ { H = 120; }
				else if (C3Rp < C3Gp && C3Gp > C3Bp && C3Bp > C3Rp) /*00FFAA*/ { H = 120 + (C3Bp * 60); }//C3Bp = (H - 120)/60
				else if (C3Rp < C3Gp && C3Gp == C3Bp && C3Bp > C3Rp)/*00FFFF*/ { H = 180;}
				else if (C3Rp < C3Gp && C3Gp < C3Bp && C3Bp > C3Rp) /*00AAFF*/ { H = 240 - (C3Gp * 60); }//C3Gp = (240 - H)/60
				else if (C3Rp == C3Gp && C3Gp < C3Bp && C3Bp > C3Rp)/*0000FF*/ { H = 240;}
				else if (C3Rp > C3Gp && C3Gp < C3Bp && C3Bp > C3Rp) /*AA00FF*/ { H = 240 + (C3Rp * 60); }//C3Rp = (H - 240)/60
				else if (C3Rp > C3Gp && C3Gp < C3Bp && C3Bp == C3Rp)/*FF00FF*/ { H = 300; }
				else if (C3Rp > C3Gp && C3Gp < C3Bp && C3Bp < C3Rp) /*FF00AA*/ { H = 360 - (C3Bp * 60); }//C3Bp = (360 - H)/60
				
				return float4(H/360, S, V, A);
			}

			float4 FOwO_Color_HSVAtoRGBA(float H, float S, float V, float A)//0<H<1 where 0 is red, 0.5 is cyan, 1 is red
			{

				float KonstZ = 0.0001;
				float KonstO = 1.0;

				float Hn = min(max(KonstZ,H),KonstO) * 360;	
				float Sn = min(max(KonstZ,S),KonstO);
				float Vn = min(max(KonstZ,V),KonstO);

				float C1Rp, C1Gp, C1Bp, C1Rn, C1Gn, C1Bn;
				float C2Rp, C2Gp, C2Bp, C2Rn, C2Gn, C2Bn;
				float C3Rp, C3Gp, C3Bp, C3Rn, C3Gn, C3Bn;
				float f, k;

				if      (Hn == 0 || Hn == 360) { C3Rp = 1; C3Gp = 0; C3Bp = 0; }
				else if (0 < Hn && Hn < 60)    { C3Rp = 1; C3Gp = (Hn - 000) / 60; C3Bp = 0; }
				else if (Hn == 60)             { C3Rp = 1; C3Gp = 1; C3Bp = 0; }
				else if (60 < Hn && Hn < 120)  { C3Rp = (120 - Hn) / 60; C3Gp = 1; C3Bp = 0; }
				else if (Hn == 120)            { C3Rp = 0; C3Gp = 1; C3Bp = 0; }
				else if (120 < Hn && Hn < 180) { C3Rp = 0; C3Gp = 1; C3Bp = (Hn - 120) / 60; }
				else if (Hn == 180)            { C3Rp = 0; C3Gp = 1; C3Bp = 1; }
				else if (180 < Hn && Hn < 240) { C3Rp = 0; C3Gp = (240 - Hn) / 60; C3Bp = 1; }
				else if (Hn == 240)            { C3Rp = 0; C3Gp = 0; C3Bp = 1; }
				else if (240 < Hn && Hn < 300) { C3Rp = (Hn - 240) / 60; C3Gp = 0; C3Bp = 1; }
				else if (Hn == 300)            { C3Rp = 1; C3Gp = 0; C3Bp = 1; }
				else if (300 < Hn && Hn < 360) { C3Rp = 1; C3Gp = 0; C3Bp = (360 - Hn) / 60; }

				C3Rn = 1 - C3Rp;
				C3Gn = 1 - C3Gp;
				C3Bn = 1 - C3Bp;

				//since Sat = max(C2Rn,C2Gn,C2Bn), and Sat * k = 1
				k = 1 / Sn;

				//since C2n * k = C3n, then C2n = C3n / k
				C2Rn = C3Rn / k;
				C2Gn = C3Gn / k;
				C2Bn = C3Bn / k;

				C2Rp = 1 - C2Rn;
				C2Gp = 1 - C2Gn;
				C2Bp = 1 - C2Bn;

				//at this point, max(C2Rp, C2Gp, C2Bp) = 1
				//since V = max(C1Rp, C1Gp, C1Bp), and f = 1/V, C1p * f = C2p
				f = 1 / Vn;
				C1Rp = C2Rp / f;
				C1Gp = C2Gp / f;
				C1Bp = C2Bp / f;

				return float4(C1Rp, C1Gp, C1Bp, A);
			}

			float2 FOwO_UVCoordTransform_Offset(float2 input, float ShiftX, float ShiftY, float ScrollX, float ScrollY)
			{
				return input + float2(ShiftX,ShiftY) + float2(ScrollX,ScrollY) * _Time[1];
			}

			float2 FOwO_UVCoordTransform_Rotate(float2 input, float Angle, float Roll, float CenterX, float CenterY)
			{
				float TempRotDeltaX = input.x - CenterX;
				float TempRotDeltaY = input.y - CenterY;
				float TempRotCurrentAngle = Angle + Roll * _Time[1];

				float PieceX = TempRotDeltaX * cos(TempRotCurrentAngle) - TempRotDeltaY * sin(TempRotCurrentAngle) + CenterX;
				float PieceY = TempRotDeltaX * sin(TempRotCurrentAngle) + TempRotDeltaY * cos(TempRotCurrentAngle) + CenterY;

				return float2(PieceX,PieceY);
			}

			float2 FOwO_UVCoordTransform_Scale(float2 input, float ScaleX, float ScaleY)
			{
				return float2(input.x * ScaleX, input.y * ScaleY);
			}

			float2 FOwO_UVCoordTransform_Pixel(float2 input, float PixelX, float PixelY)
			{
				float PieceX = 0;
				float PieceY = 0;
				if(PixelX >= 1){PieceX = (floor(input.x * floor(PixelX)) / floor(PixelX)) + 1/(2*PixelX);}else{PieceX = input.x;}
				if(PixelY >= 1){PieceY = (floor(input.y * floor(PixelY)) / floor(PixelY)) + 1/(2*PixelY);}else{PieceY = input.y;}

				return float2(PieceX,PieceY);
			}

			float2 FOwO_UVCoordTransform_SkewX(float2 input, float Xd, float Xu)
			{
				//2 points will be chosen : (Xd,0) and (Xu,1), these are the skewing points
				return float2(input.x + ((Xu - Xd) / 1 * input.y) , input.y); 
			}

			float2 FOwO_UVCoordTransform_SkewY(float2 input, float Yl, float Yr)
			{
				//2 skewing points will be required : (0,Yl) and (1,Yr)
				return float2(input.x , input.y + ((Yr - Yl) / 1 * input.x));
			}

			fixed4 FOwO_Color_ReadFromTexture
			(
				sampler2D Image, int SampleMode, float InX, float InY, 
				float ShiftX, float ShiftY, float ScrollX, float ScrollY, 
				float Angle, float Roll, float CenterX, float CenterY, 
				float ScaleX, float ScaleY, float PixelX, float PixelY,
				float SkewXd, float SkewXu, float SkewYl, float SkewYr,
				float TMode
			)
			{
				float2 CurrentUV = float2(InX,InY);
				uint TempMode = TMode;
				uint CurrentInstruction = 0;
			
				while(TempMode != 0)
				{
					CurrentInstruction = TempMode % 10;
					TempMode = TempMode / 10;

					if(CurrentInstruction == 1)
					{
						CurrentUV = FOwO_UVCoordTransform_Offset(CurrentUV, ShiftX, ShiftY, ScrollX, ScrollY);
					}
					else if(CurrentInstruction == 2)
					{
						CurrentUV = FOwO_UVCoordTransform_Rotate(CurrentUV, Angle, Roll, CenterX, CenterY);
					}
					else if(CurrentInstruction == 3)
					{
						CurrentUV = FOwO_UVCoordTransform_Scale(CurrentUV, ScaleX, ScaleY);
					}
					else if(CurrentInstruction == 4)
					{
						CurrentUV = FOwO_UVCoordTransform_Pixel(CurrentUV, PixelX, PixelY);
					}
					else if(CurrentInstruction == 5)
					{
						CurrentUV = FOwO_UVCoordTransform_SkewX(CurrentUV, SkewXd, SkewXu);
					}
					else if(CurrentInstruction == 6)
					{
						CurrentUV = FOwO_UVCoordTransform_SkewY(CurrentUV, SkewYl, SkewYr);
					}
					else
					{
						CurrentUV = CurrentUV;
					}
				}
				
				if(SampleMode == 0) //Frag
				{
					return tex2D(Image,CurrentUV);
				}
				else if (SampleMode == 1) //Vert
				{
					return tex2Dlod(Image,float4(CurrentUV.x,CurrentUV.y,0,0));
				}
				else
				{
					return fixed4(1,0,0,1);
				}
				
			}



			






			float _KontrolTextureLayer1;//("Texture Layer 1",Range(0,1)) = 1
			float _KontrolTextureLayer2;//("Texture Layer 2",Range(0,1)) = 1
			float _KontrolGlitterLayer1;
			float _KontrolLightMap;
			float _KontrolLerpClamp;






			sampler2D _AxisDistortXImge;//("X Distwot texture",2D) = "black" {}
			float _AxisDistortXTMod;//("Transform Mode",Range(0,1)) = 0
			vector _AxisDistortXTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _AxisDistortXTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _AxisDistortXTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _AxisDistortXTSkw;
			vector _AxisDistortXPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
			float _AxisDistortXAdjt;//("Distwot Adjust",Float) = 0

			sampler2D _AxisDistortYImge;//("X Distwot texture",2D) = "black" {}
			float _AxisDistortYTMod;//("Transform Mode",Range(0,1)) = 0
			vector _AxisDistortYTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _AxisDistortYTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _AxisDistortYTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _AxisDistortYTSkw;
			vector _AxisDistortYPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
			float _AxisDistortYAdjt;//("Distwot Adjust",Float) = 0

			sampler2D _AxisDistortZImge;//("X Distwot texture",2D) = "black" {}
			float _AxisDistortZTMod;//("Transform Mode",Range(0,1)) = 0
			vector _AxisDistortZTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _AxisDistortZTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _AxisDistortZTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _AxisDistortZTSkw;
			vector _AxisDistortZPowr;//("Distwot Amount : R, G, B, A",Vector) = (0,0,0,0)
			float _AxisDistortZAdjt;//("Distwot Adjust",Float) = 0






			sampler2D _NormalExtrudeMainImge;//("Extrude Teksture",2D) = "white" {}
			float _NormalExtrudeMainTMod;//("Transform Mode",Range(0,1)) = 0
			vector _NormalExtrudeMainTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _NormalExtrudeMainTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _NormalExtrudeMainTScl;//("TrScl : SclX, SclY, PxlX, PxlY",Vector) = (1,1,0,0)
			vector _NormalExtrudeMainTSkw;

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






			v2f verteksXD(appdata INCOMING)
			{
				v2f OUTGOING;


				//Texture Offsets

				fixed4 AxisDistortXPass0 = FOwO_Color_ReadFromTexture
				(
					_AxisDistortXImge, 1,INCOMING.uv.x, INCOMING.uv.y, 
					_AxisDistortXTPos.x, _AxisDistortXTPos.y, _AxisDistortXTPos.z, _AxisDistortXTPos.w, 
					_AxisDistortXTRot.x, _AxisDistortXTRot.y, _AxisDistortXTRot.z, _AxisDistortXTRot.w, 
					_AxisDistortXTScl.x, _AxisDistortXTScl.y, _AxisDistortXTScl.z, _AxisDistortXTScl.w,
					_AxisDistortXTSkw.x, _AxisDistortXTSkw.y, _AxisDistortXTSkw.z, _AxisDistortXTSkw.w,
					_AxisDistortXTMod
				);

				fixed4 AxisDistortYPass0 = FOwO_Color_ReadFromTexture
				(
					_AxisDistortYImge, 1,INCOMING.uv.x, INCOMING.uv.y, 
					_AxisDistortYTPos.x, _AxisDistortYTPos.y, _AxisDistortYTPos.z, _AxisDistortYTPos.w, 
					_AxisDistortYTRot.x, _AxisDistortYTRot.y, _AxisDistortYTRot.z, _AxisDistortYTRot.w, 
					_AxisDistortYTScl.x, _AxisDistortYTScl.y, _AxisDistortYTScl.z, _AxisDistortYTScl.w,
					_AxisDistortYTSkw.x, _AxisDistortYTSkw.y, _AxisDistortYTSkw.z, _AxisDistortYTSkw.w,
					_AxisDistortYTMod
				);

				fixed4 AxisDistortZPass0 = FOwO_Color_ReadFromTexture
				(
					_AxisDistortZImge, 1, INCOMING.uv.x, INCOMING.uv.y, 
					_AxisDistortZTPos.x, _AxisDistortZTPos.y, _AxisDistortZTPos.z, _AxisDistortZTPos.w, 
					_AxisDistortZTRot.x, _AxisDistortZTRot.y, _AxisDistortZTRot.z, _AxisDistortZTRot.w, 
					_AxisDistortZTScl.x, _AxisDistortZTScl.y, _AxisDistortZTScl.z, _AxisDistortZTScl.w,
					_AxisDistortZTSkw.x, _AxisDistortZTSkw.y, _AxisDistortZTSkw.z, _AxisDistortZTSkw.w,
					_AxisDistortZTMod
				);

				float4 AxisDistortTotal = float4
				(
					AxisDistortXPass0.r * _AxisDistortXPowr.x + AxisDistortXPass0.g * _AxisDistortXPowr.y + AxisDistortXPass0.b * _AxisDistortXPowr.z + AxisDistortXPass0.a * _AxisDistortXPowr.z + _AxisDistortXAdjt,
					AxisDistortYPass0.r * _AxisDistortYPowr.x + AxisDistortYPass0.g * _AxisDistortYPowr.y + AxisDistortYPass0.b * _AxisDistortYPowr.z + AxisDistortYPass0.a * _AxisDistortYPowr.z + _AxisDistortYAdjt,
					AxisDistortZPass0.r * _AxisDistortZPowr.x + AxisDistortZPass0.g * _AxisDistortZPowr.y + AxisDistortZPass0.b * _AxisDistortZPowr.z + AxisDistortZPass0.a * _AxisDistortZPowr.z + _AxisDistortZAdjt,
					0
				);




				

				//Normal Extrude
				fixed4 NormDistortPass0 = FOwO_Color_ReadFromTexture
				(
					_NormalExtrudeMainImge, 1, INCOMING.uv.x, INCOMING.uv.y, 
					_NormalExtrudeMainTPos.x, _NormalExtrudeMainTPos.y, _NormalExtrudeMainTPos.z, _NormalExtrudeMainTPos.w, 
					_NormalExtrudeMainTRot.x, _NormalExtrudeMainTRot.y, _NormalExtrudeMainTRot.z, _NormalExtrudeMainTRot.w, 
					_NormalExtrudeMainTScl.x, _NormalExtrudeMainTScl.y, _NormalExtrudeMainTScl.z, _NormalExtrudeMainTScl.w,
					_NormalExtrudeMainTSkw.x, _NormalExtrudeMainTSkw.y, _NormalExtrudeMainTSkw.z, _NormalExtrudeMainTSkw.w,
					_NormalExtrudeMainTMod
				);

				float NormDistortPowerR = FOwO_Lerp_Simple4Intervals(_NormalExtrudeRS.x, _NormalExtrudeRS.y, _NormalExtrudeRS.z, _NormalExtrudeRS.w, _NormalExtrudeRD.x, _NormalExtrudeRD.y, _NormalExtrudeRD.z, _NormalExtrudeRD.w, _NormDistortFreq);
				float NormDistortPowerG = FOwO_Lerp_Simple4Intervals(_NormalExtrudeGS.x, _NormalExtrudeGS.y, _NormalExtrudeGS.z, _NormalExtrudeGS.w, _NormalExtrudeGD.x, _NormalExtrudeGD.y, _NormalExtrudeGD.z, _NormalExtrudeGD.w, _NormDistortFreq);
				float NormDistortPowerB = FOwO_Lerp_Simple4Intervals(_NormalExtrudeBS.x, _NormalExtrudeBS.y, _NormalExtrudeBS.z, _NormalExtrudeBS.w, _NormalExtrudeBD.x, _NormalExtrudeBD.y, _NormalExtrudeBD.z, _NormalExtrudeBD.w, _NormDistortFreq);
				float NormDistortPowerA = FOwO_Lerp_Simple4Intervals(_NormalExtrudeAS.x, _NormalExtrudeAS.y, _NormalExtrudeAS.z, _NormalExtrudeAS.w, _NormalExtrudeAD.x, _NormalExtrudeAD.y, _NormalExtrudeAD.z, _NormalExtrudeAD.w, _NormDistortFreq);
			
				float NormDistortPass1 = (NormDistortPass0.r * NormDistortPowerR + NormDistortPass0.g * NormDistortPowerG + NormDistortPass0.b * NormDistortPowerB + NormDistortPass0.a * NormDistortPowerA) * _NormDistortAmpl;
				float4 NormDistortPass2 = float4(INCOMING.normal.xyz,0) * NormDistortPass1;
				



				OUTGOING.position = UnityObjectToClipPos(INCOMING.vertex + AxisDistortTotal + NormDistortPass2);//float4
				OUTGOING.uv = INCOMING.uv;
				OUTGOING.normal = UnityObjectToWorldNormal(INCOMING.normal);
				//OUTGOING.viewdir = float4(normalize(WorldSpaceViewDir(INCOMING.vertex)),0);
				OUTGOING.viewdir = float3(normalize(WorldSpaceViewDir(INCOMING.vertex)));

				//#if defined(LIGHTMAP_ON)
				OUTGOING.lightmapUV.xy = INCOMING.uv.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				//#endif
				//#if defined(DYNAMICLIGHTMAP_ON)
				//OUTGOING.lightmapUV.xy = INCOMING.uv.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				//#endif

				return OUTGOING;
			}








			



			



			sampler2D _TextureLayer1MainImge;
			float  _TextureLayer1MainTMod;
			vector _TextureLayer1MainTPos;//("POS : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _TextureLayer1MainTRot;//("ROT : Afwa, Roll, CenX, CenY",Vector) = (0,0,0,0)
			vector _TextureLayer1MainTScl;//("POS : SclX, SclY, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer1MainTSkw;

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
			float _TextureLayer1VcCrInfl;//("Vekter Kolor Infwunce",Range(0,1)) = 0
			float _TextureLayer1VcCrFrcA;//("Vekter Kolor Force Afwa",Range(0,1)) = 1
			float _TextureLayer1FrslInfl;//("Fwensel Infwunce",Range(0,1)) = 0
			float _TextureLayer1FrslFrcA;//("Fwensel ForceAfwa",Range(0,1)) = 0

			

			
			sampler2D _TextureLayer1DistImge;//("Distwot Teksture",2D) = "black" {}
			float  _TextureLayer1DistTMod;
			vector _TextureLayer1DistTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _TextureLayer1DistTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _TextureLayer1DistTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _TextureLayer1DistTSkw;

			vector _TextureLayer1DistPowR;//("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer1DistPowG;//("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer1DistPowB;//("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer1DistPowA;//("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)




			sampler2D _TextureLayer1MaskImge;//("Mask Teksture",2D) = "white" {}
			float  _TextureLayer1MaskTMod;
			vector _TextureLayer1MaskTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _TextureLayer1MaskTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _TextureLayer1MaskTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _TextureLayer1MaskTSkw;

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
			vector _TextureLayer2MainTPos;//("POS : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _TextureLayer2MainTRot;//("ROT : Afwa, Roll, CenX, CenY",Vector) = (0,0,0,0)
			vector _TextureLayer2MainTScl;//("POS : SclX, SclY, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer2MainTSkw;

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
			float _TextureLayer2VcCrInfl;//("Vekter Kolor Infwunce",Range(0,1)) = 0
			float _TextureLayer2VcCrFrcA;//("Vekter Kolor Force Afwa",Range(0,1)) = 1
			float _TextureLayer2FrslInfl;//("Fwensel Infwunce",Range(0,1)) = 0
			float _TextureLayer2FrslFrcA;//("Fwensel ForceAfwa",Range(0,1)) = 0

			

			
			sampler2D _TextureLayer2DistImge;//("Distwot Teksture",2D) = "black" {}
			float  _TextureLayer2DistTMod;
			vector _TextureLayer2DistTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _TextureLayer2DistTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _TextureLayer2DistTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _TextureLayer2DistTSkw;

			vector _TextureLayer2DistPowR;//("Rwed Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer2DistPowG;//("Gwin Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer2DistPowB;//("Bwoo Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)
			vector _TextureLayer2DistPowA;//("Afwa Distwot : X, Y, NULL, NULL",Vector) = (0,0,0,0)




			sampler2D _TextureLayer2MaskImge;//("Mask Teksture",2D) = "white" {}
			float  _TextureLayer2MaskTMod;
			vector _TextureLayer2MaskTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _TextureLayer2MaskTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _TextureLayer2MaskTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _TextureLayer2MaskTSkw;

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
			vector _FresnelLayer1MaskTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _FresnelLayer1MaskTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _FresnelLayer1MaskTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _FresnelLayer1MaskTSkw;

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
			vector _FresnelLayer2MaskTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _FresnelLayer2MaskTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _FresnelLayer2MaskTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _FresnelLayer2MaskTSkw;

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
			
			fixed4 _VectorCrLayer2MainClr0;//("Kolor1",Color) = (1,1,1,1)
			vector _VectorCrLayer2MainVect;//("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
			float _VectorCrLayer2MainRamp;
			float _VectorCrLayer2MainStwg;//("Stwengh1",Range(0,1)) = 0
			
			fixed4 _VectorCrLayer3MainClr0;//("Kolor1",Color) = (1,1,1,1)
			vector _VectorCrLayer3MainVect;//("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
			float _VectorCrLayer3MainRamp;
			float _VectorCrLayer3MainStwg;//("Stwengh1",Range(0,1)) = 0
			
			fixed4 _VectorCrLayer4MainClr0;//("Kolor1",Color) = (1,1,1,1)
			vector _VectorCrLayer4MainVect;//("Vekter1XYZ, NULL",Vector) = (0,0,0,0)
			float _VectorCrLayer4MainRamp;
			float _VectorCrLayer4MainStwg;//("Stwengh1",Range(0,1)) = 0








			sampler2D _LightmapLayerMainImge;







			sampler2D _GlitterLayer1MainImge;//("Noise Texture",2D) = "black" {}
			float _GlitterLayer1MainTMod;//("Transform Mode",Range(0,1)) = 0
			vector _GlitterLayer1MainTPos;//("TrPos : ShfX, ShfY, ScrX, ScrY",Vector) = (0,0,0,0)
			vector _GlitterLayer1MainTRot;//("TrRot : Afwa, Roll, CenX, CenY",Vector) = (0,0,0.5,0.5)
			vector _GlitterLayer1MainTScl;//("TrScl : SclX, SclY, NULL, NULL",Vector) = (1,1,0,0)
			vector _GlitterLayer1MainTSkw;

			float _GlitterLayer1MainHueS;//("Noise Texture Hue Scroll",float) = 0
			
			float _GlitterLayer1GltTrshR;//("Gwitter Thweshhold : Rwed",Range(0,1)) = 0.5
			float _GlitterLayer1GltTrshG;//("Gwitter Thweshhold : Gwin",Range(0,1)) = 0.5
			float _GlitterLayer1GltTrshB;//("Gwitter Thweshhold : Bwoo",Range(0,1)) = 0.5
			float _GlitterLayer1GltTrshA;//("Gwitter Thweshhold : Afwa",Range(0,1)) = 0

			fixed4 _GlitterLayer1GlitClor;//("Gwitter Kolor",Color) = (1,1,1,1)






			fixed4 furagmentXD(v2f INCOMING) : SV_Target
			{
				
				
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
					Piksel1Dist = FOwO_Color_ReadFromTexture
					(
					_TextureLayer1DistImge, 0, INCOMING.uv.x, INCOMING.uv.y,
					_TextureLayer1DistTPos.x, _TextureLayer1DistTPos.y, _TextureLayer1DistTPos.z, _TextureLayer1DistTPos.w,
					_TextureLayer1DistTRot.x, _TextureLayer1DistTRot.y, _TextureLayer1DistTRot.z, _TextureLayer1DistTRot.w,
					_TextureLayer1DistTScl.x, _TextureLayer1DistTScl.y, _TextureLayer1DistTScl.z, _TextureLayer1DistTScl.w,
					_TextureLayer1DistTSkw.x, _TextureLayer1DistTSkw.y, _TextureLayer1DistTSkw.z, _TextureLayer1DistTSkw.w,
					_TextureLayer1DistTMod
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
					Piksel2Dist = FOwO_Color_ReadFromTexture
					(
					_TextureLayer2DistImge, 0, INCOMING.uv.x, INCOMING.uv.y,
					_TextureLayer2DistTPos.x, _TextureLayer2DistTPos.y, _TextureLayer2DistTPos.z, _TextureLayer2DistTPos.w,
					_TextureLayer2DistTRot.x, _TextureLayer2DistTRot.y, _TextureLayer2DistTRot.z, _TextureLayer2DistTRot.w,
					_TextureLayer2DistTScl.x, _TextureLayer2DistTScl.y, _TextureLayer2DistTScl.z, _TextureLayer2DistTScl.w,
					_TextureLayer2DistTSkw.x, _TextureLayer2DistTSkw.y, _TextureLayer2DistTSkw.z, _TextureLayer2DistTSkw.w,
					_TextureLayer2DistTMod
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
					Piksel1Mask1 = FOwO_Color_ReadFromTexture
					(
					_TextureLayer1MaskImge, 0, INCOMING.uv.x, INCOMING.uv.y,
					_TextureLayer1MaskTPos.x, _TextureLayer1MaskTPos.y, _TextureLayer1MaskTPos.z, _TextureLayer1MaskTPos.w,
					_TextureLayer1MaskTRot.x, _TextureLayer1MaskTRot.y, _TextureLayer1MaskTRot.z, _TextureLayer1MaskTRot.w,
					_TextureLayer1MaskTScl.x, _TextureLayer1MaskTScl.y, _TextureLayer1MaskTScl.z, _TextureLayer1MaskTScl.w,
					_TextureLayer1MaskTSkw.x, _TextureLayer1MaskTSkw.y, _TextureLayer1MaskTSkw.z, _TextureLayer1MaskTSkw.w,
					_TextureLayer1MaskTMod
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

					Piksel1MaskPower = Piksel1Mask3.r * _TextureLayer1MaskPowR + Piksel1Mask3.g * _TextureLayer1MaskPowG + Piksel1Mask3.b * _TextureLayer1MaskPowB + Piksel1Mask3.a * _TextureLayer1MaskPowA;
				}

				if(_KontrolTextureLayer2 == 0)
				{
					Piksel2Mask1 = float4(1,1,1,1);
					Piksel2MaskPower = 0;
				}
				else
				{
					Piksel2Mask1 = FOwO_Color_ReadFromTexture
					(
					_TextureLayer2MaskImge, 0, INCOMING.uv.x, INCOMING.uv.y,
					_TextureLayer2MaskTPos.x, _TextureLayer2MaskTPos.y, _TextureLayer2MaskTPos.z, _TextureLayer2MaskTPos.w,
					_TextureLayer2MaskTRot.x, _TextureLayer2MaskTRot.y, _TextureLayer2MaskTRot.z, _TextureLayer2MaskTRot.w,
					_TextureLayer2MaskTScl.x, _TextureLayer2MaskTScl.y, _TextureLayer2MaskTScl.z, _TextureLayer2MaskTScl.w,
					_TextureLayer2MaskTSkw.x, _TextureLayer2MaskTSkw.y, _TextureLayer2MaskTSkw.z, _TextureLayer2MaskTSkw.w,
					_TextureLayer2MaskTMod
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

					Piksel2MaskPower = Piksel2Mask3.r * _TextureLayer2MaskPowR + Piksel2Mask3.g * _TextureLayer2MaskPowG + Piksel2Mask3.b * _TextureLayer2MaskPowB + Piksel2Mask3.a * _TextureLayer2MaskPowA;
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
				//final pure texture result + alpha influnced by mask
				fixed4 Piksel1Pass4;
				fixed4 Piksel2Pass4;


				if(_KontrolTextureLayer1 == 0)
				{
					Piksel1Pass0of1 = float4(1,1,1,1);
					Piksel1Pass4 = float4(0,0,0,0);
				}
				else
				{
					Piksel1Pass0of1 = FOwO_Color_ReadFromTexture
					(
						_TextureLayer1MainImge, 0, INCOMING.uv.x + Piksel1XOofset, INCOMING.uv.y + Piksel1YOofset, 
						_TextureLayer1MainTPos.x, _TextureLayer1MainTPos.y, _TextureLayer1MainTPos.z, _TextureLayer1MainTPos.w, 
						_TextureLayer1MainTRot.x, _TextureLayer1MainTRot.y, _TextureLayer1MainTRot.z, _TextureLayer1MainTRot.w, 
						_TextureLayer1MainTScl.x, _TextureLayer1MainTScl.y, _TextureLayer1MainTScl.z, _TextureLayer1MainTScl.w,
						_TextureLayer1MainTSkw.x, _TextureLayer1MainTSkw.y, _TextureLayer1MainTSkw.z, _TextureLayer1MainTSkw.w,
						_TextureLayer1MainTMod
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

					Piksel1Pass4 = fixed4(Piksel1Pass3of2.r,Piksel1Pass3of2.g,Piksel1Pass3of2.b,Piksel1Pass3of2.a*Piksel1MaskPower);
				}

				if(_KontrolTextureLayer2 == 0)
				{
					Piksel2Pass0of1 = float4(1,1,1,1);
					Piksel2Pass4 = float4(0,0,0,0);
				}
				else
				{
					Piksel2Pass0of1 = FOwO_Color_ReadFromTexture
					(
						_TextureLayer2MainImge, 0, INCOMING.uv.x + Piksel2XOofset, INCOMING.uv.y + Piksel2YOofset, 
						_TextureLayer2MainTPos.x, _TextureLayer2MainTPos.y, _TextureLayer2MainTPos.z, _TextureLayer2MainTPos.w, 
						_TextureLayer2MainTRot.x, _TextureLayer2MainTRot.y, _TextureLayer2MainTRot.z, _TextureLayer2MainTRot.w, 
						_TextureLayer2MainTScl.x, _TextureLayer2MainTScl.y, _TextureLayer2MainTScl.z, _TextureLayer2MainTScl.w,
						_TextureLayer2MainTSkw.x, _TextureLayer2MainTSkw.y, _TextureLayer2MainTSkw.z, _TextureLayer2MainTSkw.w,
						_TextureLayer2MainTMod
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

					Piksel2Pass4 = fixed4(Piksel2Pass3of2.r,Piksel2Pass3of2.g,Piksel2Pass3of2.b,Piksel2Pass3of2.a*Piksel2MaskPower);
				}




	
					
				





				//get vector color
				float Vectorcr1Pass0;
				float Vectorcr2Pass0;
				float Vectorcr3Pass0;
				float Vectorcr4Pass0;
				fixed4 Vectorcr1Pass1;
				fixed4 Vectorcr2Pass1;
				fixed4 Vectorcr3Pass1;
				fixed4 Vectorcr4Pass1;


				if(_VectorCrLayer1MainStwg == 0)
				{
					Vectorcr1Pass1 = float4(0,0,0,0);
				}
				else
				{
					Vectorcr1Pass0 = pow(max(0,dot(INCOMING.normal,_VectorCrLayer1MainVect)),_VectorCrLayer1MainRamp);
					Vectorcr1Pass1 = Vectorcr1Pass0 * _VectorCrLayer1MainStwg * _VectorCrLayer1MainClr0;
				}

				if(_VectorCrLayer2MainStwg == 0)
				{
					Vectorcr2Pass1 = float4(0,0,0,0);
				}
				else
				{
					Vectorcr2Pass0 = pow(max(0,dot(INCOMING.normal,_VectorCrLayer2MainVect)),_VectorCrLayer2MainRamp);
					Vectorcr2Pass1 = Vectorcr2Pass0 * _VectorCrLayer2MainStwg * _VectorCrLayer2MainClr0;
				}

				if(_VectorCrLayer3MainStwg == 0)
				{
					Vectorcr3Pass1 = float4(0,0,0,0);
				}
				else
				{
					Vectorcr3Pass0 = pow(max(0,dot(INCOMING.normal,_VectorCrLayer3MainVect)),_VectorCrLayer3MainRamp);
					Vectorcr3Pass1 = Vectorcr3Pass0 * _VectorCrLayer3MainStwg * _VectorCrLayer3MainClr0;
				}

				if(_VectorCrLayer4MainStwg == 0)
				{
					Vectorcr4Pass1 = float4(0,0,0,0);
				}
				else
				{
					Vectorcr4Pass0 = pow(max(0,dot(INCOMING.normal,_VectorCrLayer4MainVect)),_VectorCrLayer4MainRamp);
					Vectorcr4Pass1 = Vectorcr4Pass0 * _VectorCrLayer4MainStwg * _VectorCrLayer4MainClr0;
				}

				fixed4 VectorcrFinal = Vectorcr1Pass1 + Vectorcr2Pass1 + Vectorcr3Pass1 + Vectorcr4Pass1;


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
				
					Fresnel1Pass0 = FOwO_BlendOneMinus(max(0,dot(INCOMING.normal,INCOMING.viewdir)),1,_FresnelLayer1MainRgIv);
					Fresnel1Pass1 = pow(Fresnel1Pass0,_FresnelLayer1MainRamp);
					Fresnel1Pass2 = FOwO_Lerp_Thresh(_FresnelLayer1MainTrLw, _FresnelLayer1MainTrHg, 0, 1, Fresnel1Pass1);

					Fresnel1Pass4of0 = FOwO_Color_ReadFromTexture
					(
						_FresnelLayer1MaskImge, 0, INCOMING.uv.x, INCOMING.uv.y, 
						_FresnelLayer1MaskTPos.x, _FresnelLayer1MaskTPos.y, _FresnelLayer1MaskTPos.z, _FresnelLayer1MaskTPos.w, 
						_FresnelLayer1MaskTRot.x, _FresnelLayer1MaskTRot.y, _FresnelLayer1MaskTRot.z, _FresnelLayer1MaskTRot.w, 
						_FresnelLayer1MaskTScl.x, _FresnelLayer1MaskTScl.y, _FresnelLayer1MaskTScl.z, _FresnelLayer1MaskTScl.w,
						_FresnelLayer1MaskTSkw.x, _FresnelLayer1MaskTSkw.y, _FresnelLayer1MaskTSkw.z, _FresnelLayer1MaskTSkw.w,
						_FresnelLayer1MaskTMod
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

					Fresnel1MaskPower = Fresnel1Pass4of2.r * _FresnelLayer1MaskPowR + Fresnel1Pass4of2.g * _FresnelLayer1MaskPowG + Fresnel1Pass4of2.b * _FresnelLayer1MaskPowB + Fresnel1Pass4of2.a * _FresnelLayer1MaskPowA;
				
					Fresnel1Pass3 = Fresnel1Color * Fresnel1Pass2 * Fresnel1MaskPower * _FresnelLayer1MainStwg;
				
				}

				if(_FresnelLayer2MainStwg == 0)
				{
					Fresnel2Pass3 = float4(0,0,0,0);
				}
				else
				{
					Fresnel2Color = FOwO_Lerp_Color4Intervals(_FresnelLayer2MainClr0, _FresnelLayer2MainClr1, _FresnelLayer2MainClr2, _FresnelLayer2MainClr3, _FresnelLayer2MainClrT.x, _FresnelLayer2MainClrT.y, _FresnelLayer2MainClrT.z, _FresnelLayer2MainClrT.w,_KontrolLerpClamp);
				
					Fresnel2Pass0 = FOwO_BlendOneMinus(max(0,dot(INCOMING.normal,INCOMING.viewdir)),1,_FresnelLayer2MainRgIv);
					Fresnel2Pass1 = pow(Fresnel2Pass0,_FresnelLayer2MainRamp);
					Fresnel2Pass2 = FOwO_Lerp_Thresh(_FresnelLayer2MainTrLw, _FresnelLayer2MainTrHg, 0, 1, Fresnel2Pass1);

					Fresnel2Pass4of0 = FOwO_Color_ReadFromTexture
					(
						_FresnelLayer2MaskImge, 0, INCOMING.uv.x, INCOMING.uv.y, 
						_FresnelLayer2MaskTPos.x, _FresnelLayer2MaskTPos.y, _FresnelLayer2MaskTPos.z, _FresnelLayer2MaskTPos.w, 
						_FresnelLayer2MaskTRot.x, _FresnelLayer2MaskTRot.y, _FresnelLayer2MaskTRot.z, _FresnelLayer2MaskTRot.w, 
						_FresnelLayer2MaskTScl.x, _FresnelLayer2MaskTScl.y, _FresnelLayer2MaskTScl.z, _FresnelLayer2MaskTScl.w,
						_FresnelLayer2MaskTSkw.x, _FresnelLayer2MaskTSkw.y, _FresnelLayer2MaskTSkw.z, _FresnelLayer2MaskTSkw.w, 
						_FresnelLayer2MaskTMod
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

					Fresnel2MaskPower = Fresnel2Pass4of2.r * _FresnelLayer2MaskPowR + Fresnel2Pass4of2.g * _FresnelLayer2MaskPowG + Fresnel2Pass4of2.b * _FresnelLayer2MaskPowB + Fresnel2Pass4of2.a * _FresnelLayer2MaskPowA;
				
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
					Glitter1Pass0 = FOwO_Color_ReadFromTexture
					(
						_GlitterLayer1MainImge, 0, INCOMING.uv.x, INCOMING.uv.y, 
						_GlitterLayer1MainTPos.x, _GlitterLayer1MainTPos.y, _GlitterLayer1MainTPos.z, _GlitterLayer1MainTPos.w, 
						_GlitterLayer1MainTRot.x, _GlitterLayer1MainTRot.y, _GlitterLayer1MainTRot.z, _GlitterLayer1MainTRot.w, 
						_GlitterLayer1MainTScl.x, _GlitterLayer1MainTScl.y, _GlitterLayer1MainTScl.z, _GlitterLayer1MainTScl.w,
						_GlitterLayer1MainTSkw.x, _GlitterLayer1MainTSkw.y, _GlitterLayer1MainTSkw.z, _GlitterLayer1MainTSkw.w,
						_GlitterLayer1MainTMod
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

				
				

				//float2 LMUV = (INCOMING.uv + unity_LightmapST.zw) * unity_LightmapST.xy;
				fixed4 LightmapPass0 = float4(DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap,INCOMING.lightmapUV)),1);

				

				
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

				
				return
					(Piksel1Pass6 * _KontrolTextureLayer1 + Piksel2Pass6 * _KontrolTextureLayer2) * FOwO_Lerp_ColorSimple(float4(1,1,1,1),LightmapPass0,_KontrolLightMap,_KontrolLerpClamp) +
					Glitter1Pass2 * _KontrolGlitterLayer1;
				

				//return float4(INCOMING.lightmapUV.xy,0,1);

				//return float4(DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap,INCOMING.lightmapUV)),1);
				//_LightmapLayerMainImge

				//return tex2D(unity_Lightmap,INCOMING.lightmapUV.xy);

				//return float4(INCOMING.lightmapUV.xy,0,1);
				

				

			}

		ENDCG
			




	}
}

}
