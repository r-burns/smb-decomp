#include "sys/system_08.h"

#include <macros.h>
#include <ssb_types.h>

#include <PR/gu.h>
#include <PR/mbi.h>
#include <PR/ultratypes.h>

#include "sys/vec.h"

// u16 sin table
#include "sys/sintable.inc.h"

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#define COMBINE_INTEGRAL(a, b)   (((a)&0xffff0000) | (((b) >> 16)))
#define COMBINE_FRACTIONAL(a, b) (((a) << 16)) | ((b)&0xffff)

void mtx4f_to_Mtx(Mtx4f *src, Mtx *dst) {
    u32 e1, e2;

    // This macro should match, but doesn't (some instructions are reordered)
    // This is because the two `mtx->m[...][...] = ...` lines in the macro end up on the same line
    // of code When this happens, the two or instructions are misordered (confirmed by checking with
    // the matching code).

    // #define MTXF_TO_MTXF_UNSIGNED_CELL(i, j, mtxf, mtx) \
    //     e1=FTOFIX32(mtxf[i][j*2]); \
    //     e2=FTOFIX32(mtxf[i][j*2+1]); \
    //     mtx->m[0 + i/2][j + 2 * (i % 2)] = COMBINE_INTEGRAL(e1, e2); \
    //     mtx->m[2 + i/2][j + 2 * (i % 2)] = COMBINE_FRACTIONAL(e1, e2);

    // This is probably an unrolled loop...
    e1           = FTOFIX32((*src)[0][0]);
    e2           = FTOFIX32((*src)[0][1]);
    dst->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][0] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[0][2]);
    e2           = FTOFIX32((*src)[0][3]);
    dst->m[0][1] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][1] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[1][0]);
    e2           = FTOFIX32((*src)[1][1]);
    dst->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][2] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[1][2]);
    e2           = FTOFIX32((*src)[1][3]);
    dst->m[0][3] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][3] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[2][0]);
    e2           = FTOFIX32((*src)[2][1]);
    dst->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][0] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[2][2]);
    e2           = FTOFIX32((*src)[2][3]);
    dst->m[1][1] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][1] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[3][0]);
    e2           = FTOFIX32((*src)[3][1]);
    dst->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][2] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[3][2]);
    e2           = FTOFIX32((*src)[3][3]);
    dst->m[1][3] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][3] = COMBINE_FRACTIONAL(e1, e2);
}

// Same as above, but assumes column 3 is (0, 0, 0, 1)
void func_80019EA0(Mtx4f *src, Mtx *dst) {
    u32 e1, e2;

    e1           = FTOFIX32((*src)[0][0]);
    e2           = FTOFIX32((*src)[0][1]);
    dst->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][0] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[0][2]);
    e2           = FTOFIX32(0.0f);
    dst->m[0][1] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][1] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[1][0]);
    e2           = FTOFIX32((*src)[1][1]);
    dst->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][2] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[1][2]);
    e2           = FTOFIX32(0.0f);
    dst->m[0][3] = COMBINE_INTEGRAL(e1, e2);
    dst->m[2][3] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[2][0]);
    e2           = FTOFIX32((*src)[2][1]);
    dst->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][0] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[2][2]);
    e2           = FTOFIX32(0.0f);
    dst->m[1][1] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][1] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[3][0]);
    e2           = FTOFIX32((*src)[3][1]);
    dst->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][2] = COMBINE_FRACTIONAL(e1, e2);
    e1           = FTOFIX32((*src)[3][2]);
    e2           = FTOFIX32(1.0f);
    dst->m[1][3] = COMBINE_INTEGRAL(e1, e2);
    dst->m[3][3] = COMBINE_FRACTIONAL(e1, e2);
}

s32 fast_sinf(f32 x) {
    s32 idx;
    u16 sinX;

    idx  = (s32)(x * 651.8986f); // (count(gSinTable) / M_PI)
    sinX = gSinTable[idx & (ARRAY_COUNT(gSinTable) - 1)];
    if ((idx & 0x800) != 0) { return -sinX; }
    return sinX;
}

s32 fast_cosf(f32 x) {
    s32 idx;
    u16 cosX;

    idx  = (s32)((x + 1.5707964f) * 651.8986f); //  + pi/2 
    cosX = gSinTable[idx & (ARRAY_COUNT(gSinTable) - 1)];
    if ((idx & 0x800) != 0) { return -cosX; }
    return cosX;
}

// As noticed in Kirby64 decomp, these functions are copies from libultra, but
// with explicit float constants and other slight modifications.

