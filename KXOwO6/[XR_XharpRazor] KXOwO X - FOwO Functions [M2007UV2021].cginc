// VECTOR MATH ----------------------------------------------------------------------------------------------------------------

float FOwO_Vec2Mag(float2 vek)
{
    return pow(pow(vek.x,2) + pow(vek.y,2),0.5);
}

float FOwO_Vec3Mag(float3 vek)
{
    return pow(pow(vek.x,2) + pow(vek.y,2) + pow(vek.z,2),0.5);
}

float FOwO_Vec4Mag(float4 vek)
{
    return pow(pow(vek.x,2) + pow(vek.y,2) + pow(vek.z,2) + pow(vek.w,2),0.5);
}


float FOwO_Random_Float_01(float2 vek)
{
    float sinX = sin(vek.x);
    float cosX = cos(vek.x);
    float sinY = sin(vek.y);
    float cosY = cos(vek.y);

    return ((sinX * sinY) + (cosX * cosY) + (sinX * cosX) + (sinY * cosY)) % 1;
}

float FOwO_Random_Float_02(float2 vek1, float2 vek2)
{
    return 0;
}

float FOwO_Random_Float_fromFloat2_01(float2 vek1)
{
    return 0;
}

float FOwO_Random_Float_fromImage_01(float2 vek1)
{
    return 0;
}





// LINEAR INTERPOLATIONS ------------------------------------------------------------------------------------------------------

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

