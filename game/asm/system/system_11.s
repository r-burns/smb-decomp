.include "macros.inc"

.section .data
# 11
glabel D_8003CBB0
  .incbin "system.raw.bin", 0x3C7B0, 0x4

glabel D_8003CBB4
  .incbin "system.raw.bin", 0x3C7B4, 0x4

glabel D_8003CBB8
  .incbin "system.raw.bin", 0x3C7B8, 0x4

glabel D_8003CBBC
  .incbin "system.raw.bin", 0x3C7BC, 0x4

glabel D_8003CBC0
  .incbin "system.raw.bin", 0x3C7C0, 0x70

glabel D_8003CC30
  .incbin "system.raw.bin", 0x3C830, 0x220

glabel D_8003CE50
  /* 3CA50 03DA50 8003CE50 */
  .4byte 0x3f800000 # .float 1.0
  /* 3CA54 03DA54 8003CE54 */
  .asciz "A "
  .balign 4
  .incbin "system.raw.bin", 0x3CA58, 0x4
  /* 3CA5C 03DA5C 8003CE5C */
  .asciz "Dz"
  .balign 4
  .incbin "system.raw.bin", 0x3CA60, 0x8
  /* 3CA68 03DA68 8003CE68 */
  .asciz "It$"
  .balign 4
  .incbin "system.raw.bin", 0x3CA6C, 0x8
# ERROR Misparsed ASCII @ 03CA74 in block
  .incbin "system.raw.bin", 0x3CA74, 0x4

glabel D_8003CE78
  .incbin "system.raw.bin", 0x3CA78, 0x4

glabel D_8003CE7C
  .incbin "system.raw.bin", 0x3CA7C, 0x80

glabel D_8003CEFC
  .incbin "system.raw.bin", 0x3CAFC, 0xD8
  /* 3CBD4 03DBD4 8003CFD4 */  .4byte func_80020800
  .incbin "system.raw.bin", 0x3CBD8, 0x24

glabel D_8003CFFC
  /* 3CBFC 03DBFC 8003CFFC */  .4byte D_8003E420
  /* 3CC00 03DC00 8003D000 */  .4byte D_8003E42C
  /* 3CC04 03DC04 8003D004 */  .4byte D_8003E440
  /* 3CC08 03DC08 8003D008 */  .4byte D_8003E458
  /* 3CC0C 03DC0C 8003D00C */  .4byte D_8003E470
  /* 3CC10 03DC10 8003D010 */  .4byte D_8003E488
  /* 3CC14 03DC14 8003D014 */  .4byte D_8003E4A0
  /* 3CC18 03DC18 8003D018 */  .4byte D_8003E4B4
  /* 3CC1C 03DC1C 8003D01C */  .4byte D_8003E4C8
  /* 3CC20 03DC20 8003D020 */  .4byte D_8003E4E0
  /* 3CC24 03DC24 8003D024 */  .4byte D_8003E4F8
  /* 3CC28 03DC28 8003D028 */  .4byte D_8003E510
  /* 3CC2C 03DC2C 8003D02C */  .4byte D_8003E528
  /* 3CC30 03DC30 8003D030 */  .4byte D_8003E53C
  /* 3CC34 03DC34 8003D034 */  .4byte D_8003E54C
  /* 3CC38 03DC38 8003D038 */  .4byte D_8003E568
  /* 3CC3C 03DC3C 8003D03C */  .4byte D_8003E584
  /* 3CC40 03DC40 8003D040 */  .4byte D_8003E59C

glabel D_8003D044
  /* 3CC44 03DC44 8003D044 */  .4byte D_8003E5B8
  /* 3CC48 03DC48 8003D048 */  .4byte D_8003E5D0
  /* 3CC4C 03DC4C 8003D04C */  .4byte D_8003E5E4
  /* 3CC50 03DC50 8003D050 */  .4byte D_8003E5F8
  /* 3CC54 03DC54 8003D054 */  .4byte D_8003E604
  /* 3CC58 03DC58 8003D058 */  .4byte D_8003E610

glabel D_8003D05C
  .incbin "system.raw.bin", 0x3CC5C, 0x4

glabel D_8003D060
  .incbin "system.raw.bin", 0x3CC60, 0x10

.section .rodata
# 11
glabel D_8003E420
  /* 3E020 03F020 8003E420 */
  .asciz "Interrupt"
  .balign 4

glabel D_8003E42C
  /* 3E02C 03F02C 8003E42C */
  .asciz "TLB modification"
  .balign 4

glabel D_8003E440
  /* 3E040 03F040 8003E440 */
  .asciz "TLB exception on load"
  .balign 4

glabel D_8003E458
  /* 3E058 03F058 8003E458 */
  .asciz "TLB exception on store"
  .balign 4

glabel D_8003E470
  /* 3E070 03F070 8003E470 */
  .asciz "Address error on load"
  .balign 4

glabel D_8003E488
  /* 3E088 03F088 8003E488 */
  .asciz "Address error on store"
  .balign 4

glabel D_8003E4A0
  /* 3E0A0 03F0A0 8003E4A0 */
  .asciz "Bus error on inst."
  .balign 4

glabel D_8003E4B4
  /* 3E0B4 03F0B4 8003E4B4 */
  .asciz "Bus error on data"
  .balign 4

glabel D_8003E4C8
  /* 3E0C8 03F0C8 8003E4C8 */
  .asciz "System call exception"
  .balign 4

glabel D_8003E4E0
  /* 3E0E0 03F0E0 8003E4E0 */
  .asciz "Breakpoint exception"
  .balign 4

glabel D_8003E4F8
  /* 3E0F8 03F0F8 8003E4F8 */
  .asciz "Reserved instruction"
  .balign 4

glabel D_8003E510
  /* 3E110 03F110 8003E510 */
  .asciz "Coprocessor unusable"
  .balign 4

glabel D_8003E528
  /* 3E128 03F128 8003E528 */
  .asciz "Arithmetic overflow"
  .balign 4

glabel D_8003E53C
  /* 3E13C 03F13C 8003E53C */
  .asciz "Trap exception"
  .balign 4

glabel D_8003E54C
  /* 3E14C 03F14C 8003E54C */
  .asciz "Virtual coherency on inst."
  .balign 4

glabel D_8003E568
  /* 3E168 03F168 8003E568 */
  .asciz "Floating point exception"
  .balign 4

glabel D_8003E584
  /* 3E184 03F184 8003E584 */
  .asciz "Watchpoint exception"
  .balign 4

glabel D_8003E59C
  /* 3E19C 03F19C 8003E59C */
  .asciz "Virtual coherency on data"
  .balign 4

glabel D_8003E5B8
  /* 3E1B8 03F1B8 8003E5B8 */
  .asciz "Unimplemented operation"
  .balign 4

glabel D_8003E5D0
  /* 3E1D0 03F1D0 8003E5D0 */
  .asciz "Invalid operation"
  .balign 4

glabel D_8003E5E4
  /* 3E1E4 03F1E4 8003E5E4 */
  .asciz "Division by zero"
  .balign 4

glabel D_8003E5F8
  /* 3E1F8 03F1F8 8003E5F8 */
  .asciz "Overflow"
  .balign 4

glabel D_8003E604
  /* 3E204 03F204 8003E604 */
  .asciz "Underflow"
  .balign 4

glabel D_8003E610
  /* 3E210 03F210 8003E610 */
  .asciz "Inexact operation"
  .balign 4

glabel D_8003E624
  /* 3E224 03F224 8003E624 */
  .asciz "F%02d:%.3e"
  .balign 4
  /* 3E230 03F230 8003E630 */
  .asciz "F%02d:%08XH"
  .balign 4

glabel D_8003E63C
  /* 3E23C 03F23C 8003E63C */
  .asciz "FPCSR:%08XH"
  .balign 4

glabel D_8003E648
  /* 3E248 03F248 8003E648 */
  .asciz "(%s)"
  .balign 4

glabel D_8003E650
  /* 3E250 03F250 8003E650 */
  .asciz "THREAD:%d  (%s)"
  .balign 4

glabel D_8003E660
  /* 3E260 03F260 8003E660 */
  .asciz "PC:%08XH   SR:%08XH   VA:%08XH"
  .balign 4

glabel D_8003E680
  /* 3E280 03F280 8003E680 */
  .asciz "THREAD:%d  (%s)"
  .balign 4

glabel D_8003E690
  /* 3E290 03F290 8003E690 */
  .asciz "PC:%08XH   SR:%08XH   VA:%08XH"
  .balign 4

glabel D_8003E6B0
  /* 3E2B0 03F2B0 8003E6B0 */
  .asciz "AT:%08XH   V0:%08XH   V1:%08XH"
  .balign 4

glabel D_8003E6D0
  /* 3E2D0 03F2D0 8003E6D0 */
  .asciz "A0:%08XH   A1:%08XH   A2:%08XH"
  .balign 4

glabel D_8003E6F0
  /* 3E2F0 03F2F0 8003E6F0 */
  .asciz "A3:%08XH   T0:%08XH   T1:%08XH"
  .balign 4

glabel D_8003E710
  /* 3E310 03F310 8003E710 */
  .asciz "T2:%08XH   T3:%08XH   T4:%08XH"
  .balign 4

glabel D_8003E730
  /* 3E330 03F330 8003E730 */
  .asciz "T5:%08XH   T6:%08XH   T7:%08XH"
  .balign 4

glabel D_8003E750
  /* 3E350 03F350 8003E750 */
  .asciz "S0:%08XH   S1:%08XH   S2:%08XH"
  .balign 4

glabel D_8003E770
  /* 3E370 03F370 8003E770 */
  .asciz "S3:%08XH   S4:%08XH   S5:%08XH"
  .balign 4

glabel D_8003E790
  /* 3E390 03F390 8003E790 */
  .asciz "S6:%08XH   S7:%08XH   T8:%08XH"
  .balign 4

glabel D_8003E7B0
  /* 3E3B0 03F3B0 8003E7B0 */
  .asciz "T9:%08XH   GP:%08XH   SP:%08XH"
  .balign 4

glabel D_8003E7D0
  /* 3E3D0 03F3D0 8003E7D0 */
  .asciz "S8:%08XH   RA:%08XH"
  .balign 4

glabel D_8003E7E4
  /* 3E3E4 03F3E4 8003E7E4 */
  .asciz "SP Base %08x"
  .balign 4

glabel D_8003E7F4
  /* 3E3F4 03F3F4 8003E7F4 */
  .asciz "%03d:%02x%02x%02x%02x %.3e"
  .balign 4

glabel D_8003E810
  /* 3E410 03F410 8003E810 */
  .asciz "%03d:%02x%02x%02x%02x %08x"
  .balign 4

glabel D_8003E82C
  /* 3E42C 03F42C 8003E82C */
  .asciz ":%02x%02x%02x%02x %.3e"
  .balign 4

glabel D_8003E844
  /* 3E444 03F444 8003E844 */
  .asciz ":%02x%02x%02x%02x %08x"
  .balign 4
  .incbin "system.raw.bin", 0x3E45C, 0x4

.section .bss
# 11
glabel D_8009DA00
    .space 8
glabel D_8009DA08
    .space 2480
glabel D_8009E3B8
    .space 24
glabel D_8009E3D0
    .space 8
glabel D_8009E3D8
    .space 8
glabel D_8009E3E0
    .space 8
glabel D_8009E3E8
    .space 8
glabel D_8009E3F0
    .space 24
glabel D_8009E408
    .space 2480
glabel D_8009EDB8
    .space 8

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Likely start of new file
glabel func_800210C0
  /* 021CC0 800210C0 27BDFFF0 */     addiu $sp, $sp, -0x10
  /* 021CC4 800210C4 AFB1000C */        sw $s1, 0xc($sp)
  /* 021CC8 800210C8 AFB00008 */        sw $s0, 8($sp)
  /* 021CCC 800210CC 00808025 */        or $s0, $a0, $zero
  /* 021CD0 800210D0 00A08825 */        or $s1, $a1, $zero
  /* 021CD4 800210D4 04C00193 */      bltz $a2, .L80021724
  /* 021CD8 800210D8 AFA7001C */        sw $a3, 0x1c($sp)
  /* 021CDC 800210DC 28C10011 */      slti $at, $a2, 0x11
  /* 021CE0 800210E0 10200190 */      beqz $at, .L80021724
  /* 021CE4 800210E4 00067140 */       sll $t6, $a2, 5
  /* 021CE8 800210E8 3C0F8004 */       lui $t7, %hi(D_8003CC30)
  /* 021CEC 800210EC 25EFCC30 */     addiu $t7, $t7, %lo(D_8003CC30)
  /* 021CF0 800210F0 01CF2821 */      addu $a1, $t6, $t7
  /* 021CF4 800210F4 8CB80000 */        lw $t8, ($a1)
  /* 021CF8 800210F8 3C088004 */       lui $t0, %hi(D_800465B0)
  /* 021CFC 800210FC 250865B0 */     addiu $t0, $t0, %lo(D_800465B0)
  /* 021D00 80021100 17000009 */      bnez $t8, .L80021128
  /* 021D04 80021104 8D020000 */        lw $v0, ($t0) # D_800465B0 + 0
  /* 021D08 80021108 3C0C8004 */       lui $t4, %hi(gCurrScreenHeight)
  /* 021D0C 8002110C 3C098004 */       lui $t1, %hi(gCurrScreenWidth)
  /* 021D10 80021110 25296678 */     addiu $t1, $t1, %lo(gCurrScreenWidth)
  /* 021D14 80021114 258C667C */     addiu $t4, $t4, %lo(gCurrScreenHeight)
  /* 021D18 80021118 240D00F0 */     addiu $t5, $zero, 0xf0
  /* 021D1C 8002111C 3C0BF600 */       lui $t3, 0xf600
  /* 021D20 80021120 10000063 */         b .L800212B0
  /* 021D24 80021124 240A0140 */     addiu $t2, $zero, 0x140
  .L80021128:
  /* 021D28 80021128 3C098004 */       lui $t1, %hi(gCurrScreenWidth)
  /* 021D2C 8002112C 3C198004 */       lui $t9, %hi(D_8003CBB8)
  /* 021D30 80021130 8F39CBB8 */        lw $t9, %lo(D_8003CBB8)($t9)
  /* 021D34 80021134 25296678 */     addiu $t1, $t1, %lo(gCurrScreenWidth)
  /* 021D38 80021138 8D2F0000 */        lw $t7, ($t1) # gCurrScreenWidth + 0
  /* 021D3C 8002113C 03307021 */      addu $t6, $t9, $s0
  /* 021D40 80021140 240A0140 */     addiu $t2, $zero, 0x140
  /* 021D44 80021144 01CF0019 */     multu $t6, $t7
  /* 021D48 80021148 3C0BF600 */       lui $t3, 0xf600
  /* 021D4C 8002114C 3C0C8004 */       lui $t4, %hi(gCurrScreenHeight)
  /* 021D50 80021150 258C667C */     addiu $t4, $t4, %lo(gCurrScreenHeight)
  /* 021D54 80021154 240D00F0 */     addiu $t5, $zero, 0xf0
  /* 021D58 80021158 00403825 */        or $a3, $v0, $zero
  /* 021D5C 8002115C 24420008 */     addiu $v0, $v0, 8
  /* 021D60 80021160 0000C012 */      mflo $t8
  /* 021D64 80021164 00000000 */       nop 
  /* 021D68 80021168 00000000 */       nop 
  /* 021D6C 8002116C 030A001A */       div $zero, $t8, $t2
  /* 021D70 80021170 0000C812 */      mflo $t9
  /* 021D74 80021174 332E03FF */      andi $t6, $t9, 0x3ff
  /* 021D78 80021178 15400002 */      bnez $t2, .L80021184
  /* 021D7C 8002117C 00000000 */       nop 
  /* 021D80 80021180 0007000D */     break 7
  .L80021184:
  /* 021D84 80021184 2401FFFF */     addiu $at, $zero, -1
  /* 021D88 80021188 15410004 */       bne $t2, $at, .L8002119C
  /* 021D8C 8002118C 3C018000 */       lui $at, 0x8000
  /* 021D90 80021190 17010002 */       bne $t8, $at, .L8002119C
  /* 021D94 80021194 00000000 */       nop 
  /* 021D98 80021198 0006000D */     break 6
  .L8002119C:
  /* 021D9C 8002119C 000E7B80 */       sll $t7, $t6, 0xe
  /* 021DA0 800211A0 3C198004 */       lui $t9, %hi(D_8003CBBC)
  /* 021DA4 800211A4 8F39CBBC */        lw $t9, %lo(D_8003CBBC)($t9)
  /* 021DA8 800211A8 01EBC025 */        or $t8, $t7, $t3
  /* 021DAC 800211AC 8D8F0000 */        lw $t7, ($t4) # gCurrScreenHeight + 0
  /* 021DB0 800211B0 02397021 */      addu $t6, $s1, $t9
  /* 021DB4 800211B4 01CF0019 */     multu $t6, $t7
  /* 021DB8 800211B8 0000C812 */      mflo $t9
  /* 021DBC 800211BC 00000000 */       nop 
  /* 021DC0 800211C0 00000000 */       nop 
  /* 021DC4 800211C4 032D001A */       div $zero, $t9, $t5
  /* 021DC8 800211C8 00007012 */      mflo $t6
  /* 021DCC 800211CC 31CF03FF */      andi $t7, $t6, 0x3ff
  /* 021DD0 800211D0 15A00002 */      bnez $t5, .L800211DC
  /* 021DD4 800211D4 00000000 */       nop 
  /* 021DD8 800211D8 0007000D */     break 7
  .L800211DC:
  /* 021DDC 800211DC 2401FFFF */     addiu $at, $zero, -1
  /* 021DE0 800211E0 15A10004 */       bne $t5, $at, .L800211F4
  /* 021DE4 800211E4 3C018000 */       lui $at, 0x8000
  /* 021DE8 800211E8 17210002 */       bne $t9, $at, .L800211F4
  /* 021DEC 800211EC 00000000 */       nop 
  /* 021DF0 800211F0 0006000D */     break 6
  .L800211F4:
  /* 021DF4 800211F4 000FC880 */       sll $t9, $t7, 2
  /* 021DF8 800211F8 03197025 */        or $t6, $t8, $t9
  /* 021DFC 800211FC ACEE0000 */        sw $t6, ($a3)
  /* 021E00 80021200 3C0F8004 */       lui $t7, %hi(D_8003CBB0)
  /* 021E04 80021204 8DEFCBB0 */        lw $t7, %lo(D_8003CBB0)($t7)
  /* 021E08 80021208 8D390000 */        lw $t9, ($t1) # gCurrScreenWidth + 0
  /* 021E0C 8002120C 01F0C021 */      addu $t8, $t7, $s0
  /* 021E10 80021210 03190019 */     multu $t8, $t9
  /* 021E14 80021214 00007012 */      mflo $t6
  /* 021E18 80021218 00000000 */       nop 
  /* 021E1C 8002121C 00000000 */       nop 
