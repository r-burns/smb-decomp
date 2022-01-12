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
void mtx4f_to_Mtx_fixed_w(Mtx4f *src, Mtx *dst) {
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

    idx  = (s32)((x + 1.5707964f) * 651.8986f); //  (x + pi/2) * (count(gSinTable) / M_PI)
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

// modified like hal's version of guLookAtF
void hal_look_at_reflect_f(Mtx4f *mf, LookAt *l, 
    f32 xEye, f32 yEye, f32 zEye,
    f32 xAt,  f32 yAt,  f32 zAt,
    f32 xUp,  f32 yUp,  f32 zUp
) {
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

    /* reflectance vectors = Up and Right */

    l->l[0].l.dir[0] = FTOFRAC8(xRight);
    l->l[0].l.dir[1] = FTOFRAC8(yRight);
    l->l[0].l.dir[2] = FTOFRAC8(zRight);
    l->l[1].l.dir[0] = FTOFRAC8(xUp);
    l->l[1].l.dir[1] = FTOFRAC8(yUp);
    l->l[1].l.dir[2] = FTOFRAC8(zUp);
    l->l[0].l.col[0] = 0x00;
    l->l[0].l.col[1] = 0x00;
    l->l[0].l.col[2] = 0x00;
    l->l[0].l.pad1 = 0x00;
    l->l[0].l.colc[0] = 0x00;
    l->l[0].l.colc[1] = 0x00;
    l->l[0].l.colc[2] = 0x00;
    l->l[0].l.pad2 = 0x00;
    l->l[1].l.col[0] = 0x00;
    l->l[1].l.col[1] = 0x80;
    l->l[1].l.col[2] = 0x00;
    l->l[1].l.pad1 = 0x00;
    l->l[1].l.colc[0] = 0x00;
    l->l[1].l.colc[1] = 0x80;
    l->l[1].l.colc[2] = 0x00;
    l->l[1].l.pad2 = 0x00;

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

void hal_look_at_reflect(Mtx *m, LookAt *l,
    f32 xEye, f32 yEye, f32 zEye,
    f32 xAt,  f32 yAt,  f32 zAt,
    f32 xUp,  f32 yUp,  f32 zUp
) {
	Mtx4f mf;

	hal_look_at_reflect_f(&mf, l, xEye, yEye, zEye, xAt, yAt, zAt, xUp, yUp, zUp);

	mtx4f_to_Mtx(&mf, m);
}

void hal_mod_look_at_reflect_f(Mtx4f *mf, LookAt *l, 
    f32 xEye, f32 yEye, f32 zEye, 
    f32 xAt,  f32 yAt,  f32 zAt, 
    f32 arg8, 
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

    /* Up = Look x Right */

    func_80019438(&right, &look, arg8);
    xUp = look.y * right.z - look.z * right.y;
    yUp = look.z * right.x - look.x * right.z;
    zUp = look.x * right.y - look.y * right.x;
    len = 1.0f / sqrtf (xUp*xUp + yUp*yUp + zUp*zUp);
    xUp *= len;
    yUp *= len;
    zUp *= len;

    /* reflectance vectors = Up and Right */

    l->l[0].l.dir[0] = FTOFRAC8(right.x);
    l->l[0].l.dir[1] = FTOFRAC8(right.y);
    l->l[0].l.dir[2] = FTOFRAC8(right.z);
    l->l[1].l.dir[0] = FTOFRAC8(xUp);
    l->l[1].l.dir[1] = FTOFRAC8(yUp);
    l->l[1].l.dir[2] = FTOFRAC8(zUp);
    l->l[0].l.col[0] = 0x00;
    l->l[0].l.col[1] = 0x00;
    l->l[0].l.col[2] = 0x00;
    l->l[0].l.pad1 = 0x00;
    l->l[0].l.colc[0] = 0x00;
    l->l[0].l.colc[1] = 0x00;
    l->l[0].l.colc[2] = 0x00;
    l->l[0].l.pad2 = 0x00;
    l->l[1].l.col[0] = 0x00;
    l->l[1].l.col[1] = 0x80;
    l->l[1].l.col[2] = 0x00;
    l->l[1].l.pad1 = 0x00;
    l->l[1].l.colc[0] = 0x00;
    l->l[1].l.colc[1] = 0x80;
    l->l[1].l.colc[2] = 0x00;
    l->l[1].l.pad2 = 0x00;

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

void hal_mod_look_at_reflect(Mtx *m, LookAt *l,
    f32 xEye, f32 yEye, f32 zEye,
    f32 xAt,  f32 yAt,  f32 zAt,
    f32 arg8,
    f32 xUp,  f32 yUp,  f32 zUp
) {
	Mtx4f mf;

	hal_mod_look_at_reflect_f(&mf, l, xEye, yEye, zEye, xAt, yAt, zAt, arg8, xUp, yUp, zUp);

	mtx4f_to_Mtx(&mf, m);
}

void hal_ortho_f(Mtx4f *mf, 
    f32 l, f32 r, 
    f32 b, f32 t,
    f32 n, f32 f, 
    f32 scale
) {
    s32 i, j;

    (*mf)[0][0] = 2/(r-l);
    (*mf)[1][1] = 2/(t-b);
    (*mf)[2][2] = -2/(f-n);
    (*mf)[3][0] = -(r+l)/(r-l);
    (*mf)[3][1] = -(t+b)/(t-b);
    (*mf)[3][2] = -(f+n)/(f-n);
    (*mf)[3][3] = 1;

    for (i=0; i<3; i++) {
        if (i != 0)
            (*mf)[i][0] = 0;
        if (i != 1)
            (*mf)[i][1] = 0;
        if (i != 2)
            (*mf)[i][2] = 0;
        if (i != 3)
            (*mf)[i][3] = 0;
    }

    for (i=0; i<4; i++)
        for (j=0; j<4; j++)
            (*mf)[i][j] *= scale;
}

void hal_ortho(Mtx *m, 
    f32 l, f32 r,
    f32 b, f32 t,
    f32 n, f32 f, 
    f32 scale
) {
    Mtx4f mf;

    hal_ortho_f(&mf, l, r, b, t, n, f, scale);

    mtx4f_to_Mtx(&mf, m);
}

#ifdef MIPS_TO_C
// this function seems to have larger changes than the prior `gu` functions
void hal_perspective_fast_f(Mtx4f *mf, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale)
{
    f32 cot;
    u16 sinAngle, cosAngle;
    f32 sinX, cosX;

    //fovy *= 3.1415926 / 180.0;
    // M_PI / 180.0f) / 2.0f = 0.008726646f
    fovy *= 0.008726646f;
    sinAngle = (s32)(fovy * 651.8986f) & 0xFFF;
    // is this being inlined?
    sinX = (f32) gSinTable[sinAngle & (ARRAY_COUNT(gSinTable) - 1)];
    if (sinAngle & 0x800) { sinX = -sinX; }

    cosAngle = (s32)sinAngle + 0x400;
    cosX = (f32) gSinTable[cosAngle & (ARRAY_COUNT(gSinTable) - 1)];
    if (cosAngle & 0x800) { cosX = -cosX; }

    //cot = cosf (fovy/2) / sinf (fovy/2);
    cot = cosX / sinX;


    /*
    mf[0][0] = cot / aspect;
    mf[1][1] = cot;
    mf[2][2] = (near + far) / (near - far);
    mf[2][3] = -1;
    mf[3][2] = (2 * near * far) / (near - far);
    mf[3][3] = 0;

    for (i=0; i<4; i++)
        for (j=0; j<4; j++)
        mf[i][j] *= scale;
    */

    (*mf)[0][0] = (cot / aspect) * scale;
    (*mf)[0][1] = 0.0f;
    (*mf)[0][2] = 0.0f;
    (*mf)[0][3] = 0.0f;
    (*mf)[1][0] = 0.0f;
    (*mf)[1][1] = cot * scale;
    (*mf)[1][2] = 0.0f;
    (*mf)[1][3] = 0.0f;
    (*mf)[2][0] = 0.0f;
    (*mf)[2][1] = 0.0f;
    (*mf)[2][2] = ((near + far) * scale) / (near - far);
    (*mf)[2][3] = -scale;
    (*mf)[3][0] = 0.0f;
    (*mf)[3][1] = 0.0f;
    (*mf)[3][2] = (2.0f * near * far * scale) / (near - far);
    (*mf)[3][3] = 0.0f;

    if (perspNorm != NULL) {
        if (near + far <= 2.0f) {
            *perspNorm = (u16)0xFFFF;
        } else  {
            *perspNorm = (u16) ((2.0f * 65536.0f) / (near + far));
            if (*perspNorm <= 0) {
                *perspNorm = (u16) 0x0001;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/hal_perspective_fast_f.s")
#endif

void hal_perspective_fast(Mtx *m, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    Mtx4f mf;

    hal_perspective_fast_f(&mf, perspNorm, fovy, aspect, near, far, scale);

    mtx4f_to_Mtx(&mf, m);
}

#ifdef MIPS_TO_C
// so close
void hal_perspective_f(Mtx4f *mf, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    f32 cot;
    UNUSED s32 i, j;

    fovy *= 3.1415926f / 180.0f;
    cot = cosf (fovy/2) / sinf (fovy/2);

    /*
    (*mf)[0][0] = cot / aspect;
    (*mf)[1][1] = cot;
    (*mf)[2][2] = (near + far) / (near - far);
    (*mf)[2][3] = -1.0f;
    (*mf)[3][2] = (2.0f * near * far) / (near - far);
    (*mf)[3][3] = 0.0;

    for (i=0; i<4; i++)
        for (j=0; j<4; j++)
        (*mf)[i][j] *= scale;
    */
    (*mf)[0][0] = (cot / aspect) * scale;
    (*mf)[1][1] = cot * scale;
    (*mf)[2][2] = ((near + far) * scale) / (near - far);
    (*mf)[2][3] = -scale;
    (*mf)[3][2] = (2.0f * near * far * scale) / (near - far);
    (*mf)[3][3] = 0.0f;

    (*mf)[0][1] = 0;
    (*mf)[0][2] = 0;
    (*mf)[0][3] = 0;

    (*mf)[1][0] = 0;
    (*mf)[1][2] = 0;
    (*mf)[1][3] = 0;

    (*mf)[2][0] = 0;
    (*mf)[2][1] = 0;

    (*mf)[3][0] = 0;
    (*mf)[3][1] = 0;

    if (perspNorm != NULL) {
        if (near+far <= 2.0f) {
            *perspNorm = (u16) 0xFFFF;
        } else  {
            *perspNorm = (u16) ((2.0f*65536.0f)/(near+far));
            if (*perspNorm <= 0) {
                *perspNorm = (u16) 0x0001;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/hal_perspective_f.s")
#endif

void hal_perspective(Mtx *m, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale) {
    Mtx4f mf;

    hal_perspective_f(&mf, perspNorm, fovy, aspect, near, far, scale);

    mtx4f_to_Mtx(&mf, m);
}

void hal_scale_f(Mtx4f *mf, f32 x, f32 y, f32 z) {
    s32 i, j;

    (*mf)[0][0] = x;
    (*mf)[1][1] = y;
    (*mf)[2][2] = z;
    (*mf)[3][3] = 1.0f;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (i != j) {
                (*mf)[i][j] = 0;
            }
        }
    }
}

void hal_scale(Mtx *m, f32 x, f32 y, f32 z) {
    m->m[0][1] = 0;
    m->m[2][1] = 0;
    m->m[0][3] = 0;
    m->m[2][3] = 0;
    m->m[1][0] = 0;
    m->m[3][0] = 0;

    m->m[0][0] = FTOFIX32(x) & 0xFFFF0000;
    m->m[2][0] = FTOFIX32(x) << 0x10;
    
    m->m[0][2] = FTOFIX32(y) >> 0x10;
    m->m[2][2] = FTOFIX32(y) & 0xFFFF;
    
    m->m[1][1] = FTOFIX32(z) & 0xFFFF0000;
    m->m[3][1] = FTOFIX32(z) << 0x10;
    
    m->m[1][2] = 0;
    m->m[3][2] = 0;

    m->m[1][3] = 1;
    m->m[3][3] = 0;
}

void hal_row_multiplication_f(Mtx4f *mf, f32 x, f32 y, f32 z) {
    s32 j;

    for (j = 0; j < 4; j++) {
        if ((*mf)[0][j] != 0.0f) {
            (*mf)[0][j] *= x;
        }
    }

    for (j = 0; j < 4; j++) {
        if ((*mf)[1][j] != 0.0f) {
            (*mf)[1][j] *= y;
        }
    }

    for (j = 0; j < 4; j++) {
        if ((*mf)[2][j] != 0.0f) {
            (*mf)[2][j] *= z;
        }
    }
}

void hal_translate_f(Mtx4f *mf, f32 x, f32 y, f32 z) {
    int i, j;

    (*mf)[3][0] = x;
    (*mf)[3][1] = y;
    (*mf)[3][2] = z;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 4; j++) {
            if (i == j) {
                (*mf)[i][j] = 1.0f;
            } else {
                (*mf)[i][j] = 0.0f;
            }
        }
    }
    (*mf)[3][3] = 1.0f;
}

#ifdef NON_MATCHING
void hal_translate(Mtx *m, f32 x, f32 y, f32 z) {
    u32 e1, e2;

    e1 = FTOFIX32(1);
    e2 = FTOFIX32(0);
    m->m[0][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(0); // 0 2
    e2 = FTOFIX32(0);
    m->m[0][1] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][1] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(0); // 1 0 
    e2 = FTOFIX32(1);
    m->m[0][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(0); // 1 2
    e2 = FTOFIX32(0);
    m->m[0][3] = COMBINE_INTEGRAL(e1, e2);
    m->m[2][3] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(0); // 2 0
    e2 = FTOFIX32(0);
    m->m[1][0] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][0] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(1); // 2 2
    e2 = FTOFIX32(0);
    m->m[1][1] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][1] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(x); // 3 0
    e2 = FTOFIX32(y);
    m->m[1][2] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][2] = COMBINE_FRACTIONAL(e1, e2);

    e1 = FTOFIX32(z); // 3 2
    e2 = FTOFIX32(1);
    m->m[1][3] = COMBINE_INTEGRAL(e1, e2);
    m->m[3][3] = COMBINE_FRACTIONAL(e1, e2);
}

#else
#pragma GLOBAL_ASM("game/nonmatching/system_08/hal_translate.s")
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
