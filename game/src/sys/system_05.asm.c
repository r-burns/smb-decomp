#include "sys/system_05.h"

#include "sys/gtl.h"
#include "sys/om.h"
#include "sys/system_04.h"

#include <macros.h>
#include <ssb_types.h>

#include <PR/gu.h>
#include <PR/mbi.h>
#include <PR/ultratypes.h>

// gbi Mtx * ?
u32 *D_80046FA0;
f32 D_80046FA4;
Mtx4f D_80046FA8;
Mtx4f D_80046FE8;
Mtx4f D_80047028;
Mtx4f D_80047068;
u32 D_800470A8;
struct MtxProcTemp *D_800470AC;
u8 D_800470B0[8];
u32 D_800470B8;
u32 D_800470BC;
u32 D_800470C0;
u32 D_800470C4;
u8 D_800470C8[480];
u8 D_800472A8[12];
u32 D_800472B4;
u8 extend_D_800472B4[8];
u8 D_800472C0[16];

#define ABS(x)  ((x) < 0 ? -(x) : (x))
#define ABSF(x) ((x) < 0.0f ? -(x) : (x))

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

// system 08
// might take another pointer type for a1 (to convert to RSP matrix?)
// convert from mtx4f to gbi Mtx
void func_80019C70(Mtx4f *, Mtx *);
void func_8001B780(Mtx *, f32, f32, f32);
void func_8001B9C4(Mtx *, f32, f32, f32);
void func_8001BBF8(Mtx *, f32, f32, f32, f32);
void func_8001BCA0(Mtx *, f32, f32, f32, f32, f32, f32, f32);
void func_8001BD70(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void func_8001BF20(Mtx *, f32, f32, f32);
void func_8001C21C(Mtx *, f32, f32, f32, f32, f32, f32);
void func_8001C588(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void func_8001CAB4(Mtx *, f32, f32, f32);
void func_8001CB4C(Mtx *, f32, f32, f32, f32, f32, f32);
void func_8001CC0C(Mtx *, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void func_8001D2F4(Mtx *, f32, f32, f32, f32);
void func_8001D3C4(Mtx *, f32, f32, f32, f32, f32, f32, f32);
void func_8001D4A4(Mtx *, f32, f32, f32);
void func_8001D58C(Mtx *, f32, f32, f32, f32, f32, f32);

/* in F3DEX2 2.04H, there is a unique DList command for recalculating
    the MVP matrix in the coprocessor
*/
#define gSPMvpRecalc(pkt) gImmp1(pkt, G_SPECIAL_1, 1)
#define gsSPMvpRecalc()   gsImmp1(G_SPECIAL_1, 1)

#ifdef MIPS_TO_C
s32 func_80010D70(Gfx **arg0, struct DObj *arg1) {
    union Mtx3fi *sp2C0;
    struct Mtx4Float *sp2BC; // fp (s8)
    struct Mtx3Float *sp2B8;
    s32 sp2CC;
    Gfx *sp2D4;

    u8 *csr;
    s32 i;

    sp2D4 = *arg0;
    sp2CC = 0;

    if (arg1->unk4C != NULL) {
        csr = arg1->unk4C->data;
        for (i = 0; i < ARRAY_COUNT(arg1->unk4C->kinds); i++) {
            switch (arg1->unk4C->kinds[i]) {
                case 0: break;
                case 1:
                    sp2C0 = (void *)csr;
                    csr += sizeof(*sp2C0);
                    break;
                case 2:
                    sp2BC = (void *)csr;
                    csr += sizeof(*sp2BC);
                    break;
                case 3:
                    sp2B8 = (void *)csr;
                    csr += sizeof(*sp2B8);
                    break;
            }
        }
    }
    // L80010E34
    for (i = 0; i < arg1->unk56; i++) {
        // struct DObj *curdobj = arg1; // sp74
        struct OMMtx *mtx = arg1->unk58[i]; // s3
        union {
            Mtx *gbi;
            Mtx4f *f;
        } mtxStore; // s0
        s32 ret;

        if (mtx != NULL) {
            mtxStore.gbi = &mtx->unk08;
            if (mtx->unk05 != 2) {
                if (mtx->unk05 == 4) {
                    if (D_8003B6E8.parts[3] != arg1->unk4->unk0E) {
                        // this is weird...
                        *(void **)&mtx->unk08 = D_800465D8.ptr;
                        mtxStore.f            = D_800465D8.ptr;
                        D_800465D8.ptr        = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                    } else {
                        // L80010EDC
                        switch (mtx->unk04) {
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                                mtxStore.f     = D_800465D8.ptr;
                                D_800465D8.ptr = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                                break;
                            default:
                                // L80010F18
                                if (mtx->unk04 > 66) {
                                    mtxStore.f     = D_800465D8.ptr;
                                    D_800465D8.ptr = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                                } else {
                                    // L80010F38
                                    // what is it loading here?
                                    // bringing back the pointer stored in mtx->unk08[0][0]?
                                    continue; // to L80012CA4
                                }
                        }
                    }
                } else if (D_80046630 > 0) {
                    // L80010F40
                    mtxStore.f     = D_800465D8.ptr;
                    D_800465D8.ptr = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                } else {
                    // L80010F68
                    if (D_8003B6E8.parts[3] == arg1->unk4->unk0E) {
                        switch (mtx->unk04) {
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                                mtxStore.f     = D_800465D8.ptr;
                                D_800465D8.ptr = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                                break;
                            default:
                            {
                                if (mtx->unk04 > 66) {
                                    mtxStore.f     = D_800465D8.ptr;
                                    D_800465D8.ptr = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                                } else {
                                    // L80010FDC
                                    if (mtx->unk05 != 3) { continue; }

                                    mtxStore.f     = D_800465D8.ptr;
                                    D_800465D8.ptr = (u8 *)D_800465D8.ptr + sizeof(Mtx4f);
                                }
                            }
                        }
                    }
                }
                // L80010FFC - end of if, else if, else?
                // L80011000
                ret = 0;
                switch (mtx->unk04) {
                    case 1: break;
                    case 2: break;
                    case 18:
                        func_8001B9C4(
                            mtxStore.gbi, arg1->unk18.f.v.x, arg1->unk18.f.v.y, arg1->unk18.f.v.z);
                        break;
                    case 19:
                        func_8001D2F4(
                            mtxStore.gbi,
                            arg1->unk28.f[0],
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 20:
                        func_8001D3C4(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[0],
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 21:
                        func_8001D4A4(
                            mtxStore.gbi, arg1->unk28.f[1], arg1->unk28.f[2], arg1->unk28.f[3]);
                        break;
                    case 22:
                        func_8001D58C(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 23:
                        func_8001BBF8(
                            mtxStore.gbi,
                            arg1->unk28.f[0],
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 24:
                        func_8001BCA0(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[0],
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 25:
                        func_8001BD70(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[0],
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3],
                            arg1->unk3C.v.x,
                            arg1->unk3C.v.y,
                            arg1->unk3C.v.z);
                        D_80046FA4 *= arg1->unk3C.v.x;
                        break;
                    case 26:
                        func_8001BF20(
                            mtxStore.gbi, arg1->unk28.f[1], arg1->unk28.f[2], arg1->unk28.f[3]);
                        break;
                    case 27:
                        func_8001C21C(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 28:
                        func_8001C588(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3],
                            arg1->unk3C.v.x,
                            arg1->unk3C.v.y,
                            arg1->unk3C.v.z);
                        D_80046FA4 *= arg1->unk3C.v.x;
                        break;
                    case 29:
                        func_8001CAB4(
                            mtxStore.gbi, arg1->unk28.f[1], arg1->unk28.f[2], arg1->unk28.f[3]);
                        break;
                    case 30:
                        func_8001CB4C(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3]);
                        break;
                    case 31:
                        func_8001CC0C(
                            mtxStore.gbi,
                            arg1->unk18.f.v.x,
                            arg1->unk18.f.v.y,
                            arg1->unk18.f.v.z,
                            arg1->unk28.f[1],
                            arg1->unk28.f[2],
                            arg1->unk28.f[3],
                            arg1->unk3C.v.x,
                            arg1->unk3C.v.y,
                            arg1->unk3C.v.z);
                        D_80046FA4 *= arg1->unk3C.v.x;
                        break;
                    case 32:
                        func_8001B780(
                            mtxStore.gbi, arg1->unk3C.v.x, arg1->unk3C.v.y, arg1->unk3C.v.z);
                        D_80046FA4 *= arg1->unk3C.v.x;
                        break;
                    case 33: func_80010AE8(mtxStore.f, arg1, FALSE); break;
                    case 34: func_80010AE8(mtxStore.f, arg1, TRUE); break;
                    case 35: func_80010748(mtxStore.f, arg1, FALSE); break;
                    case 36: func_80010748(mtxStore.f, arg1, TRUE); break;
                    case 37: func_80010C2C(mtxStore.f, arg1, FALSE); break;
                    case 38: func_80010C2C(mtxStore.f, arg1, TRUE); break;
                    case 39: func_80010918(mtxStore.f, arg1, FALSE); break;
                    case 40: func_80010918(mtxStore.f, arg1, TRUE); break;
                    case 56:
                        func_8001B9C4(mtxStore.gbi, sp2C0->f.v.x, sp2C0->f.v.y, sp2C0->f.v.z);
                        break;
                    case 57:
                        func_8001BBF8(
                            mtxStore.gbi, sp2BC->f[0], sp2BC->f[1], sp2BC->f[2], sp2BC->f[3]);
                        break;
                    case 58:
                        func_8001BF20(mtxStore.gbi, sp2BC->f[1], sp2BC->f[2], sp2BC->f[3]);
                        break;
                    case 59:
                        func_8001B780(mtxStore.gbi, sp2B8->v.x, sp2B8->v.y, sp2B8->v.z);
                        D_80046FA4 *= sp2B8->v.x;
                        break;
                    case 60:
                        func_8001BCA0(
                            mtxStore.gbi,
                            sp2C0->f.v.x,
                            sp2C0->f.v.y,
                            sp2C0->f.v.z,
                            sp2BC->f[0],
                            sp2BC->f[1],
                            sp2BC->f[2],
                            sp2BC->f[3]);
                        break;
                    case 61:
                        func_8001BD70(
                            mtxStore.gbi,
                            sp2C0->f.v.x,
                            sp2C0->f.v.y,
                            sp2C0->f.v.z,
                            sp2BC->f[0],
                            sp2BC->f[1],
                            sp2BC->f[2],
                            sp2BC->f[3],
                            sp2B8->v.x,
                            sp2B8->v.y,
                            sp2B8->v.z);
                        D_80046FA4 *= sp2B8->v.x;
                        break;
                    case 62:
                        func_8001C21C(
                            mtxStore.gbi,
                            sp2C0->f.v.x,
                            sp2C0->f.v.y,
                            sp2C0->f.v.z,
                            sp2BC->f[1],
                            sp2BC->f[2],
                            sp2BC->f[3]);
                        break;
                    case 63:
                        func_8001C588(
                            mtxStore.gbi,
                            sp2C0->f.v.x,
                            sp2C0->f.v.y,
                            sp2C0->f.v.z,
                            sp2BC->f[1],
                            sp2BC->f[2],
                            sp2BC->f[3],
                            sp2B8->v.x,
                            sp2B8->v.y,
                            sp2B8->v.z);
                        D_80046FA4 *= sp2B8->v.x;
                        break; // goto L80012CA4
                    case 41:
                        gSPMvpRecalc(sp2D4++);
                        // gSPInsertMatrix?
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, D_80046FA0[0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, D_80046FA0[1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, D_80046FA0[2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, D_80046FA0[3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, D_80046FA0[4]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, D_80046FA0[5]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, D_80046FA0[8]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, D_80046FA0[9]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, D_80046FA0[10]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, D_80046FA0[11]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, D_80046FA0[12]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, D_80046FA0[13]);
                        // this is different
                        continue;
                    case 42:
                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, D_80046FA0[0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, D_80046FA0[1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, D_80046FA0[2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, D_80046FA0[3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, D_80046FA0[4]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, D_80046FA0[5]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, D_80046FA0[8]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, D_80046FA0[9]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, D_80046FA0[10]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, D_80046FA0[11]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, D_80046FA0[12]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, D_80046FA0[13]);

                        continue;
                    case 43:
                    {
                        f32 f18 = D_80046FA4 * SQUARE(arg1->unk3C.v.y);

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][0] = D_80046FA8[0][0] * D_80046FA4;
                        D_80046FE8[1][1] = D_80046FA8[1][1] * f18;
                        D_80046FE8[2][2] = D_80046FA8[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80046FA8[2][3] * D_80046FA4;

                        D_80046FE8[0][1] = 0.0f;
                        D_80046FE8[0][2] = 0.0f;
                        D_80046FE8[0][3] = 0.0f;
                        D_80046FE8[1][0] = 0.0f;
                        D_80046FE8[1][2] = 0.0f;
                        D_80046FE8[1][3] = 0.0f;
                        D_80046FE8[2][0] = 0.0f;
                        D_80046FE8[2][1] = 0.0f;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 44:
                    {
                        f32 f18 = D_80046FA4 * SQUARE(arg1->unk3C.v.y);

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][0] = D_80046FA8[0][0] * D_80046FA4;
                        D_80046FE8[1][1] = D_80046FA8[1][1] * f18;
                        D_80046FE8[2][2] = D_80046FA8[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80046FA8[2][3] * D_80046FA4;

                        D_80046FE8[0][1] = 0.0f;
                        D_80046FE8[0][2] = 0.0f;
                        D_80046FE8[0][3] = 0.0f;
                        D_80046FE8[1][0] = 0.0f;
                        D_80046FE8[1][2] = 0.0f;
                        D_80046FE8[1][3] = 0.0f;
                        D_80046FE8[2][0] = 0.0f;
                        D_80046FE8[2][1] = 0.0f;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 45:
                    {
                        f32 sinY = sinf(arg1->unk28.f[1]); // sp1CC
                        f32 cosY = cosf(arg1->unk28.f[1]); // sp1C8 ?

                        // f2 * f8 -> f12
                        f32 f12 = D_80046FA4 * arg1->unk3C.v.y;
                        // f2 * f10 -> f4 store reload -> f2
                        D_80046FA4 *= arg1->unk3C.v.y;

                        D_80046FE8[0][2] = 0.0f;
                        D_80046FE8[1][2] = 0.0f;
                        D_80046FE8[0][3] = 0.0f;
                        D_80046FE8[1][3] = 0.0f;
                        D_80046FE8[2][0] = 0.0f;
                        D_80046FE8[2][1] = 0.0f;

                        D_80046FE8[0][0] = D_80046FA8[0][0] * D_80046FA4 * cosY;
                        D_80046FE8[1][0] = D_80046FA8[0][0] * D_80046FA4 * -sinY;
                        D_80046FE8[0][1] = D_80046FA8[1][1] * f12 * sinY;
                        D_80046FE8[1][1] = D_80046FA8[1][1] * f12 * cosY;
                        D_80046FE8[2][2] = D_80046FA8[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80046FA8[2][3] * D_80046FA4;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 46:
                    {
                        f32 sinZ = sinf(arg1->unk28.f[3]); // sp190
                        f32 cosZ = cosf(arg1->unk28.f[3]); // sp188 ?
                        f32 f12  = arg1->unk3C.v.y * D_80046FA4;

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][2] = 0.0f;
                        D_80046FE8[1][2] = 0.0f;
                        D_80046FE8[0][3] = 0.0f;
                        D_80046FE8[1][3] = 0.0f;
                        D_80046FE8[2][0] = 0.0f;
                        D_80046FE8[2][1] = 0.0f;

                        D_80046FE8[0][0] = D_80046FA8[0][0] * D_80046FA4 * cosZ;
                        D_80046FE8[1][0] = D_80046FA8[0][0] * D_80046FA4 * -sinZ;
                        D_80046FE8[0][1] = D_80046FA8[1][1] * f12 * sinZ;
                        D_80046FE8[1][1] = D_80046FA8[1][1] * f12 * cosZ;
                        D_80046FE8[2][2] = D_80046FA8[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80046FA8[2][3] * D_80046FA4;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 47:
                    {
                        f32 f12 = D_80046FA4 * arg1->unk3C.v.y;

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][0] = D_80047028[0][0] * D_80046FA4;
                        D_80046FE8[0][1] = D_80047028[0][1] * D_80046FA4;
                        D_80046FE8[0][2] = D_80047028[0][2] * D_80046FA4;
                        D_80046FE8[0][3] = D_80047028[0][3] * D_80046FA4;
                        D_80046FE8[1][0] = D_80047028[1][0] * f12;
                        D_80046FE8[1][1] = D_80047028[1][1] * f12;
                        D_80046FE8[1][2] = D_80047028[1][2] * f12;
                        D_80046FE8[1][3] = D_80047028[1][3] * f12;
                        D_80046FE8[2][0] = D_80047028[2][0] * D_80046FA4;
                        D_80046FE8[2][1] = D_80047028[2][1] * D_80046FA4;
                        D_80046FE8[2][2] = D_80047028[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80047028[2][3] * D_80046FA4;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 48:
                    {
                        f32 f12 = D_80046FA4 * arg1->unk3C.v.y;

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][0] = D_80047028[0][0] * D_80046FA4;
                        D_80046FE8[0][1] = D_80047028[0][1] * D_80046FA4;
                        D_80046FE8[0][2] = D_80047028[0][2] * D_80046FA4;
                        D_80046FE8[0][3] = D_80047028[0][3] * D_80046FA4;
                        D_80046FE8[1][0] = D_80047028[1][0] * f12;
                        D_80046FE8[1][1] = D_80047028[1][1] * f12;
                        D_80046FE8[1][2] = D_80047028[1][2] * f12;
                        D_80046FE8[1][3] = D_80047028[1][3] * f12;
                        D_80046FE8[2][0] = D_80047028[2][0] * D_80046FA4;
                        D_80046FE8[2][1] = D_80047028[2][1] * D_80046FA4;
                        D_80046FE8[2][2] = D_80047028[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80047028[2][3] * D_80046FA4;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 49:
                    {
                        f32 f12 = D_80046FA4 * arg1->unk3C.v.y;

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][0] = D_80047068[0][0] * D_80046FA4;
                        D_80046FE8[0][1] = D_80047068[0][1] * D_80046FA4;
                        D_80046FE8[0][2] = D_80047068[0][2] * D_80046FA4;
                        D_80046FE8[0][3] = D_80047068[0][3] * D_80046FA4;
                        D_80046FE8[1][0] = D_80047068[1][0] * f12;
                        D_80046FE8[1][1] = D_80047068[1][1] * f12;
                        D_80046FE8[1][2] = D_80047068[1][2] * f12;
                        D_80046FE8[1][3] = D_80047068[1][3] * f12;
                        D_80046FE8[2][0] = D_80047068[2][0] * D_80046FA4;
                        D_80046FE8[2][1] = D_80047068[2][1] * D_80046FA4;
                        D_80046FE8[2][2] = D_80047068[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80047068[2][3] * D_80046FA4;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    case 50:
                    {
                        f32 f12 = D_80046FA4 * arg1->unk3C.v.y;

                        D_80046FA4 *= arg1->unk3C.v.x;

                        D_80046FE8[0][0] = D_80047068[0][0] * D_80046FA4;
                        D_80046FE8[0][1] = D_80047068[0][1] * D_80046FA4;
                        D_80046FE8[0][2] = D_80047068[0][2] * D_80046FA4;
                        D_80046FE8[0][3] = D_80047068[0][3] * D_80046FA4;
                        D_80046FE8[1][0] = D_80047068[1][0] * f12;
                        D_80046FE8[1][1] = D_80047068[1][1] * f12;
                        D_80046FE8[1][2] = D_80047068[1][2] * f12;
                        D_80046FE8[1][3] = D_80047068[1][3] * f12;
                        D_80046FE8[2][0] = D_80047068[2][0] * D_80046FA4;
                        D_80046FE8[2][1] = D_80047068[2][1] * D_80046FA4;
                        D_80046FE8[2][2] = D_80047068[2][2] * D_80046FA4;
                        D_80046FE8[2][3] = D_80047068[2][3] * D_80046FA4;

                        func_80019C70(&D_80046FE8, mtxStore.gbi);

                        gSPMvpRecalc(sp2D4++);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtxStore.gbi->m[0][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtxStore.gbi->m[0][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtxStore.gbi->m[0][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtxStore.gbi->m[0][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtxStore.gbi->m[1][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtxStore.gbi->m[1][1]);

                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtxStore.gbi->m[2][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtxStore.gbi->m[2][1]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtxStore.gbi->m[2][2]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtxStore.gbi->m[2][3]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtxStore.gbi->m[3][0]);
                        gMoveWd(sp2D4++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtxStore.gbi->m[3][1]);

                        continue;
                    }
                    default:
                    {
                        if (mtx->unk04 >= 66 && D_800470AC != NULL) {
                            s32 (*fn)(Mtx *, struct DObj *, Gfx *);

                            if (arg1->unk4->unk0E != D_8003B6E8.parts[3]) {
                                fn = D_800470AC[mtx->unk04 - 66].unk04;
                            } else {
                                fn = D_800470AC[mtx->unk04 - 66].unk00;
                            }
                            // L80012C78
                            ret = fn(mtxStore.gbi, arg1, sp2D4);
                        }
                        // L80012C84
                        if (ret == 1) {
                            // offset pointer by 4 * un56?
                            arg1 += arg1->unk56;

                            continue;
                        }
                    }
                }
                // L80012CA4
                // L80012CA8
                if (mtx->unk05 == 1 || mtx->unk05 == 8) { mtx->unk05 = 2; }
            }
            // L80012CBC
            if (mtx->unk04 != 2) {
                if (sp2CC == 0 && (arg1->unk14 == NULL || arg1->unk8 != NULL)) {
                    // L80012D00
                    gSPMatrix(sp2D4++, mtxStore.gbi, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                } else {
                    // L80012D14
                    gSPMatrix(sp2D4++, mtxStore.gbi, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                }
                // L80012D24
                sp2CC++;
            }
        }
        // L80012D30
        // else statement?
        // cap dl?
        // continue loop?
        // L80012D30
        // L80012D38
    }
    // L80012D4C
    *arg0 = sp2D4;
    return sp2CC;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80010D70.s")
#endif

#ifdef MIPS_TO_C
void func_80012D90(struct DObj *arg0, Gfx **arg1) {
    s32 count;
    s32 sp04;
    s32 sp14;
    struct MObj *mobj; // a1?
    Gfx *newDl;        // t2?
    Gfx *branchDl;     // a2 into v0??

    if (arg0->unk80 == NULL) { return; }

    gSPSegment((*arg1)++, 14, D_800465D8.ptr);

    count = 0;
    mobj  = arg0->unk80;
    while (mobj != NULL) {
        count++;
        mobj = mobj->next;
    }

    mobj     = arg0->unk80; // a1 for `mobj`
    newDl    = D_800465D8.ptr;
    branchDl = newDl + count;
    for (sp14 = 0; sp14 < count * 8; sp14 += 8) {
        // L80012E30
        s32 t1;
        f32 spB0;
        f32 spB4;
        f32 spB8;
        f32 spBC;
        f32 phi_f12; // spC0
        f32 phi_f2;  // spC4

        t1 = mobj->unk08.unk30 == 0 ? 0xA1 : mobj->unk08.unk30;

        // L80012E4C
        if (t1 & 0xE0) {
            phi_f2  = mobj->unk08.unk1C;
            phi_f12 = mobj->unk08.unk20;

            spBC = mobj->unk08.unk14;
            spB8 = mobj->unk08.unk18;
            spB4 = mobj->unk08.unk3C;
            spB0 = mobj->unk08.unk40;
            if (*(s32 *)&mobj->unk08.unk10 == 1) {
                spBC = (((spBC - mobj->unk08.unk24) + 1.0f) - mobj->unk08.unk28 * 0.5f) * 0.5f;
                spB4 = (((spB4 - mobj->unk08.unk44) + 1.0f) - mobj->unk08.unk28 * 0.5f) * 0.5f;
                phi_f2 *= 0.5f;
            }
        }
        // L80012EF8
        gSPBranchList(newDl++, branchDl);
        if (t1 & 4) {
            u16 *imgptr = mobj->unk08.unk2C[(s32)mobj->unk88];

            gDPSetTextureImage(branchDl++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, imgptr);
            if (t1 & 3) {
                gDPTileSync(branchDl++);
                gDPSetTile(
                    branchDl++,
                    G_IM_FMT_RGBA,
                    G_IM_SIZ_4b,
                    0,
                    0x0100,
                    5,
                    0,
                    G_TX_NOMIRROR | G_TX_WRAP,
                    G_TX_NOMASK,
                    G_TX_NOLOD,
                    G_TX_NOMIRROR | G_TX_WRAP,
                    G_TX_NOMASK,
                    G_TX_NOLOD) gDPLoadSync(branchDl++);
                gDPLoadTLUTCmd(branchDl++, 5, ((u8 *)&mobj->unk08)[3] == 1 ? 255 : 15);
                gDPPipeSync(branchDl++);
            }
        }
        // L80012FD0
        if (t1 & 0x1000) { gSPLightColor(branchDl++, LIGHT_1, mobj->unk08.unk60); }
        // L80013010
        if (t1 & 0x2000) { gSPLightColor(branchDl++, LIGHT_2, mobj->unk08.unk64); }
        // L80013050
        if (t1 & 0x218) {
            if (t1 & 0x10) {
                s32 trunc = (s32)mobj->unk84;
                f32 val   = (mobj->unk84 - (f32)trunc) * 256.0f;
                gDPSetPrimColor(
                    branchDl++,
                    mobj->unk08.unk55,
                    (u32)val & 0xFF,
                    mobj->unk08.unk50,
                    mobj->unk08.unk51,
                    mobj->unk08.unk52,
                    mobj->unk08.unk53);
                mobj->unk80 = trunc;
                mobj->unk82 = trunc + 1;
            } else {
                // L80013170
                gDPSetPrimColor(
                    branchDl++,
                    mobj->unk08.unk55,
                    (u32)(mobj->unk84 * 255.0f) & 0xFF,
                    mobj->unk08.unk50,
                    mobj->unk08.unk51,
                    mobj->unk08.unk52,
                    mobj->unk08.unk53);
            }
        }
        // L80013250
        if (t1 & 0x400) {
            gDPSetEnvColor(
                branchDl++,
                mobj->unk08.unk58,
                mobj->unk08.unk59,
                mobj->unk08.unk5A,
                mobj->unk08.unk5B);
        }
        // L80013294
        if (t1 & 0x800) {
            gDPSetBlendColor(
                branchDl++,
                mobj->unk08.unk5C,
                mobj->unk08.unk5D,
                mobj->unk08.unk5E,
                mobj->unk08.unk5F);
        }
        // L800132D8
        if (t1 & 0x12) {
            s32 imgsize;

            imgsize =
                mobj->unk08.unk33 == 3 ? G_IM_SIZ_32b : G_IM_SIZ_16b; // or a one case switch..?
            gDPSetTextureImage(
                branchDl++,
                mobj->unk08.unk32,
                imgsize,
                1,
                ((void **)(&mobj->unk08.unk04))[mobj->unk82]);
            if (t1 & 0x11) {
                gDPLoadSync(branchDl++);
                switch (mobj->unk08.unk33) {
                    case G_IM_SIZ_4b:
                    {
                        u16 lrs = (((mobj->unk08.unk36 * mobj->unk08.unk34) + 3) / 4) - 1;
                        s32 dxt;

                        if (mobj->unk08.unk34 < 0) {
                            dxt = 15;
                        } else {
                            dxt = mobj->unk08.unk34;
                        }

                        dxt /= 16;
                        if (dxt <= 0) { dxt = 1; }

                        dxt = (MIN(dxt, 1) + 0x7FF) / MIN(dxt, 1);

                        gDPLoadBlock(branchDl++, 6, 0, 0, lrs, dxt);
                        break;
                    }
                    case G_IM_SIZ_8b:
                    {
                        u16 lrs = (((mobj->unk08.unk36 * mobj->unk08.unk34) + 1) / 2) - 1;
                        s32 dxt;

                        dxt = mobj->unk08.unk34;
                        if (dxt <= 0) { dxt += 7; }
                        dxt /= 8;
                        dxt = (MIN(dxt, 1) + 0x7FF) / MIN(dxt, 1);

                        gDPLoadBlock(branchDl++, 6, 0, 0, lrs, dxt);
                        break;
                    }
                    case G_IM_SIZ_16b:
                    {
                        // L80013508
                        u16 lrs = (mobj->unk08.unk36 * mobj->unk08.unk34) - 1;
                        s32 dxt;

                        dxt = mobj->unk08.unk34 * 2;
                        if (dxt <= 0) { dxt += 7; }
                        dxt /= 8;
                        dxt = (MIN(dxt, 1) + 0x7FF) / MIN(dxt, 1);

                        gDPLoadBlock(branchDl++, 6, 0, 0, lrs, dxt);
                        break;
                    }
                    case G_IM_SIZ_32b:
                    {
                        // L800135BC
                        u16 lrs = (mobj->unk08.unk36 * mobj->unk08.unk34) - 1;

                        s32 dxt;

                        dxt = mobj->unk08.unk34 * 4;
                        if (dxt <= 0) { dxt += 7; }
                        dxt /= 8;
                        dxt = (MIN(dxt, 1) + 0x7FF) / MIN(dxt, 1);

                        gDPLoadBlock(branchDl++, 6, 0, 0, lrs, dxt);
                        break;
                    }
                }
                // L8001366C
                gDPLoadSync(branchDl++);
            }
        }
        // L80013684
        if (t1 & 0x11) {
            gDPSetTextureImage(
                branchDl++,
                mobj->unk08.unk02,
                mobj->unk08.unk03,
                1,
                ((void **)(&mobj->unk08.unk04))[mobj->unk80]);
        }
        // L800136D8
        if (t1 & 0x20) {
            s32 uls; // phi_a0
            s32 ult; // phi_v0

            if (mobj->unk08.unk10 == 2) {
                if (ABSF(phi_f2) > 0.000015259022f) {
                    uls = (((f32)mobj->unk08.unk0C * spBC) / phi_f2) * 4.0f;
                } else {
                    // L80013760
                    uls = 0.0f;
                }
                // L8001376C

                if (ABSF(phi_f12) > 0.000015259022f) {
                    ult = (((f32)mobj->unk08.unk0E * spB8) / phi_f12) * 4.0f;

                } else {
                    // L800137D8
                    uls = 0.0f;
                }
                // L800137E0

                if (uls < 0) { uls = 0; }

                if (ult < 0) { ult = 0; }
            } else {
                // L80013800
                if (ABSF(phi_f2) > 0.000015259022f) {
                    uls = ((((f32)mobj->unk08.unk0C * spBC) + (f32)mobj->unk08.unk0A) / phi_f2)
                        * 4.0f;
                } else {
                    uls = 0.0f;
                }
                // L8001389C
                if (ABSF(phi_f12) > 0.000015259022f) {
                    ult =
                        ((((((1.0f - phi_f12) - spB8) * (f32)mobj->unk08.unk0E)
                           + (f32)mobj->unk08.unk0A)
                          / phi_f12)
                         * 4.0f);
                } else {
                    ult = 0.0f;
                }
            }
            // L80013940

            gDPSetTileSize(
                branchDl++,
                0,
                uls,
                ult,
                (mobj->unk08.unk0C - 1) * 4 + uls,
                (mobj->unk08.unk0E - 1) * 4 + uls);
        }
        // L80013994
        if (t1 & 0x40) {
            s32 uls; // phi_a0
            s32 ult; // phi_v0

            if (ABSF(phi_f2) > 0.000015259022f) {
                uls = ((((f32)mobj->unk08.unk38 * spB4) + (f32)mobj->unk08.unk0A) / phi_f2) * 4.0f;
            } else {
                // L80013A34
                uls = 0.0f;
            }
            // L80013A40
            if (ABSF(phi_f12) > 0.000015259022f) {
                ult =
                    (((((1.0f - phi_f12) - spB0) * (f32)mobj->unk08.unk3A) + (f32)mobj->unk08.unk0A)
                     / phi_f12)
                    * 4.0f;
            } else {
                // L80013ADC
                ult = 0.0f;
            }
            // L80013AE8
            gDPSetTileSize(
                branchDl++,
                1,
                uls,
                ult,
                (mobj->unk08.unk38 - 1) * 4 + uls,
                (mobj->unk08.unk3A - 1) * 4 + uls);
        }
        // L80013B40
        if (t1 & 0x80) {
            s32 s, t;

            if (mobj->unk08.unk10 == 2) {
                if (ABSF(phi_f2) > 0.000015259022f) {
                    s = (f32)(mobj->unk08.unk0C * 64) / phi_f2;
                } else {
                    // L80013BB8
                    s = 0.0f;
                }
                // L80013BC4
                if (ABSF(phi_f12) > 0.000015259022f) {
                    t = (f32)(mobj->unk08.unk0E * 64) / phi_f12;
                } else {
                    // L80013C18
                    t = 0.0f;
                }
            } else {
                // L80013C24
                if (ABSF(phi_f2) > 0.000015259022f) {
                    s = (2097152.0 / (f32)mobj->unk08.unk08) / phi_f2;
                } else {
                    // L80013C94
                    s = 0.0f;
                }
                // L80013CA0
                if (ABSF(phi_f12) > 0.000015259022f) {
                    t = (2097152.0 / (f32)mobj->unk08.unk08) / phi_f12;
                } else {
                    t = 0.0f;
                }
            }
            // L80013D18
            if (s > 0xFFFF) { s = 0xFFFFF; }
            // L80013D28
            if (t > 0xFFFF) { t = 0xFFFFF; }
            // L80013D34

            gSPTexture(branchDl++, s, t, 0, 0, G_ON);
        }
        // L80013D4C
        gSPEndDisplayList(branchDl++);
    }
    // L80013D80
    D_800465D8.ptr = (u8 *)D_800465D8.ptr + (count * 8); // sizeof(Gfx)..?
}
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80012D90.s")
#endif

void func_80013D90(struct GObjCommon *gobj, Gfx **dlHead) {
    s32 ret;
    struct DObj *dobj;

    dobj = gobj->unk74;

    D_80046FA4 = 1.0f;

    if (dobj->unk50 != 0) {
        if (dobj->unk54 == 0) {
            ret = func_80010D70(dlHead, dobj);
            func_80012D90(dobj, dlHead);
            gSPDisplayList((*dlHead)++, dobj->unk50);

            if (ret != 0 && ((uintptr_t)dobj->unk14 == 1 || dobj->unk8 != NULL)) {
                gSPPopMatrix((*dlHead)++, G_MTX_MODELVIEW);
            }
        }
    }
}

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80013E68.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80013E8C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80013EB0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80013ED4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80013EF8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80014038.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80014068.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_800143FC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80014430.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_8001445C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80014768.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80014798.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_800147E0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_8001490C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80014A84.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80014C38.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80014CD0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80014FFC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80015358.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_800154F0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80015520.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80015860.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80015890.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80015A58.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80015C0C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80015F6C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_800162C8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80016338.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_8001663C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80016AE4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80016EDC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017830.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_8001783C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017868.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017978.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017AAC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017B80.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017CC8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017D3C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017DBC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80017DE4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80017E0C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80017E34.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_80017E5C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80017EC0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80018000.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/unref_8001810C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/system_05/func_80018300.s")
#endif
#pragma GCC diagnostic pop
