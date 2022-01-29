#ifndef CUSTOM_UNITY_INPUT_INCLUDED
#define CUSTOM_UNITY_INPUT_INCLUDED

float4x4 unity_MatrixVP;
float4x4 unity_MatrixV;
float4x4 glstate_matrix_projection;

#define real float
#define real3 float3
#define real3x3 float3x3
#define real4 float4

cbuffer UnityPerDraw {
	float4x4 unity_ObjectToWorld;
	float4x4 unity_WorldToObject;
    float4 unity_LODFade;
	real4 unity_WorldTransformParams;
};

#endif