# Maybe start of new file
  /* 021E20 80021220 01CA001A */       div $zero, $t6, $t2
  /* 021E24 80021224 15400002 */      bnez $t2, .L80021230
  /* 021E28 80021228 00000000 */       nop 
  /* 021E2C 8002122C 0007000D */     break 7
  .L80021230:
  /* 021E30 80021230 2401FFFF */     addiu $at, $zero, -1
  /* 021E34 80021234 15410004 */       bne $t2, $at, .L80021248
  /* 021E38 80021238 3C018000 */       lui $at, 0x8000
  /* 021E3C 8002123C 15C10002 */       bne $t6, $at, .L80021248
  /* 021E40 80021240 00000000 */       nop 
  /* 021E44 80021244 0006000D */     break 6
  .L80021248:
  /* 021E48 80021248 00007812 */      mflo $t7
  /* 021E4C 8002124C 31F803FF */      andi $t8, $t7, 0x3ff
  /* 021E50 80021250 3C0E8004 */       lui $t6, %hi(D_8003CBB4)
  /* 021E54 80021254 8DCECBB4 */        lw $t6, %lo(D_8003CBB4)($t6)
  /* 021E58 80021258 0018CB80 */       sll $t9, $t8, 0xe
  /* 021E5C 8002125C 8D980000 */        lw $t8, ($t4) # gCurrScreenHeight + 0
  /* 021E60 80021260 022E7821 */      addu $t7, $s1, $t6
  /* 021E64 80021264 01F80019 */     multu $t7, $t8
  /* 021E68 80021268 00007012 */      mflo $t6
  /* 021E6C 8002126C 00000000 */       nop 
  /* 021E70 80021270 00000000 */       nop 
  /* 021E74 80021274 01CD001A */       div $zero, $t6, $t5
  /* 021E78 80021278 00007812 */      mflo $t7
  /* 021E7C 8002127C 31F803FF */      andi $t8, $t7, 0x3ff
  /* 021E80 80021280 15A00002 */      bnez $t5, .L8002128C
  /* 021E84 80021284 00000000 */       nop 
  /* 021E88 80021288 0007000D */     break 7
  .L8002128C:
  /* 021E8C 8002128C 2401FFFF */     addiu $at, $zero, -1
  /* 021E90 80021290 15A10004 */       bne $t5, $at, .L800212A4
  /* 021E94 80021294 3C018000 */       lui $at, 0x8000
  /* 021E98 80021298 15C10002 */       bne $t6, $at, .L800212A4
  /* 021E9C 8002129C 00000000 */       nop 
  /* 021EA0 800212A0 0006000D */     break 6
  .L800212A4:
  /* 021EA4 800212A4 00187080 */       sll $t6, $t8, 2
  /* 021EA8 800212A8 032E7825 */        or $t7, $t9, $t6
  /* 021EAC 800212AC ACEF0004 */        sw $t7, 4($a3)
  .L800212B0:
  /* 021EB0 800212B0 24A40004 */     addiu $a0, $a1, 4
  /* 021EB4 800212B4 3C038004 */       lui $v1, %hi(D_8003CBC0)
  /* 021EB8 800212B8 2463CBC0 */     addiu $v1, $v1, %lo(D_8003CBC0)
  /* 021EBC 800212BC 24050007 */     addiu $a1, $zero, 7
  /* 021EC0 800212C0 24060001 */     addiu $a2, $zero, 1
  .L800212C4:
  /* 021EC4 800212C4 8C980000 */        lw $t8, ($a0)
  /* 021EC8 800212C8 24C60002 */     addiu $a2, $a2, 2
  /* 021ECC 800212CC 53000059 */      beql $t8, $zero, .L80021434
  /* 021ED0 800212D0 8C980004 */        lw $t8, 4($a0)
  /* 021ED4 800212D4 8C790008 */        lw $t9, 8($v1) # D_8003CBC0 + 8
  /* 021ED8 800212D8 8D2F0000 */        lw $t7, ($t1) # gCurrScreenWidth + 0
  /* 021EDC 800212DC 00403825 */        or $a3, $v0, $zero
  /* 021EE0 800212E0 03307021 */      addu $t6, $t9, $s0
  /* 021EE4 800212E4 01CF0019 */     multu $t6, $t7
  /* 021EE8 800212E8 24420008 */     addiu $v0, $v0, 8
  /* 021EEC 800212EC 0000C012 */      mflo $t8
  /* 021EF0 800212F0 00000000 */       nop 
  /* 021EF4 800212F4 00000000 */       nop 
  /* 021EF8 800212F8 030A001A */       div $zero, $t8, $t2
  /* 021EFC 800212FC 0000C812 */      mflo $t9
  /* 021F00 80021300 332E03FF */      andi $t6, $t9, 0x3ff
  /* 021F04 80021304 15400002 */      bnez $t2, .L80021310
  /* 021F08 80021308 00000000 */       nop 
  /* 021F0C 8002130C 0007000D */     break 7
  .L80021310:
  /* 021F10 80021310 2401FFFF */     addiu $at, $zero, -1
  /* 021F14 80021314 15410004 */       bne $t2, $at, .L80021328
  /* 021F18 80021318 3C018000 */       lui $at, 0x8000
  /* 021F1C 8002131C 17010002 */       bne $t8, $at, .L80021328
  /* 021F20 80021320 00000000 */       nop 
  /* 021F24 80021324 0006000D */     break 6
  .L80021328:
  /* 021F28 80021328 000E7B80 */       sll $t7, $t6, 0xe
  /* 021F2C 8002132C 8C79000C */        lw $t9, 0xc($v1) # D_8003CBC0 + 12
  /* 021F30 80021330 01EBC025 */        or $t8, $t7, $t3
  /* 021F34 80021334 8D8F0000 */        lw $t7, ($t4) # gCurrScreenHeight + 0
  /* 021F38 80021338 02397021 */      addu $t6, $s1, $t9
  /* 021F3C 8002133C 01CF0019 */     multu $t6, $t7
  /* 021F40 80021340 0000C812 */      mflo $t9
  /* 021F44 80021344 00000000 */       nop 
  /* 021F48 80021348 00000000 */       nop 
  /* 021F4C 8002134C 032D001A */       div $zero, $t9, $t5
  /* 021F50 80021350 00007012 */      mflo $t6
  /* 021F54 80021354 31CF03FF */      andi $t7, $t6, 0x3ff
  /* 021F58 80021358 15A00002 */      bnez $t5, .L80021364
  /* 021F5C 8002135C 00000000 */       nop 
  /* 021F60 80021360 0007000D */     break 7
  .L80021364:
  /* 021F64 80021364 2401FFFF */     addiu $at, $zero, -1
  /* 021F68 80021368 15A10004 */       bne $t5, $at, .L8002137C
  /* 021F6C 8002136C 3C018000 */       lui $at, 0x8000
  /* 021F70 80021370 17210002 */       bne $t9, $at, .L8002137C
  /* 021F74 80021374 00000000 */       nop 
  /* 021F78 80021378 0006000D */     break 6
  .L8002137C:
  /* 021F7C 8002137C 000FC880 */       sll $t9, $t7, 2
  /* 021F80 80021380 03197025 */        or $t6, $t8, $t9
  /* 021F84 80021384 ACEE0000 */        sw $t6, ($a3)
  /* 021F88 80021388 8C6F0000 */        lw $t7, ($v1) # D_8003CBC0 + 0
  /* 021F8C 8002138C 8D390000 */        lw $t9, ($t1) # gCurrScreenWidth + 0
  /* 021F90 80021390 01F0C021 */      addu $t8, $t7, $s0
  /* 021F94 80021394 03190019 */     multu $t8, $t9
  /* 021F98 80021398 00007012 */      mflo $t6
  /* 021F9C 8002139C 00000000 */       nop 
  /* 021FA0 800213A0 00000000 */       nop 
  /* 021FA4 800213A4 01CA001A */       div $zero, $t6, $t2
  /* 021FA8 800213A8 00007812 */      mflo $t7
  /* 021FAC 800213AC 31F803FF */      andi $t8, $t7, 0x3ff
  /* 021FB0 800213B0 15400002 */      bnez $t2, .L800213BC
  /* 021FB4 800213B4 00000000 */       nop 
  /* 021FB8 800213B8 0007000D */     break 7
  .L800213BC:
  /* 021FBC 800213BC 2401FFFF */     addiu $at, $zero, -1
  /* 021FC0 800213C0 15410004 */       bne $t2, $at, .L800213D4
  /* 021FC4 800213C4 3C018000 */       lui $at, 0x8000
  /* 021FC8 800213C8 15C10002 */       bne $t6, $at, .L800213D4
  /* 021FCC 800213CC 00000000 */       nop 
  /* 021FD0 800213D0 0006000D */     break 6
  .L800213D4:
  /* 021FD4 800213D4 8C6E0004 */        lw $t6, 4($v1) # D_8003CBC0 + 4
  /* 021FD8 800213D8 0018CB80 */       sll $t9, $t8, 0xe
  /* 021FDC 800213DC 8D980000 */        lw $t8, ($t4) # gCurrScreenHeight + 0
  /* 021FE0 800213E0 022E7821 */      addu $t7, $s1, $t6
  /* 021FE4 800213E4 01F80019 */     multu $t7, $t8
  /* 021FE8 800213E8 00007012 */      mflo $t6
  /* 021FEC 800213EC 00000000 */       nop 
  /* 021FF0 800213F0 00000000 */       nop 
  /* 021FF4 800213F4 01CD001A */       div $zero, $t6, $t5
  /* 021FF8 800213F8 00007812 */      mflo $t7
  /* 021FFC 800213FC 31F803FF */      andi $t8, $t7, 0x3ff
  /* 022000 80021400 15A00002 */      bnez $t5, .L8002140C
  /* 022004 80021404 00000000 */       nop 
  /* 022008 80021408 0007000D */     break 7
  .L8002140C:
  /* 02200C 8002140C 2401FFFF */     addiu $at, $zero, -1
  /* 022010 80021410 15A10004 */       bne $t5, $at, .L80021424
  /* 022014 80021414 3C018000 */       lui $at, 0x8000
  /* 022018 80021418 15C10002 */       bne $t6, $at, .L80021424
  /* 02201C 8002141C 00000000 */       nop 
  /* 022020 80021420 0006000D */     break 6
  .L80021424:
  /* 022024 80021424 00187080 */       sll $t6, $t8, 2
  /* 022028 80021428 032E7825 */        or $t7, $t9, $t6
  /* 02202C 8002142C ACEF0004 */        sw $t7, 4($a3)
  /* 022030 80021430 8C980004 */        lw $t8, 4($a0)
  .L80021434:
  /* 022034 80021434 24840004 */     addiu $a0, $a0, 4
  /* 022038 80021438 24840004 */     addiu $a0, $a0, 4
  /* 02203C 8002143C 13000058 */      beqz $t8, .L800215A0
  /* 022040 80021440 24630010 */     addiu $v1, $v1, 0x10
  /* 022044 80021444 8C790008 */        lw $t9, 8($v1) # D_8003CBC0 + 8
  /* 022048 80021448 8D2F0000 */        lw $t7, ($t1) # gCurrScreenWidth + 0
  /* 02204C 8002144C 00403825 */        or $a3, $v0, $zero
  /* 022050 80021450 03307021 */      addu $t6, $t9, $s0
  /* 022054 80021454 01CF0019 */     multu $t6, $t7
  /* 022058 80021458 24420008 */     addiu $v0, $v0, 8
  /* 02205C 8002145C 0000C012 */      mflo $t8
  /* 022060 80021460 00000000 */       nop 
  /* 022064 80021464 00000000 */       nop 
  /* 022068 80021468 030A001A */       div $zero, $t8, $t2
  /* 02206C 8002146C 0000C812 */      mflo $t9
  /* 022070 80021470 332E03FF */      andi $t6, $t9, 0x3ff
  /* 022074 80021474 15400002 */      bnez $t2, .L80021480
  /* 022078 80021478 00000000 */       nop 
  /* 02207C 8002147C 0007000D */     break 7
  .L80021480:
  /* 022080 80021480 2401FFFF */     addiu $at, $zero, -1
  /* 022084 80021484 15410004 */       bne $t2, $at, .L80021498
  /* 022088 80021488 3C018000 */       lui $at, 0x8000
  /* 02208C 8002148C 17010002 */       bne $t8, $at, .L80021498
  /* 022090 80021490 00000000 */       nop 
  /* 022094 80021494 0006000D */     break 6
  .L80021498:
  /* 022098 80021498 000E7B80 */       sll $t7, $t6, 0xe
  /* 02209C 8002149C 8C79000C */        lw $t9, 0xc($v1) # D_8003CBC0 + 12
  /* 0220A0 800214A0 01EBC025 */        or $t8, $t7, $t3
  /* 0220A4 800214A4 8D8F0000 */        lw $t7, ($t4) # gCurrScreenHeight + 0
  /* 0220A8 800214A8 02397021 */      addu $t6, $s1, $t9
  /* 0220AC 800214AC 01CF0019 */     multu $t6, $t7
  /* 0220B0 800214B0 0000C812 */      mflo $t9
  /* 0220B4 800214B4 00000000 */       nop 
  /* 0220B8 800214B8 00000000 */       nop 
  /* 0220BC 800214BC 032D001A */       div $zero, $t9, $t5
  /* 0220C0 800214C0 00007012 */      mflo $t6
  /* 0220C4 800214C4 31CF03FF */      andi $t7, $t6, 0x3ff
  /* 0220C8 800214C8 15A00002 */      bnez $t5, .L800214D4
  /* 0220CC 800214CC 00000000 */       nop 
  /* 0220D0 800214D0 0007000D */     break 7
  .L800214D4:
  /* 0220D4 800214D4 2401FFFF */     addiu $at, $zero, -1
  /* 0220D8 800214D8 15A10004 */       bne $t5, $at, .L800214EC
  /* 0220DC 800214DC 3C018000 */       lui $at, 0x8000
  /* 0220E0 800214E0 17210002 */       bne $t9, $at, .L800214EC
  /* 0220E4 800214E4 00000000 */       nop 
  /* 0220E8 800214E8 0006000D */     break 6
  .L800214EC:
  /* 0220EC 800214EC 000FC880 */       sll $t9, $t7, 2
  /* 0220F0 800214F0 03197025 */        or $t6, $t8, $t9
  /* 0220F4 800214F4 ACEE0000 */        sw $t6, ($a3)
  /* 0220F8 800214F8 8C6F0000 */        lw $t7, ($v1) # D_8003CBC0 + 0
  /* 0220FC 800214FC 8D390000 */        lw $t9, ($t1) # gCurrScreenWidth + 0
  /* 022100 80021500 01F0C021 */      addu $t8, $t7, $s0
  /* 022104 80021504 03190019 */     multu $t8, $t9
  /* 022108 80021508 00007012 */      mflo $t6
  /* 02210C 8002150C 00000000 */       nop 
  /* 022110 80021510 00000000 */       nop 
  /* 022114 80021514 01CA001A */       div $zero, $t6, $t2
  /* 022118 80021518 00007812 */      mflo $t7
  /* 02211C 8002151C 31F803FF */      andi $t8, $t7, 0x3ff
  /* 022120 80021520 15400002 */      bnez $t2, .L8002152C
  /* 022124 80021524 00000000 */       nop 
  /* 022128 80021528 0007000D */     break 7
  .L8002152C:
  /* 02212C 8002152C 2401FFFF */     addiu $at, $zero, -1
  /* 022130 80021530 15410004 */       bne $t2, $at, .L80021544
  /* 022134 80021534 3C018000 */       lui $at, 0x8000
  /* 022138 80021538 15C10002 */       bne $t6, $at, .L80021544
  /* 02213C 8002153C 00000000 */       nop 
  /* 022140 80021540 0006000D */     break 6
  .L80021544:
  /* 022144 80021544 8C6E0004 */        lw $t6, 4($v1) # D_8003CBC0 + 4
  /* 022148 80021548 0018CB80 */       sll $t9, $t8, 0xe
  /* 02214C 8002154C 8D980000 */        lw $t8, ($t4) # gCurrScreenHeight + 0
  /* 022150 80021550 022E7821 */      addu $t7, $s1, $t6
  /* 022154 80021554 01F80019 */     multu $t7, $t8
  /* 022158 80021558 00007012 */      mflo $t6
  /* 02215C 8002155C 00000000 */       nop 
  /* 022160 80021560 00000000 */       nop 
  /* 022164 80021564 01CD001A */       div $zero, $t6, $t5
  /* 022168 80021568 00007812 */      mflo $t7
  /* 02216C 8002156C 31F803FF */      andi $t8, $t7, 0x3ff
  /* 022170 80021570 15A00002 */      bnez $t5, .L8002157C
  /* 022174 80021574 00000000 */       nop 
  /* 022178 80021578 0007000D */     break 7
  .L8002157C:
  /* 02217C 8002157C 2401FFFF */     addiu $at, $zero, -1
  /* 022180 80021580 15A10004 */       bne $t5, $at, .L80021594
  /* 022184 80021584 3C018000 */       lui $at, 0x8000
  /* 022188 80021588 15C10002 */       bne $t6, $at, .L80021594
  /* 02218C 8002158C 00000000 */       nop 
  /* 022190 80021590 0006000D */     break 6
  .L80021594:
  /* 022194 80021594 00187080 */       sll $t6, $t8, 2
  /* 022198 80021598 032E7825 */        or $t7, $t9, $t6
  /* 02219C 8002159C ACEF0004 */        sw $t7, 4($a3)
  .L800215A0:
  /* 0221A0 800215A0 14C5FF48 */       bne $a2, $a1, .L800212C4
  /* 0221A4 800215A4 24630010 */     addiu $v1, $v1, 0x10
  /* 0221A8 800215A8 8FB8001C */        lw $t8, 0x1c($sp)
  /* 0221AC 800215AC 3C01800A */       lui $at, %hi(D_8009DA00)
  /* 0221B0 800215B0 AC23DA00 */        sw $v1, %lo(D_8009DA00)($at)
  /* 0221B4 800215B4 5300005B */      beql $t8, $zero, .L80021724
  /* 0221B8 800215B8 AD020000 */        sw $v0, ($t0) # D_800465B0 + 0
  /* 0221BC 800215BC 8C790008 */        lw $t9, 8($v1) # D_8003CBC0 + 8
  /* 0221C0 800215C0 8D2F0000 */        lw $t7, ($t1) # gCurrScreenWidth + 0
  /* 0221C4 800215C4 00402025 */        or $a0, $v0, $zero
  /* 0221C8 800215C8 03307021 */      addu $t6, $t9, $s0
  /* 0221CC 800215CC 01CF0019 */     multu $t6, $t7
  /* 0221D0 800215D0 24420008 */     addiu $v0, $v0, 8
  /* 0221D4 800215D4 0000C012 */      mflo $t8
  /* 0221D8 800215D8 00000000 */       nop 
  /* 0221DC 800215DC 00000000 */       nop 
# Maybe start of new file
  /* 0221E0 800215E0 030A001A */       div $zero, $t8, $t2
  /* 0221E4 800215E4 0000C812 */      mflo $t9
  /* 0221E8 800215E8 332E03FF */      andi $t6, $t9, 0x3ff
  /* 0221EC 800215EC 15400002 */      bnez $t2, .L800215F8
  /* 0221F0 800215F0 00000000 */       nop 
  /* 0221F4 800215F4 0007000D */     break 7
  .L800215F8:
  /* 0221F8 800215F8 2401FFFF */     addiu $at, $zero, -1
  /* 0221FC 800215FC 15410004 */       bne $t2, $at, .L80021610
  /* 022200 80021600 3C018000 */       lui $at, 0x8000
  /* 022204 80021604 17010002 */       bne $t8, $at, .L80021610
  /* 022208 80021608 00000000 */       nop 
  /* 02220C 8002160C 0006000D */     break 6
  .L80021610:
  /* 022210 80021610 000E7B80 */       sll $t7, $t6, 0xe
  /* 022214 80021614 8C79000C */        lw $t9, 0xc($v1) # D_8003CBC0 + 12
  /* 022218 80021618 01EBC025 */        or $t8, $t7, $t3
  /* 02221C 8002161C 8D8F0000 */        lw $t7, ($t4) # gCurrScreenHeight + 0
  /* 022220 80021620 02397021 */      addu $t6, $s1, $t9
  /* 022224 80021624 01CF0019 */     multu $t6, $t7
  /* 022228 80021628 0000C812 */      mflo $t9
  /* 02222C 8002162C 00000000 */       nop 
  /* 022230 80021630 00000000 */       nop 
  /* 022234 80021634 032D001A */       div $zero, $t9, $t5
  /* 022238 80021638 00007012 */      mflo $t6
  /* 02223C 8002163C 31CF03FF */      andi $t7, $t6, 0x3ff
  /* 022240 80021640 15A00002 */      bnez $t5, .L8002164C
  /* 022244 80021644 00000000 */       nop 
  /* 022248 80021648 0007000D */     break 7
  .L8002164C:
  /* 02224C 8002164C 2401FFFF */     addiu $at, $zero, -1
  /* 022250 80021650 15A10004 */       bne $t5, $at, .L80021664
  /* 022254 80021654 3C018000 */       lui $at, 0x8000
  /* 022258 80021658 17210002 */       bne $t9, $at, .L80021664
  /* 02225C 8002165C 00000000 */       nop 
  /* 022260 80021660 0006000D */     break 6
  .L80021664:
  /* 022264 80021664 000FC880 */       sll $t9, $t7, 2
  /* 022268 80021668 03197025 */        or $t6, $t8, $t9
  /* 02226C 8002166C AC8E0000 */        sw $t6, ($a0)
  /* 022270 80021670 8C6F0000 */        lw $t7, ($v1) # D_8003CBC0 + 0
  /* 022274 80021674 8D390000 */        lw $t9, ($t1) # gCurrScreenWidth + 0
  /* 022278 80021678 01F0C021 */      addu $t8, $t7, $s0
  /* 02227C 8002167C 03190019 */     multu $t8, $t9
  /* 022280 80021680 00007012 */      mflo $t6
  /* 022284 80021684 00000000 */       nop 
  /* 022288 80021688 00000000 */       nop 
  /* 02228C 8002168C 01CA001A */       div $zero, $t6, $t2
  /* 022290 80021690 00007812 */      mflo $t7
  /* 022294 80021694 31F803FF */      andi $t8, $t7, 0x3ff
  /* 022298 80021698 15400002 */      bnez $t2, .L800216A4
  /* 02229C 8002169C 00000000 */       nop 
  /* 0222A0 800216A0 0007000D */     break 7
  .L800216A4:
  /* 0222A4 800216A4 2401FFFF */     addiu $at, $zero, -1
  /* 0222A8 800216A8 15410004 */       bne $t2, $at, .L800216BC
  /* 0222AC 800216AC 3C018000 */       lui $at, 0x8000
  /* 0222B0 800216B0 15C10002 */       bne $t6, $at, .L800216BC
  /* 0222B4 800216B4 00000000 */       nop 
  /* 0222B8 800216B8 0006000D */     break 6
  .L800216BC:
  /* 0222BC 800216BC 8C6E0004 */        lw $t6, 4($v1) # D_8003CBC0 + 4
  /* 0222C0 800216C0 0018CB80 */       sll $t9, $t8, 0xe
  /* 0222C4 800216C4 8D980000 */        lw $t8, ($t4) # gCurrScreenHeight + 0
  /* 0222C8 800216C8 022E7821 */      addu $t7, $s1, $t6
  /* 0222CC 800216CC 01F80019 */     multu $t7, $t8
  /* 0222D0 800216D0 00007012 */      mflo $t6
  /* 0222D4 800216D4 00000000 */       nop 
  /* 0222D8 800216D8 00000000 */       nop 
  /* 0222DC 800216DC 01CD001A */       div $zero, $t6, $t5
  /* 0222E0 800216E0 15A00002 */      bnez $t5, .L800216EC
  /* 0222E4 800216E4 00000000 */       nop 
  /* 0222E8 800216E8 0007000D */     break 7
  .L800216EC:
  /* 0222EC 800216EC 2401FFFF */     addiu $at, $zero, -1
  /* 0222F0 800216F0 15A10004 */       bne $t5, $at, .L80021704
  /* 0222F4 800216F4 3C018000 */       lui $at, 0x8000
  /* 0222F8 800216F8 15C10002 */       bne $t6, $at, .L80021704
  /* 0222FC 800216FC 00000000 */       nop 
  /* 022300 80021700 0006000D */     break 6
  .L80021704:
  /* 022304 80021704 00007812 */      mflo $t7
  /* 022308 80021708 31F803FF */      andi $t8, $t7, 0x3ff
  /* 02230C 8002170C 00187080 */       sll $t6, $t8, 2
  /* 022310 80021710 032E7825 */        or $t7, $t9, $t6
  /* 022314 80021714 AC8F0004 */        sw $t7, 4($a0)
  /* 022318 80021718 3C01800A */       lui $at, %hi(D_8009DA00)
  /* 02231C 8002171C AC23DA00 */        sw $v1, %lo(D_8009DA00)($at)
  /* 022320 80021720 AD020000 */        sw $v0, ($t0) # D_800465B0 + 0
  .L80021724:
  /* 022324 80021724 8FB00008 */        lw $s0, 8($sp)
  /* 022328 80021728 8FB1000C */        lw $s1, 0xc($sp)
  /* 02232C 8002172C 03E00008 */        jr $ra
  /* 022330 80021730 27BD0010 */     addiu $sp, $sp, 0x10

glabel func_80021734
  /* 022334 80021734 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 022338 80021738 AFB70030 */        sw $s7, 0x30($sp)
  /* 02233C 8002173C AFB6002C */        sw $s6, 0x2c($sp)
  /* 022340 80021740 AFB40024 */        sw $s4, 0x24($sp)
  /* 022344 80021744 AFB30020 */        sw $s3, 0x20($sp)
  /* 022348 80021748 AFB10018 */        sw $s1, 0x18($sp)
  /* 02234C 8002174C 00C08825 */        or $s1, $a2, $zero
  /* 022350 80021750 00E09825 */        or $s3, $a3, $zero
  /* 022354 80021754 0080A025 */        or $s4, $a0, $zero
  /* 022358 80021758 00A0B825 */        or $s7, $a1, $zero
  /* 02235C 8002175C AFBF0034 */        sw $ra, 0x34($sp)
  /* 022360 80021760 AFB50028 */        sw $s5, 0x28($sp)
  /* 022364 80021764 AFB2001C */        sw $s2, 0x1c($sp)
  /* 022368 80021768 AFB00014 */        sw $s0, 0x14($sp)
  /* 02236C 8002176C 18E00051 */      blez $a3, .L800218B4
  /* 022370 80021770 0000B025 */        or $s6, $zero, $zero
  /* 022374 80021774 3C0E8004 */       lui $t6, %hi(gCurrScreenWidth)
  /* 022378 80021778 8DCE6678 */        lw $t6, %lo(gCurrScreenWidth)($t6)
  /* 02237C 8002177C 24020007 */     addiu $v0, $zero, 7
  /* 022380 80021780 8FB00048 */        lw $s0, 0x48($sp)
  /* 022384 80021784 01C47823 */      subu $t7, $t6, $a0
  /* 022388 80021788 01E2001A */       div $zero, $t7, $v0
  /* 02238C 8002178C 14400002 */      bnez $v0, .L80021798
  /* 022390 80021790 00000000 */       nop 
  /* 022394 80021794 0007000D */     break 7
  .L80021798:
  /* 022398 80021798 2401FFFF */     addiu $at, $zero, -1
  /* 02239C 8002179C 14410004 */       bne $v0, $at, .L800217B0
  /* 0223A0 800217A0 3C018000 */       lui $at, 0x8000
  /* 0223A4 800217A4 15E10002 */       bne $t7, $at, .L800217B0
  /* 0223A8 800217A8 00000000 */       nop 
  /* 0223AC 800217AC 0006000D */     break 6
  .L800217B0:
  /* 0223B0 800217B0 0000C012 */      mflo $t8
  /* 0223B4 800217B4 0278082A */       slt $at, $s3, $t8
  /* 0223B8 800217B8 5020003F */      beql $at, $zero, .L800218B8
  /* 0223BC 800217BC 8FBF0034 */        lw $ra, 0x34($sp)
  /* 0223C0 800217C0 02620019 */     multu $s3, $v0
  /* 0223C4 800217C4 8FB5004C */        lw $s5, 0x4c($sp)
  /* 0223C8 800217C8 2412000A */     addiu $s2, $zero, 0xa
  /* 0223CC 800217CC 0000C812 */      mflo $t9
  /* 0223D0 800217D0 0299A021 */      addu $s4, $s4, $t9
  /* 0223D4 800217D4 06210003 */      bgez $s1, .L800217E4
  /* 0223D8 800217D8 2694FFF9 */     addiu $s4, $s4, -7
  /* 0223DC 800217DC 00118823 */      negu $s1, $s1
  /* 0223E0 800217E0 24160001 */     addiu $s6, $zero, 1
  .L800217E4:
  /* 0223E4 800217E4 1E000002 */      bgtz $s0, .L800217F0
  /* 0223E8 800217E8 02D3082A */       slt $at, $s6, $s3
  /* 0223EC 800217EC 2410FFFF */     addiu $s0, $zero, -1
  .L800217F0:
  /* 0223F0 800217F0 1020002A */      beqz $at, .L8002189C
  /* 0223F4 800217F4 00000000 */       nop 
  .L800217F8:
  /* 0223F8 800217F8 0232001A */       div $zero, $s1, $s2
  /* 0223FC 800217FC 00003010 */      mfhi $a2
  /* 022400 80021800 2E070001 */     sltiu $a3, $s0, 1
  /* 022404 80021804 2610FFFF */     addiu $s0, $s0, -1
  /* 022408 80021808 30C6000F */      andi $a2, $a2, 0xf
  /* 02240C 8002180C 02802025 */        or $a0, $s4, $zero
  /* 022410 80021810 02E02825 */        or $a1, $s7, $zero
  /* 022414 80021814 16400002 */      bnez $s2, .L80021820
  /* 022418 80021818 00000000 */       nop 
  /* 02241C 8002181C 0007000D */     break 7
  .L80021820:
  /* 022420 80021820 2401FFFF */     addiu $at, $zero, -1
  /* 022424 80021824 16410004 */       bne $s2, $at, .L80021838
  /* 022428 80021828 3C018000 */       lui $at, 0x8000
  /* 02242C 8002182C 16210002 */       bne $s1, $at, .L80021838
  /* 022430 80021830 00000000 */       nop 
  /* 022434 80021834 0006000D */     break 6
  .L80021838:
  /* 022438 80021838 0C008430 */       jal func_800210C0
  /* 02243C 8002183C 00000000 */       nop 
  /* 022440 80021840 0232001A */       div $zero, $s1, $s2
  /* 022444 80021844 16400002 */      bnez $s2, .L80021850
  /* 022448 80021848 00000000 */       nop 
  /* 02244C 8002184C 0007000D */     break 7
  .L80021850:
  /* 022450 80021850 2401FFFF */     addiu $at, $zero, -1
  /* 022454 80021854 16410004 */       bne $s2, $at, .L80021868
  /* 022458 80021858 3C018000 */       lui $at, 0x8000
  /* 02245C 8002185C 16210002 */       bne $s1, $at, .L80021868
  /* 022460 80021860 00000000 */       nop 
  /* 022464 80021864 0006000D */     break 6
  .L80021868:
  /* 022468 80021868 00008812 */      mflo $s1
  /* 02246C 8002186C 2673FFFF */     addiu $s3, $s3, -1
  /* 022470 80021870 52A00008 */      beql $s5, $zero, .L80021894
  /* 022474 80021874 02D3082A */       slt $at, $s6, $s3
  /* 022478 80021878 56200006 */      bnel $s1, $zero, .L80021894
  /* 02247C 8002187C 02D3082A */       slt $at, $s6, $s3
  /* 022480 80021880 06030004 */     bgezl $s0, .L80021894
  /* 022484 80021884 02D3082A */       slt $at, $s6, $s3
  /* 022488 80021888 10000004 */         b .L8002189C
  /* 02248C 8002188C 2694FFF9 */     addiu $s4, $s4, -7
  /* 022490 80021890 02D3082A */       slt $at, $s6, $s3
  .L80021894:
  /* 022494 80021894 1420FFD8 */      bnez $at, .L800217F8
  /* 022498 80021898 2694FFF9 */     addiu $s4, $s4, -7
  .L8002189C:
  /* 02249C 8002189C 12C00005 */      beqz $s6, .L800218B4
  /* 0224A0 800218A0 02802025 */        or $a0, $s4, $zero
  /* 0224A4 800218A4 02E02825 */        or $a1, $s7, $zero
  /* 0224A8 800218A8 24060010 */     addiu $a2, $zero, 0x10
  /* 0224AC 800218AC 0C008430 */       jal func_800210C0
  /* 0224B0 800218B0 00003825 */        or $a3, $zero, $zero
  .L800218B4:
  /* 0224B4 800218B4 8FBF0034 */        lw $ra, 0x34($sp)
  .L800218B8:
  /* 0224B8 800218B8 8FB00014 */        lw $s0, 0x14($sp)
  /* 0224BC 800218BC 8FB10018 */        lw $s1, 0x18($sp)
  /* 0224C0 800218C0 8FB2001C */        lw $s2, 0x1c($sp)
  /* 0224C4 800218C4 8FB30020 */        lw $s3, 0x20($sp)
  /* 0224C8 800218C8 8FB40024 */        lw $s4, 0x24($sp)
  /* 0224CC 800218CC 8FB50028 */        lw $s5, 0x28($sp)
  /* 0224D0 800218D0 8FB6002C */        lw $s6, 0x2c($sp)
  /* 0224D4 800218D4 8FB70030 */        lw $s7, 0x30($sp)
  /* 0224D8 800218D8 03E00008 */        jr $ra
  /* 0224DC 800218DC 27BD0038 */     addiu $sp, $sp, 0x38

glabel func_800218E0
  /* 0224E0 800218E0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0224E4 800218E4 8FAE0030 */        lw $t6, 0x30($sp)
  /* 0224E8 800218E8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0224EC 800218EC AFA00010 */        sw $zero, 0x10($sp)
  /* 0224F0 800218F0 0C0085CD */       jal func_80021734
  /* 0224F4 800218F4 AFAE0014 */        sw $t6, 0x14($sp)
  /* 0224F8 800218F8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0224FC 800218FC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 022500 80021900 03E00008 */        jr $ra
  /* 022504 80021904 00000000 */       nop 

