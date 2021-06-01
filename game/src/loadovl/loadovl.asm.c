#include "loadovl/loader.h"
#include "sys/dma.h"
#include "sys/thread6.h"
#include <linkersegs.h>
#include <PR/ultratypes.h>

u8 D_800A44D0[16];

struct BigA44E0 {
    /* 0x00 */ u8 pad00[0x5EC - 0];
}; // size == 0x5EC

struct BigA44E0 D_800A44E0;

/*
u8 D_800A44E0[24];
u8 D_800A44F8[14];
u16 D_800A4506;
u8 D_800A4508[52];
u32 D_800A453C;
u8 extend_D_800A453C[88];
u32 D_800A4598[2];
u8 extend_D_800A4598[84];
u32 D_800A45F4;
u8 extend_D_800A45F4[824];
u8 D_800A4930;
u8 D_800A4931;
u8 extend_D_800A4932;
u8 extend_D_800A4933;
u8 extend_D_800A4934;
u8 extend_D_800A4935;
u8 D_800A4936;
u8 D_800A4937;
u16 D_800A4938;
u8 D_800A493A;
u8 D_800A493B;
u32 D_800A493C;
u32 extend_D_800A4940;
u32 D_800A4944;
u32 D_800A4948;
u32 D_800A494C;
u8 D_800A4950[364];
u32 D_800A4ABC;
u16 D_800A4AC0;
u8 D_800A4AC2;
u8 D_800A4AC3;
u32 extend_D_800A4AC4;
u8 extend_D_800A4AC8[8];
// one giagantic structure..?
*/

struct UnkA4AD0 {
    /* 0x00 */ u8 unk00[0x48];
}; // size == 0x48

struct UnkA4AD0 D_800A4AD0;

/*
u8 D_800A4AD0;
u8 D_800A4AD1;
u8 D_800A4AD2;
u8 extend_D_800A4AD3;
u8 extend_D_800A4AD4;
u8 extend_D_800A4AD5;
u8 extend_D_800A4AD6;
u8 extend_D_800A4AD7;
u8 extend_D_800A4AD8;
u8 D_800A4AD9;
u8 extend_D_800A4ADA;
u8 extend_D_800A4ADB;
u8 D_800A4ADC;
u8 D_800A4ADD;
u8 extend_D_800A4ADE;
u8 D_800A4ADF;
u8 D_800A4AE0;
u8 D_800A4AE1;
u8 D_800A4AE2;
u8 D_800A4AE3;
u8 extend_D_800A4AE4;
u8 extend_D_800A4AE5;
u8 D_800A4AE6;
u8 D_800A4AE7;
u8 extend_D_800A4AE7[8];
u8 D_800A4AF0[24];
u8 D_800A4B08[12];
u32 D_800A4B14;
*/

struct Unk1F0Sized {
    /* 0x00 */ u8 unk00[0x1F0];
}; // size == 0x1F0

// 0x1F0 struct

struct Unk1F0Sized D_800A4B18;
/*
u8 D_800A4B18[40];
u8 extend_D_800A4B18;
u8 D_800A4B41;
u8 extend_D_800A4B42;
u8 extend_D_800A4B43;
u32 extend_D_800A4B44;
u8 D_800A4B48[36];
u32 D_800A4B6C;
u8 extend_D_800A4B6C[408];
*/

struct Unk1F0Sized D_800A4D08;
/*
// 0x1F0 struct
u16 D_800A4D08;
u8 D_800A4D0A;
u8 D_800A4D0B;
u8 extend_D_800A4D0C;
u8 extend_D_800A4D0C;
u16 D_800A4D0E;
u16 D_800A4D10;
u16 D_800A4D12;
u16 D_800A4D14; 
u16 extend_D_800A4D16;
u8 extend_D_800A4D18[16];
u8 extend_D_800A4D28;
u8 D_800A4D29;
u8 D_800A4D2A;
u8 D_800A4D2B;
u16 D_800A4D2C;
u16 D_800A4D2E;
u16 D_800A4D30;
u8 D_800A4D32;
u8 extend_D_800A4D33;
u8 extend_D_800A4D34;
u8 D_800A4D35;
u8 extend_D_800A4D36;
u8 extend_D_800A4D37;
u32 D_800A4D38;
u32 D_800A4D3C;
u8 extend_D_800A4D40[92];
u8 extend_D_800A4D9C;
u8 D_800A4D9D;
u8 D_800A4D9E;
u8 D_800A4D9F;
u16 D_800A4DA0;
u16 D_800A4DA2;
u16 D_800A4DA4;
u8 D_800A4DA6;
u8 extend_D_800A4DA7;
u8 extend_D_800A4DA8;
u8 D_800A4DA9;
u8 extend_D_800A4DAA;
u8 extend_D_800A4DAB;
u32 D_800A4DAC;
u8 D_800A4DB0[97];
u8 D_800A4E11;
u8 D_800A4E12;
u8 D_800A4E13;
u16 D_800A4E14;
u16 D_800A4E16;
u16 D_800A4E18;
u8 D_800A4E1A;
u8 extend_D_800A4E1B;
u8 extend_D_800A4E1C;
u8 D_800A4E1D;
u8 extend_D_800A4E1E;
u8 extend_D_800A4E1F;
u32 D_800A4E20;
u8 D_800A4E24;
u8 extend_D_800A4E24[93];
u8 D_800A4E85;
u8 D_800A4E86;
u8 D_800A4E87;
u16 D_800A4E88;
u16 D_800A4E8A;
u16 D_800A4E8C;
u8 D_800A4E8E;
u8 extend_D_800A4E8F;
u8 extend_D_800A4E90;
u8 D_800A4E91;
u8 extend_D_800A4E92;
u8 extend_D_800A4E93;
u32 D_800A4E94;
u8 D_800A4E98[96];
*/

struct Unk1F0Sized D_800A4EF8;

/*
// 0x1F0 struct
u8 D_800A4EF8[464];
u8 D_800A50C8[32];
// end 0x1f0}}
*/

u32 D_800A50E8;
u32 D_800A50EC;
u8 D_800A50F0[8];
u8 D_800A50F8[324];
u32 D_800A523C;


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"


#ifdef NON_MATCHING
// system_11
void set_debug_fn(void (*)(void));
void start_new_debug_thread(void);

void maybe_print_info_debug(void);

extern struct Overlay D_800A3070; // ovl 0
extern struct Overlay D_800A3094; // ovl 1
extern struct Overlay D_800A30B8; // ovl 2

extern struct BigA44E0 D_800A3994;

void load_overlay_set(u32 set) {
    set_contstatus_delay(60);
    set_debug_fn(maybe_print_info_debug);
    start_new_debug_thread();
    load_overlay(&D_800A3070);
    load_overlay(&D_800A30B8);
    load_overlay(&D_800A3094);
    D_800A44E0 = D_800A3994;
} 
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/load_overlay_set.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/func_800A2698.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/func_800A26B8.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/func_800A26D8.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/func_800A2B18.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/func_800A2C30.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/maybe_print_info_debug.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/loadovl/func_800A3040.s")
#endif
#pragma GCC diagnostic pop