float FOwO_Lerp_ThreshLerp(float LowX, float HghX, float LowY, float HghY, float InX)
{
    if(LowX < HghX)
    {
        if(InX < LowX)
        {
            return LowY;
        }
        else if(InX > HghX)
        {
            return HghY;
        }
        else
        {
            return FOwO_Lerp_Map(LowX,HghX,LowY,HghY,InX);
        }
    }
    else
    {
        return InX;
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

    if(D0 == -1)
    {
        return C0;
    }
    else
    {
        if     ( 0 <= CurrentTime && CurrentTime < T1){LerpT = (CurrentTime - T0)/D0;return FOwO_Lerp_ColorSimple(C0,C1,LerpT,Cwamp);}
        else if(T1 <= CurrentTime && CurrentTime < T2){LerpT = (CurrentTime - T1)/D1;return FOwO_Lerp_ColorSimple(C1,C2,LerpT,Cwamp);}
        else if(T2 <= CurrentTime && CurrentTime < T3){LerpT = (CurrentTime - T2)/D2;return FOwO_Lerp_ColorSimple(C2,C3,LerpT,Cwamp);}
        else if(T3 <= CurrentTime && CurrentTime < T4){LerpT = (CurrentTime - T3)/D3;return FOwO_Lerp_ColorSimple(C3,C0,LerpT,Cwamp);}
        else {return fixed4(0,0,0,0);}
    }

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




// COLOR MANIPUTATION ---------------------------------------------------------------------------------------------------------

float4 FOwO_Color_RGBAtoHSVA(float R, float G, float B, float A)
{


    /*
    let's say we have the following input:

    00:0--------------1
    R1:============~~~~
    G1:=========~~~~~~~
    B1:======~~~~~~~~~~

    choose the max ===, in this case, R1=, then V = R1=, or V = max(R1=,G1=,B1=)
    stretch R1's === ,G1's === ,B1's === until the largest === reach 1

    00:0--------------1
    R2:================
    G2:============~~~~
    B2:========~~~~~~~~

    let's say:

    R1 * f = R2
    G1 * f = G2
    B1 * f = B2

    since R1( which is V) * f = R2(which is 1),
    then V * f = 1, so f = 1/V 

    here : S = max(R2~,G2~,B2~);

    now choose the max ~~~, in this case, B2~, then S = B2~, or S = max(R2~,G2~,B2~)
    stretch R2's ~~~ , G2's ~~~, B2's ~~~ until the largest ~~~ reach 1

    00:0--------------1
    R3:================
    G3:========~~~~~~~~
    B3:~~~~~~~~~~~~~~~~

    base on max(R3=,G3=,B3=), we can know the hue, such that
    if R3=,G3=,B3= is something like:
        (1,0,0) : H = 0
        between (1,0,0) & (1,1,0) : 000 deg to 060 deg : G3 is floating, map G3(0 to 1) to H(000 to 060)
        between (1,1,0) & (0,1,0) : 060 deg to 120 deg : R3 is floating, map R3(1 to 0) to H(060 to 120)
        between (0,1,0) & (0,1,1) : 120 deg to 180 deg : B3 is floating, map B3(0 to 1) to H(120 to 180)
        between (0,1,1) & (0,0,1) : 180 deg to 240 deg : G3 is floating, map G3(1 to 0) to H(180 to 240)
        between (0,0,1) & (1,0,1) : 240 deg to 300 deg : R3 is floating, map R3(0 to 1) to H(240 to 300)
        between (1,0,1) & (1,0,0) : 300 deg to 360 deg : B3 is floating, map B3(1 to 0) to H(300 to 360)


    conclusion

    put RGBA into ColorSet1,
    from ColorSet1, choose max positive part, that is V
    Stretch ColorSet1 positive part until max positive reach 1 to get ColorSet2
    from ColorSet2, choose max negative part, that is S
    Stretch ColorSet2 negative part until max negative reach 1 to get ColorSet3
    based on phasesm determine the H

    for HSVA to RGB, do the reverse
    */

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




// UV COORDINATE MANIPULATION -------------------------------------------------------------------------------------------------
// Regular0 : when an Input has a specific output / and output only has 1 input
// Collapse : several different input will collapse into the same output
// Chaotic0 : Small changes will make big differences

float2 FOwO_UVCoordTransform_Regular0_FracChop(float2 input)
{
    return float2(frac(input.x),frac(input.y));
}

float2 FOwO_UVCoordTransform_Regular0_Offset00(float2 input, float ShiftX, float ShiftY, float ScrollX, float ScrollY)
{
    return input + float2(ShiftX,ShiftY) + float2(ScrollX,ScrollY) * _Time[1];
}

float2 FOwO_UVCoordTransform_Regular0_Rotate00(float2 input, float Angle, float Roll, float CenterX, float CenterY)
{
    /*
        here we have 3 points : 
            the Center point(P0), 
            the point will be transformed (P1), 
            and the final position point (P2)

        here we have 2 lines :
            from P0 to P1, this is the radius, let's call this line L1
            from P0 to P2, this is also the radius, which is same, lets call this line L2, where L2 = L1
            where |L1| = |L2| = |R|

        here we have 2 angles :
            between L1 and Xaxis = θ
            between L1 and L2 = α

        Here in this case, we know P0 and P1, then we will calculae P2

        so:


        P2.x - P0.x 
            = Rcos(θ + α) 
            = R (cosθ cosα - sinθ sinα)
            = R [ (P1.x - P0.x)/R * cosα - (P1.y - P0.y)/R * sinα ], here cosθ = (P1.x - P0.x)/R and sinθ = (P1.y - P0.y)/R
            = (P1.x - P0.x)cosα - (P1.y-P0.y)sinα
        so : P2.x = (P1.x - P0.x)cosα - (P1.y-P0.y)sinα + P0.x

        P2.y - P0.y
            = Rsin(θ + α)
            = R(sinθcosα + cosθsinα)
            = R [ (P1.y - P0.y)/R * cosα + (P1.x - P0.x)/R * sinα ], here cosθ = (P1.x - P0.x)/R and sinθ = (P1.y - P0.y)/R
            = (P1.y - P0.y) * cosα + (P1.x - P0.x) * sinα
        so : P2.x = (P1.y - P0.y) * cosα + (P1.x - P0.x) * sinα + P0.y

        to bring this into code and in terms of shader
        P0 = Center, P0.x = CenterX, P0.y = CenterY
        P1 = input
        P2 = float2(PieceX,PieceY)
    */

    float TempRotDeltaX = input.x - CenterX;
    float TempRotDeltaY = input.y - CenterY;
    float TempRotCurrentAngle = Angle + Roll * _Time[1];

    float PieceX = TempRotDeltaX * cos(TempRotCurrentAngle) - TempRotDeltaY * sin(TempRotCurrentAngle) + CenterX;
    float PieceY = TempRotDeltaX * sin(TempRotCurrentAngle) + TempRotDeltaY * cos(TempRotCurrentAngle) + CenterY;

    return float2(PieceX,PieceY);
}

float2 FOwO_UVCoordTransform_Regular0_ScaleTan(float2 input, float ScaleX, float ScaleY)
{
    return float2(input.x * ScaleX, input.y * ScaleY);
}

float2 FOwO_UVCoordTransform_Regular0_EdgSkewX(float2 input, float Xd, float Xu)
{
    //2 points will be chosen : (Xd,0) and (Xu,1), these are the skewing points
    return float2(input.x + ((Xu - Xd) / 1 * input.y) , input.y); 
}

float2 FOwO_UVCoordTransform_Regular0_EdgSkewY(float2 input, float Yl, float Yr)
{
    //2 skewing points will be required : (0,Yl) and (1,Yr)
    return float2(input.x , input.y + ((Yr - Yl) / 1 * input.x));
}

float2 FOwO_UVCoordTransform_Regular0_CirProjX(float2 input, float H, float R)
{
    // 0 <= H <= 1
    // 0.5 <= R 

    float alpha = asin(H/R);
    float beta = asin((1-H)/R);

    float theta = FOwO_Lerp_Map(0,1,-alpha,beta,input.x);

    return float2( H + R * sin(theta) , input.y);
}

float2 FOwO_UVCoordTransform_Regular0_CirProjY(float2 input, float H, float R)
{
    // 0 <= H <= 1
    // 0.5 <= R 

    float alpha = asin(H/R);
    float beta = asin((1-H)/R);

    float theta = FOwO_Lerp_Map(0,1,-alpha,beta,input.y);

    return float2(input.x, H + R * sin(theta) );
}

float2 FOwO_UVCoordTransform_Collapse_Pixelate(float2 input, float PixelX, float PixelY)
{
    float PieceX = 0;
    float PieceY = 0;
    if(PixelX >= 1){PieceX = (floor(input.x * floor(PixelX)) / floor(PixelX)) + 1/(2*PixelX);}else{PieceX = input.x;}
    if(PixelY >= 1){PieceY = (floor(input.y * floor(PixelY)) / floor(PixelY)) + 1/(2*PixelY);}else{PieceY = input.y;}

    return float2(PieceX,PieceY);
}

float2 FOwO_UVCoordTransform_Collapse_RadlClsp(float2 input, float CenterX, float CenterY, float angle, float roll)
{
    float R = pow(pow(input.x - CenterX,2) + pow(input.y - CenterY,2),0.5);
    float angleCurrent = angle + roll * _Time[1];
    float DeltaX = R * cos(angleCurrent);
    float DeltaY = R * sin(angleCurrent);

    return float2(CenterX + DeltaX, CenterY + DeltaY);
}

float2 FOwO_UVCoordTransform_Collapse_LineClsp(float2 input, float USER_Gradient, float USER_Offset, float USER_ThetaLow, float USER_ThetaHgh)
{
    //collapsing all UV coords onto a straight line    
    //y = mx + c

    float RegionDepend = USER_Gradient * input.x + USER_Offset; //used to decide if the incoming UV is under or above the line chosen by the user
    float ChosenTheta = 0; //different region (below/above the line) have different projection directions
    float RayIntercept = 0; //based on the direction, we can treat this direction as a ray/line, with its y-intercept as this var.

    if      (input.y < RegionDepend){ChosenTheta = USER_ThetaLow;}//at lower region
    else if (input.y > RegionDepend){ChosenTheta = USER_ThetaHgh;}//at higher region

    RayIntercept = input.y - tan(ChosenTheta) * input.x; 

    float2 outputUV = float2(0,0);

    if(USER_Gradient == tan(ChosenTheta))//if both direction and line are parallel
    {
        outputUV = input;
    }
    else //normal good stuff
    {
        outputUV.x = (RayIntercept - USER_Offset) / (USER_Gradient - tan(ChosenTheta));
        outputUV.y = USER_Gradient * outputUV.x + USER_Offset;
    }
    
    return outputUV;
}

float2 FOwO_UVCoordTransform_Collapse_CircClsp(float2 inputUV, float CenterX, float CenterY, float Radius, float Mode)
{
    float2 outputUV = float2(0,0);
    float InDistance = FOwO_Vec2Mag(inputUV - float2(CenterX,CenterY));
    int FLAG = 0;

    //projecting the UVs onto a circle base on the position, radially
    if(1 <= Mode && Mode < 2 && InDistance < Radius)// inside only
    {FLAG = 1;}
    else if(2 <= Mode && Mode < 3 && InDistance > Radius)// outside only
    {FLAG = 1;}
    else if(3 <= Mode && Mode < 4)// both
    {FLAG = 1;}
    else
    {FLAG = 0;}

    if(FLAG == 1)
    {
        float2 PointingVector = inputUV - float2(CenterX,CenterY);
        outputUV = normalize(PointingVector) * Radius + float2(CenterX,CenterY);
    }
    else
    {
        outputUV = inputUV;
    }

    return outputUV;

}

float2 FOwO_UVCoordTransform_Collapse_DisScale(float2 inputUV, float CenterX, float CenterY, float Gradient, float Offset) //havent test this one yet
{
    float2 v = inputUV - float2(CenterX, CenterY);
    float2 d = Gradient * v + normalize(v) * Offset;
    return inputUV + d;
}

float2 FOwO_UVCoordTransform_Chaotic0_Stochast(float2 input, float R, uint iter, int InstructionOffset)
{
    float CurrentInstruction = frac((frac(input.x / max(input.y,0.005)) * frac(input.y / max(input.x,0.005))) * pow(10,InstructionOffset));

    /*

    # - operation - how many digits - quantity
    0 - null      - 0
    1 - plus      - 1
    2 - minus     - 2
    3 - mul       - 1
    4 - div       - 2
    5 - mod       - 1
    6 - sqr       - 2
    7 - sqrt      - 1
    8 - sin       - 2
    9 - cos       - 1
    
    */

    //0. 314 1592 658 937 898
    //3. 14 1592 658 937 898
    //0. 14 1592 658 937 898
    //1. 4 1592 658 937 898
    //0. 4 1592 658 937 898

    uint iterCount = 0;
    uint ReadBox = 0;
    uint OperationType = 0;
    uint DigitQty = 0;
    float CollectResult = 0;

    while(iterCount < iter)
    {
        //get 1st number : operation id
        CurrentInstruction = CurrentInstruction * 10;
        OperationType = CurrentInstruction;
        CurrentInstruction = frac(CurrentInstruction);

        //get 2nd number : digit qty
        CurrentInstruction = CurrentInstruction * 10;
        ReadBox = CurrentInstruction;
        if(ReadBox == 0){DigitQty = 0;}
        else if(ReadBox % 2 == 0){DigitQty = 2;}
        else {DigitQty == 1;}
        CurrentInstruction = frac(CurrentInstruction);

        //get 3rd number : magnitude
        CurrentInstruction = CurrentInstruction * pow(10,DigitQty);
        ReadBox = CurrentInstruction;
        if(OperationType == 0){CollectResult = CollectResult;}
        else if(OperationType == 1){CollectResult = CollectResult + ReadBox;}
        else if(OperationType == 2){CollectResult = CollectResult - ReadBox;}
        else if(OperationType == 3){CollectResult = CollectResult * max(ReadBox,1);}
        else if(OperationType == 4){if(ReadBox == 0){ReadBox = 0.00001;} CollectResult = CollectResult / max(ReadBox,1);}
        else if(OperationType == 5){if(ReadBox == 0){ReadBox = 0.00001;} CollectResult = CollectResult % max(ReadBox,1);}
        else if(OperationType == 6){CollectResult = pow(CollectResult,2);}
        else if(OperationType == 7){CollectResult = sqrt(CollectResult);}
        else if(OperationType == 8){CollectResult = sin(CollectResult) + 0.5;}
        else if(OperationType == 9){CollectResult = cos(CollectResult) + 0.5;}
        CurrentInstruction = frac(CurrentInstruction);

        iterCount = iterCount + 1;
    }

    float theta = CollectResult;
    return input + float2(R*cos(theta),R*sin(theta));
}



float2 FOwO_UVCoordTransform_TModJunction(float2 inputUV, int Tmod, vector TVec)
{
    float2 outputUV = inputUV;

    if(Tmod == 0){outputUV = inputUV;}
    else if(Tmod == 11){outputUV = FOwO_UVCoordTransform_Regular0_FracChop(inputUV);}
    else if(Tmod == 12){outputUV = FOwO_UVCoordTransform_Regular0_Offset00(inputUV, TVec.x, TVec.y, TVec.z, TVec.w);}
    else if(Tmod == 13){outputUV = FOwO_UVCoordTransform_Regular0_Rotate00(inputUV, TVec.x, TVec.y, TVec.z, TVec.w);}
    else if(Tmod == 14){outputUV = FOwO_UVCoordTransform_Regular0_ScaleTan(inputUV, TVec.x, TVec.y);}
    else if(Tmod == 15){outputUV = FOwO_UVCoordTransform_Regular0_EdgSkewX(inputUV, TVec.x, TVec.y);}
    else if(Tmod == 16){outputUV = FOwO_UVCoordTransform_Regular0_EdgSkewY(inputUV, TVec.x, TVec.y);}
    else if(Tmod == 17){outputUV = FOwO_UVCoordTransform_Regular0_CirProjX(inputUV, TVec.x, TVec.y);}
    else if(Tmod == 18){outputUV = FOwO_UVCoordTransform_Regular0_CirProjY(inputUV, TVec.x, TVec.y);}
    else if(Tmod == 21){outputUV = FOwO_UVCoordTransform_Collapse_Pixelate(inputUV, TVec.x, TVec.y);}
    else if(Tmod == 22){outputUV = FOwO_UVCoordTransform_Collapse_DisScale(inputUV, TVec.x, TVec.y, TVec.z, TVec.w);}
    else if(Tmod == 23){outputUV = FOwO_UVCoordTransform_Collapse_RadlClsp(inputUV, TVec.x, TVec.y, TVec.z, TVec.w);}
    else if(Tmod == 24){outputUV = FOwO_UVCoordTransform_Collapse_CircClsp(inputUV, TVec.x, TVec.y, TVec.z, TVec.w);}
    else if(Tmod == 25){outputUV = FOwO_UVCoordTransform_Collapse_LineClsp(inputUV, TVec.x, TVec.y, TVec.z, TVec.w);}
    else if(Tmod == 31){outputUV = FOwO_UVCoordTransform_Chaotic0_Stochast(inputUV, TVec.x, TVec.y, TVec.z);}

    return outputUV;
}



fixed4 FOwO_Color_ReadFromTexture_Vec8
(
    float2 inUV, sampler2D Image, int SampleMode, 
    vector TMod0, vector TMod1,
    vector TVec0, vector TVec1, vector TVec2, vector TVec3,
    vector TVec4, vector TVec5, vector TVec6, vector TVec7
)
{
    float2 CurrentUV = inUV;

    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod0.x, TVec0);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod0.y, TVec1);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod0.z, TVec2);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod0.w, TVec3);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod1.x, TVec4);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod1.y, TVec5);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod1.z, TVec6);
    CurrentUV = FOwO_UVCoordTransform_TModJunction(CurrentUV, TMod1.w, TVec7);

    if(SampleMode == 0) //Vert
    {
        return tex2Dlod(Image,float4(CurrentUV.x,CurrentUV.y,0,0));
    }
    else if (SampleMode == 1) //Frag
    {
        return tex2D(Image,CurrentUV);
    }
    else
    {
        return fixed4(1,0.5,0,1);
    }
}