glabel func_80021908
  /* 022508 80021908 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 02250C 8002190C 8FAE0030 */        lw $t6, 0x30($sp)
  /* 022510 80021910 3C018004 */       lui $at, %hi(D_8003CE50)
  /* 022514 80021914 44866000 */      mtc1 $a2, $f12
  /* 022518 80021918 000E7880 */       sll $t7, $t6, 2
  /* 02251C 8002191C 002F0821 */      addu $at, $at, $t7
  /* 022520 80021920 C424CE50 */      lwc1 $f4, %lo(D_8003CE50)($at)
  /* 022524 80021924 8FB90034 */        lw $t9, 0x34($sp)
  /* 022528 80021928 AFBF001C */        sw $ra, 0x1c($sp)
  /* 02252C 8002192C 460C2182 */     mul.s $f6, $f4, $f12
  /* 022530 80021930 AFAE0010 */        sw $t6, 0x10($sp)
  /* 022534 80021934 AFB90014 */        sw $t9, 0x14($sp)
  /* 022538 80021938 4600320D */ trunc.w.s $f8, $f6
  /* 02253C 8002193C 44064000 */      mfc1 $a2, $f8
  /* 022540 80021940 0C0085CD */       jal func_80021734
  /* 022544 80021944 00000000 */       nop 
  /* 022548 80021948 8FBF001C */        lw $ra, 0x1c($sp)
  /* 02254C 8002194C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 022550 80021950 03E00008 */        jr $ra
  /* 022554 80021954 00000000 */       nop 

  /* 022558 80021958 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 02255C 8002195C AFB40028 */        sw $s4, 0x28($sp)
  /* 022560 80021960 AFB1001C */        sw $s1, 0x1c($sp)
  /* 022564 80021964 AFB00018 */        sw $s0, 0x18($sp)
  /* 022568 80021968 00C08025 */        or $s0, $a2, $zero
  /* 02256C 8002196C 00808825 */        or $s1, $a0, $zero
  /* 022570 80021970 00A0A025 */        or $s4, $a1, $zero
  /* 022574 80021974 AFBF002C */        sw $ra, 0x2c($sp)
  /* 022578 80021978 AFB30024 */        sw $s3, 0x24($sp)
  /* 02257C 8002197C 18E00025 */      blez $a3, .L80021A14
  /* 022580 80021980 AFB20020 */        sw $s2, 0x20($sp)
  /* 022584 80021984 3C0E8004 */       lui $t6, %hi(gCurrScreenWidth)
  /* 022588 80021988 8DCE6678 */        lw $t6, %lo(gCurrScreenWidth)($t6)
  /* 02258C 8002198C 24020007 */     addiu $v0, $zero, 7
  /* 022590 80021990 01C47823 */      subu $t7, $t6, $a0
  /* 022594 80021994 01E2001A */       div $zero, $t7, $v0
  /* 022598 80021998 14400002 */      bnez $v0, .L800219A4
  /* 02259C 8002199C 00000000 */       nop 
  /* 0225A0 800219A0 0007000D */     break 7
  .L800219A4:
  /* 0225A4 800219A4 2401FFFF */     addiu $at, $zero, -1
  /* 0225A8 800219A8 14410004 */       bne $v0, $at, .L800219BC
  /* 0225AC 800219AC 3C018000 */       lui $at, 0x8000
  /* 0225B0 800219B0 15E10002 */       bne $t7, $at, .L800219BC
  /* 0225B4 800219B4 00000000 */       nop 
  /* 0225B8 800219B8 0006000D */     break 6
  .L800219BC:
  /* 0225BC 800219BC 0000C012 */      mflo $t8
  /* 0225C0 800219C0 00F8082A */       slt $at, $a3, $t8
  /* 0225C4 800219C4 50200014 */      beql $at, $zero, .L80021A18
  /* 0225C8 800219C8 8FBF002C */        lw $ra, 0x2c($sp)
  /* 0225CC 800219CC 00E20019 */     multu $a3, $v0
  /* 0225D0 800219D0 8FB30040 */        lw $s3, 0x40($sp)
  /* 0225D4 800219D4 00009012 */      mflo $s2
  /* 0225D8 800219D8 02328821 */      addu $s1, $s1, $s2
  /* 0225DC 800219DC 18E0000D */      blez $a3, .L80021A14
  /* 0225E0 800219E0 2631FFF9 */     addiu $s1, $s1, -7
  .L800219E4:
  /* 0225E4 800219E4 02202025 */        or $a0, $s1, $zero
  /* 0225E8 800219E8 02802825 */        or $a1, $s4, $zero
  /* 0225EC 800219EC 3206000F */      andi $a2, $s0, 0xf
  /* 0225F0 800219F0 0C008430 */       jal func_800210C0
  /* 0225F4 800219F4 00003825 */        or $a3, $zero, $zero
  /* 0225F8 800219F8 12600002 */      beqz $s3, .L80021A04
  /* 0225FC 800219FC 00108103 */       sra $s0, $s0, 4
  /* 022600 80021A00 12000004 */      beqz $s0, .L80021A14
  .L80021A04:
  /* 022604 80021A04 2652FFF9 */     addiu $s2, $s2, -7
  /* 022608 80021A08 2A410007 */      slti $at, $s2, 7
  /* 02260C 80021A0C 1020FFF5 */      beqz $at, .L800219E4
  /* 022610 80021A10 2631FFF9 */     addiu $s1, $s1, -7
  .L80021A14:
  /* 022614 80021A14 8FBF002C */        lw $ra, 0x2c($sp)
  .L80021A18:
  /* 022618 80021A18 8FB00018 */        lw $s0, 0x18($sp)
  /* 02261C 80021A1C 8FB1001C */        lw $s1, 0x1c($sp)
  /* 022620 80021A20 8FB20020 */        lw $s2, 0x20($sp)
  /* 022624 80021A24 8FB30024 */        lw $s3, 0x24($sp)
  /* 022628 80021A28 8FB40028 */        lw $s4, 0x28($sp)
  /* 02262C 80021A2C 03E00008 */        jr $ra
  /* 022630 80021A30 27BD0030 */     addiu $sp, $sp, 0x30

glabel func_80021A34
  /* 022634 80021A34 3C088004 */       lui $t0, %hi(gCurrScreenHeight)
  /* 022638 80021A38 2508667C */     addiu $t0, $t0, %lo(gCurrScreenHeight)
  /* 02263C 80021A3C 8D0F0000 */        lw $t7, ($t0) # gCurrScreenHeight + 0
  /* 022640 80021A40 8FAE0010 */        lw $t6, 0x10($sp)
  /* 022644 80021A44 240900F0 */     addiu $t1, $zero, 0xf0
  /* 022648 80021A48 3C028004 */       lui $v0, %hi(gCurrScreenWidth)
  /* 02264C 80021A4C 01CF0019 */     multu $t6, $t7
  /* 022650 80021A50 24426678 */     addiu $v0, $v0, %lo(gCurrScreenWidth)
  /* 022654 80021A54 8C4C0000 */        lw $t4, ($v0) # gCurrScreenWidth + 0
  /* 022658 80021A58 24030140 */     addiu $v1, $zero, 0x140
  /* 02265C 80021A5C 3C01F600 */       lui $at, 0xf600
  /* 022660 80021A60 0000C012 */      mflo $t8
  /* 022664 80021A64 00000000 */       nop 
  /* 022668 80021A68 00000000 */       nop 
  /* 02266C 80021A6C 0309001B */      divu $zero, $t8, $t1
  /* 022670 80021A70 0000C812 */      mflo $t9
  /* 022674 80021A74 332A03FF */      andi $t2, $t9, 0x3ff
  /* 022678 80021A78 000A5880 */       sll $t3, $t2, 2
  /* 02267C 80021A7C 01870019 */     multu $t4, $a3
  /* 022680 80021A80 15200002 */      bnez $t1, .L80021A8C
  /* 022684 80021A84 00000000 */       nop 
  /* 022688 80021A88 0007000D */     break 7
  .L80021A8C:
  /* 02268C 80021A8C 00006812 */      mflo $t5
  /* 022690 80021A90 00000000 */       nop 
  /* 022694 80021A94 00000000 */       nop 
  /* 022698 80021A98 01A3001B */      divu $zero, $t5, $v1
  /* 02269C 80021A9C 00007012 */      mflo $t6
  /* 0226A0 80021AA0 31CF03FF */      andi $t7, $t6, 0x3ff
  /* 0226A4 80021AA4 000FC380 */       sll $t8, $t7, 0xe
  /* 0226A8 80021AA8 0301C825 */        or $t9, $t8, $at
  /* 0226AC 80021AAC 032B5025 */        or $t2, $t9, $t3
  /* 0226B0 80021AB0 AC8A0000 */        sw $t2, ($a0)
  /* 0226B4 80021AB4 8C4C0000 */        lw $t4, ($v0) # gCurrScreenWidth + 0
  /* 0226B8 80021AB8 8D190000 */        lw $t9, ($t0) # gCurrScreenHeight + 0
  /* 0226BC 80021ABC 14600002 */      bnez $v1, .L80021AC8
  /* 0226C0 80021AC0 00000000 */       nop 
  /* 0226C4 80021AC4 0007000D */     break 7
  .L80021AC8:
  /* 0226C8 80021AC8 01850019 */     multu $t4, $a1
  /* 0226CC 80021ACC 00006812 */      mflo $t5
  /* 0226D0 80021AD0 00000000 */       nop 
  /* 0226D4 80021AD4 00000000 */       nop 
  /* 0226D8 80021AD8 01A3001B */      divu $zero, $t5, $v1
  /* 0226DC 80021ADC 00007012 */      mflo $t6
  /* 0226E0 80021AE0 31CF03FF */      andi $t7, $t6, 0x3ff
  /* 0226E4 80021AE4 000FC380 */       sll $t8, $t7, 0xe
  /* 0226E8 80021AE8 00D90019 */     multu $a2, $t9
  /* 0226EC 80021AEC 14600002 */      bnez $v1, .L80021AF8
  /* 0226F0 80021AF0 00000000 */       nop 
  /* 0226F4 80021AF4 0007000D */     break 7
  .L80021AF8:
  /* 0226F8 80021AF8 00005812 */      mflo $t3
  /* 0226FC 80021AFC 00000000 */       nop 
  /* 022700 80021B00 00000000 */       nop 
  /* 022704 80021B04 0169001B */      divu $zero, $t3, $t1
  /* 022708 80021B08 00005012 */      mflo $t2
  /* 02270C 80021B0C 314C03FF */      andi $t4, $t2, 0x3ff
  /* 022710 80021B10 000C6880 */       sll $t5, $t4, 2
  /* 022714 80021B14 030D7025 */        or $t6, $t8, $t5
  /* 022718 80021B18 15200002 */      bnez $t1, .L80021B24
  /* 02271C 80021B1C 00000000 */       nop 
  /* 022720 80021B20 0007000D */     break 7
  .L80021B24:
  /* 022724 80021B24 AC8E0004 */        sw $t6, 4($a0)
  /* 022728 80021B28 03E00008 */        jr $ra
  /* 02272C 80021B2C 00000000 */       nop 

