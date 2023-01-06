#ifndef SSB64_TYPES_H
#define SSB64_TYPES_H

#include <PR/ultratypes.h>

// When building with IDO, define some stdint types
#ifdef __sgi
typedef u32 uintptr_t;
typedef s32 intptr_t;
#else
#include <stdint.h>
#endif /* __sgi */

// until there's a better place to put the math types...
typedef f32 Mtx4f[4][4];

struct Vec3i {
    s32 x, y, z;
};

struct Vec3f {
    f32 x, y, z;
};

struct Vec2f {
    f32 x, y;
};

// boolean quick types

typedef s32 bool32;

#endif /* SSB64_TYPES_H */
