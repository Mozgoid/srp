#ifndef CUSTOM_UNLIT_PASS_INCLUDED
#define CUSTOM_UNLIT_PASS_INCLUDED

#include "../ShaderLibrary/Common.hlsl"

float4 UnlitPassVertex(float3 positionOS : POSITION) : SV_POSITION {
    float3 positionWS = TransformObjectToWorld(positionOS.xyz);
    float4 positionVP = TransformWorldToHClip(positionWS);
    return positionVP;
}

half4 UnlitPassFragment() : SV_TARGET {
    return half4(1,1,0,0);
}

#endif