glabel func_80021B30
  /* 022730 80021B30 27BDFF70 */     addiu $sp, $sp, -0x90
  /* 022734 80021B34 AFB30028 */        sw $s3, 0x28($sp)
  /* 022738 80021B38 3C138004 */       lui $s3, %hi(D_800465B0)
  /* 02273C 80021B3C 267365B0 */     addiu $s3, $s3, %lo(D_800465B0)
  /* 022740 80021B40 AFBF002C */        sw $ra, 0x2c($sp)
  /* 022744 80021B44 AFB20024 */        sw $s2, 0x24($sp)
  /* 022748 80021B48 AFB10020 */        sw $s1, 0x20($sp)
  /* 02274C 80021B4C AFB0001C */        sw $s0, 0x1c($sp)
  /* 022750 80021B50 00803825 */        or $a3, $a0, $zero
  /* 022754 80021B54 8CE50074 */        lw $a1, 0x74($a3)
  /* 022758 80021B58 02602025 */        or $a0, $s3, $zero
  /* 02275C 80021B5C 0C0058CE */       jal func_80016338
  /* 022760 80021B60 00003025 */        or $a2, $zero, $zero
  /* 022764 80021B64 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022768 80021B68 3C0FE700 */       lui $t7, 0xe700
  /* 02276C 80021B6C 3C19E300 */       lui $t9, (0xE3000A01 >> 16) # 3808430593
  /* 022770 80021B70 260E0008 */     addiu $t6, $s0, 8
  /* 022774 80021B74 AE6E0000 */        sw $t6, ($s3) # D_800465B0 + 0
  /* 022778 80021B78 AE000004 */        sw $zero, 4($s0)
  /* 02277C 80021B7C AE0F0000 */        sw $t7, ($s0)
  /* 022780 80021B80 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022784 80021B84 37390A01 */       ori $t9, $t9, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 022788 80021B88 3C080030 */       lui $t0, 0x30
  /* 02278C 80021B8C 26180008 */     addiu $t8, $s0, 8
  /* 022790 80021B90 AE780000 */        sw $t8, ($s3) # D_800465B0 + 0
  /* 022794 80021B94 AE080004 */        sw $t0, 4($s0)
  /* 022798 80021B98 AE190000 */        sw $t9, ($s0)
  /* 02279C 80021B9C 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 0227A0 80021BA0 3C0AE200 */       lui $t2, (0xE200001C >> 16) # 3791650844
  /* 0227A4 80021BA4 354A001C */       ori $t2, $t2, (0xE200001C & 0xFFFF) # 3791650844
  /* 0227A8 80021BA8 26090008 */     addiu $t1, $s0, 8
  /* 0227AC 80021BAC AE690000 */        sw $t1, ($s3) # D_800465B0 + 0
  /* 0227B0 80021BB0 AE000004 */        sw $zero, 4($s0)
  /* 0227B4 80021BB4 AE0A0000 */        sw $t2, ($s0)
  /* 0227B8 80021BB8 8E710000 */        lw $s1, ($s3) # D_800465B0 + 0
  /* 0227BC 80021BBC 3C0CF700 */       lui $t4, 0xf700
  /* 0227C0 80021BC0 2404FFFF */     addiu $a0, $zero, -1
  /* 0227C4 80021BC4 262B0008 */     addiu $t3, $s1, 8
  /* 0227C8 80021BC8 AE6B0000 */        sw $t3, ($s3) # D_800465B0 + 0
  /* 0227CC 80021BCC 0C001B5C */       jal rgba32_to_fill_color
  /* 0227D0 80021BD0 AE2C0000 */        sw $t4, ($s1)
  /* 0227D4 80021BD4 AE220004 */        sw $v0, 4($s1)
  /* 0227D8 80021BD8 3C068004 */       lui $a2, %hi(D_80045470 + 8)
  /* 0227DC 80021BDC 240D0001 */     addiu $t5, $zero, 1
  /* 0227E0 80021BE0 AFAD0010 */        sw $t5, 0x10($sp)
  /* 0227E4 80021BE4 80C65478 */        lb $a2, %lo(D_80045470 + 8)($a2)
  /* 0227E8 80021BE8 2404003C */     addiu $a0, $zero, 0x3c
  /* 0227EC 80021BEC 240500B3 */     addiu $a1, $zero, 0xb3
  /* 0227F0 80021BF0 0C008638 */       jal func_800218E0
  /* 0227F4 80021BF4 24070003 */     addiu $a3, $zero, 3
  /* 0227F8 80021BF8 3C068004 */       lui $a2, %hi(D_80045470 + 9)
  /* 0227FC 80021BFC 240E0001 */     addiu $t6, $zero, 1
  /* 022800 80021C00 AFAE0010 */        sw $t6, 0x10($sp)
  /* 022804 80021C04 80C65479 */        lb $a2, %lo(D_80045470 + 9)($a2)
  /* 022808 80021C08 2404005C */     addiu $a0, $zero, 0x5c
  /* 02280C 80021C0C 240500B3 */     addiu $a1, $zero, 0xb3
  /* 022810 80021C10 0C008638 */       jal func_800218E0
  /* 022814 80021C14 24070003 */     addiu $a3, $zero, 3
  /* 022818 80021C18 3C128004 */       lui $s2, %hi(D_80046610)
  /* 02281C 80021C1C 26526610 */     addiu $s2, $s2, %lo(D_80046610)
  /* 022820 80021C20 8E4F0000 */        lw $t7, ($s2) # D_80046610 + 0
  /* 022824 80021C24 2404003C */     addiu $a0, $zero, 0x3c
  /* 022828 80021C28 240500C3 */     addiu $a1, $zero, 0xc3
  /* 02282C 80021C2C 448F2000 */      mtc1 $t7, $f4
  /* 022830 80021C30 05E10005 */      bgez $t7, .L80021C48
  /* 022834 80021C34 468021A0 */   cvt.s.w $f6, $f4
  /* 022838 80021C38 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 02283C 80021C3C 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 022840 80021C40 00000000 */       nop 
  /* 022844 80021C44 46083180 */     add.s $f6, $f6, $f8
  .L80021C48:
  /* 022848 80021C48 3C013B80 */       lui $at, (0x3B800000 >> 16) # 0.00390625
  /* 02284C 80021C4C 44815000 */      mtc1 $at, $f10 # 0.00390625 to cop1
  /* 022850 80021C50 24180002 */     addiu $t8, $zero, 2
  /* 022854 80021C54 24190001 */     addiu $t9, $zero, 1
  /* 022858 80021C58 460A3402 */     mul.s $f16, $f6, $f10
  /* 02285C 80021C5C AFB90014 */        sw $t9, 0x14($sp)
  /* 022860 80021C60 AFB80010 */        sw $t8, 0x10($sp)
  /* 022864 80021C64 24070005 */     addiu $a3, $zero, 5
  /* 022868 80021C68 44068000 */      mfc1 $a2, $f16
  /* 02286C 80021C6C 0C008642 */       jal func_80021908
  /* 022870 80021C70 00000000 */       nop 
  /* 022874 80021C74 3C088004 */       lui $t0, %hi(D_80046614)
  /* 022878 80021C78 8D086614 */        lw $t0, %lo(D_80046614)($t0)
  /* 02287C 80021C7C 2410005F */     addiu $s0, $zero, 0x5f
  /* 022880 80021C80 02002025 */        or $a0, $s0, $zero
  /* 022884 80021C84 44889000 */      mtc1 $t0, $f18
  /* 022888 80021C88 240500C3 */     addiu $a1, $zero, 0xc3
  /* 02288C 80021C8C 05010005 */      bgez $t0, .L80021CA4
  /* 022890 80021C90 46809120 */   cvt.s.w $f4, $f18
  /* 022894 80021C94 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 022898 80021C98 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 02289C 80021C9C 00000000 */       nop 
  /* 0228A0 80021CA0 46082100 */     add.s $f4, $f4, $f8
  .L80021CA4:
  /* 0228A4 80021CA4 3C013B80 */       lui $at, (0x3B800000 >> 16) # 0.00390625
  /* 0228A8 80021CA8 44813000 */      mtc1 $at, $f6 # 0.00390625 to cop1
  /* 0228AC 80021CAC 24090002 */     addiu $t1, $zero, 2
  /* 0228B0 80021CB0 240A0001 */     addiu $t2, $zero, 1
  /* 0228B4 80021CB4 46062282 */     mul.s $f10, $f4, $f6
  /* 0228B8 80021CB8 AFAA0014 */        sw $t2, 0x14($sp)
  /* 0228BC 80021CBC AFA90010 */        sw $t1, 0x10($sp)
  /* 0228C0 80021CC0 24070005 */     addiu $a3, $zero, 5
  /* 0228C4 80021CC4 44065000 */      mfc1 $a2, $f10
  /* 0228C8 80021CC8 0C008642 */       jal func_80021908
  /* 0228CC 80021CCC 00000000 */       nop 
  /* 0228D0 80021CD0 3C0B8004 */       lui $t3, %hi(D_80044FB4)
  /* 0228D4 80021CD4 8D6B4FB4 */        lw $t3, %lo(D_80044FB4)($t3)
  /* 0228D8 80021CD8 26100023 */     addiu $s0, $s0, 0x23
  /* 0228DC 80021CDC 02002025 */        or $a0, $s0, $zero
  /* 0228E0 80021CE0 448B8000 */      mtc1 $t3, $f16
  /* 0228E4 80021CE4 240500C3 */     addiu $a1, $zero, 0xc3
  /* 0228E8 80021CE8 05610005 */      bgez $t3, .L80021D00
  /* 0228EC 80021CEC 468084A0 */   cvt.s.w $f18, $f16
  /* 0228F0 80021CF0 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 0228F4 80021CF4 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 0228F8 80021CF8 00000000 */       nop 
  /* 0228FC 80021CFC 46089480 */     add.s $f18, $f18, $f8
  .L80021D00:
  /* 022900 80021D00 3C013B80 */       lui $at, (0x3B800000 >> 16) # 0.00390625
  /* 022904 80021D04 44812000 */      mtc1 $at, $f4 # 0.00390625 to cop1
  /* 022908 80021D08 240C0002 */     addiu $t4, $zero, 2
  /* 02290C 80021D0C 240D0001 */     addiu $t5, $zero, 1
  /* 022910 80021D10 46049182 */     mul.s $f6, $f18, $f4
  /* 022914 80021D14 AFAD0014 */        sw $t5, 0x14($sp)
  /* 022918 80021D18 AFAC0010 */        sw $t4, 0x10($sp)
  /* 02291C 80021D1C 24070005 */     addiu $a3, $zero, 5
  /* 022920 80021D20 44063000 */      mfc1 $a2, $f6
  /* 022924 80021D24 0C008642 */       jal func_80021908
  /* 022928 80021D28 00000000 */       nop 
  /* 02292C 80021D2C 8E4E0000 */        lw $t6, ($s2) # D_80046610 + 0
  /* 022930 80021D30 3C013B80 */       lui $at, (0x3B800000 >> 16) # 0.00390625
  /* 022934 80021D34 44810000 */      mtc1 $at, $f0 # 0.00390625 to cop1
  /* 022938 80021D38 448E5000 */      mtc1 $t6, $f10
  /* 02293C 80021D3C 26100023 */     addiu $s0, $s0, 0x23
  /* 022940 80021D40 02002025 */        or $a0, $s0, $zero
  /* 022944 80021D44 240500C3 */     addiu $a1, $zero, 0xc3
  /* 022948 80021D48 05C10005 */      bgez $t6, .L80021D60
  /* 02294C 80021D4C 46805420 */   cvt.s.w $f16, $f10
  /* 022950 80021D50 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 022954 80021D54 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 022958 80021D58 00000000 */       nop 
  /* 02295C 80021D5C 46088400 */     add.s $f16, $f16, $f8
  .L80021D60:
  /* 022960 80021D60 3C0F8004 */       lui $t7, %hi(D_80046614)
  /* 022964 80021D64 8DEF6614 */        lw $t7, %lo(D_80046614)($t7)
  /* 022968 80021D68 46008482 */     mul.s $f18, $f16, $f0
  /* 02296C 80021D6C 448F2000 */      mtc1 $t7, $f4
  /* 022970 80021D70 05E10005 */      bgez $t7, .L80021D88
  /* 022974 80021D74 468021A0 */   cvt.s.w $f6, $f4
  /* 022978 80021D78 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 02297C 80021D7C 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 022980 80021D80 00000000 */       nop 
  /* 022984 80021D84 460A3180 */     add.s $f6, $f6, $f10
  .L80021D88:
  /* 022988 80021D88 46003202 */     mul.s $f8, $f6, $f0
  /* 02298C 80021D8C 3C188004 */       lui $t8, %hi(D_80044FB4)
  /* 022990 80021D90 8F184FB4 */        lw $t8, %lo(D_80044FB4)($t8)
  /* 022994 80021D94 44982000 */      mtc1 $t8, $f4
  /* 022998 80021D98 46089400 */     add.s $f16, $f18, $f8
  /* 02299C 80021D9C 07010005 */      bgez $t8, .L80021DB4
  /* 0229A0 80021DA0 468022A0 */   cvt.s.w $f10, $f4
  /* 0229A4 80021DA4 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 0229A8 80021DA8 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 0229AC 80021DAC 00000000 */       nop 
  /* 0229B0 80021DB0 46065280 */     add.s $f10, $f10, $f6
  .L80021DB4:
  /* 0229B4 80021DB4 46005482 */     mul.s $f18, $f10, $f0
  /* 0229B8 80021DB8 24190002 */     addiu $t9, $zero, 2
  /* 0229BC 80021DBC 24080001 */     addiu $t0, $zero, 1
  /* 0229C0 80021DC0 AFA80014 */        sw $t0, 0x14($sp)
  /* 0229C4 80021DC4 AFB90010 */        sw $t9, 0x10($sp)
  /* 0229C8 80021DC8 24070005 */     addiu $a3, $zero, 5
  /* 0229CC 80021DCC 46128200 */     add.s $f8, $f16, $f18
  /* 0229D0 80021DD0 44064000 */      mfc1 $a2, $f8
  /* 0229D4 80021DD4 0C008642 */       jal func_80021908
  /* 0229D8 80021DD8 00000000 */       nop 
  /* 0229DC 80021DDC 3C09800A */       lui $t1, %hi(D_8009D2D0)
  /* 0229E0 80021DE0 8D29D2D0 */        lw $t1, %lo(D_8009D2D0)($t1)
  /* 0229E4 80021DE4 26100046 */     addiu $s0, $s0, 0x46
  /* 0229E8 80021DE8 02002025 */        or $a0, $s0, $zero
  /* 0229EC 80021DEC 44892000 */      mtc1 $t1, $f4
  /* 0229F0 80021DF0 240500C3 */     addiu $a1, $zero, 0xc3
  /* 0229F4 80021DF4 05210005 */      bgez $t1, .L80021E0C
  /* 0229F8 80021DF8 468021A0 */   cvt.s.w $f6, $f4
  /* 0229FC 80021DFC 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 022A00 80021E00 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 022A04 80021E04 00000000 */       nop 
  /* 022A08 80021E08 460A3180 */     add.s $f6, $f6, $f10
  .L80021E0C:
  /* 022A0C 80021E0C 3C013B80 */       lui $at, (0x3B800000 >> 16) # 0.00390625
  /* 022A10 80021E10 44818000 */      mtc1 $at, $f16 # 0.00390625 to cop1
  /* 022A14 80021E14 240A0002 */     addiu $t2, $zero, 2
  /* 022A18 80021E18 240B0001 */     addiu $t3, $zero, 1
  /* 022A1C 80021E1C 46103482 */     mul.s $f18, $f6, $f16
  /* 022A20 80021E20 AFAB0014 */        sw $t3, 0x14($sp)
  /* 022A24 80021E24 AFAA0010 */        sw $t2, 0x10($sp)
  /* 022A28 80021E28 24070005 */     addiu $a3, $zero, 5
  /* 022A2C 80021E2C 44069000 */      mfc1 $a2, $f18
  /* 022A30 80021E30 0C008642 */       jal func_80021908
  /* 022A34 80021E34 00000000 */       nop 
  /* 022A38 80021E38 3C0C8004 */       lui $t4, %hi(D_80044FB8)
  /* 022A3C 80021E3C 8D8C4FB8 */        lw $t4, %lo(D_80044FB8)($t4)
  /* 022A40 80021E40 26040023 */     addiu $a0, $s0, 0x23
  /* 022A44 80021E44 240500C3 */     addiu $a1, $zero, 0xc3
  /* 022A48 80021E48 448C4000 */      mtc1 $t4, $f8
  /* 022A4C 80021E4C 05810005 */      bgez $t4, .L80021E64
  /* 022A50 80021E50 46804120 */   cvt.s.w $f4, $f8
  /* 022A54 80021E54 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 022A58 80021E58 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 022A5C 80021E5C 00000000 */       nop 
  /* 022A60 80021E60 460A2100 */     add.s $f4, $f4, $f10
  .L80021E64:
  /* 022A64 80021E64 3C013B80 */       lui $at, (0x3B800000 >> 16) # 0.00390625
  /* 022A68 80021E68 44813000 */      mtc1 $at, $f6 # 0.00390625 to cop1
  /* 022A6C 80021E6C 240D0002 */     addiu $t5, $zero, 2
  /* 022A70 80021E70 240E0001 */     addiu $t6, $zero, 1
  /* 022A74 80021E74 46062402 */     mul.s $f16, $f4, $f6
  /* 022A78 80021E78 AFAE0014 */        sw $t6, 0x14($sp)
  /* 022A7C 80021E7C AFAD0010 */        sw $t5, 0x10($sp)
  /* 022A80 80021E80 24070005 */     addiu $a3, $zero, 5
  /* 022A84 80021E84 44068000 */      mfc1 $a2, $f16
  /* 022A88 80021E88 0C008642 */       jal func_80021908
  /* 022A8C 80021E8C 00000000 */       nop 
  /* 022A90 80021E90 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022A94 80021E94 3C18E700 */       lui $t8, 0xe700
  /* 022A98 80021E98 3C08F700 */       lui $t0, 0xf700
  /* 022A9C 80021E9C 260F0008 */     addiu $t7, $s0, 8
  /* 022AA0 80021EA0 AE6F0000 */        sw $t7, ($s3) # D_800465B0 + 0
  /* 022AA4 80021EA4 AE000004 */        sw $zero, 4($s0)
  /* 022AA8 80021EA8 AE180000 */        sw $t8, ($s0)
  /* 022AAC 80021EAC 8E710000 */        lw $s1, ($s3) # D_800465B0 + 0
  /* 022AB0 80021EB0 3C04FF00 */       lui $a0, (0xFF0000FF >> 16) # 4278190335
  /* 022AB4 80021EB4 348400FF */       ori $a0, $a0, (0xFF0000FF & 0xFFFF) # 4278190335
  /* 022AB8 80021EB8 26390008 */     addiu $t9, $s1, 8
  /* 022ABC 80021EBC AE790000 */        sw $t9, ($s3) # D_800465B0 + 0
  /* 022AC0 80021EC0 0C001B5C */       jal rgba32_to_fill_color
  /* 022AC4 80021EC4 AE280000 */        sw $t0, ($s1)
  /* 022AC8 80021EC8 AE220004 */        sw $v0, 4($s1)
  /* 022ACC 80021ECC 8E430000 */        lw $v1, ($s2) # D_80046610 + 0
  /* 022AD0 80021ED0 2405001E */     addiu $a1, $zero, 0x1e
  /* 022AD4 80021ED4 240600D2 */     addiu $a2, $zero, 0xd2
  /* 022AD8 80021ED8 00031882 */       srl $v1, $v1, 2
  /* 022ADC 80021EDC 2C610101 */     sltiu $at, $v1, 0x101
  /* 022AE0 80021EE0 14200003 */      bnez $at, .L80021EF0
  /* 022AE4 80021EE4 240900D3 */     addiu $t1, $zero, 0xd3
  /* 022AE8 80021EE8 10000002 */         b .L80021EF4
  /* 022AEC 80021EEC 24020100 */     addiu $v0, $zero, 0x100
  .L80021EF0:
  /* 022AF0 80021EF0 00601025 */        or $v0, $v1, $zero
  .L80021EF4:
  /* 022AF4 80021EF4 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022AF8 80021EF8 2447001E */     addiu $a3, $v0, 0x1e
  /* 022AFC 80021EFC AFA90010 */        sw $t1, 0x10($sp)
  /* 022B00 80021F00 260A0008 */     addiu $t2, $s0, 8
  /* 022B04 80021F04 AE6A0000 */        sw $t2, ($s3) # D_800465B0 + 0
  /* 022B08 80021F08 0C00868D */       jal func_80021A34
  /* 022B0C 80021F0C 02002025 */        or $a0, $s0, $zero
  /* 022B10 80021F10 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022B14 80021F14 3C0CE700 */       lui $t4, 0xe700
  /* 022B18 80021F18 3C0EF700 */       lui $t6, 0xf700
  /* 022B1C 80021F1C 260B0008 */     addiu $t3, $s0, 8
  /* 022B20 80021F20 AE6B0000 */        sw $t3, ($s3) # D_800465B0 + 0
  /* 022B24 80021F24 AE000004 */        sw $zero, 4($s0)
  /* 022B28 80021F28 AE0C0000 */        sw $t4, ($s0)
  /* 022B2C 80021F2C 8E720000 */        lw $s2, ($s3) # D_800465B0 + 0
  /* 022B30 80021F30 3C04FF00 */       lui $a0, (0xFF00FFFF >> 16) # 4278255615
  /* 022B34 80021F34 241100D4 */     addiu $s1, $zero, 0xd4
  /* 022B38 80021F38 264D0008 */     addiu $t5, $s2, 8
  /* 022B3C 80021F3C AE6D0000 */        sw $t5, ($s3) # D_800465B0 + 0
  /* 022B40 80021F40 3484FFFF */       ori $a0, $a0, (0xFF00FFFF & 0xFFFF) # 4278255615
  /* 022B44 80021F44 0C001B5C */       jal rgba32_to_fill_color
  /* 022B48 80021F48 AE4E0000 */        sw $t6, ($s2)
  /* 022B4C 80021F4C AE420004 */        sw $v0, 4($s2)
  /* 022B50 80021F50 3C038004 */       lui $v1, %hi(D_80046614)
  /* 022B54 80021F54 8C636614 */        lw $v1, %lo(D_80046614)($v1)
  /* 022B58 80021F58 2405001E */     addiu $a1, $zero, 0x1e
  /* 022B5C 80021F5C 02203025 */        or $a2, $s1, $zero
  /* 022B60 80021F60 00031882 */       srl $v1, $v1, 2
  /* 022B64 80021F64 2C610101 */     sltiu $at, $v1, 0x101
  /* 022B68 80021F68 14200003 */      bnez $at, .L80021F78
  /* 022B6C 80021F6C 262F0001 */     addiu $t7, $s1, 1
  /* 022B70 80021F70 10000002 */         b .L80021F7C
  /* 022B74 80021F74 24020100 */     addiu $v0, $zero, 0x100
  .L80021F78:
  /* 022B78 80021F78 00601025 */        or $v0, $v1, $zero
  .L80021F7C:
  /* 022B7C 80021F7C 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022B80 80021F80 2447001E */     addiu $a3, $v0, 0x1e
  /* 022B84 80021F84 AFAF0010 */        sw $t7, 0x10($sp)
  /* 022B88 80021F88 26180008 */     addiu $t8, $s0, 8
  /* 022B8C 80021F8C AE780000 */        sw $t8, ($s3) # D_800465B0 + 0
  /* 022B90 80021F90 0C00868D */       jal func_80021A34
  /* 022B94 80021F94 02002025 */        or $a0, $s0, $zero
  /* 022B98 80021F98 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022B9C 80021F9C 3C08E700 */       lui $t0, 0xe700
  /* 022BA0 80021FA0 3C0AF700 */       lui $t2, 0xf700
  /* 022BA4 80021FA4 26190008 */     addiu $t9, $s0, 8
  /* 022BA8 80021FA8 AE790000 */        sw $t9, ($s3) # D_800465B0 + 0
  /* 022BAC 80021FAC AE000004 */        sw $zero, 4($s0)
  /* 022BB0 80021FB0 AE080000 */        sw $t0, ($s0)
  /* 022BB4 80021FB4 8E720000 */        lw $s2, ($s3) # D_800465B0 + 0
  /* 022BB8 80021FB8 3C0400FF */       lui $a0, (0xFF00FF >> 16) # 16711935
  /* 022BBC 80021FBC 26310002 */     addiu $s1, $s1, 2
  /* 022BC0 80021FC0 26490008 */     addiu $t1, $s2, 8
  /* 022BC4 80021FC4 AE690000 */        sw $t1, ($s3) # D_800465B0 + 0
  /* 022BC8 80021FC8 348400FF */       ori $a0, $a0, (0xFF00FF & 0xFFFF) # 16711935
  /* 022BCC 80021FCC 0C001B5C */       jal rgba32_to_fill_color
  /* 022BD0 80021FD0 AE4A0000 */        sw $t2, ($s2)
  /* 022BD4 80021FD4 AE420004 */        sw $v0, 4($s2)
  /* 022BD8 80021FD8 3C038004 */       lui $v1, %hi(D_80044FB4)
  /* 022BDC 80021FDC 8C634FB4 */        lw $v1, %lo(D_80044FB4)($v1)
  /* 022BE0 80021FE0 2405001E */     addiu $a1, $zero, 0x1e
  /* 022BE4 80021FE4 02203025 */        or $a2, $s1, $zero
  /* 022BE8 80021FE8 00031882 */       srl $v1, $v1, 2
  /* 022BEC 80021FEC 2C610101 */     sltiu $at, $v1, 0x101
  /* 022BF0 80021FF0 14200003 */      bnez $at, .L80022000
  /* 022BF4 80021FF4 262B0001 */     addiu $t3, $s1, 1
  /* 022BF8 80021FF8 10000002 */         b .L80022004
  /* 022BFC 80021FFC 24020100 */     addiu $v0, $zero, 0x100
  .L80022000:
  /* 022C00 80022000 00601025 */        or $v0, $v1, $zero
  .L80022004:
  /* 022C04 80022004 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022C08 80022008 2447001E */     addiu $a3, $v0, 0x1e
  /* 022C0C 8002200C AFAB0010 */        sw $t3, 0x10($sp)
  /* 022C10 80022010 260C0008 */     addiu $t4, $s0, 8
  /* 022C14 80022014 AE6C0000 */        sw $t4, ($s3) # D_800465B0 + 0
  /* 022C18 80022018 0C00868D */       jal func_80021A34
  /* 022C1C 8002201C 02002025 */        or $a0, $s0, $zero
  /* 022C20 80022020 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022C24 80022024 3C0EE700 */       lui $t6, 0xe700
  /* 022C28 80022028 3C18F700 */       lui $t8, 0xf700
  /* 022C2C 8002202C 260D0008 */     addiu $t5, $s0, 8
  /* 022C30 80022030 AE6D0000 */        sw $t5, ($s3) # D_800465B0 + 0
  /* 022C34 80022034 AE000004 */        sw $zero, 4($s0)
  /* 022C38 80022038 AE0E0000 */        sw $t6, ($s0)
  /* 022C3C 8002203C 8E720000 */        lw $s2, ($s3) # D_800465B0 + 0
  /* 022C40 80022040 3C04FFFF */       lui $a0, (0xFFFF00FF >> 16) # 4294902015
  /* 022C44 80022044 26310002 */     addiu $s1, $s1, 2
  /* 022C48 80022048 264F0008 */     addiu $t7, $s2, 8
  /* 022C4C 8002204C AE6F0000 */        sw $t7, ($s3) # D_800465B0 + 0
  /* 022C50 80022050 348400FF */       ori $a0, $a0, (0xFFFF00FF & 0xFFFF) # 4294902015
  /* 022C54 80022054 0C001B5C */       jal rgba32_to_fill_color
  /* 022C58 80022058 AE580000 */        sw $t8, ($s2)
  /* 022C5C 8002205C AE420004 */        sw $v0, 4($s2)
  /* 022C60 80022060 3C03800A */       lui $v1, %hi(D_8009D2D0)
  /* 022C64 80022064 8C63D2D0 */        lw $v1, %lo(D_8009D2D0)($v1)
  /* 022C68 80022068 2405001E */     addiu $a1, $zero, 0x1e
  /* 022C6C 8002206C 02203025 */        or $a2, $s1, $zero
  /* 022C70 80022070 00031882 */       srl $v1, $v1, 2
  /* 022C74 80022074 2C610101 */     sltiu $at, $v1, 0x101
  /* 022C78 80022078 14200003 */      bnez $at, .L80022088
  /* 022C7C 8002207C 26390001 */     addiu $t9, $s1, 1
  /* 022C80 80022080 10000002 */         b .L8002208C
  /* 022C84 80022084 24020100 */     addiu $v0, $zero, 0x100
  .L80022088:
  /* 022C88 80022088 00601025 */        or $v0, $v1, $zero
  .L8002208C:
  /* 022C8C 8002208C 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022C90 80022090 2447001E */     addiu $a3, $v0, 0x1e
  /* 022C94 80022094 AFB90010 */        sw $t9, 0x10($sp)
  /* 022C98 80022098 26080008 */     addiu $t0, $s0, 8
  /* 022C9C 8002209C AE680000 */        sw $t0, ($s3) # D_800465B0 + 0
  /* 022CA0 800220A0 0C00868D */       jal func_80021A34
  /* 022CA4 800220A4 02002025 */        or $a0, $s0, $zero
  /* 022CA8 800220A8 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022CAC 800220AC 3C0AE700 */       lui $t2, 0xe700
  /* 022CB0 800220B0 3C0CF700 */       lui $t4, 0xf700
  /* 022CB4 800220B4 26090008 */     addiu $t1, $s0, 8
  /* 022CB8 800220B8 AE690000 */        sw $t1, ($s3) # D_800465B0 + 0
  /* 022CBC 800220BC AE000004 */        sw $zero, 4($s0)
  /* 022CC0 800220C0 AE0A0000 */        sw $t2, ($s0)
  /* 022CC4 800220C4 8E720000 */        lw $s2, ($s3) # D_800465B0 + 0
  /* 022CC8 800220C8 3C0400FF */       lui $a0, (0xFFFFFF >> 16) # 16777215
  /* 022CCC 800220CC 26310002 */     addiu $s1, $s1, 2
  /* 022CD0 800220D0 264B0008 */     addiu $t3, $s2, 8
  /* 022CD4 800220D4 AE6B0000 */        sw $t3, ($s3) # D_800465B0 + 0
  /* 022CD8 800220D8 3484FFFF */       ori $a0, $a0, (0xFFFFFF & 0xFFFF) # 16777215
  /* 022CDC 800220DC 0C001B5C */       jal rgba32_to_fill_color
  /* 022CE0 800220E0 AE4C0000 */        sw $t4, ($s2)
  /* 022CE4 800220E4 AE420004 */        sw $v0, 4($s2)
  /* 022CE8 800220E8 3C038004 */       lui $v1, %hi(D_80044FB8)
  /* 022CEC 800220EC 8C634FB8 */        lw $v1, %lo(D_80044FB8)($v1)
  /* 022CF0 800220F0 2405001E */     addiu $a1, $zero, 0x1e
  /* 022CF4 800220F4 02203025 */        or $a2, $s1, $zero
  /* 022CF8 800220F8 00031882 */       srl $v1, $v1, 2
  /* 022CFC 800220FC 2C610101 */     sltiu $at, $v1, 0x101
  /* 022D00 80022100 14200003 */      bnez $at, .L80022110
  /* 022D04 80022104 262D0001 */     addiu $t5, $s1, 1
  /* 022D08 80022108 10000002 */         b .L80022114
  /* 022D0C 8002210C 24020100 */     addiu $v0, $zero, 0x100
  .L80022110:
  /* 022D10 80022110 00601025 */        or $v0, $v1, $zero
  .L80022114:
  /* 022D14 80022114 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022D18 80022118 2447001E */     addiu $a3, $v0, 0x1e
  /* 022D1C 8002211C AFAD0010 */        sw $t5, 0x10($sp)
  /* 022D20 80022120 260E0008 */     addiu $t6, $s0, 8
  /* 022D24 80022124 AE6E0000 */        sw $t6, ($s3) # D_800465B0 + 0
  /* 022D28 80022128 0C00868D */       jal func_80021A34
  /* 022D2C 8002212C 02002025 */        or $a0, $s0, $zero
  /* 022D30 80022130 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022D34 80022134 3C18E700 */       lui $t8, 0xe700
  /* 022D38 80022138 3C08F700 */       lui $t0, 0xf700
  /* 022D3C 8002213C 260F0008 */     addiu $t7, $s0, 8
  /* 022D40 80022140 AE6F0000 */        sw $t7, ($s3) # D_800465B0 + 0
  /* 022D44 80022144 AE000004 */        sw $zero, 4($s0)
  /* 022D48 80022148 AE180000 */        sw $t8, ($s0)
  /* 022D4C 8002214C 8E710000 */        lw $s1, ($s3) # D_800465B0 + 0
  /* 022D50 80022150 3C04FFFF */       lui $a0, (0xFFFF00FF >> 16) # 4294902015
  /* 022D54 80022154 348400FF */       ori $a0, $a0, (0xFFFF00FF & 0xFFFF) # 4294902015
  /* 022D58 80022158 26390008 */     addiu $t9, $s1, 8
  /* 022D5C 8002215C AE790000 */        sw $t9, ($s3) # D_800465B0 + 0
  /* 022D60 80022160 0C001B5C */       jal rgba32_to_fill_color
  /* 022D64 80022164 AE280000 */        sw $t0, ($s1)
  /* 022D68 80022168 AE220004 */        sw $v0, 4($s1)
  /* 022D6C 8002216C 3C118004 */       lui $s1, %hi(D_80045470)
  /* 022D70 80022170 26315470 */     addiu $s1, $s1, %lo(D_80045470)
  /* 022D74 80022174 00009025 */        or $s2, $zero, $zero
  /* 022D78 80022178 96290000 */       lhu $t1, ($s1) # D_80045470 + 0
  .L8002217C:
  /* 022D7C 8002217C 240A0001 */     addiu $t2, $zero, 1
  /* 022D80 80022180 024A5804 */      sllv $t3, $t2, $s2
  /* 022D84 80022184 012B6024 */       and $t4, $t1, $t3
  /* 022D88 80022188 1180000B */      beqz $t4, .L800221B8
  /* 022D8C 8002218C 00121080 */       sll $v0, $s2, 2
  /* 022D90 80022190 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022D94 80022194 240D00D0 */     addiu $t5, $zero, 0xd0
  /* 022D98 80022198 AFAD0010 */        sw $t5, 0x10($sp)
  /* 022D9C 8002219C 260E0008 */     addiu $t6, $s0, 8
  /* 022DA0 800221A0 AE6E0000 */        sw $t6, ($s3) # D_800465B0 + 0
  /* 022DA4 800221A4 2445001E */     addiu $a1, $v0, 0x1e
  /* 022DA8 800221A8 240600CE */     addiu $a2, $zero, 0xce
  /* 022DAC 800221AC 24470021 */     addiu $a3, $v0, 0x21
  /* 022DB0 800221B0 0C00868D */       jal func_80021A34
  /* 022DB4 800221B4 02002025 */        or $a0, $s0, $zero
  .L800221B8:
  /* 022DB8 800221B8 26520001 */     addiu $s2, $s2, 1
  /* 022DBC 800221BC 2A410010 */      slti $at, $s2, 0x10
  /* 022DC0 800221C0 5420FFEE */      bnel $at, $zero, .L8002217C
  /* 022DC4 800221C4 96290000 */       lhu $t1, ($s1) # D_80045470 + 0
  /* 022DC8 800221C8 3C028004 */       lui $v0, %hi(D_80045470 + 8)
  /* 022DCC 800221CC 80425478 */        lb $v0, %lo(D_80045470 + 8)($v0)
  /* 022DD0 800221D0 3C038004 */       lui $v1, %hi(D_80045470 + 9)
  /* 022DD4 800221D4 80635479 */        lb $v1, %lo(D_80045470 + 9)($v1)
  /* 022DD8 800221D8 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022DDC 800221DC 00031823 */      negu $v1, $v1
  /* 022DE0 800221E0 26180008 */     addiu $t8, $s0, 8
  /* 022DE4 800221E4 AE780000 */        sw $t8, ($s3) # D_800465B0 + 0
  /* 022DE8 800221E8 02002025 */        or $a0, $s0, $zero
  /* 022DEC 800221EC 04410002 */      bgez $v0, .L800221F8
  /* 022DF0 800221F0 00400821 */      addu $at, $v0, $zero
  /* 022DF4 800221F4 24410003 */     addiu $at, $v0, 3
  .L800221F8:
  /* 022DF8 800221F8 00011083 */       sra $v0, $at, 2
  /* 022DFC 800221FC 24450027 */     addiu $a1, $v0, 0x27
  /* 022E00 80022200 04610002 */      bgez $v1, .L8002220C
  /* 022E04 80022204 00600821 */      addu $at, $v1, $zero
  /* 022E08 80022208 24610003 */     addiu $at, $v1, 3
  .L8002220C:
  /* 022E0C 8002220C 00011883 */       sra $v1, $at, 2
  /* 022E10 80022210 246F00BA */     addiu $t7, $v1, 0xba
  /* 022E14 80022214 AFAF0010 */        sw $t7, 0x10($sp)
  /* 022E18 80022218 246600B8 */     addiu $a2, $v1, 0xb8
  /* 022E1C 8002221C 0C00868D */       jal func_80021A34
  /* 022E20 80022220 24470029 */     addiu $a3, $v0, 0x29
  /* 022E24 80022224 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022E28 80022228 3C08E700 */       lui $t0, 0xe700
  /* 022E2C 8002222C 3C09F700 */       lui $t1, 0xf700
  /* 022E30 80022230 26190008 */     addiu $t9, $s0, 8
  /* 022E34 80022234 AE790000 */        sw $t9, ($s3) # D_800465B0 + 0
  /* 022E38 80022238 AE080000 */        sw $t0, ($s0)
  /* 022E3C 8002223C AE000004 */        sw $zero, 4($s0)
  /* 022E40 80022240 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022E44 80022244 3C041010 */       lui $a0, (0x101010FF >> 16) # 269488383
  /* 022E48 80022248 348410FF */       ori $a0, $a0, (0x101010FF & 0xFFFF) # 269488383
  /* 022E4C 8002224C 260A0008 */     addiu $t2, $s0, 8
  /* 022E50 80022250 AE6A0000 */        sw $t2, ($s3) # D_800465B0 + 0
  /* 022E54 80022254 AE090000 */        sw $t1, ($s0)
  /* 022E58 80022258 0C001B5C */       jal rgba32_to_fill_color
  /* 022E5C 8002225C AFB00034 */        sw $s0, 0x34($sp)
  /* 022E60 80022260 8FA30034 */        lw $v1, 0x34($sp)
  /* 022E64 80022264 2411001E */     addiu $s1, $zero, 0x1e
  /* 022E68 80022268 2412015E */     addiu $s2, $zero, 0x15e
  /* 022E6C 8002226C AC620004 */        sw $v0, 4($v1)
  /* 022E70 80022270 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  .L80022274:
  /* 022E74 80022274 240B00DC */     addiu $t3, $zero, 0xdc
  /* 022E78 80022278 AFAB0010 */        sw $t3, 0x10($sp)
  /* 022E7C 8002227C 260C0008 */     addiu $t4, $s0, 8
  /* 022E80 80022280 AE6C0000 */        sw $t4, ($s3) # D_800465B0 + 0
  /* 022E84 80022284 02202825 */        or $a1, $s1, $zero
  /* 022E88 80022288 240600D2 */     addiu $a2, $zero, 0xd2
  /* 022E8C 8002228C 02203825 */        or $a3, $s1, $zero
  /* 022E90 80022290 0C00868D */       jal func_80021A34
  /* 022E94 80022294 02002025 */        or $a0, $s0, $zero
  /* 022E98 80022298 26310040 */     addiu $s1, $s1, 0x40
  /* 022E9C 8002229C 5632FFF5 */      bnel $s1, $s2, .L80022274
  /* 022EA0 800222A0 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022EA4 800222A4 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022EA8 800222A8 240D00CD */     addiu $t5, $zero, 0xcd
  /* 022EAC 800222AC AFAD0010 */        sw $t5, 0x10($sp)
  /* 022EB0 800222B0 260E0008 */     addiu $t6, $s0, 8
  /* 022EB4 800222B4 AE6E0000 */        sw $t6, ($s3) # D_800465B0 + 0
  /* 022EB8 800222B8 24050028 */     addiu $a1, $zero, 0x28
  /* 022EBC 800222BC 240600A5 */     addiu $a2, $zero, 0xa5
  /* 022EC0 800222C0 24070028 */     addiu $a3, $zero, 0x28
  /* 022EC4 800222C4 0C00868D */       jal func_80021A34
  /* 022EC8 800222C8 02002025 */        or $a0, $s0, $zero
  /* 022ECC 800222CC 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022ED0 800222D0 240F00B9 */     addiu $t7, $zero, 0xb9
  /* 022ED4 800222D4 AFAF0010 */        sw $t7, 0x10($sp)
  /* 022ED8 800222D8 26180008 */     addiu $t8, $s0, 8
  /* 022EDC 800222DC AE780000 */        sw $t8, ($s3) # D_800465B0 + 0
  /* 022EE0 800222E0 24050014 */     addiu $a1, $zero, 0x14
  /* 022EE4 800222E4 240600B9 */     addiu $a2, $zero, 0xb9
  /* 022EE8 800222E8 2407003C */     addiu $a3, $zero, 0x3c
  /* 022EEC 800222EC 0C00868D */       jal func_80021A34
  /* 022EF0 800222F0 02002025 */        or $a0, $s0, $zero
  /* 022EF4 800222F4 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022EF8 800222F8 3C08E700 */       lui $t0, 0xe700
  /* 022EFC 800222FC 3C09E300 */       lui $t1, (0xE3000A01 >> 16) # 3808430593
  /* 022F00 80022300 26190008 */     addiu $t9, $s0, 8
  /* 022F04 80022304 AE790000 */        sw $t9, ($s3) # D_800465B0 + 0
  /* 022F08 80022308 AE000004 */        sw $zero, 4($s0)
  /* 022F0C 8002230C AE080000 */        sw $t0, ($s0)
  /* 022F10 80022310 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022F14 80022314 35290A01 */       ori $t1, $t1, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 022F18 80022318 3C0CE200 */       lui $t4, (0xE200001C >> 16) # 3791650844
  /* 022F1C 8002231C 260A0008 */     addiu $t2, $s0, 8
  /* 022F20 80022320 AE6A0000 */        sw $t2, ($s3) # D_800465B0 + 0
  /* 022F24 80022324 AE000004 */        sw $zero, 4($s0)
  /* 022F28 80022328 AE090000 */        sw $t1, ($s0)
  /* 022F2C 8002232C 8E700000 */        lw $s0, ($s3) # D_800465B0 + 0
  /* 022F30 80022330 3C0D0055 */       lui $t5, (0x552078 >> 16) # 5578872
  /* 022F34 80022334 35AD2078 */       ori $t5, $t5, (0x552078 & 0xFFFF) # 5578872
  /* 022F38 80022338 260B0008 */     addiu $t3, $s0, 8
  /* 022F3C 8002233C AE6B0000 */        sw $t3, ($s3) # D_800465B0 + 0
  /* 022F40 80022340 358C001C */       ori $t4, $t4, (0xE200001C & 0xFFFF) # 3791650844
  /* 022F44 80022344 AE0C0000 */        sw $t4, ($s0)
  /* 022F48 80022348 AE0D0004 */        sw $t5, 4($s0)
  /* 022F4C 8002234C 8FBF002C */        lw $ra, 0x2c($sp)
  /* 022F50 80022350 8FB30028 */        lw $s3, 0x28($sp)
  /* 022F54 80022354 8FB20024 */        lw $s2, 0x24($sp)
  /* 022F58 80022358 8FB10020 */        lw $s1, 0x20($sp)
  /* 022F5C 8002235C 8FB0001C */        lw $s0, 0x1c($sp)
  /* 022F60 80022360 03E00008 */        jr $ra
  /* 022F64 80022364 27BD0090 */     addiu $sp, $sp, 0x90

