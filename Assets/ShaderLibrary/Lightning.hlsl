#ifndef CUSTOM_LIGHTNING_INCLUDED
#define CUSTOM_LIGHTNING_INCLUDED

float3 GetLightning(Surface surface) {
    return surface.normal.y * surface.color;
}

#endif