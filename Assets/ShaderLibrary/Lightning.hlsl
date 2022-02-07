#ifndef CUSTOM_LIGHTNING_INCLUDED
#define CUSTOM_LIGHTNING_INCLUDED

float3 IncomingLight(Surface surface, Light light) {
    return saturate(dot(surface.normal, light.direction)) * light.color;
}

float3 GetLightning(Surface surface, Light light) {
    return IncomingLight(surface, light) * surface.color;
}

float3 GetLightning(Surface surface) {
    float3 color = 0.0f;
    for(int i = 0; i < GetDirectionalLightCount(); i++) {
        color += GetLightning(surface, GetDirectionalLight(i));
    }
    return color;
}

#endif