glabel func_80022368
  /* 022F68 80022368 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 022F6C 8002236C AFBF003C */        sw $ra, 0x3c($sp)
  /* 022F70 80022370 AFA40040 */        sw $a0, 0x40($sp)
  /* 022F74 80022374 AFA50044 */        sw $a1, 0x44($sp)
  /* 022F78 80022378 AFA60048 */        sw $a2, 0x48($sp)
  /* 022F7C 8002237C 0C002C66 */       jal func_8000B198
  /* 022F80 80022380 2404FFFE */     addiu $a0, $zero, -2
  /* 022F84 80022384 10400003 */      beqz $v0, .L80022394
  /* 022F88 80022388 2404FFFE */     addiu $a0, $zero, -2
  /* 022F8C 8002238C 10000015 */         b .L800223E4
  /* 022F90 80022390 00001025 */        or $v0, $zero, $zero
  .L80022394:
  /* 022F94 80022394 8FAF0048 */        lw $t7, 0x48($sp)
  /* 022F98 80022398 3C0E8002 */       lui $t6, %hi(func_80021B30)
  /* 022F9C 8002239C 25CE1B30 */     addiu $t6, $t6, %lo(func_80021B30)
  /* 022FA0 800223A0 3C058001 */       lui $a1, %hi(func_8000B1C4)
  /* 022FA4 800223A4 24180000 */     addiu $t8, $zero, 0
  /* 022FA8 800223A8 24190000 */     addiu $t9, $zero, 0
  /* 022FAC 800223AC AFB9001C */        sw $t9, 0x1c($sp)
  /* 022FB0 800223B0 AFB80018 */        sw $t8, 0x18($sp)
  /* 022FB4 800223B4 24A5B1C4 */     addiu $a1, $a1, %lo(func_8000B1C4)
  /* 022FB8 800223B8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 022FBC 800223BC 8FA60040 */        lw $a2, 0x40($sp)
  /* 022FC0 800223C0 8FA70044 */        lw $a3, 0x44($sp)
  /* 022FC4 800223C4 AFA00020 */        sw $zero, 0x20($sp)
  /* 022FC8 800223C8 AFA00024 */        sw $zero, 0x24($sp)
  /* 022FCC 800223CC AFA00028 */        sw $zero, 0x28($sp)
  /* 022FD0 800223D0 AFA0002C */        sw $zero, 0x2c($sp)
  /* 022FD4 800223D4 AFA00030 */        sw $zero, 0x30($sp)
  /* 022FD8 800223D8 AFA00034 */        sw $zero, 0x34($sp)
  /* 022FDC 800223DC 0C002E4F */       jal func_8000B93C
  /* 022FE0 800223E0 AFAF0014 */        sw $t7, 0x14($sp)
  .L800223E4:
  /* 022FE4 800223E4 8FBF003C */        lw $ra, 0x3c($sp)
  /* 022FE8 800223E8 27BD0040 */     addiu $sp, $sp, 0x40
  /* 022FEC 800223EC 03E00008 */        jr $ra
  /* 022FF0 800223F0 00000000 */       nop 

glabel func_800223F4
  /* 022FF4 800223F4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 022FF8 800223F8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 022FFC 800223FC AFB00018 */        sw $s0, 0x18($sp)
  /* 023000 80022400 00E08025 */        or $s0, $a3, $zero
  /* 023004 80022404 AFA40020 */        sw $a0, 0x20($sp)
  /* 023008 80022408 AFA50024 */        sw $a1, 0x24($sp)
  /* 02300C 8002240C 0C00E58C */       jal osViGetCurrentFramebuffer
  /* 023010 80022410 AFA60028 */        sw $a2, 0x28($sp)
  /* 023014 80022414 3C058004 */       lui $a1, %hi(gCurrScreenWidth)
  /* 023018 80022418 8CA56678 */        lw $a1, %lo(gCurrScreenWidth)($a1)
  /* 02301C 8002241C 8FAE0024 */        lw $t6, 0x24($sp)
  /* 023020 80022420 8FA90020 */        lw $t1, 0x20($sp)
  /* 023024 80022424 8FA60028 */        lw $a2, 0x28($sp)
  /* 023028 80022428 00AE0019 */     multu $a1, $t6
  /* 02302C 8002242C 00095040 */       sll $t2, $t1, 1
  /* 023030 80022430 00004025 */        or $t0, $zero, $zero
  /* 023034 80022434 24040001 */     addiu $a0, $zero, 1
  /* 023038 80022438 00007812 */      mflo $t7
  /* 02303C 8002243C 000FC040 */       sll $t8, $t7, 1
  /* 023040 80022440 0058C821 */      addu $t9, $v0, $t8
  /* 023044 80022444 1A000019 */      blez $s0, .L800224AC
  /* 023048 80022448 032A1821 */      addu $v1, $t9, $t2
  .L8002244C:
  /* 02304C 8002244C 18C00012 */      blez $a2, .L80022498
  /* 023050 80022450 00001025 */        or $v0, $zero, $zero
  /* 023054 80022454 30C70003 */      andi $a3, $a2, 3
  /* 023058 80022458 10E00006 */      beqz $a3, .L80022474
  /* 02305C 8002245C 00E02825 */        or $a1, $a3, $zero
  .L80022460:
  /* 023060 80022460 24420001 */     addiu $v0, $v0, 1
  /* 023064 80022464 A4640000 */        sh $a0, ($v1)
  /* 023068 80022468 14A2FFFD */       bne $a1, $v0, .L80022460
  /* 02306C 8002246C 24630002 */     addiu $v1, $v1, 2
  /* 023070 80022470 10460007 */       beq $v0, $a2, .L80022490
  .L80022474:
  /* 023074 80022474 24420004 */     addiu $v0, $v0, 4
  /* 023078 80022478 A4640002 */        sh $a0, 2($v1)
  /* 02307C 8002247C A4640004 */        sh $a0, 4($v1)
  /* 023080 80022480 A4640006 */        sh $a0, 6($v1)
  /* 023084 80022484 24630008 */     addiu $v1, $v1, 8
  /* 023088 80022488 1446FFFA */       bne $v0, $a2, .L80022474
  /* 02308C 8002248C A464FFF8 */        sh $a0, -8($v1)
  .L80022490:
  /* 023090 80022490 3C058004 */       lui $a1, %hi(gCurrScreenWidth)
  /* 023094 80022494 8CA56678 */        lw $a1, %lo(gCurrScreenWidth)($a1)
  .L80022498:
  /* 023098 80022498 00A65823 */      subu $t3, $a1, $a2
  /* 02309C 8002249C 25080001 */     addiu $t0, $t0, 1
  /* 0230A0 800224A0 000B6040 */       sll $t4, $t3, 1
  /* 0230A4 800224A4 1510FFE9 */       bne $t0, $s0, .L8002244C
  /* 0230A8 800224A8 006C1821 */      addu $v1, $v1, $t4
  .L800224AC:
  /* 0230AC 800224AC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0230B0 800224B0 8FB00018 */        lw $s0, 0x18($sp)
  /* 0230B4 800224B4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0230B8 800224B8 03E00008 */        jr $ra
  /* 0230BC 800224BC 00000000 */       nop 

glabel func_800224C0
  /* 0230C0 800224C0 24010005 */     addiu $at, $zero, 5
  /* 0230C4 800224C4 00C1001A */       div $zero, $a2, $at
  /* 0230C8 800224C8 00007812 */      mflo $t7
  /* 0230CC 800224CC 240B0007 */     addiu $t3, $zero, 7
  /* 0230D0 800224D0 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 0230D4 800224D4 01EB0019 */     multu $t7, $t3
  /* 0230D8 800224D8 3C0D8004 */       lui $t5, %hi(D_8003CEFC)
  /* 0230DC 800224DC 25ADCEFC */     addiu $t5, $t5, %lo(D_8003CEFC)
  /* 0230E0 800224E0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0230E4 800224E4 AFA40030 */        sw $a0, 0x30($sp)
  /* 0230E8 800224E8 AFA50034 */        sw $a1, 0x34($sp)
  /* 0230EC 800224EC AFA60038 */        sw $a2, 0x38($sp)
  /* 0230F0 800224F0 0000C012 */      mflo $t8
  /* 0230F4 800224F4 0018C880 */       sll $t9, $t8, 2
  /* 0230F8 800224F8 032D3821 */      addu $a3, $t9, $t5
  /* 0230FC 800224FC 0C00E58C */       jal osViGetCurrentFramebuffer
  /* 023100 80022500 AFA7001C */        sw $a3, 0x1c($sp)
  /* 023104 80022504 3C0C8004 */       lui $t4, %hi(gCurrScreenWidth)
  /* 023108 80022508 258C6678 */     addiu $t4, $t4, %lo(gCurrScreenWidth)
  /* 02310C 8002250C 8D8E0000 */        lw $t6, ($t4) # gCurrScreenWidth + 0
  /* 023110 80022510 8FAF0034 */        lw $t7, 0x34($sp)
  /* 023114 80022514 24010005 */     addiu $at, $zero, 5
  /* 023118 80022518 8FA7001C */        lw $a3, 0x1c($sp)
  /* 02311C 8002251C 01CF0019 */     multu $t6, $t7
  /* 023120 80022520 8FAE0030 */        lw $t6, 0x30($sp)
  /* 023124 80022524 240B0007 */     addiu $t3, $zero, 7
  /* 023128 80022528 00004025 */        or $t0, $zero, $zero
  /* 02312C 8002252C 000E7840 */       sll $t7, $t6, 1
  /* 023130 80022530 24060001 */     addiu $a2, $zero, 1
  /* 023134 80022534 3405FFFF */       ori $a1, $zero, 0xffff
  /* 023138 80022538 0000C012 */      mflo $t8
  /* 02313C 8002253C 0018C840 */       sll $t9, $t8, 1
  /* 023140 80022540 8FB80038 */        lw $t8, 0x38($sp)
  /* 023144 80022544 00596821 */      addu $t5, $v0, $t9
  /* 023148 80022548 01AF1821 */      addu $v1, $t5, $t7
  /* 02314C 8002254C 0301001A */       div $zero, $t8, $at
  /* 023150 80022550 0000C810 */      mfhi $t9
  /* 023154 80022554 00197080 */       sll $t6, $t9, 2
  /* 023158 80022558 01D97023 */      subu $t6, $t6, $t9
  /* 02315C 8002255C 000E7040 */       sll $t6, $t6, 1
  /* 023160 80022560 3C0D8000 */       lui $t5, 0x8000
  /* 023164 80022564 01CD4806 */      srlv $t1, $t5, $t6
  /* 023168 80022568 00095042 */       srl $t2, $t1, 1
  .L8002256C:
  /* 02316C 8002256C 8CE40000 */        lw $a0, ($a3)
  /* 023170 80022570 24E70004 */     addiu $a3, $a3, 4
  /* 023174 80022574 01401025 */        or $v0, $t2, $zero
  /* 023178 80022578 01247824 */       and $t7, $t1, $a0
  /* 02317C 8002257C 11E00003 */      beqz $t7, .L8002258C
  /* 023180 80022580 0144C024 */       and $t8, $t2, $a0
  /* 023184 80022584 10000002 */         b .L80022590
  /* 023188 80022588 A4650000 */        sh $a1, ($v1)
  .L8002258C:
  /* 02318C 8002258C A4660000 */        sh $a2, ($v1)
  .L80022590:
  /* 023190 80022590 13000003 */      beqz $t8, .L800225A0
  /* 023194 80022594 24630002 */     addiu $v1, $v1, 2
  /* 023198 80022598 10000002 */         b .L800225A4
  /* 02319C 8002259C A4650000 */        sh $a1, ($v1)
  .L800225A0:
  /* 0231A0 800225A0 A4660000 */        sh $a2, ($v1)
  .L800225A4:
  /* 0231A4 800225A4 00021042 */       srl $v0, $v0, 1
  /* 0231A8 800225A8 0044C824 */       and $t9, $v0, $a0
  /* 0231AC 800225AC 13200003 */      beqz $t9, .L800225BC
  /* 0231B0 800225B0 24630002 */     addiu $v1, $v1, 2
  /* 0231B4 800225B4 10000002 */         b .L800225C0
  /* 0231B8 800225B8 A4650000 */        sh $a1, ($v1)
  .L800225BC:
  /* 0231BC 800225BC A4660000 */        sh $a2, ($v1)
  .L800225C0:
  /* 0231C0 800225C0 00021042 */       srl $v0, $v0, 1
  /* 0231C4 800225C4 00446824 */       and $t5, $v0, $a0
  /* 0231C8 800225C8 11A00003 */      beqz $t5, .L800225D8
  /* 0231CC 800225CC 24630002 */     addiu $v1, $v1, 2
  /* 0231D0 800225D0 10000002 */         b .L800225DC
  /* 0231D4 800225D4 A4650000 */        sh $a1, ($v1)
  .L800225D8:
  /* 0231D8 800225D8 A4660000 */        sh $a2, ($v1)
  .L800225DC:
  /* 0231DC 800225DC 00021042 */       srl $v0, $v0, 1
  /* 0231E0 800225E0 00447024 */       and $t6, $v0, $a0
  /* 0231E4 800225E4 11C00003 */      beqz $t6, .L800225F4
  /* 0231E8 800225E8 24630002 */     addiu $v1, $v1, 2
  /* 0231EC 800225EC 10000002 */         b .L800225F8
  /* 0231F0 800225F0 A4650000 */        sh $a1, ($v1)
  .L800225F4:
  /* 0231F4 800225F4 A4660000 */        sh $a2, ($v1)
  .L800225F8:
  /* 0231F8 800225F8 00021042 */       srl $v0, $v0, 1
  /* 0231FC 800225FC 00447824 */       and $t7, $v0, $a0
  /* 023200 80022600 11E00003 */      beqz $t7, .L80022610
  /* 023204 80022604 24630002 */     addiu $v1, $v1, 2
  /* 023208 80022608 10000002 */         b .L80022614
  /* 02320C 8002260C A4650000 */        sh $a1, ($v1)
  .L80022610:
  /* 023210 80022610 A4660000 */        sh $a2, ($v1)
  .L80022614:
  /* 023214 80022614 8D980000 */        lw $t8, ($t4) # gCurrScreenWidth + 0
  /* 023218 80022618 24630002 */     addiu $v1, $v1, 2
  /* 02321C 8002261C 25080001 */     addiu $t0, $t0, 1
  /* 023220 80022620 0018C840 */       sll $t9, $t8, 1
  /* 023224 80022624 00791821 */      addu $v1, $v1, $t9
  /* 023228 80022628 150BFFD0 */       bne $t0, $t3, .L8002256C
  /* 02322C 8002262C 2463FFF4 */     addiu $v1, $v1, -0xc
  /* 023230 80022630 8FBF0014 */        lw $ra, 0x14($sp)
  /* 023234 80022634 27BD0030 */     addiu $sp, $sp, 0x30
  /* 023238 80022638 03E00008 */        jr $ra
  /* 02323C 8002263C 00000000 */       nop 

glabel func_80022640
  /* 023240 80022640 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 023244 80022644 AFBF0014 */        sw $ra, 0x14($sp)
  /* 023248 80022648 0C00D0F8 */       jal memcpy
  /* 02324C 8002264C AFA60020 */        sw $a2, 0x20($sp)
  /* 023250 80022650 8FBF0014 */        lw $ra, 0x14($sp)
  /* 023254 80022654 8FAE0020 */        lw $t6, 0x20($sp)
  /* 023258 80022658 27BD0018 */     addiu $sp, $sp, 0x18
  /* 02325C 8002265C 03E00008 */        jr $ra
  /* 023260 80022660 004E1021 */      addu $v0, $v0, $t6

glabel func_80022664
  /* 023264 80022664 27BDFEC0 */     addiu $sp, $sp, -0x140
  /* 023268 80022668 AFB2001C */        sw $s2, 0x1c($sp)
  /* 02326C 8002266C AFA7014C */        sw $a3, 0x14c($sp)
  /* 023270 80022670 00809025 */        or $s2, $a0, $zero
  /* 023274 80022674 AFB50028 */        sw $s5, 0x28($sp)
  /* 023278 80022678 AFB30020 */        sw $s3, 0x20($sp)
  /* 02327C 8002267C 03A03825 */        or $a3, $sp, $zero
  /* 023280 80022680 27B30034 */     addiu $s3, $sp, 0x34
  /* 023284 80022684 00A0A825 */        or $s5, $a1, $zero
  /* 023288 80022688 AFBF002C */        sw $ra, 0x2c($sp)
  /* 02328C 8002268C 24E7014F */     addiu $a3, $a3, 0x14f
  /* 023290 80022690 3C048002 */       lui $a0, %hi(func_80022640)
  /* 023294 80022694 2401FFFC */     addiu $at, $zero, -4
  /* 023298 80022698 AFB40024 */        sw $s4, 0x24($sp)
  /* 02329C 8002269C AFB10018 */        sw $s1, 0x18($sp)
  /* 0232A0 800226A0 AFB00014 */        sw $s0, 0x14($sp)
  /* 0232A4 800226A4 AFA60148 */        sw $a2, 0x148($sp)
  /* 0232A8 800226A8 00E13824 */       and $a3, $a3, $at
  /* 0232AC 800226AC 24842640 */     addiu $a0, $a0, %lo(func_80022640)
  /* 0232B0 800226B0 0C00CF18 */       jal _Printf
  /* 0232B4 800226B4 02602825 */        or $a1, $s3, $zero
  /* 0232B8 800226B8 18400013 */      blez $v0, .L80022708
  /* 0232BC 800226BC 00408025 */        or $s0, $v0, $zero
  /* 0232C0 800226C0 18400011 */      blez $v0, .L80022708
  /* 0232C4 800226C4 02608825 */        or $s1, $s3, $zero
  /* 0232C8 800226C8 3C138004 */       lui $s3, %hi(D_8003CE7C)
  /* 0232CC 800226CC 2673CE7C */     addiu $s3, $s3, %lo(D_8003CE7C)
  /* 0232D0 800226D0 241400FF */     addiu $s4, $zero, 0xff
  .L800226D4:
  /* 0232D4 800226D4 922E0000 */       lbu $t6, ($s1)
  /* 0232D8 800226D8 02402025 */        or $a0, $s2, $zero
  /* 0232DC 800226DC 31CF007F */      andi $t7, $t6, 0x7f
  /* 0232E0 800226E0 026FC021 */      addu $t8, $s3, $t7
  /* 0232E4 800226E4 93060000 */       lbu $a2, ($t8)
  /* 0232E8 800226E8 50D40004 */      beql $a2, $s4, .L800226FC
  /* 0232EC 800226EC 2610FFFF */     addiu $s0, $s0, -1
  /* 0232F0 800226F0 0C008930 */       jal func_800224C0
  /* 0232F4 800226F4 02A02825 */        or $a1, $s5, $zero
  /* 0232F8 800226F8 2610FFFF */     addiu $s0, $s0, -1
  .L800226FC:
  /* 0232FC 800226FC 26310001 */     addiu $s1, $s1, 1
  /* 023300 80022700 1600FFF4 */      bnez $s0, .L800226D4
  /* 023304 80022704 26520006 */     addiu $s2, $s2, 6
  .L80022708:
  /* 023308 80022708 8FBF002C */        lw $ra, 0x2c($sp)
  /* 02330C 8002270C 8FB00014 */        lw $s0, 0x14($sp)
  /* 023310 80022710 8FB10018 */        lw $s1, 0x18($sp)
  /* 023314 80022714 8FB2001C */        lw $s2, 0x1c($sp)
  /* 023318 80022718 8FB30020 */        lw $s3, 0x20($sp)
  /* 02331C 8002271C 8FB40024 */        lw $s4, 0x24($sp)
  /* 023320 80022720 8FB50028 */        lw $s5, 0x28($sp)
  /* 023324 80022724 03E00008 */        jr $ra
  /* 023328 80022728 27BD0140 */     addiu $sp, $sp, 0x140

glabel func_8002272C
  /* 02332C 8002272C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 023330 80022730 AFBF0014 */        sw $ra, 0x14($sp)
  /* 023334 80022734 AFA40020 */        sw $a0, 0x20($sp)
  /* 023338 80022738 00802825 */        or $a1, $a0, $zero
  /* 02333C 8002273C 000427C3 */       sra $a0, $a0, 0x1f
  /* 023340 80022740 24060000 */     addiu $a2, $zero, 0
  /* 023344 80022744 0C00C2C6 */       jal __ll_mul
  /* 023348 80022748 240703E8 */     addiu $a3, $zero, 0x3e8
  /* 02334C 8002274C 00402025 */        or $a0, $v0, $zero
  /* 023350 80022750 00602825 */        or $a1, $v1, $zero
  /* 023354 80022754 24060000 */     addiu $a2, $zero, 0
  /* 023358 80022758 0C00C2C6 */       jal __ll_mul
  /* 02335C 8002275C 24070BB8 */     addiu $a3, $zero, 0xbb8
  /* 023360 80022760 00402025 */        or $a0, $v0, $zero
  /* 023364 80022764 00602825 */        or $a1, $v1, $zero
  /* 023368 80022768 24060000 */     addiu $a2, $zero, 0
  /* 02336C 8002276C 0C00C286 */       jal __ull_div
  /* 023370 80022770 24070040 */     addiu $a3, $zero, 0x40
  /* 023374 80022774 AFA20018 */        sw $v0, 0x18($sp)
  /* 023378 80022778 AFA3001C */        sw $v1, 0x1c($sp)
  /* 02337C 8002277C 24040000 */     addiu $a0, $zero, 0
  /* 023380 80022780 0C00D790 */       jal osSetTime
  /* 023384 80022784 24050000 */     addiu $a1, $zero, 0
  /* 023388 80022788 0C00D354 */       jal osGetTime
  /* 02338C 8002278C 00000000 */       nop 
  /* 023390 80022790 8FB80018 */        lw $t8, 0x18($sp)
  /* 023394 80022794 8FB9001C */        lw $t9, 0x1c($sp)
  /* 023398 80022798 0302082B */      sltu $at, $t8, $v0
  /* 02339C 8002279C 14200011 */      bnez $at, .L800227E4
  /* 0233A0 800227A0 0058082B */      sltu $at, $v0, $t8
  /* 0233A4 800227A4 14200003 */      bnez $at, .L800227B4
  /* 0233A8 800227A8 0079082B */      sltu $at, $v1, $t9
  /* 0233AC 800227AC 5020000E */      beql $at, $zero, .L800227E8
  /* 0233B0 800227B0 8FBF0014 */        lw $ra, 0x14($sp)
  .L800227B4:
  /* 0233B4 800227B4 0C00D354 */       jal osGetTime
  /* 0233B8 800227B8 00000000 */       nop 
  /* 0233BC 800227BC 8FA80018 */        lw $t0, 0x18($sp)
  /* 0233C0 800227C0 8FA9001C */        lw $t1, 0x1c($sp)
  /* 0233C4 800227C4 0048082B */      sltu $at, $v0, $t0
  /* 0233C8 800227C8 1420FFFA */      bnez $at, .L800227B4
  /* 0233CC 800227CC 00000000 */       nop 
  /* 0233D0 800227D0 0102082B */      sltu $at, $t0, $v0
  /* 0233D4 800227D4 14200003 */      bnez $at, .L800227E4
  /* 0233D8 800227D8 0069082B */      sltu $at, $v1, $t1
  /* 0233DC 800227DC 1420FFF5 */      bnez $at, .L800227B4
  /* 0233E0 800227E0 00000000 */       nop 
  .L800227E4:
  /* 0233E4 800227E4 8FBF0014 */        lw $ra, 0x14($sp)
  .L800227E8:
  /* 0233E8 800227E8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0233EC 800227EC 03E00008 */        jr $ra
  /* 0233F0 800227F0 00000000 */       nop 

glabel func_800227F4
  /* 0233F4 800227F4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0233F8 800227F8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0233FC 800227FC AFA60028 */        sw $a2, 0x28($sp)
  /* 023400 80022800 AFA7002C */        sw $a3, 0x2c($sp)
  /* 023404 80022804 8CE20000 */        lw $v0, ($a3)
  /* 023408 80022808 3C017F80 */       lui $at, 0x7f80
  /* 02340C 8002280C 00411824 */       and $v1, $v0, $at
  /* 023410 80022810 00031DC2 */       srl $v1, $v1, 0x17
  /* 023414 80022814 2463FF81 */     addiu $v1, $v1, -0x7f
  /* 023418 80022818 2861FF82 */      slti $at, $v1, -0x7e
  /* 02341C 8002281C 14200003 */      bnez $at, .L8002282C
  /* 023420 80022820 28610080 */      slti $at, $v1, 0x80
  /* 023424 80022824 54200004 */      bnel $at, $zero, .L80022838
  /* 023428 80022828 8FAF002C */        lw $t7, 0x2c($sp)
  .L8002282C:
  /* 02342C 8002282C 1440000B */      bnez $v0, .L8002285C
  /* 023430 80022830 3C068004 */       lui $a2, 0x8004
  /* 023434 80022834 8FAF002C */        lw $t7, 0x2c($sp)
  .L80022838:
  /* 023438 80022838 3C068004 */       lui $a2, %hi(D_8003E624)
  /* 02343C 8002283C 24C6E624 */     addiu $a2, $a2, %lo(D_8003E624)
  /* 023440 80022840 C5E40000 */      lwc1 $f4, ($t7)
  /* 023444 80022844 8FA70028 */        lw $a3, 0x28($sp)
  /* 023448 80022848 460021A1 */   cvt.d.s $f6, $f4
  /* 02344C 8002284C 0C008999 */       jal func_80022664
  /* 023450 80022850 F7A60010 */      sdc1 $f6, 0x10($sp)
  /* 023454 80022854 10000006 */         b .L80022870
  /* 023458 80022858 8FBF001C */        lw $ra, 0x1c($sp)
  .L8002285C:
  /* 02345C 8002285C 24C6E630 */     addiu $a2, $a2, -0x19d0
  /* 023460 80022860 8FA70028 */        lw $a3, 0x28($sp)
  /* 023464 80022864 0C008999 */       jal func_80022664
  /* 023468 80022868 AFA20010 */        sw $v0, 0x10($sp)
  /* 02346C 8002286C 8FBF001C */        lw $ra, 0x1c($sp)
  .L80022870:
  /* 023470 80022870 27BD0020 */     addiu $sp, $sp, 0x20
  /* 023474 80022874 03E00008 */        jr $ra
  /* 023478 80022878 00000000 */       nop 

glabel func_8002287C
  /* 02347C 8002287C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 023480 80022880 AFBF0014 */        sw $ra, 0x14($sp)
  /* 023484 80022884 00803825 */        or $a3, $a0, $zero
  /* 023488 80022888 3C030002 */       lui $v1, 2
  /* 02348C 8002288C 3C068004 */       lui $a2, %hi(D_8003E63C)
  /* 023490 80022890 24C6E63C */     addiu $a2, $a2, %lo(D_8003E63C)
  /* 023494 80022894 AFA30018 */        sw $v1, 0x18($sp)
  /* 023498 80022898 AFA70020 */        sw $a3, 0x20($sp)
  /* 02349C 8002289C 2404001E */     addiu $a0, $zero, 0x1e
  /* 0234A0 800228A0 0C008999 */       jal func_80022664
  /* 0234A4 800228A4 2405009B */     addiu $a1, $zero, 0x9b
  /* 0234A8 800228A8 8FA30018 */        lw $v1, 0x18($sp)
  /* 0234AC 800228AC 8FA70020 */        lw $a3, 0x20($sp)
  /* 0234B0 800228B0 00001025 */        or $v0, $zero, $zero
  /* 0234B4 800228B4 24040006 */     addiu $a0, $zero, 6
  .L800228B8:
  /* 0234B8 800228B8 00E37024 */       and $t6, $a3, $v1
  /* 0234BC 800228BC 11C0000B */      beqz $t6, .L800228EC
  /* 0234C0 800228C0 00027880 */       sll $t7, $v0, 2
  /* 0234C4 800228C4 3C078004 */       lui $a3, %hi(D_8003D044)
  /* 0234C8 800228C8 00EF3821 */      addu $a3, $a3, $t7
  /* 0234CC 800228CC 3C068004 */       lui $a2, %hi(D_8003E648)
  /* 0234D0 800228D0 24C6E648 */     addiu $a2, $a2, %lo(D_8003E648)
  /* 0234D4 800228D4 8CE7D044 */        lw $a3, %lo(D_8003D044)($a3)
  /* 0234D8 800228D8 24040084 */     addiu $a0, $zero, 0x84
  /* 0234DC 800228DC 0C008999 */       jal func_80022664
  /* 0234E0 800228E0 2405009B */     addiu $a1, $zero, 0x9b
  /* 0234E4 800228E4 10000005 */         b .L800228FC
  /* 0234E8 800228E8 8FBF0014 */        lw $ra, 0x14($sp)
  .L800228EC:
  /* 0234EC 800228EC 24420001 */     addiu $v0, $v0, 1
  /* 0234F0 800228F0 1444FFF1 */       bne $v0, $a0, .L800228B8
  /* 0234F4 800228F4 00031842 */       srl $v1, $v1, 1
  /* 0234F8 800228F8 8FBF0014 */        lw $ra, 0x14($sp)
  .L800228FC:
  /* 0234FC 800228FC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 023500 80022900 03E00008 */        jr $ra
  /* 023504 80022904 00000000 */       nop 