void hal_look_at_f(Mtx4f *mf, f32 xEye, f32 yEye, f32 zEye,
	       f32 xAt,  f32 yAt,  f32 zAt,
	       f32 xUp,  f32 yUp,  f32 zUp)
{
	f32 len, xLook, yLook, zLook, xRight, yRight, zRight;

	xLook = xAt - xEye;
	yLook = yAt - yEye;
	zLook = zAt - zEye;

	/* Negate because positive Z is behind us: */
	len = -1.0f / sqrtf (xLook*xLook + yLook*yLook + zLook*zLook);
	xLook *= len;
	yLook *= len;
	zLook *= len;

	/* Right = Up x Look */

	xRight = yUp * zLook - zUp * yLook;
	yRight = zUp * xLook - xUp * zLook;
	zRight = xUp * yLook - yUp * xLook;
	len = 1.0f / sqrtf (xRight*xRight + yRight*yRight + zRight*zRight);
	xRight *= len;
	yRight *= len;
	zRight *= len;

	/* Up = Look x Right */

	xUp = yLook * zRight - zLook * yRight;
	yUp = zLook * xRight - xLook * zRight;
	zUp = xLook * yRight - yLook * xRight;
	len = 1.0f / sqrtf (xUp*xUp + yUp*yUp + zUp*zUp);
	xUp *= len;
	yUp *= len;
	zUp *= len;

	(*mf)[0][0] = xRight;
	(*mf)[1][0] = yRight;
	(*mf)[2][0] = zRight;
	(*mf)[3][0] = -(xEye * xRight + yEye * yRight + zEye * zRight);

	(*mf)[0][1] = xUp;
	(*mf)[1][1] = yUp;
	(*mf)[2][1] = zUp;
	(*mf)[3][1] = -(xEye * xUp + yEye * yUp + zEye * zUp);

	(*mf)[0][2] = xLook;
	(*mf)[1][2] = yLook;
	(*mf)[2][2] = zLook;
	(*mf)[3][2] = -(xEye * xLook + yEye * yLook + zEye * zLook);

	(*mf)[0][3] = 0;
	(*mf)[1][3] = 0;
	(*mf)[2][3] = 0;
	(*mf)[3][3] = 1;
}

void hal_look_at(Mtx *m, f32 xEye, f32 yEye, f32 zEye,
	       f32 xAt,  f32 yAt,  f32 zAt,
	       f32 xUp,  f32 yUp,  f32 zUp)
{
	Mtx4f mf;

	hal_look_at_f(&mf, xEye, yEye, zEye, xAt, yAt, zAt, xUp, yUp, zUp);

	mtx4f_to_Mtx(&mf, m);
}

// Modified version of guLookAtF that takes an extra f32 argument and calls func_80019438
void hal_mod_look_at_f(Mtx4f *mf, 
    f32 xEye, f32 yEye, f32 zEye, 
    f32 xAt,  f32 yAt,  f32 zAt, 
    f32 arg7, 
    f32 xUp,  f32 yUp,  f32 zUp
) {
    f32 len;
    struct Vec3f look;
    struct Vec3f right;

    look.x = xAt - xEye;
    look.y = yAt - yEye;
    look.z = zAt - zEye;

    /* Negate because positive Z is behind us: */
    len = -1.0f / sqrtf (look.x*look.x + look.y*look.y + look.z*look.z);
    look.x *= len;
    look.y *= len;
    look.z *= len;

    /* Right = Up x Look */

    right.x = yUp * look.z - zUp * look.y;
    right.y = zUp * look.x - xUp * look.z;
    right.z = xUp * look.y - yUp * look.x;
    len = 1.0f / sqrtf (right.x*right.x + right.y*right.y + right.z*right.z);
    right.x *= len;
    right.y *= len;
    right.z *= len;

    func_80019438(&right, &look, arg7);
    xUp = (look.y * right.z) - (look.z * right.y);
    yUp = (look.z * right.x) - (look.x * right.z);
    zUp = (look.x * right.y) - (look.y * right.x);
    len = 1.0f / sqrtf(((xUp * xUp) + (yUp * yUp)) + (zUp * zUp));
    xUp = xUp * len;
    yUp = yUp * len;
    zUp = zUp * len;
    

    (*mf)[0][0] = right.x;
    (*mf)[1][0] = right.y;
    (*mf)[2][0] = right.z;
    (*mf)[3][0] = -(xEye * right.x + yEye * right.y + zEye * right.z);

    (*mf)[0][1] = xUp;
    (*mf)[1][1] = yUp;
    (*mf)[2][1] = zUp;
    (*mf)[3][1] = -(xEye * xUp + yEye * yUp + zEye * zUp);

    (*mf)[0][2] = look.x;
    (*mf)[1][2] = look.y;
    (*mf)[2][2] = look.z;
    (*mf)[3][2] = -(xEye * look.x + yEye * look.y + zEye * look.z);

    (*mf)[0][3] = 0;
    (*mf)[1][3] = 0;
    (*mf)[2][3] = 0;
    (*mf)[3][3] = 1;
}

void hal_mod_look_at(Mtx *m, 
    f32 xEye, f32 yEye, f32 zEye,
    f32 xAt,  f32 yAt,  f32 zAt,
    f32 arg7,
    f32 xUp,  f32 yUp,  f32 zUp
) {
	Mtx4f mf;

	hal_mod_look_at_f(&mf, xEye, yEye, zEye, xAt, yAt, zAt, arg7, xUp, yUp, zUp);

	mtx4f_to_Mtx(&mf, m);
}

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001A744.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001AB2C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001ABA4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001AFD0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B050.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B1E4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B248.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B4CC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B6EC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B780.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B824.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B924.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001B9C4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BA78.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BBF8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BC44.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BCA0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BD04.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BD70.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BDEC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001BF20.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001C1C8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001C21C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001C524.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001C588.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001C97C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CAB4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CAF8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CB4C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CBA8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CC0C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CC80.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CD8C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CE30.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CF3C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001CFE0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D0A8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D140.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D208.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D2F4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D3C4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D4A4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/func_8001D58C.s")
#endif
#pragma GCC diagnostic pop
