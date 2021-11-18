#include "sys/system_06.h"

#include <macros.h>

#include <PR/gu.h>
#include <PR/ultratypes.h>

// data

s32 D_8003B940  = 1;
s32 *D_8003B944 = &D_8003B940;
u32 D_8003B948  = 0;
u32 D_8003B94C  = 0;

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#define M_PI_F      ((f32)M_PI)
#define M_DTOR_F(x) ((x) * (f32)M_DTOR)

f32 tanf(f32 angle) {
    return sinf(angle) / cosf(angle);
}

f32 atanf(f32 yDivX) {
    f32 yDivX2;
    f32 result;
    s32 phi_v0;

    if (yDivX == 0.0f) { return 0.0f; }

    phi_v0 = 1;

    if (yDivX > 1.0f) {
        yDivX = 1.0f / yDivX;
    } else if (yDivX < -1.0f) {
        yDivX  = 1.0f / yDivX;
        phi_v0 = 2;
    } else {
        phi_v0 = 0;
    }
    yDivX2 = yDivX * yDivX;
    result =
        (yDivX2
             / (yDivX2
                    / (yDivX2
                           / (yDivX2
                                  / (yDivX2 / ((yDivX2 / -0.10810675f) + -44.57192f) + -0.1619081f)
                              + -15.774018f)
                       + -0.55556977f)
                + -3.000003f)
         + 1)
        * yDivX;
    switch (phi_v0) {
        case 0: return result;
        case 1: return M_DTOR_F(90) - result;
        case 2: return M_DTOR_F(-90) - result;
#ifdef AVOID_UB
        default: return result;
#endif
    }
}

f32 atan2f(f32 y, f32 x) {
    f32 yDivX;
    s32 ySign;

    if (0.0f < x) { return atanf(y / x); }
    if (x < 0.0f) {
        yDivX = y / x;
        ySign = ((y < 0.0f) ? -1 : 1);

        return (M_PI_F - atanf(ABSF(yDivX))) * ySign;
    }
    if (y != 0.0f) {
        return ((y < 0.0f) ? -1 : 1) * (M_PI_F / 2.0f);
    } else {
        return 0.0f;
    }
}

f32 asinf(f32 x) {
    if (x > 0.99999f) { return M_PI_F / 2.0f; }
    if (x < -0.99999f) { return -(M_PI_F / 2.0f); }

    return atanf(x / sqrtf(1.0f - SQUARE(x)));
}

f32 acosf(f32 x) {
    if (x > 0.99999f) { return 0.0f; }
    if (x < -0.99999f) { return M_PI_F; }

    return (M_PI_F / 2.0f) - atanf(x / sqrtf(1.0f - SQUARE(x)));
}

f32 cscf(f32 x) {
    return 1.0f / sinf(x);
}

f32 secf(f32 x) {
    return 1.0f / cosf(x);
}

f32 cotf(f32 x) {
    return 1.0f / tanf(x);
}

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_800188C8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_800188D8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_800188E8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_80018910.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_80018948.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_80018994.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_800189D4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_800189F8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_80018A30.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_80018A80.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/func_80018AB8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_80018C14.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_80018CEC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_06/unref_80018E1C.s")
#endif
#pragma GCC diagnostic pop