glabel func_80022908
  /* 023508 80022908 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 02350C 8002290C AFB20020 */        sw $s2, 0x20($sp)
  /* 023510 80022910 AFB1001C */        sw $s1, 0x1c($sp)
  /* 023514 80022914 AFB00018 */        sw $s0, 0x18($sp)
  /* 023518 80022918 3C128004 */       lui $s2, %hi(D_80045470)
  /* 02351C 8002291C 00A08025 */        or $s0, $a1, $zero
  /* 023520 80022920 00808825 */        or $s1, $a0, $zero
  /* 023524 80022924 AFBF0024 */        sw $ra, 0x24($sp)
  /* 023528 80022928 26525470 */     addiu $s2, $s2, %lo(D_80045470)
  .L8002292C:
  /* 02352C 8002292C 0C0089CB */       jal func_8002272C
  /* 023530 80022930 24040010 */     addiu $a0, $zero, 0x10
  /* 023534 80022934 0C0010C4 */       jal update_contdata
  /* 023538 80022938 00000000 */       nop 
  /* 02353C 8002293C 52000008 */      beql $s0, $zero, .L80022960
  /* 023540 80022940 964E0000 */       lhu $t6, ($s2) # D_80045470 + 0
  /* 023544 80022944 0C00E58C */       jal osViGetCurrentFramebuffer
  /* 023548 80022948 00000000 */       nop 
  /* 02354C 8002294C 50500004 */      beql $v0, $s0, .L80022960
  /* 023550 80022950 964E0000 */       lhu $t6, ($s2) # D_80045470 + 0
  /* 023554 80022954 10000005 */         b .L8002296C
  /* 023558 80022958 24020001 */     addiu $v0, $zero, 1
  /* 02355C 8002295C 964E0000 */       lhu $t6, ($s2) # D_80045470 + 0
  .L80022960:
  /* 023560 80022960 162EFFF2 */       bne $s1, $t6, .L8002292C
  /* 023564 80022964 00000000 */       nop 
  /* 023568 80022968 00001025 */        or $v0, $zero, $zero
  .L8002296C:
  /* 02356C 8002296C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 023570 80022970 8FB00018 */        lw $s0, 0x18($sp)
  /* 023574 80022974 8FB1001C */        lw $s1, 0x1c($sp)
  /* 023578 80022978 8FB20020 */        lw $s2, 0x20($sp)
  /* 02357C 8002297C 03E00008 */        jr $ra
  /* 023580 80022980 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_80022984
  /* 023584 80022984 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 023588 80022988 AFBF003C */        sw $ra, 0x3c($sp)
  /* 02358C 8002298C AFB30038 */        sw $s3, 0x38($sp)
  /* 023590 80022990 AFB20034 */        sw $s2, 0x34($sp)
  /* 023594 80022994 AFB10030 */        sw $s1, 0x30($sp)
  /* 023598 80022998 AFB0002C */        sw $s0, 0x2c($sp)
  /* 02359C 8002299C 8C900120 */        lw $s0, 0x120($a0)
  /* 0235A0 800229A0 24010017 */     addiu $at, $zero, 0x17
  /* 0235A4 800229A4 00A08825 */        or $s1, $a1, $zero
  /* 0235A8 800229A8 00108082 */       srl $s0, $s0, 2
  /* 0235AC 800229AC 3210001F */      andi $s0, $s0, 0x1f
  /* 0235B0 800229B0 00108400 */       sll $s0, $s0, 0x10
  /* 0235B4 800229B4 00108403 */       sra $s0, $s0, 0x10
  /* 0235B8 800229B8 16010002 */       bne $s0, $at, .L800229C4
  /* 0235BC 800229BC 00809025 */        or $s2, $a0, $zero
  /* 0235C0 800229C0 24100010 */     addiu $s0, $zero, 0x10
  .L800229C4:
  /* 0235C4 800229C4 2401001F */     addiu $at, $zero, 0x1f
  /* 0235C8 800229C8 16010002 */       bne $s0, $at, .L800229D4
  /* 0235CC 800229CC 00000000 */       nop 
  /* 0235D0 800229D0 24100011 */     addiu $s0, $zero, 0x11
  .L800229D4:
  /* 0235D4 800229D4 0C00E458 */       jal osWritebackDCacheAll
  /* 0235D8 800229D8 00000000 */       nop 
  /* 0235DC 800229DC 12200023 */      beqz $s1, .L80022A6C
  /* 0235E0 800229E0 24040019 */     addiu $a0, $zero, 0x19
  /* 0235E4 800229E4 24050014 */     addiu $a1, $zero, 0x14
  /* 0235E8 800229E8 2406010E */     addiu $a2, $zero, 0x10e
  /* 0235EC 800229EC 0C0088FD */       jal func_800223F4
  /* 0235F0 800229F0 24070019 */     addiu $a3, $zero, 0x19
  /* 0235F4 800229F4 00107080 */       sll $t6, $s0, 2
  /* 0235F8 800229F8 3C0F8004 */       lui $t7, %hi(D_8003CFFC)
  /* 0235FC 800229FC 01EE7821 */      addu $t7, $t7, $t6
  /* 023600 80022A00 8DEFCFFC */        lw $t7, %lo(D_8003CFFC)($t7)
  /* 023604 80022A04 3C068004 */       lui $a2, %hi(D_8003E650)
  /* 023608 80022A08 8E470014 */        lw $a3, 0x14($s2)
  /* 02360C 80022A0C 24C6E650 */     addiu $a2, $a2, %lo(D_8003E650)
  /* 023610 80022A10 2404001E */     addiu $a0, $zero, 0x1e
  /* 023614 80022A14 24050019 */     addiu $a1, $zero, 0x19
  /* 023618 80022A18 0C008999 */       jal func_80022664
  /* 02361C 80022A1C AFAF0010 */        sw $t7, 0x10($sp)
  /* 023620 80022A20 26510020 */     addiu $s1, $s2, 0x20
  /* 023624 80022A24 8E3800F8 */        lw $t8, 0xf8($s1)
  /* 023628 80022A28 8E2700FC */        lw $a3, 0xfc($s1)
  /* 02362C 80022A2C 3C068004 */       lui $a2, %hi(D_8003E660)
  /* 023630 80022A30 AFB80010 */        sw $t8, 0x10($sp)
  /* 023634 80022A34 8E390104 */        lw $t9, 0x104($s1)
  /* 023638 80022A38 24C6E660 */     addiu $a2, $a2, %lo(D_8003E660)
  /* 02363C 80022A3C 2404001E */     addiu $a0, $zero, 0x1e
  /* 023640 80022A40 24050023 */     addiu $a1, $zero, 0x23
  /* 023644 80022A44 0C008999 */       jal func_80022664
  /* 023648 80022A48 AFB90014 */        sw $t9, 0x14($sp)
  /* 02364C 80022A4C 0C00E458 */       jal osWritebackDCacheAll
  /* 023650 80022A50 00000000 */       nop 
  /* 023654 80022A54 00002025 */        or $a0, $zero, $zero
  /* 023658 80022A58 0C008A42 */       jal func_80022908
  /* 02365C 80022A5C 00002825 */        or $a1, $zero, $zero
  /* 023660 80022A60 24042030 */     addiu $a0, $zero, 0x2030
  /* 023664 80022A64 0C008A42 */       jal func_80022908
  /* 023668 80022A68 00002825 */        or $a1, $zero, $zero
  .L80022A6C:
  /* 02366C 80022A6C 3C098004 */       lui $t1, %hi(D_8003CFFC)
  /* 023670 80022A70 2529CFFC */     addiu $t1, $t1, %lo(D_8003CFFC)
  /* 023674 80022A74 00104080 */       sll $t0, $s0, 2
  /* 023678 80022A78 01099821 */      addu $s3, $t0, $t1
  /* 02367C 80022A7C 24040019 */     addiu $a0, $zero, 0x19
  /* 023680 80022A80 24050014 */     addiu $a1, $zero, 0x14
  /* 023684 80022A84 2406010E */     addiu $a2, $zero, 0x10e
  /* 023688 80022A88 240700D2 */     addiu $a3, $zero, 0xd2
  /* 02368C 80022A8C 0C0088FD */       jal func_800223F4
  /* 023690 80022A90 26510020 */     addiu $s1, $s2, 0x20
  /* 023694 80022A94 8E6A0000 */        lw $t2, ($s3)
  /* 023698 80022A98 3C068004 */       lui $a2, %hi(D_8003E680)
  /* 02369C 80022A9C 8E470014 */        lw $a3, 0x14($s2)
  /* 0236A0 80022AA0 24C6E680 */     addiu $a2, $a2, %lo(D_8003E680)
  /* 0236A4 80022AA4 2404001E */     addiu $a0, $zero, 0x1e
  /* 0236A8 80022AA8 24050019 */     addiu $a1, $zero, 0x19
  /* 0236AC 80022AAC 0C008999 */       jal func_80022664
  /* 0236B0 80022AB0 AFAA0010 */        sw $t2, 0x10($sp)
  /* 0236B4 80022AB4 8E2B00F8 */        lw $t3, 0xf8($s1)
  /* 0236B8 80022AB8 8E2700FC */        lw $a3, 0xfc($s1)
  /* 0236BC 80022ABC 3C068004 */       lui $a2, %hi(D_8003E690)
  /* 0236C0 80022AC0 AFAB0010 */        sw $t3, 0x10($sp)
  /* 0236C4 80022AC4 8E2C0104 */        lw $t4, 0x104($s1)
  /* 0236C8 80022AC8 24C6E690 */     addiu $a2, $a2, %lo(D_8003E690)
  /* 0236CC 80022ACC 2404001E */     addiu $a0, $zero, 0x1e
  /* 0236D0 80022AD0 24050023 */     addiu $a1, $zero, 0x23
  /* 0236D4 80022AD4 0C008999 */       jal func_80022664
  /* 0236D8 80022AD8 AFAC0014 */        sw $t4, 0x14($sp)
  /* 0236DC 80022ADC 8E39000C */        lw $t9, 0xc($s1)
  /* 0236E0 80022AE0 8E270004 */        lw $a3, 4($s1)
  /* 0236E4 80022AE4 3C068004 */       lui $a2, %hi(D_8003E6B0)
  /* 0236E8 80022AE8 AFB90010 */        sw $t9, 0x10($sp)
  /* 0236EC 80022AEC 8E290014 */        lw $t1, 0x14($s1)
  /* 0236F0 80022AF0 24C6E6B0 */     addiu $a2, $a2, %lo(D_8003E6B0)
  /* 0236F4 80022AF4 2404001E */     addiu $a0, $zero, 0x1e
  /* 0236F8 80022AF8 24050032 */     addiu $a1, $zero, 0x32
  /* 0236FC 80022AFC 0C008999 */       jal func_80022664
  /* 023700 80022B00 AFA90014 */        sw $t1, 0x14($sp)
  /* 023704 80022B04 8E2F0024 */        lw $t7, 0x24($s1)
  /* 023708 80022B08 8E27001C */        lw $a3, 0x1c($s1)
  /* 02370C 80022B0C 3C068004 */       lui $a2, %hi(D_8003E6D0)
  /* 023710 80022B10 AFAF0010 */        sw $t7, 0x10($sp)
  /* 023714 80022B14 8E39002C */        lw $t9, 0x2c($s1)
  /* 023718 80022B18 24C6E6D0 */     addiu $a2, $a2, %lo(D_8003E6D0)
  /* 02371C 80022B1C 2404001E */     addiu $a0, $zero, 0x1e
  /* 023720 80022B20 2405003C */     addiu $a1, $zero, 0x3c
  /* 023724 80022B24 0C008999 */       jal func_80022664
  /* 023728 80022B28 AFB90014 */        sw $t9, 0x14($sp)
  /* 02372C 80022B2C 8E2D003C */        lw $t5, 0x3c($s1)
  /* 023730 80022B30 8E270034 */        lw $a3, 0x34($s1)
  /* 023734 80022B34 3C068004 */       lui $a2, %hi(D_8003E6F0)
  /* 023738 80022B38 AFAD0010 */        sw $t5, 0x10($sp)
  /* 02373C 80022B3C 8E2F0044 */        lw $t7, 0x44($s1)
  /* 023740 80022B40 24C6E6F0 */     addiu $a2, $a2, %lo(D_8003E6F0)
  /* 023744 80022B44 2404001E */     addiu $a0, $zero, 0x1e
  /* 023748 80022B48 24050046 */     addiu $a1, $zero, 0x46
  /* 02374C 80022B4C 0C008999 */       jal func_80022664
  /* 023750 80022B50 AFAF0014 */        sw $t7, 0x14($sp)
  /* 023754 80022B54 8E2B0054 */        lw $t3, 0x54($s1)
  /* 023758 80022B58 8E27004C */        lw $a3, 0x4c($s1)
  /* 02375C 80022B5C 3C068004 */       lui $a2, %hi(D_8003E710)
  /* 023760 80022B60 AFAB0010 */        sw $t3, 0x10($sp)
  /* 023764 80022B64 8E2D005C */        lw $t5, 0x5c($s1)
  /* 023768 80022B68 24C6E710 */     addiu $a2, $a2, %lo(D_8003E710)
  /* 02376C 80022B6C 2404001E */     addiu $a0, $zero, 0x1e
  /* 023770 80022B70 24050050 */     addiu $a1, $zero, 0x50
  /* 023774 80022B74 0C008999 */       jal func_80022664
  /* 023778 80022B78 AFAD0014 */        sw $t5, 0x14($sp)
  /* 02377C 80022B7C 8E29006C */        lw $t1, 0x6c($s1)
  /* 023780 80022B80 8E270064 */        lw $a3, 0x64($s1)
  /* 023784 80022B84 3C068004 */       lui $a2, %hi(D_8003E730)
  /* 023788 80022B88 AFA90010 */        sw $t1, 0x10($sp)
  /* 02378C 80022B8C 8E2B0074 */        lw $t3, 0x74($s1)
  /* 023790 80022B90 24C6E730 */     addiu $a2, $a2, %lo(D_8003E730)
  /* 023794 80022B94 2404001E */     addiu $a0, $zero, 0x1e
  /* 023798 80022B98 2405005A */     addiu $a1, $zero, 0x5a
  /* 02379C 80022B9C 0C008999 */       jal func_80022664
  /* 0237A0 80022BA0 AFAB0014 */        sw $t3, 0x14($sp)
  /* 0237A4 80022BA4 8E390084 */        lw $t9, 0x84($s1)
  /* 0237A8 80022BA8 8E27007C */        lw $a3, 0x7c($s1)
  /* 0237AC 80022BAC 3C068004 */       lui $a2, %hi(D_8003E750)
  /* 0237B0 80022BB0 AFB90010 */        sw $t9, 0x10($sp)
  /* 0237B4 80022BB4 8E29008C */        lw $t1, 0x8c($s1)
  /* 0237B8 80022BB8 24C6E750 */     addiu $a2, $a2, %lo(D_8003E750)
  /* 0237BC 80022BBC 2404001E */     addiu $a0, $zero, 0x1e
  /* 0237C0 80022BC0 24050064 */     addiu $a1, $zero, 0x64
  /* 0237C4 80022BC4 0C008999 */       jal func_80022664
  /* 0237C8 80022BC8 AFA90014 */        sw $t1, 0x14($sp)
  /* 0237CC 80022BCC 8E2F009C */        lw $t7, 0x9c($s1)
  /* 0237D0 80022BD0 8E270094 */        lw $a3, 0x94($s1)
  /* 0237D4 80022BD4 3C068004 */       lui $a2, %hi(D_8003E770)
  /* 0237D8 80022BD8 AFAF0010 */        sw $t7, 0x10($sp)
  /* 0237DC 80022BDC 8E3900A4 */        lw $t9, 0xa4($s1)
  /* 0237E0 80022BE0 24C6E770 */     addiu $a2, $a2, %lo(D_8003E770)
  /* 0237E4 80022BE4 2404001E */     addiu $a0, $zero, 0x1e
  /* 0237E8 80022BE8 2405006E */     addiu $a1, $zero, 0x6e
  /* 0237EC 80022BEC 0C008999 */       jal func_80022664
  /* 0237F0 80022BF0 AFB90014 */        sw $t9, 0x14($sp)
  /* 0237F4 80022BF4 8E2D00B4 */        lw $t5, 0xb4($s1)
  /* 0237F8 80022BF8 8E2700AC */        lw $a3, 0xac($s1)
  /* 0237FC 80022BFC 3C068004 */       lui $a2, %hi(D_8003E790)
  /* 023800 80022C00 AFAD0010 */        sw $t5, 0x10($sp)
  /* 023804 80022C04 8E2F00BC */        lw $t7, 0xbc($s1)
  /* 023808 80022C08 24C6E790 */     addiu $a2, $a2, %lo(D_8003E790)
  /* 02380C 80022C0C 2404001E */     addiu $a0, $zero, 0x1e
  /* 023810 80022C10 24050078 */     addiu $a1, $zero, 0x78
  /* 023814 80022C14 0C008999 */       jal func_80022664
  /* 023818 80022C18 AFAF0014 */        sw $t7, 0x14($sp)
  /* 02381C 80022C1C 8E2B00CC */        lw $t3, 0xcc($s1)
  /* 023820 80022C20 8E2700C4 */        lw $a3, 0xc4($s1)
  /* 023824 80022C24 3C068004 */       lui $a2, %hi(D_8003E7B0)
  /* 023828 80022C28 AFAB0010 */        sw $t3, 0x10($sp)
  /* 02382C 80022C2C 8E2D00D4 */        lw $t5, 0xd4($s1)
  /* 023830 80022C30 24C6E7B0 */     addiu $a2, $a2, %lo(D_8003E7B0)
  /* 023834 80022C34 2404001E */     addiu $a0, $zero, 0x1e
  /* 023838 80022C38 24050082 */     addiu $a1, $zero, 0x82
  /* 02383C 80022C3C 0C008999 */       jal func_80022664
  /* 023840 80022C40 AFAD0014 */        sw $t5, 0x14($sp)
  /* 023844 80022C44 8E2900E4 */        lw $t1, 0xe4($s1)
  /* 023848 80022C48 3C068004 */       lui $a2, %hi(D_8003E7D0)
  /* 02384C 80022C4C 8E2700DC */        lw $a3, 0xdc($s1)
  /* 023850 80022C50 24C6E7D0 */     addiu $a2, $a2, %lo(D_8003E7D0)
  /* 023854 80022C54 2404001E */     addiu $a0, $zero, 0x1e
  /* 023858 80022C58 2405008C */     addiu $a1, $zero, 0x8c
  /* 02385C 80022C5C 0C008999 */       jal func_80022664
  /* 023860 80022C60 AFA90010 */        sw $t1, 0x10($sp)
  /* 023864 80022C64 0C008A1F */       jal func_8002287C
  /* 023868 80022C68 8E24010C */        lw $a0, 0x10c($s1)
  /* 02386C 80022C6C 2404001E */     addiu $a0, $zero, 0x1e
  /* 023870 80022C70 240500AA */     addiu $a1, $zero, 0xaa
  /* 023874 80022C74 00003025 */        or $a2, $zero, $zero
  /* 023878 80022C78 0C0089FD */       jal func_800227F4
  /* 02387C 80022C7C 26270114 */     addiu $a3, $s1, 0x114
  /* 023880 80022C80 24040078 */     addiu $a0, $zero, 0x78
  /* 023884 80022C84 240500AA */     addiu $a1, $zero, 0xaa
  /* 023888 80022C88 24060002 */     addiu $a2, $zero, 2
  /* 02388C 80022C8C 0C0089FD */       jal func_800227F4
  /* 023890 80022C90 2627011C */     addiu $a3, $s1, 0x11c
  /* 023894 80022C94 240400D2 */     addiu $a0, $zero, 0xd2
  /* 023898 80022C98 240500AA */     addiu $a1, $zero, 0xaa
  /* 02389C 80022C9C 24060004 */     addiu $a2, $zero, 4
  /* 0238A0 80022CA0 0C0089FD */       jal func_800227F4
  /* 0238A4 80022CA4 26270124 */     addiu $a3, $s1, 0x124
  /* 0238A8 80022CA8 2404001E */     addiu $a0, $zero, 0x1e
  /* 0238AC 80022CAC 240500B4 */     addiu $a1, $zero, 0xb4
  /* 0238B0 80022CB0 24060006 */     addiu $a2, $zero, 6
  /* 0238B4 80022CB4 0C0089FD */       jal func_800227F4
  /* 0238B8 80022CB8 2627012C */     addiu $a3, $s1, 0x12c
  /* 0238BC 80022CBC 24040078 */     addiu $a0, $zero, 0x78
  /* 0238C0 80022CC0 240500B4 */     addiu $a1, $zero, 0xb4
  /* 0238C4 80022CC4 24060008 */     addiu $a2, $zero, 8
  /* 0238C8 80022CC8 0C0089FD */       jal func_800227F4
  /* 0238CC 80022CCC 26270134 */     addiu $a3, $s1, 0x134
  /* 0238D0 80022CD0 240400D2 */     addiu $a0, $zero, 0xd2
  /* 0238D4 80022CD4 240500B4 */     addiu $a1, $zero, 0xb4
  /* 0238D8 80022CD8 2406000A */     addiu $a2, $zero, 0xa
  /* 0238DC 80022CDC 0C0089FD */       jal func_800227F4
  /* 0238E0 80022CE0 2627013C */     addiu $a3, $s1, 0x13c
  /* 0238E4 80022CE4 2404001E */     addiu $a0, $zero, 0x1e
  /* 0238E8 80022CE8 240500BE */     addiu $a1, $zero, 0xbe
  /* 0238EC 80022CEC 2406000C */     addiu $a2, $zero, 0xc
  /* 0238F0 80022CF0 0C0089FD */       jal func_800227F4
  /* 0238F4 80022CF4 26270144 */     addiu $a3, $s1, 0x144
  /* 0238F8 80022CF8 24040078 */     addiu $a0, $zero, 0x78
  /* 0238FC 80022CFC 240500BE */     addiu $a1, $zero, 0xbe
  /* 023900 80022D00 2406000E */     addiu $a2, $zero, 0xe
  /* 023904 80022D04 0C0089FD */       jal func_800227F4
  /* 023908 80022D08 2627014C */     addiu $a3, $s1, 0x14c
  /* 02390C 80022D0C 240400D2 */     addiu $a0, $zero, 0xd2
  /* 023910 80022D10 240500BE */     addiu $a1, $zero, 0xbe
  /* 023914 80022D14 24060010 */     addiu $a2, $zero, 0x10
  /* 023918 80022D18 0C0089FD */       jal func_800227F4
  /* 02391C 80022D1C 26270154 */     addiu $a3, $s1, 0x154
  /* 023920 80022D20 2404001E */     addiu $a0, $zero, 0x1e
  /* 023924 80022D24 240500C8 */     addiu $a1, $zero, 0xc8
  /* 023928 80022D28 24060012 */     addiu $a2, $zero, 0x12
  /* 02392C 80022D2C 0C0089FD */       jal func_800227F4
  /* 023930 80022D30 2627015C */     addiu $a3, $s1, 0x15c
  /* 023934 80022D34 24040078 */     addiu $a0, $zero, 0x78
  /* 023938 80022D38 240500C8 */     addiu $a1, $zero, 0xc8
  /* 02393C 80022D3C 24060014 */     addiu $a2, $zero, 0x14
  /* 023940 80022D40 0C0089FD */       jal func_800227F4
  /* 023944 80022D44 26270164 */     addiu $a3, $s1, 0x164
  /* 023948 80022D48 240400D2 */     addiu $a0, $zero, 0xd2
  /* 02394C 80022D4C 240500C8 */     addiu $a1, $zero, 0xc8
  /* 023950 80022D50 24060016 */     addiu $a2, $zero, 0x16
  /* 023954 80022D54 0C0089FD */       jal func_800227F4
  /* 023958 80022D58 2627016C */     addiu $a3, $s1, 0x16c
  /* 02395C 80022D5C 2404001E */     addiu $a0, $zero, 0x1e
  /* 023960 80022D60 240500D2 */     addiu $a1, $zero, 0xd2
  /* 023964 80022D64 24060018 */     addiu $a2, $zero, 0x18
  /* 023968 80022D68 0C0089FD */       jal func_800227F4
  /* 02396C 80022D6C 26270174 */     addiu $a3, $s1, 0x174
  /* 023970 80022D70 24040078 */     addiu $a0, $zero, 0x78
  /* 023974 80022D74 240500D2 */     addiu $a1, $zero, 0xd2
  /* 023978 80022D78 2406001A */     addiu $a2, $zero, 0x1a
  /* 02397C 80022D7C 0C0089FD */       jal func_800227F4
  /* 023980 80022D80 2627017C */     addiu $a3, $s1, 0x17c
  /* 023984 80022D84 240400D2 */     addiu $a0, $zero, 0xd2
  /* 023988 80022D88 240500D2 */     addiu $a1, $zero, 0xd2
  /* 02398C 80022D8C 2406001C */     addiu $a2, $zero, 0x1c
  /* 023990 80022D90 0C0089FD */       jal func_800227F4
  /* 023994 80022D94 26270184 */     addiu $a3, $s1, 0x184
  /* 023998 80022D98 2404001E */     addiu $a0, $zero, 0x1e
  /* 02399C 80022D9C 240500DC */     addiu $a1, $zero, 0xdc
  /* 0239A0 80022DA0 2406001E */     addiu $a2, $zero, 0x1e
  /* 0239A4 80022DA4 0C0089FD */       jal func_800227F4
  /* 0239A8 80022DA8 2627018C */     addiu $a3, $s1, 0x18c
  /* 0239AC 80022DAC 0C00E458 */       jal osWritebackDCacheAll
  /* 0239B0 80022DB0 00000000 */       nop 
  /* 0239B4 80022DB4 00002025 */        or $a0, $zero, $zero
  /* 0239B8 80022DB8 0C008A42 */       jal func_80022908
  /* 0239BC 80022DBC 00002825 */        or $a1, $zero, $zero
  /* 0239C0 80022DC0 24042030 */     addiu $a0, $zero, 0x2030
  /* 0239C4 80022DC4 0C008A42 */       jal func_80022908
  /* 0239C8 80022DC8 00002825 */        or $a1, $zero, $zero
  /* 0239CC 80022DCC 24040019 */     addiu $a0, $zero, 0x19
  /* 0239D0 80022DD0 24050014 */     addiu $a1, $zero, 0x14
  /* 0239D4 80022DD4 2406010E */     addiu $a2, $zero, 0x10e
  /* 0239D8 80022DD8 0C0088FD */       jal func_800223F4
  /* 0239DC 80022DDC 240700D2 */     addiu $a3, $zero, 0xd2
  /* 0239E0 80022DE0 8E2700D4 */        lw $a3, 0xd4($s1)
  /* 0239E4 80022DE4 3C068004 */       lui $a2, %hi(D_8003E7E4)
  /* 0239E8 80022DE8 24C6E7E4 */     addiu $a2, $a2, %lo(D_8003E7E4)
  /* 0239EC 80022DEC 2404001A */     addiu $a0, $zero, 0x1a
  /* 0239F0 80022DF0 24050014 */     addiu $a1, $zero, 0x14
  /* 0239F4 80022DF4 0C008999 */       jal func_80022664
  /* 0239F8 80022DF8 00E08025 */        or $s0, $a3, $zero
  /* 0239FC 80022DFC 2411001E */     addiu $s1, $zero, 0x1e
  /* 023A00 80022E00 00009025 */        or $s2, $zero, $zero
  /* 023A04 80022E04 3C137F80 */       lui $s3, 0x7f80
  .L80022E08:
  /* 023A08 80022E08 8E030000 */        lw $v1, ($s0)
  /* 023A0C 80022E0C 00731024 */       and $v0, $v1, $s3
  /* 023A10 80022E10 000215C2 */       srl $v0, $v0, 0x17
  /* 023A14 80022E14 2442FF81 */     addiu $v0, $v0, -0x7f
  /* 023A18 80022E18 2841FF82 */      slti $at, $v0, -0x7e
  /* 023A1C 80022E1C 14200003 */      bnez $at, .L80022E2C
  /* 023A20 80022E20 28410080 */      slti $at, $v0, 0x80
  /* 023A24 80022E24 54200004 */      bnel $at, $zero, .L80022E38
  /* 023A28 80022E28 920C0000 */       lbu $t4, ($s0)
  .L80022E2C:
  /* 023A2C 80022E2C 54600015 */      bnel $v1, $zero, .L80022E84
  /* 023A30 80022E30 92190000 */       lbu $t9, ($s0)
  /* 023A34 80022E34 920C0000 */       lbu $t4, ($s0)
  .L80022E38:
  /* 023A38 80022E38 3C068004 */       lui $a2, %hi(D_8003E7F4)
  /* 023A3C 80022E3C 24C6E7F4 */     addiu $a2, $a2, %lo(D_8003E7F4)
  /* 023A40 80022E40 AFAC0010 */        sw $t4, 0x10($sp)
  /* 023A44 80022E44 920D0001 */       lbu $t5, 1($s0)
  /* 023A48 80022E48 2404001A */     addiu $a0, $zero, 0x1a
  /* 023A4C 80022E4C 02202825 */        or $a1, $s1, $zero
  /* 023A50 80022E50 AFAD0014 */        sw $t5, 0x14($sp)
  /* 023A54 80022E54 920E0002 */       lbu $t6, 2($s0)
  /* 023A58 80022E58 02403825 */        or $a3, $s2, $zero
  /* 023A5C 80022E5C AFAE0018 */        sw $t6, 0x18($sp)
  /* 023A60 80022E60 92180003 */       lbu $t8, 3($s0)
  /* 023A64 80022E64 AFB8001C */        sw $t8, 0x1c($sp)
  /* 023A68 80022E68 C6040000 */      lwc1 $f4, ($s0)
  /* 023A6C 80022E6C 460021A1 */   cvt.d.s $f6, $f4
  /* 023A70 80022E70 0C008999 */       jal func_80022664
  /* 023A74 80022E74 F7A60020 */      sdc1 $f6, 0x20($sp)
  /* 023A78 80022E78 10000011 */         b .L80022EC0
  /* 023A7C 80022E7C 8E030004 */        lw $v1, 4($s0)
  /* 023A80 80022E80 92190000 */       lbu $t9, ($s0)
  .L80022E84:
  /* 023A84 80022E84 3C068004 */       lui $a2, %hi(D_8003E810)
  /* 023A88 80022E88 24C6E810 */     addiu $a2, $a2, %lo(D_8003E810)
  /* 023A8C 80022E8C AFB90010 */        sw $t9, 0x10($sp)
  /* 023A90 80022E90 92080001 */       lbu $t0, 1($s0)
  /* 023A94 80022E94 2404001A */     addiu $a0, $zero, 0x1a
  /* 023A98 80022E98 02202825 */        or $a1, $s1, $zero
  /* 023A9C 80022E9C AFA80014 */        sw $t0, 0x14($sp)
  /* 023AA0 80022EA0 92090002 */       lbu $t1, 2($s0)
  /* 023AA4 80022EA4 02403825 */        or $a3, $s2, $zero
  /* 023AA8 80022EA8 AFA90018 */        sw $t1, 0x18($sp)
  /* 023AAC 80022EAC 920F0003 */       lbu $t7, 3($s0)
  /* 023AB0 80022EB0 AFA30020 */        sw $v1, 0x20($sp)
  /* 023AB4 80022EB4 0C008999 */       jal func_80022664
  /* 023AB8 80022EB8 AFAF001C */        sw $t7, 0x1c($sp)
  /* 023ABC 80022EBC 8E030004 */        lw $v1, 4($s0)
  .L80022EC0:
  /* 023AC0 80022EC0 26100004 */     addiu $s0, $s0, 4
  /* 023AC4 80022EC4 00731024 */       and $v0, $v1, $s3
  /* 023AC8 80022EC8 000215C2 */       srl $v0, $v0, 0x17
  /* 023ACC 80022ECC 2442FF81 */     addiu $v0, $v0, -0x7f
  /* 023AD0 80022ED0 2841FF82 */      slti $at, $v0, -0x7e
  /* 023AD4 80022ED4 14200003 */      bnez $at, .L80022EE4
  /* 023AD8 80022ED8 28410080 */      slti $at, $v0, 0x80
  /* 023ADC 80022EDC 54200004 */      bnel $at, $zero, .L80022EF0
  /* 023AE0 80022EE0 920A0001 */       lbu $t2, 1($s0)
  .L80022EE4:
  /* 023AE4 80022EE4 14600012 */      bnez $v1, .L80022F30
  /* 023AE8 80022EE8 240400AC */     addiu $a0, $zero, 0xac
  /* 023AEC 80022EEC 920A0001 */       lbu $t2, 1($s0)
  .L80022EF0:
  /* 023AF0 80022EF0 92070000 */       lbu $a3, ($s0)
  /* 023AF4 80022EF4 3C068004 */       lui $a2, %hi(D_8003E82C)
  /* 023AF8 80022EF8 AFAA0010 */        sw $t2, 0x10($sp)
  /* 023AFC 80022EFC 920B0002 */       lbu $t3, 2($s0)
  /* 023B00 80022F00 24C6E82C */     addiu $a2, $a2, %lo(D_8003E82C)
  /* 023B04 80022F04 240400AC */     addiu $a0, $zero, 0xac
  /* 023B08 80022F08 AFAB0014 */        sw $t3, 0x14($sp)
  /* 023B0C 80022F0C 920C0003 */       lbu $t4, 3($s0)
  /* 023B10 80022F10 02202825 */        or $a1, $s1, $zero
  /* 023B14 80022F14 AFAC0018 */        sw $t4, 0x18($sp)
  /* 023B18 80022F18 C6080000 */      lwc1 $f8, ($s0)
  /* 023B1C 80022F1C 460042A1 */   cvt.d.s $f10, $f8
  /* 023B20 80022F20 0C008999 */       jal func_80022664
  /* 023B24 80022F24 F7AA0020 */      sdc1 $f10, 0x20($sp)
  /* 023B28 80022F28 1000000E */         b .L80022F64
  /* 023B2C 80022F2C 26520008 */     addiu $s2, $s2, 8
  .L80022F30:
  /* 023B30 80022F30 920D0001 */       lbu $t5, 1($s0)
  /* 023B34 80022F34 92070000 */       lbu $a3, ($s0)
  /* 023B38 80022F38 3C068004 */       lui $a2, %hi(D_8003E844)
  /* 023B3C 80022F3C AFAD0010 */        sw $t5, 0x10($sp)
  /* 023B40 80022F40 920E0002 */       lbu $t6, 2($s0)
  /* 023B44 80022F44 24C6E844 */     addiu $a2, $a2, %lo(D_8003E844)
  /* 023B48 80022F48 02202825 */        or $a1, $s1, $zero
  /* 023B4C 80022F4C AFAE0014 */        sw $t6, 0x14($sp)
  /* 023B50 80022F50 92180003 */       lbu $t8, 3($s0)
  /* 023B54 80022F54 AFA3001C */        sw $v1, 0x1c($sp)
  /* 023B58 80022F58 0C008999 */       jal func_80022664
  /* 023B5C 80022F5C AFB80018 */        sw $t8, 0x18($sp)
  /* 023B60 80022F60 26520008 */     addiu $s2, $s2, 8
  .L80022F64:
  /* 023B64 80022F64 24010098 */     addiu $at, $zero, 0x98
  /* 023B68 80022F68 2631000A */     addiu $s1, $s1, 0xa
  /* 023B6C 80022F6C 1641FFA6 */       bne $s2, $at, .L80022E08
  /* 023B70 80022F70 26100004 */     addiu $s0, $s0, 4
  /* 023B74 80022F74 0C00E458 */       jal osWritebackDCacheAll
  /* 023B78 80022F78 00000000 */       nop 
  /* 023B7C 80022F7C 8FBF003C */        lw $ra, 0x3c($sp)
  /* 023B80 80022F80 8FB0002C */        lw $s0, 0x2c($sp)
  /* 023B84 80022F84 8FB10030 */        lw $s1, 0x30($sp)
  /* 023B88 80022F88 8FB20034 */        lw $s2, 0x34($sp)
  /* 023B8C 80022F8C 8FB30038 */        lw $s3, 0x38($sp)
  /* 023B90 80022F90 03E00008 */        jr $ra
  /* 023B94 80022F94 27BD0040 */     addiu $sp, $sp, 0x40

glabel func_80022F98
  /* 023B98 80022F98 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 023B9C 80022F9C AFBF0014 */        sw $ra, 0x14($sp)
  /* 023BA0 80022FA0 0C00D508 */       jal __osGetActiveQueue
  /* 023BA4 80022FA4 00000000 */       nop 
  /* 023BA8 80022FA8 8C4E0004 */        lw $t6, 4($v0)
  /* 023BAC 80022FAC 2404FFFF */     addiu $a0, $zero, -1
  /* 023BB0 80022FB0 00401825 */        or $v1, $v0, $zero
  /* 023BB4 80022FB4 108E0010 */       beq $a0, $t6, .L80022FF8
  /* 023BB8 80022FB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 023BBC 80022FBC 8C420004 */        lw $v0, 4($v0)
  .L80022FC0:
  /* 023BC0 80022FC0 18400009 */      blez $v0, .L80022FE8
  /* 023BC4 80022FC4 2841007F */      slti $at, $v0, 0x7f
  /* 023BC8 80022FC8 50200008 */      beql $at, $zero, .L80022FEC
  /* 023BCC 80022FCC 8C63000C */        lw $v1, 0xc($v1)
  /* 023BD0 80022FD0 946F0012 */       lhu $t7, 0x12($v1)
  /* 023BD4 80022FD4 31F80003 */      andi $t8, $t7, 3
  /* 023BD8 80022FD8 53000004 */      beql $t8, $zero, .L80022FEC
  /* 023BDC 80022FDC 8C63000C */        lw $v1, 0xc($v1)
  /* 023BE0 80022FE0 10000006 */         b .L80022FFC
  /* 023BE4 80022FE4 00601025 */        or $v0, $v1, $zero
  .L80022FE8:
  /* 023BE8 80022FE8 8C63000C */        lw $v1, 0xc($v1)
  .L80022FEC:
  /* 023BEC 80022FEC 8C620004 */        lw $v0, 4($v1)
  /* 023BF0 80022FF0 1482FFF3 */       bne $a0, $v0, .L80022FC0
  /* 023BF4 80022FF4 00000000 */       nop 
  .L80022FF8:
  /* 023BF8 80022FF8 00001025 */        or $v0, $zero, $zero
  .L80022FFC:
  /* 023BFC 80022FFC 03E00008 */        jr $ra
  /* 023C00 80023000 27BD0018 */     addiu $sp, $sp, 0x18

glabel set_debug_fn
  /* 023C04 80023004 3C01800A */       lui $at, %hi(D_8009E3D8)
  /* 023C08 80023008 03E00008 */        jr $ra
  /* 023C0C 8002300C AC24E3D8 */        sw $a0, %lo(D_8009E3D8)($at)

glabel func_80023010
  /* 023C10 80023010 3C018004 */       lui $at, %hi(D_8003D05C)
  /* 023C14 80023014 AC24D05C */        sw $a0, %lo(D_8003D05C)($at)
  /* 023C18 80023018 3C018004 */       lui $at, %hi(D_8003D060)
  /* 023C1C 8002301C 03E00008 */        jr $ra
  /* 023C20 80023020 AC25D060 */        sw $a1, %lo(D_8003D060)($at)

glabel func_80023024
  /* 023C24 80023024 27BDFEB0 */     addiu $sp, $sp, -0x150
  /* 023C28 80023028 AFB00018 */        sw $s0, 0x18($sp)
  /* 023C2C 8002302C 00803025 */        or $a2, $a0, $zero
  /* 023C30 80023030 27B00048 */     addiu $s0, $sp, 0x48
  /* 023C34 80023034 AFBF003C */        sw $ra, 0x3c($sp)
  /* 023C38 80023038 00A03825 */        or $a3, $a1, $zero
  /* 023C3C 8002303C 3C048002 */       lui $a0, %hi(func_80022640)
  /* 023C40 80023040 AFBE0038 */        sw $fp, 0x38($sp)
  /* 023C44 80023044 AFB70034 */        sw $s7, 0x34($sp)
  /* 023C48 80023048 AFB60030 */        sw $s6, 0x30($sp)
  /* 023C4C 8002304C AFB5002C */        sw $s5, 0x2c($sp)
  /* 023C50 80023050 AFB40028 */        sw $s4, 0x28($sp)
  /* 023C54 80023054 AFB30024 */        sw $s3, 0x24($sp)
  /* 023C58 80023058 AFB20020 */        sw $s2, 0x20($sp)
  /* 023C5C 8002305C AFB1001C */        sw $s1, 0x1c($sp)
  /* 023C60 80023060 24842640 */     addiu $a0, $a0, %lo(func_80022640)
  /* 023C64 80023064 0C00CF18 */       jal _Printf
  /* 023C68 80023068 02002825 */        or $a1, $s0, $zero
  /* 023C6C 8002306C 1840002B */      blez $v0, .L8002311C
  /* 023C70 80023070 00409825 */        or $s3, $v0, $zero
  /* 023C74 80023074 18400029 */      blez $v0, .L8002311C
  /* 023C78 80023078 0200A025 */        or $s4, $s0, $zero
  /* 023C7C 8002307C 3C168004 */       lui $s6, %hi(D_8003CE7C)
  /* 023C80 80023080 3C128004 */       lui $s2, %hi(D_8003D05C)
  /* 023C84 80023084 3C118004 */       lui $s1, %hi(D_8003D060)
  /* 023C88 80023088 2631D060 */     addiu $s1, $s1, %lo(D_8003D060)
  /* 023C8C 8002308C 2652D05C */     addiu $s2, $s2, %lo(D_8003D05C)
  /* 023C90 80023090 26D6CE7C */     addiu $s6, $s6, %lo(D_8003CE7C)
  /* 023C94 80023094 241E00FF */     addiu $fp, $zero, 0xff
  /* 023C98 80023098 2417000A */     addiu $s7, $zero, 0xa
  /* 023C9C 8002309C 2415001E */     addiu $s5, $zero, 0x1e
  .L800230A0:
  /* 023CA0 800230A0 92820000 */       lbu $v0, ($s4)
  /* 023CA4 800230A4 304E007F */      andi $t6, $v0, 0x7f
  /* 023CA8 800230A8 02CE7821 */      addu $t7, $s6, $t6
  /* 023CAC 800230AC 16E20006 */       bne $s7, $v0, .L800230C8
  /* 023CB0 800230B0 91E60000 */       lbu $a2, ($t7)
  /* 023CB4 800230B4 8E380000 */        lw $t8, ($s1) # D_8003D060 + 0
  /* 023CB8 800230B8 AE550000 */        sw $s5, ($s2) # D_8003D05C + 0
  /* 023CBC 800230BC 2719000A */     addiu $t9, $t8, 0xa
  /* 023CC0 800230C0 10000013 */         b .L80023110
  /* 023CC4 800230C4 AE390000 */        sw $t9, ($s1) # D_8003D060 + 0
  .L800230C8:
  /* 023CC8 800230C8 10DE0005 */       beq $a2, $fp, .L800230E0
  /* 023CCC 800230CC 8E500000 */        lw $s0, ($s2) # D_8003D05C + 0
  /* 023CD0 800230D0 02002025 */        or $a0, $s0, $zero
  /* 023CD4 800230D4 0C008930 */       jal func_800224C0
  /* 023CD8 800230D8 8E250000 */        lw $a1, ($s1) # D_8003D060 + 0
  /* 023CDC 800230DC 8E500000 */        lw $s0, ($s2) # D_8003D05C + 0
  .L800230E0:
  /* 023CE0 800230E0 26080006 */     addiu $t0, $s0, 6
  /* 023CE4 800230E4 AE480000 */        sw $t0, ($s2) # D_8003D05C + 0
  /* 023CE8 800230E8 3C0A8004 */       lui $t2, %hi(gCurrScreenWidth)
  /* 023CEC 800230EC 8D4A6678 */        lw $t2, %lo(gCurrScreenWidth)($t2)
  /* 023CF0 800230F0 254BFFE2 */     addiu $t3, $t2, -0x1e
  /* 023CF4 800230F4 0168082A */       slt $at, $t3, $t0
  /* 023CF8 800230F8 50200006 */      beql $at, $zero, .L80023114
  /* 023CFC 800230FC 2673FFFF */     addiu $s3, $s3, -1
  /* 023D00 80023100 8E2C0000 */        lw $t4, ($s1) # D_8003D060 + 0
  /* 023D04 80023104 AE550000 */        sw $s5, ($s2) # D_8003D05C + 0
  /* 023D08 80023108 258D000A */     addiu $t5, $t4, 0xa
  /* 023D0C 8002310C AE2D0000 */        sw $t5, ($s1) # D_8003D060 + 0
  .L80023110:
  /* 023D10 80023110 2673FFFF */     addiu $s3, $s3, -1
  .L80023114:
  /* 023D14 80023114 1660FFE2 */      bnez $s3, .L800230A0
  /* 023D18 80023118 26940001 */     addiu $s4, $s4, 1
  .L8002311C:
  /* 023D1C 8002311C 0C00E458 */       jal osWritebackDCacheAll
  /* 023D20 80023120 00000000 */       nop 
  /* 023D24 80023124 8FBF003C */        lw $ra, 0x3c($sp)
  /* 023D28 80023128 8FB00018 */        lw $s0, 0x18($sp)
  /* 023D2C 8002312C 8FB1001C */        lw $s1, 0x1c($sp)
  /* 023D30 80023130 8FB20020 */        lw $s2, 0x20($sp)
  /* 023D34 80023134 8FB30024 */        lw $s3, 0x24($sp)
  /* 023D38 80023138 8FB40028 */        lw $s4, 0x28($sp)
  /* 023D3C 8002313C 8FB5002C */        lw $s5, 0x2c($sp)
  /* 023D40 80023140 8FB60030 */        lw $s6, 0x30($sp)
  /* 023D44 80023144 8FB70034 */        lw $s7, 0x34($sp)
  /* 023D48 80023148 8FBE0038 */        lw $fp, 0x38($sp)
  /* 023D4C 8002314C 03E00008 */        jr $ra
  /* 023D50 80023150 27BD0150 */     addiu $sp, $sp, 0x150

glabel func_80023154
  /* 023D54 80023154 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 023D58 80023158 AFA50024 */        sw $a1, 0x24($sp)
  /* 023D5C 8002315C 03A02825 */        or $a1, $sp, $zero
  /* 023D60 80023160 AFBF0014 */        sw $ra, 0x14($sp)
  /* 023D64 80023164 24A50027 */     addiu $a1, $a1, 0x27
  /* 023D68 80023168 2401FFFC */     addiu $at, $zero, -4
  /* 023D6C 8002316C AFA40020 */        sw $a0, 0x20($sp)
  /* 023D70 80023170 AFA60028 */        sw $a2, 0x28($sp)
  /* 023D74 80023174 AFA7002C */        sw $a3, 0x2c($sp)
  /* 023D78 80023178 0C008C09 */       jal func_80023024
  /* 023D7C 8002317C 00A12824 */       and $a1, $a1, $at
  /* 023D80 80023180 8FBF0014 */        lw $ra, 0x14($sp)
  /* 023D84 80023184 27BD0020 */     addiu $sp, $sp, 0x20
  /* 023D88 80023188 03E00008 */        jr $ra
  /* 023D8C 8002318C 00000000 */       nop 

glabel thread8_crash_debugger
  /* 023D90 80023190 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 023D94 80023194 AFB1001C */        sw $s1, 0x1c($sp)
  /* 023D98 80023198 3C11800A */       lui $s1, %hi(D_8009E3B8)
  /* 023D9C 8002319C 2631E3B8 */     addiu $s1, $s1, %lo(D_8009E3B8)
  /* 023DA0 800231A0 AFBF0024 */        sw $ra, 0x24($sp)
  /* 023DA4 800231A4 AFA40030 */        sw $a0, 0x30($sp)
  /* 023DA8 800231A8 AFB20020 */        sw $s2, 0x20($sp)
  /* 023DAC 800231AC AFB00018 */        sw $s0, 0x18($sp)
  /* 023DB0 800231B0 2404000A */     addiu $a0, $zero, 0xa
  /* 023DB4 800231B4 02202825 */        or $a1, $s1, $zero
  /* 023DB8 800231B8 0C00CD28 */       jal osSetEventMesg
  /* 023DBC 800231BC 24060001 */     addiu $a2, $zero, 1
  /* 023DC0 800231C0 2404000C */     addiu $a0, $zero, 0xc
  /* 023DC4 800231C4 02202825 */        or $a1, $s1, $zero
  /* 023DC8 800231C8 0C00CD28 */       jal osSetEventMesg
  /* 023DCC 800231CC 24060002 */     addiu $a2, $zero, 2
  /* 023DD0 800231D0 27B0002C */     addiu $s0, $sp, 0x2c
  .L800231D4:
  /* 023DD4 800231D4 02202025 */        or $a0, $s1, $zero
  /* 023DD8 800231D8 02002825 */        or $a1, $s0, $zero
  /* 023DDC 800231DC 0C00C084 */       jal osRecvMesg
  /* 023DE0 800231E0 24060001 */     addiu $a2, $zero, 1
  /* 023DE4 800231E4 0C008BE6 */       jal func_80022F98
  /* 023DE8 800231E8 00000000 */       nop 
  /* 023DEC 800231EC 1040FFF9 */      beqz $v0, .L800231D4
  /* 023DF0 800231F0 00409025 */        or $s2, $v0, $zero
  /* 023DF4 800231F4 240E0001 */     addiu $t6, $zero, 1
  /* 023DF8 800231F8 3C018004 */       lui $at, %hi(D_8003CE78)
  /* 023DFC 800231FC A02ECE78 */        sb $t6, %lo(D_8003CE78)($at)
  /* 023E00 80023200 00002025 */        or $a0, $zero, $zero
  /* 023E04 80023204 0C008A42 */       jal func_80022908
  /* 023E08 80023208 00002825 */        or $a1, $zero, $zero
  /* 023E0C 8002320C 24042030 */     addiu $a0, $zero, 0x2030
  /* 023E10 80023210 0C008A42 */       jal func_80022908
  /* 023E14 80023214 00002825 */        or $a1, $zero, $zero
  /* 023E18 80023218 00002025 */        or $a0, $zero, $zero
  /* 023E1C 8002321C 0C008A42 */       jal func_80022908
  /* 023E20 80023220 00002825 */        or $a1, $zero, $zero
  /* 023E24 80023224 24040808 */     addiu $a0, $zero, 0x808
  /* 023E28 80023228 0C008A42 */       jal func_80022908
  /* 023E2C 8002322C 00002825 */        or $a1, $zero, $zero
  /* 023E30 80023230 00002025 */        or $a0, $zero, $zero
  /* 023E34 80023234 0C008A42 */       jal func_80022908
  /* 023E38 80023238 00002825 */        or $a1, $zero, $zero
  /* 023E3C 8002323C 34048200 */       ori $a0, $zero, 0x8200
  /* 023E40 80023240 0C008A42 */       jal func_80022908
  /* 023E44 80023244 00002825 */        or $a1, $zero, $zero
  /* 023E48 80023248 00002025 */        or $a0, $zero, $zero
  /* 023E4C 8002324C 0C008A42 */       jal func_80022908
  /* 023E50 80023250 00002825 */        or $a1, $zero, $zero
  /* 023E54 80023254 24044100 */     addiu $a0, $zero, 0x4100
  /* 023E58 80023258 0C008A42 */       jal func_80022908
  /* 023E5C 8002325C 00002825 */        or $a1, $zero, $zero
  /* 023E60 80023260 00002025 */        or $a0, $zero, $zero
  /* 023E64 80023264 0C008A42 */       jal func_80022908
  /* 023E68 80023268 00002825 */        or $a1, $zero, $zero
  /* 023E6C 8002326C 24040404 */     addiu $a0, $zero, 0x404
  /* 023E70 80023270 0C008A42 */       jal func_80022908
  /* 023E74 80023274 00002825 */        or $a1, $zero, $zero
  /* 023E78 80023278 02402025 */        or $a0, $s2, $zero
  /* 023E7C 8002327C 0C008A61 */       jal func_80022984
  /* 023E80 80023280 24050001 */     addiu $a1, $zero, 1
  /* 023E84 80023284 3C10800A */       lui $s0, %hi(D_8009E3D8)
  /* 023E88 80023288 2610E3D8 */     addiu $s0, $s0, %lo(D_8009E3D8)
  /* 023E8C 8002328C 8E0F0000 */        lw $t7, ($s0) # D_8009E3D8 + 0
  /* 023E90 80023290 11E0001C */      beqz $t7, .L80023304
  /* 023E94 80023294 00002025 */        or $a0, $zero, $zero
  .L80023298:
  /* 023E98 80023298 0C008A42 */       jal func_80022908
  /* 023E9C 8002329C 00002825 */        or $a1, $zero, $zero
  /* 023EA0 800232A0 24042030 */     addiu $a0, $zero, 0x2030
  /* 023EA4 800232A4 0C008A42 */       jal func_80022908
  /* 023EA8 800232A8 00002825 */        or $a1, $zero, $zero
  /* 023EAC 800232AC 24040019 */     addiu $a0, $zero, 0x19
  /* 023EB0 800232B0 24050014 */     addiu $a1, $zero, 0x14
  /* 023EB4 800232B4 2406010E */     addiu $a2, $zero, 0x10e
  /* 023EB8 800232B8 0C0088FD */       jal func_800223F4
  /* 023EBC 800232BC 240700D2 */     addiu $a3, $zero, 0xd2
  /* 023EC0 800232C0 2404001E */     addiu $a0, $zero, 0x1e
  /* 023EC4 800232C4 0C008C04 */       jal func_80023010
  /* 023EC8 800232C8 24050019 */     addiu $a1, $zero, 0x19
  /* 023ECC 800232CC 8E190000 */        lw $t9, ($s0) # D_8009E3D8 + 0
  /* 023ED0 800232D0 0320F809 */      jalr $t9
  /* 023ED4 800232D4 00000000 */       nop 
  /* 023ED8 800232D8 00002025 */        or $a0, $zero, $zero
  /* 023EDC 800232DC 0C008A42 */       jal func_80022908
  /* 023EE0 800232E0 00002825 */        or $a1, $zero, $zero
  /* 023EE4 800232E4 24042030 */     addiu $a0, $zero, 0x2030
  /* 023EE8 800232E8 0C008A42 */       jal func_80022908
  /* 023EEC 800232EC 00002825 */        or $a1, $zero, $zero
  /* 023EF0 800232F0 02402025 */        or $a0, $s2, $zero
  /* 023EF4 800232F4 0C008A61 */       jal func_80022984
  /* 023EF8 800232F8 00002825 */        or $a1, $zero, $zero
  /* 023EFC 800232FC 1000FFE6 */         b .L80023298
  /* 023F00 80023300 00002025 */        or $a0, $zero, $zero
  .L80023304:
  /* 023F04 80023304 1000FFFF */         b .L80023304
  /* 023F08 80023308 00000000 */       nop 
  /* 023F0C 8002330C 00000000 */       nop 
# Maybe start of new file
  /* 023F10 80023310 00000000 */       nop 
  /* 023F14 80023314 00000000 */       nop 
  /* 023F18 80023318 00000000 */       nop 
  /* 023F1C 8002331C 00000000 */       nop 
# Maybe start of new file
  /* 023F20 80023320 8FBF0024 */        lw $ra, 0x24($sp)
  /* 023F24 80023324 8FB00018 */        lw $s0, 0x18($sp)
  /* 023F28 80023328 8FB1001C */        lw $s1, 0x1c($sp)
  /* 023F2C 8002332C 8FB20020 */        lw $s2, 0x20($sp)
  /* 023F30 80023330 03E00008 */        jr $ra
  /* 023F34 80023334 27BD0030 */     addiu $sp, $sp, 0x30

glabel start_thread8
  /* 023F38 80023338 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 023F3C 8002333C AFBF001C */        sw $ra, 0x1c($sp)
  /* 023F40 80023340 3C04800A */       lui $a0, %hi(D_8009E3B8)
  /* 023F44 80023344 3C05800A */       lui $a1, %hi(D_8009E3D0)
  /* 023F48 80023348 24A5E3D0 */     addiu $a1, $a1, %lo(D_8009E3D0)
  /* 023F4C 8002334C 2484E3B8 */     addiu $a0, $a0, %lo(D_8009E3B8)
  /* 023F50 80023350 0C00D120 */       jal osCreateMesgQueue
  /* 023F54 80023354 24060001 */     addiu $a2, $zero, 1
  /* 023F58 80023358 3C0E800A */       lui $t6, %hi(D_8009E3B8)
  /* 023F5C 8002335C 25CEE3B8 */     addiu $t6, $t6, %lo(D_8009E3B8)
  /* 023F60 80023360 3C04800A */       lui $a0, %hi(D_8009DA08)
  /* 023F64 80023364 3C068002 */       lui $a2, %hi(thread8_crash_debugger)
  /* 023F68 80023368 240F00FA */     addiu $t7, $zero, 0xfa
  /* 023F6C 8002336C AFAF0014 */        sw $t7, 0x14($sp)
  /* 023F70 80023370 24C63190 */     addiu $a2, $a2, %lo(thread8_crash_debugger)
  /* 023F74 80023374 2484DA08 */     addiu $a0, $a0, %lo(D_8009DA08)
  /* 023F78 80023378 AFAE0010 */        sw $t6, 0x10($sp)
  /* 023F7C 8002337C 24050008 */     addiu $a1, $zero, 8
  /* 023F80 80023380 0C00C788 */       jal osCreateThread
  /* 023F84 80023384 00003825 */        or $a3, $zero, $zero
  /* 023F88 80023388 3C04800A */       lui $a0, %hi(D_8009DA08)
  /* 023F8C 8002338C 0C00E464 */       jal osStartThread
  /* 023F90 80023390 2484DA08 */     addiu $a0, $a0, %lo(D_8009DA08)
  /* 023F94 80023394 8FBF001C */        lw $ra, 0x1c($sp)
  /* 023F98 80023398 27BD0020 */     addiu $sp, $sp, 0x20
  /* 023F9C 8002339C 03E00008 */        jr $ra
  /* 023FA0 800233A0 00000000 */       nop 

glabel fileloader_thread8_crash
  /* 023FA4 800233A4 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 023FA8 800233A8 AFB5002C */        sw $s5, 0x2c($sp)
  /* 023FAC 800233AC 3C15800A */       lui $s5, %hi(D_8009E3F0)
  /* 023FB0 800233B0 AFA40058 */        sw $a0, 0x58($sp)
  /* 023FB4 800233B4 26B5E3F0 */     addiu $s5, $s5, %lo(D_8009E3F0)
  /* 023FB8 800233B8 AFBF003C */        sw $ra, 0x3c($sp)
  /* 023FBC 800233BC AFB00018 */        sw $s0, 0x18($sp)
  /* 023FC0 800233C0 3C04800A */       lui $a0, %hi(D_8009E3E0)
  /* 023FC4 800233C4 3C06800A */       lui $a2, %hi(D_8009E3E8)
  /* 023FC8 800233C8 AFBE0038 */        sw $fp, 0x38($sp)
  /* 023FCC 800233CC AFB70034 */        sw $s7, 0x34($sp)
  /* 023FD0 800233D0 AFB60030 */        sw $s6, 0x30($sp)
  /* 023FD4 800233D4 AFB40028 */        sw $s4, 0x28($sp)
  /* 023FD8 800233D8 AFB30024 */        sw $s3, 0x24($sp)
  /* 023FDC 800233DC AFB20020 */        sw $s2, 0x20($sp)
  /* 023FE0 800233E0 AFB1001C */        sw $s1, 0x1c($sp)
  /* 023FE4 800233E4 00008025 */        or $s0, $zero, $zero
  /* 023FE8 800233E8 24C6E3E8 */     addiu $a2, $a2, %lo(D_8009E3E8)
  /* 023FEC 800233EC 2484E3E0 */     addiu $a0, $a0, %lo(D_8009E3E0)
  /* 023FF0 800233F0 02A02825 */        or $a1, $s5, $zero
  /* 023FF4 800233F4 0C000276 */       jal func_800009D8
  /* 023FF8 800233F8 24070001 */     addiu $a3, $zero, 1
  /* 023FFC 800233FC 3C178004 */       lui $s7, %hi(D_8003B6E4)
  /* 024000 80023400 3C13800A */       lui $s3, %hi(D_8009E3D8)
  /* 024004 80023404 3C118004 */       lui $s1, %hi(D_8003CE78)
  /* 024008 80023408 2631CE78 */     addiu $s1, $s1, %lo(D_8003CE78)
  /* 02400C 8002340C 2673E3D8 */     addiu $s3, $s3, %lo(D_8009E3D8)
  /* 024010 80023410 26F7B6E4 */     addiu $s7, $s7, %lo(D_8003B6E4)
  /* 024014 80023414 241E0001 */     addiu $fp, $zero, 1
  /* 024018 80023418 27B60054 */     addiu $s6, $sp, 0x54
  /* 02401C 8002341C 8FB40050 */        lw $s4, 0x50($sp)
  .L80023420:
  /* 024020 80023420 02A02025 */        or $a0, $s5, $zero
  .L80023424:
  /* 024024 80023424 02C02825 */        or $a1, $s6, $zero
  /* 024028 80023428 0C00C084 */       jal osRecvMesg
  /* 02402C 8002342C 24060001 */     addiu $a2, $zero, 1
  /* 024030 80023430 922E0000 */       lbu $t6, ($s1) # D_8003CE78 + 0
  /* 024034 80023434 55C0FFFB */      bnel $t6, $zero, .L80023424
  /* 024038 80023438 02A02025 */        or $a0, $s5, $zero
  /* 02403C 8002343C 8EE20000 */        lw $v0, ($s7) # D_8003B6E4 + 0
  /* 024040 80023440 56820004 */      bnel $s4, $v0, .L80023454
  /* 024044 80023444 00008025 */        or $s0, $zero, $zero
  /* 024048 80023448 10000002 */         b .L80023454
  /* 02404C 8002344C 26100001 */     addiu $s0, $s0, 1
  /* 024050 80023450 00008025 */        or $s0, $zero, $zero
  .L80023454:
  /* 024054 80023454 2A01012C */      slti $at, $s0, 0x12c
  /* 024058 80023458 1420FFF1 */      bnez $at, .L80023420
  /* 02405C 8002345C 0040A025 */        or $s4, $v0, $zero
  /* 024060 80023460 A23E0000 */        sb $fp, ($s1) # D_8003CE78 + 0
  /* 024064 80023464 0C00D21C */       jal osGetThreadPri
  /* 024068 80023468 00002025 */        or $a0, $zero, $zero
  /* 02406C 8002346C 00409025 */        or $s2, $v0, $zero
  /* 024070 80023470 00002025 */        or $a0, $zero, $zero
  /* 024074 80023474 0C00D1E4 */       jal osSetThreadPri
  /* 024078 80023478 240500FA */     addiu $a1, $zero, 0xfa
  /* 02407C 8002347C 00002025 */        or $a0, $zero, $zero
  /* 024080 80023480 0C008A42 */       jal func_80022908
  /* 024084 80023484 00002825 */        or $a1, $zero, $zero
  /* 024088 80023488 24042030 */     addiu $a0, $zero, 0x2030
  /* 02408C 8002348C 0C008A42 */       jal func_80022908
  /* 024090 80023490 00002825 */        or $a1, $zero, $zero
  /* 024094 80023494 00002025 */        or $a0, $zero, $zero
  /* 024098 80023498 0C008A42 */       jal func_80022908
  /* 02409C 8002349C 00002825 */        or $a1, $zero, $zero
  /* 0240A0 800234A0 24040808 */     addiu $a0, $zero, 0x808
  /* 0240A4 800234A4 0C008A42 */       jal func_80022908
  /* 0240A8 800234A8 00002825 */        or $a1, $zero, $zero
  /* 0240AC 800234AC 00002025 */        or $a0, $zero, $zero
  /* 0240B0 800234B0 0C008A42 */       jal func_80022908
  /* 0240B4 800234B4 00002825 */        or $a1, $zero, $zero
  /* 0240B8 800234B8 34048200 */       ori $a0, $zero, 0x8200
  /* 0240BC 800234BC 0C008A42 */       jal func_80022908
  /* 0240C0 800234C0 00002825 */        or $a1, $zero, $zero
  /* 0240C4 800234C4 00002025 */        or $a0, $zero, $zero
  /* 0240C8 800234C8 0C008A42 */       jal func_80022908
  /* 0240CC 800234CC 00002825 */        or $a1, $zero, $zero
  /* 0240D0 800234D0 24044100 */     addiu $a0, $zero, 0x4100
  /* 0240D4 800234D4 0C008A42 */       jal func_80022908
  /* 0240D8 800234D8 00002825 */        or $a1, $zero, $zero
  /* 0240DC 800234DC 00002025 */        or $a0, $zero, $zero
  /* 0240E0 800234E0 0C008A42 */       jal func_80022908
  /* 0240E4 800234E4 00002825 */        or $a1, $zero, $zero
  /* 0240E8 800234E8 24040404 */     addiu $a0, $zero, 0x404
  /* 0240EC 800234EC 0C008A42 */       jal func_80022908
  /* 0240F0 800234F0 00002825 */        or $a1, $zero, $zero
  /* 0240F4 800234F4 3C048004 */       lui $a0, %hi(sThread5)
  /* 0240F8 800234F8 24840CE0 */     addiu $a0, $a0, %lo(sThread5)
  /* 0240FC 800234FC 0C008A61 */       jal func_80022984
  /* 024100 80023500 24050001 */     addiu $a1, $zero, 1
  /* 024104 80023504 8E6F0000 */        lw $t7, ($s3) # D_8009E3D8 + 0
  /* 024108 80023508 00002025 */        or $a0, $zero, $zero
  /* 02410C 8002350C 51E00012 */      beql $t7, $zero, .L80023558
  /* 024110 80023510 00002025 */        or $a0, $zero, $zero
  /* 024114 80023514 0C008A42 */       jal func_80022908
  /* 024118 80023518 00002825 */        or $a1, $zero, $zero
  /* 02411C 8002351C 24042030 */     addiu $a0, $zero, 0x2030
  /* 024120 80023520 0C008A42 */       jal func_80022908
  /* 024124 80023524 00002825 */        or $a1, $zero, $zero
  /* 024128 80023528 24040019 */     addiu $a0, $zero, 0x19
  /* 02412C 8002352C 24050014 */     addiu $a1, $zero, 0x14
  /* 024130 80023530 2406010E */     addiu $a2, $zero, 0x10e
  /* 024134 80023534 0C0088FD */       jal func_800223F4
  /* 024138 80023538 240700D2 */     addiu $a3, $zero, 0xd2
  /* 02413C 8002353C 2404001E */     addiu $a0, $zero, 0x1e
  /* 024140 80023540 0C008C04 */       jal func_80023010
  /* 024144 80023544 24050019 */     addiu $a1, $zero, 0x19
  /* 024148 80023548 8E790000 */        lw $t9, ($s3) # D_8009E3D8 + 0
  /* 02414C 8002354C 0320F809 */      jalr $t9
  /* 024150 80023550 00000000 */       nop 
  /* 024154 80023554 00002025 */        or $a0, $zero, $zero
  .L80023558:
  /* 024158 80023558 00002825 */        or $a1, $zero, $zero
  /* 02415C 8002355C 0C008A42 */       jal func_80022908
  /* 024160 80023560 00008025 */        or $s0, $zero, $zero
  /* 024164 80023564 24042030 */     addiu $a0, $zero, 0x2030
  /* 024168 80023568 0C008A42 */       jal func_80022908
  /* 02416C 8002356C 00002825 */        or $a1, $zero, $zero
  /* 024170 80023570 00002025 */        or $a0, $zero, $zero
  /* 024174 80023574 0C00D1E4 */       jal osSetThreadPri
  /* 024178 80023578 02402825 */        or $a1, $s2, $zero
  /* 02417C 8002357C 1000FFA8 */         b .L80023420
  /* 024180 80023580 A2200000 */        sb $zero, ($s1) # D_8003CE78 + 0
  /* 024184 80023584 00000000 */       nop 
  /* 024188 80023588 00000000 */       nop 
  /* 02418C 8002358C 00000000 */       nop 
# Maybe start of new file
  /* 024190 80023590 00000000 */       nop 
  /* 024194 80023594 00000000 */       nop 
  /* 024198 80023598 00000000 */       nop 
  /* 02419C 8002359C 00000000 */       nop 
# Maybe start of new file
  /* 0241A0 800235A0 8FBF003C */        lw $ra, 0x3c($sp)
  /* 0241A4 800235A4 8FB00018 */        lw $s0, 0x18($sp)
  /* 0241A8 800235A8 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0241AC 800235AC 8FB20020 */        lw $s2, 0x20($sp)
  /* 0241B0 800235B0 8FB30024 */        lw $s3, 0x24($sp)
  /* 0241B4 800235B4 8FB40028 */        lw $s4, 0x28($sp)
  /* 0241B8 800235B8 8FB5002C */        lw $s5, 0x2c($sp)
  /* 0241BC 800235BC 8FB60030 */        lw $s6, 0x30($sp)
  /* 0241C0 800235C0 8FB70034 */        lw $s7, 0x34($sp)
  /* 0241C4 800235C4 8FBE0038 */        lw $fp, 0x38($sp)
  /* 0241C8 800235C8 03E00008 */        jr $ra
  /* 0241CC 800235CC 27BD0058 */     addiu $sp, $sp, 0x58

glabel start_new_debug_thread
  /* 0241D0 800235D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0241D4 800235D4 3C0E800A */       lui $t6, %hi(D_8009EDB8)
  /* 0241D8 800235D8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0241DC 800235DC 25CEEDB8 */     addiu $t6, $t6, %lo(D_8009EDB8)
  /* 0241E0 800235E0 3C04800A */       lui $a0, %hi(D_8009E408)
  /* 0241E4 800235E4 3C068002 */       lui $a2, %hi(fileloader_thread8_crash)
  /* 0241E8 800235E8 240F0069 */     addiu $t7, $zero, 0x69
  /* 0241EC 800235EC AFAF0014 */        sw $t7, 0x14($sp)
  /* 0241F0 800235F0 24C633A4 */     addiu $a2, $a2, %lo(fileloader_thread8_crash)
  /* 0241F4 800235F4 2484E408 */     addiu $a0, $a0, %lo(D_8009E408)
  /* 0241F8 800235F8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 0241FC 800235FC 24050008 */     addiu $a1, $zero, 8
  /* 024200 80023600 0C00C788 */       jal osCreateThread
  /* 024204 80023604 00003825 */        or $a3, $zero, $zero
  /* 024208 80023608 3C04800A */       lui $a0, %hi(D_8009E408)
  /* 02420C 8002360C 0C00E464 */       jal osStartThread
  /* 024210 80023610 2484E408 */     addiu $a0, $a0, %lo(D_8009E408)
  /* 024214 80023614 8FBF001C */        lw $ra, 0x1c($sp)
  /* 024218 80023618 27BD0020 */     addiu $sp, $sp, 0x20
  /* 02421C 8002361C 03E00008 */        jr $ra
  /* 024220 80023620 00000000 */       nop 

glabel fatal_printf
  /* 024224 80023624 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 024228 80023628 AFBF001C */        sw $ra, 0x1c($sp)
  /* 02422C 8002362C AFA40028 */        sw $a0, 0x28($sp)
  /* 024230 80023630 240E0001 */     addiu $t6, $zero, 1
  /* 024234 80023634 3C018004 */       lui $at, %hi(D_8003CE78)
  /* 024238 80023638 AFB10018 */        sw $s1, 0x18($sp)
  /* 02423C 8002363C AFB00014 */        sw $s0, 0x14($sp)
  /* 024240 80023640 AFA5002C */        sw $a1, 0x2c($sp)
  /* 024244 80023644 AFA60030 */        sw $a2, 0x30($sp)
  /* 024248 80023648 AFA70034 */        sw $a3, 0x34($sp)
  /* 02424C 8002364C A02ECE78 */        sb $t6, %lo(D_8003CE78)($at)
  /* 024250 80023650 0C00D21C */       jal osGetThreadPri
  /* 024254 80023654 00002025 */        or $a0, $zero, $zero
  /* 024258 80023658 AFA20020 */        sw $v0, 0x20($sp)
  /* 02425C 8002365C 00002025 */        or $a0, $zero, $zero
  /* 024260 80023660 0C00D1E4 */       jal osSetThreadPri
  /* 024264 80023664 240500FA */     addiu $a1, $zero, 0xfa
  /* 024268 80023668 00002025 */        or $a0, $zero, $zero
  /* 02426C 8002366C 0C008A42 */       jal func_80022908
  /* 024270 80023670 00002825 */        or $a1, $zero, $zero
  /* 024274 80023674 24042030 */     addiu $a0, $zero, 0x2030
  /* 024278 80023678 0C008A42 */       jal func_80022908
  /* 02427C 8002367C 00002825 */        or $a1, $zero, $zero
  /* 024280 80023680 00002025 */        or $a0, $zero, $zero
  /* 024284 80023684 0C008A42 */       jal func_80022908
  /* 024288 80023688 00002825 */        or $a1, $zero, $zero
  /* 02428C 8002368C 24040808 */     addiu $a0, $zero, 0x808
  /* 024290 80023690 0C008A42 */       jal func_80022908
  /* 024294 80023694 00002825 */        or $a1, $zero, $zero
  /* 024298 80023698 00002025 */        or $a0, $zero, $zero
  /* 02429C 8002369C 0C008A42 */       jal func_80022908
  /* 0242A0 800236A0 00002825 */        or $a1, $zero, $zero
  /* 0242A4 800236A4 34048200 */       ori $a0, $zero, 0x8200
  /* 0242A8 800236A8 0C008A42 */       jal func_80022908
  /* 0242AC 800236AC 00002825 */        or $a1, $zero, $zero
  /* 0242B0 800236B0 00002025 */        or $a0, $zero, $zero
  /* 0242B4 800236B4 0C008A42 */       jal func_80022908
  /* 0242B8 800236B8 00002825 */        or $a1, $zero, $zero
  /* 0242BC 800236BC 24044100 */     addiu $a0, $zero, 0x4100
  /* 0242C0 800236C0 0C008A42 */       jal func_80022908
  /* 0242C4 800236C4 00002825 */        or $a1, $zero, $zero
  /* 0242C8 800236C8 00002025 */        or $a0, $zero, $zero
  /* 0242CC 800236CC 0C008A42 */       jal func_80022908
  /* 0242D0 800236D0 00002825 */        or $a1, $zero, $zero
  /* 0242D4 800236D4 24040404 */     addiu $a0, $zero, 0x404
  /* 0242D8 800236D8 0C008A42 */       jal func_80022908
  /* 0242DC 800236DC 00002825 */        or $a1, $zero, $zero
  /* 0242E0 800236E0 03A08825 */        or $s1, $sp, $zero
  /* 0242E4 800236E4 2631002F */     addiu $s1, $s1, 0x2f
  /* 0242E8 800236E8 2401FFFC */     addiu $at, $zero, -4
  /* 0242EC 800236EC 02218824 */       and $s1, $s1, $at
  .L800236F0:
  /* 0242F0 800236F0 0C00E58C */       jal osViGetCurrentFramebuffer
  /* 0242F4 800236F4 00000000 */       nop 
  /* 0242F8 800236F8 00408025 */        or $s0, $v0, $zero
  /* 0242FC 800236FC 24040019 */     addiu $a0, $zero, 0x19
  /* 024300 80023700 24050014 */     addiu $a1, $zero, 0x14
  /* 024304 80023704 2406010E */     addiu $a2, $zero, 0x10e
  /* 024308 80023708 0C0088FD */       jal func_800223F4
  /* 02430C 8002370C 24070019 */     addiu $a3, $zero, 0x19
  /* 024310 80023710 2404001E */     addiu $a0, $zero, 0x1e
  /* 024314 80023714 0C008C04 */       jal func_80023010
  /* 024318 80023718 24050019 */     addiu $a1, $zero, 0x19
  /* 02431C 8002371C 8FA40028 */        lw $a0, 0x28($sp)
  /* 024320 80023720 0C008C09 */       jal func_80023024
  /* 024324 80023724 02202825 */        or $a1, $s1, $zero
  /* 024328 80023728 00002025 */        or $a0, $zero, $zero
  /* 02432C 8002372C 0C008A42 */       jal func_80022908
  /* 024330 80023730 02002825 */        or $a1, $s0, $zero
  /* 024334 80023734 1440FFEE */      bnez $v0, .L800236F0
  /* 024338 80023738 00000000 */       nop 
  /* 02433C 8002373C 24042030 */     addiu $a0, $zero, 0x2030
  /* 024340 80023740 0C008A42 */       jal func_80022908
  /* 024344 80023744 02002825 */        or $a1, $s0, $zero
  /* 024348 80023748 1440FFE9 */      bnez $v0, .L800236F0
  /* 02434C 8002374C 00000000 */       nop 
  /* 024350 80023750 00002025 */        or $a0, $zero, $zero
  /* 024354 80023754 0C00D1E4 */       jal osSetThreadPri
  /* 024358 80023758 8FA50020 */        lw $a1, 0x20($sp)
  /* 02435C 8002375C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 024360 80023760 3C018004 */       lui $at, %hi(D_8003CE78)
  /* 024364 80023764 8FB00014 */        lw $s0, 0x14($sp)
  /* 024368 80023768 8FB10018 */        lw $s1, 0x18($sp)
  /* 02436C 8002376C A020CE78 */        sb $zero, %lo(D_8003CE78)($at)
  /* 024370 80023770 03E00008 */        jr $ra
  /* 024374 80023774 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_80023778
  /* 024378 80023778 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 02437C 8002377C AFB10018 */        sw $s1, 0x18($sp)
  /* 024380 80023780 00808825 */        or $s1, $a0, $zero
  /* 024384 80023784 AFBF001C */        sw $ra, 0x1c($sp)
  /* 024388 80023788 240E0001 */     addiu $t6, $zero, 1
  /* 02438C 8002378C 3C018004 */       lui $at, %hi(D_8003CE78)
  /* 024390 80023790 AFB00014 */        sw $s0, 0x14($sp)
  /* 024394 80023794 A02ECE78 */        sb $t6, %lo(D_8003CE78)($at)
  /* 024398 80023798 0C00D21C */       jal osGetThreadPri
  /* 02439C 8002379C 00002025 */        or $a0, $zero, $zero
  /* 0243A0 800237A0 AFA20024 */        sw $v0, 0x24($sp)
  /* 0243A4 800237A4 00002025 */        or $a0, $zero, $zero
  /* 0243A8 800237A8 0C00D1E4 */       jal osSetThreadPri
  /* 0243AC 800237AC 240500FA */     addiu $a1, $zero, 0xfa
  .L800237B0:
  /* 0243B0 800237B0 0C00E58C */       jal osViGetCurrentFramebuffer
  /* 0243B4 800237B4 00000000 */       nop 
  /* 0243B8 800237B8 00408025 */        or $s0, $v0, $zero
  /* 0243BC 800237BC 24040019 */     addiu $a0, $zero, 0x19
  /* 0243C0 800237C0 24050014 */     addiu $a1, $zero, 0x14
  /* 0243C4 800237C4 2406010E */     addiu $a2, $zero, 0x10e
  /* 0243C8 800237C8 0C0088FD */       jal func_800223F4
  /* 0243CC 800237CC 240700D2 */     addiu $a3, $zero, 0xd2
  /* 0243D0 800237D0 2404001E */     addiu $a0, $zero, 0x1e
  /* 0243D4 800237D4 0C008C04 */       jal func_80023010
  /* 0243D8 800237D8 24050019 */     addiu $a1, $zero, 0x19
  /* 0243DC 800237DC 0220F809 */      jalr $s1
  /* 0243E0 800237E0 00000000 */       nop 
  /* 0243E4 800237E4 00002025 */        or $a0, $zero, $zero
  /* 0243E8 800237E8 0C008A42 */       jal func_80022908
  /* 0243EC 800237EC 02002825 */        or $a1, $s0, $zero
  /* 0243F0 800237F0 1440FFEF */      bnez $v0, .L800237B0
  /* 0243F4 800237F4 00000000 */       nop 
  /* 0243F8 800237F8 24042030 */     addiu $a0, $zero, 0x2030
  /* 0243FC 800237FC 0C008A42 */       jal func_80022908
  /* 024400 80023800 02002825 */        or $a1, $s0, $zero
  /* 024404 80023804 1440FFEA */      bnez $v0, .L800237B0
  /* 024408 80023808 00000000 */       nop 
  /* 02440C 8002380C 00002025 */        or $a0, $zero, $zero
  /* 024410 80023810 0C00D1E4 */       jal osSetThreadPri
  /* 024414 80023814 8FA50024 */        lw $a1, 0x24($sp)
  /* 024418 80023818 8FBF001C */        lw $ra, 0x1c($sp)
  /* 02441C 8002381C 3C018004 */       lui $at, %hi(D_8003CE78)
  /* 024420 80023820 8FB00014 */        lw $s0, 0x14($sp)
  /* 024424 80023824 8FB10018 */        lw $s1, 0x18($sp)
  /* 024428 80023828 A020CE78 */        sb $zero, %lo(D_8003CE78)($at)
  /* 02442C 8002382C 03E00008 */        jr $ra
  /* 024430 80023830 27BD0028 */     addiu $sp, $sp, 0x28

  /* 024434 80023834 00000000 */       nop 
  /* 024438 80023838 00000000 */       nop 
  /* 02443C 8002383C 00000000 */       nop 
