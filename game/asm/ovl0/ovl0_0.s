.include "macros.inc"

# data
.section .data

# Float Table (sin?)
glabel D_ovl0_800D4CA0
  /* D460 050680 800D4CA0 */
  .4byte 0x000000 # .float 0.0
  .incbin "ovl0.raw.bin", 0xD464, 0xFF8

# final entry of table from above
glabel D_ovl0_800D5C9C
  /* E45C 05167C 800D5C9C */
  .4byte 0x3f800000 # .float 1.0

glabel D_ovl0_800D5CA0
  .incbin "ovl0.raw.bin", 0xE460, 0xC

# function pointers table?
glabel jtbl_ovl0_800D5CAC
  /* E46C 05168C 800D5CAC */  .4byte jtgt_ovl0_800C96EC
  /* E470 051690 800D5CB0 */  .4byte jtgt_ovl0_800C96EC
  /* E474 051694 800D5CB4 */  .4byte jtgt_ovl0_800C9714
  /* E478 051698 800D5CB8 */  .4byte jtgt_ovl0_800C9714
  /* E47C 05169C 800D5CBC */  .4byte jtgt_ovl0_800CA024
  /* E480 0516A0 800D5CC0 */  .4byte jtgt_ovl0_800CA024
  /* E484 0516A4 800D5CC4 */  .4byte jtgt_ovl0_800CA144
  /* E488 0516A8 800D5CC8 */  .4byte jtgt_ovl0_800CA144
  /* E48C 0516AC 800D5CCC */  .4byte jtgt_ovl0_800CA194
  /* E490 0516B0 800D5CD0 */  .4byte jtgt_ovl0_800CA194
  /* E494 0516B4 800D5CD4 */  .4byte jtgt_ovl0_800CA5C8
  /* E498 0516B8 800D5CD8 */  .4byte jtgt_ovl0_800CA5C8
  /* E49C 0516BC 800D5CDC */  .4byte jtgt_ovl0_800CAB48
  /* E4A0 0516C0 800D5CE0 */  .4byte jtgt_ovl0_800CAB48
  /* E4A4 0516C4 800D5CE4 */  .4byte jtgt_ovl0_800CB140
  /* E4A8 0516C8 800D5CE8 */  .4byte jtgt_ovl0_800CB140
  /* E4AC 0516CC 800D5CEC */  .4byte jtgt_ovl0_800CB2F0
  /* E4B0 0516D0 800D5CF0 */  .4byte jtgt_ovl0_800CB2F0
  /* E4B4 0516D4 800D5CF4 */  .4byte jtgt_ovl0_800C973C
  /* E4B8 0516D8 800D5CF8 */  .4byte jtgt_ovl0_800C973C
  /* E4BC 0516DC 800D5CFC */  .4byte func_ovl2_8010D250
  /* E4C0 0516E0 800D5D00 */  .4byte func_ovl2_8010D428
  /* E4C4 0516E4 800D5D04 */  .4byte func_ovl2_8010DE48
  .incbin "ovl0.raw.bin", 0xE4C8, 0x4
  /* E4CC 0516EC 800D5D0C */  .4byte func_ovl2_8010E00C
  .incbin "ovl0.raw.bin", 0xE4D0, 0x4

glabel jtbl_ovl0_800D5D14
  /* E4D4 0516F4 800D5D14 */  .4byte jtgt_ovl0_800C994C
  /* E4D8 0516F8 800D5D18 */  .4byte jtgt_ovl0_800C994C
  /* E4DC 0516FC 800D5D1C */  .4byte jtgt_ovl0_800C99CC
  /* E4E0 051700 800D5D20 */  .4byte jtgt_ovl0_800C99CC
  /* E4E4 051704 800D5D24 */  .4byte jtgt_ovl0_800C9F30
  /* E4E8 051708 800D5D28 */  .4byte jtgt_ovl0_800C9F30
  /* E4EC 05170C 800D5D2C */  .4byte jtgt_ovl0_800C9F70
  /* E4F0 051710 800D5D30 */  .4byte jtgt_ovl0_800C9F70
  /* E4F4 051714 800D5D34 */  .4byte func_ovl2_80106904
  /* E4F8 051718 800D5D38 */  .4byte func_ovl2_80106904
  /* E4FC 05171C 800D5D3C */  .4byte func_ovl2_8010E00C
  /* E500 051720 800D5D40 */  .4byte func_ovl2_8010E10C

glabel D_ovl0_800D5D44
  .incbin "ovl0.raw.bin", 0xE504, 0xC

# rodata?
.section .rodata

glabel D_ovl0_800D5E10
  /* E5D0 0517F0 800D5E10 */
  .asciz "FPE : 0 div (adfDMatrixDirecXBillboardSca) \n"
  .balign 4

glabel D_ovl0_800D5E40
  /* E600 051820 800D5E40 */
  .asciz "drawBitMap: no bitmap data!\n"
  .balign 4

glabel D_ovl0_800D5E60
  /* E620 051840 800D5E60 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E64
  /* E624 051844 800D5E64 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_ovl0_800D5E68
  /* E628 051848 800D5E68 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E6C
  /* E62C 05184C 800D5E6C */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E70
  /* E630 051850 800D5E70 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_ovl0_800D5E74
  /* E634 051854 800D5E74 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E78
  /* E638 051858 800D5E78 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E7C
  /* E63C 05185C 800D5E7C */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E80
  /* E640 051860 800D5E80 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E84
  /* E644 051864 800D5E84 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E88
  /* E648 051868 800D5E88 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E8C
  /* E64C 05186C 800D5E8C */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_ovl0_800D5E90
  /* E650 051870 800D5E90 */  .4byte jtgt_ovl0_800C9560
  /* E654 051874 800D5E94 */  .4byte jtgt_ovl0_800C9570
  /* E658 051878 800D5E98 */  .4byte jtgt_ovl0_800C9580
  /* E65C 05187C 800D5E9C */  .4byte jtgt_ovl0_800C9590
  /* E660 051880 800D5EA0 */  .4byte jtgt_ovl0_800C960C
  /* E664 051884 800D5EA4 */  .4byte jtgt_ovl0_800C9624
  /* E668 051888 800D5EA8 */  .4byte jtgt_ovl0_800C963C
  /* E66C 05188C 800D5EAC */  .4byte jtgt_ovl0_800C9654
  /* E670 051890 800D5EB0 */  .4byte jtgt_ovl0_800C9664
  /* E674 051894 800D5EB4 */  .4byte jtgt_ovl0_800C9674

glabel D_ovl0_800D5EB8
  /* E678 051898 800D5EB8 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_ovl0_800D5EBC
  /* E67C 05189C 800D5EBC */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5EC0
  /* E680 0518A0 800D5EC0 */
  .4byte 0x3f7fbe77 # .float 0.999

glabel D_ovl0_800D5EC4
  /* E684 0518A4 800D5EC4 */
  .4byte 0x38d1b717 # .float 0.0001

glabel D_ovl0_800D5EC8
  /* E688 0518A8 800D5EC8 */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_ovl0_800D5ECC
  /* E68C 0518AC 800D5ECC */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_ovl0_800D5ED0
  /* E690 0518B0 800D5ED0 */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_ovl0_800D5ED4
  /* E694 0518B4 800D5ED4 */
  .4byte 0x3f7ff972 # .float 0.9999
  .incbin "ovl0.raw.bin", 0xE698, 0x8

.section .bss
glabel D_ovl0_800D62B0
    .space 2
glabel D_ovl0_800D62B2
    .space 2
glabel D_ovl0_800D62B4
    .space 4
glabel D_ovl0_800D62B8
    .space 4
glabel D_ovl0_800D62BC
    .space 4
glabel D_ovl0_800D62C0
    .space 4
glabel D_ovl0_800D62C4
    .space 4
glabel D_ovl0_800D62C8
    .space 8
glabel D_ovl0_800D62D0
    .space 16

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Text Sections
#  0x800C7840 -> 0x800D4CA0

glabel func_ovl0_800C7840
  /* 043220 800C7840 3C01800D */       lui $at, %hi(D_ovl0_800D5E60)
  /* 043224 800C7844 C4245E60 */      lwc1 $f4, %lo(D_ovl0_800D5E60)($at)
  /* 043228 800C7848 3C01800D */       lui $at, 0x800d
  /* 04322C 800C784C 46046182 */     mul.s $f6, $f12, $f4
  /* 043230 800C7850 4600320D */ trunc.w.s $f8, $f6
  /* 043234 800C7854 44024000 */      mfc1 $v0, $f8
  /* 043238 800C7858 00000000 */       nop 
  /* 04323C 800C785C 30420FFF */      andi $v0, $v0, 0xfff
  /* 043240 800C7860 3042FFFF */      andi $v0, $v0, 0xffff
  /* 043244 800C7864 304F0400 */      andi $t7, $v0, 0x400
  /* 043248 800C7868 11E00008 */      beqz $t7, .L800C788C
  /* 04324C 800C786C 304B0800 */      andi $t3, $v0, 0x800
  /* 043250 800C7870 305803FF */      andi $t8, $v0, 0x3ff
  /* 043254 800C7874 0018C880 */       sll $t9, $t8, 2
  /* 043258 800C7878 00194023 */      negu $t0, $t9
  /* 04325C 800C787C 3C01800D */       lui $at, %hi(D_ovl0_800D4CA0)
  /* 043260 800C7880 00280821 */      addu $at, $at, $t0
  /* 043264 800C7884 10000005 */         b .L800C789C
  /* 043268 800C7888 C4225C9C */      lwc1 $f2, %lo(D_ovl0_800D5C9C)($at)
  .L800C788C:
  /* 04326C 800C788C 304903FF */      andi $t1, $v0, 0x3ff
  /* 043270 800C7890 00095080 */       sll $t2, $t1, 2
  /* 043274 800C7894 002A0821 */      addu $at, $at, $t2
  /* 043278 800C7898 C4224CA0 */      lwc1 $f2, %lo(D_ovl0_800D4CA0)($at)
  .L800C789C:
  /* 04327C 800C789C 51600004 */      beql $t3, $zero, .L800C78B0
  /* 043280 800C78A0 46001006 */     mov.s $f0, $f2
  /* 043284 800C78A4 03E00008 */        jr $ra
  /* 043288 800C78A8 46001007 */     neg.s $f0, $f2

  /* 04328C 800C78AC 46001006 */     mov.s $f0, $f2
  .L800C78B0:
  /* 043290 800C78B0 03E00008 */        jr $ra
  /* 043294 800C78B4 00000000 */       nop 

glabel func_ovl0_800C78B8
  /* 043298 800C78B8 3C01800D */       lui $at, %hi(D_ovl0_800D5E64)
  /* 04329C 800C78BC C4245E64 */      lwc1 $f4, %lo(D_ovl0_800D5E64)($at)
  /* 0432A0 800C78C0 3C01800D */       lui $at, %hi(D_ovl0_800D5E68)
  /* 0432A4 800C78C4 C4285E68 */      lwc1 $f8, %lo(D_ovl0_800D5E68)($at)
  /* 0432A8 800C78C8 46046180 */     add.s $f6, $f12, $f4
  /* 0432AC 800C78CC 3C01800D */       lui $at, 0x800d
  /* 0432B0 800C78D0 46083282 */     mul.s $f10, $f6, $f8
  /* 0432B4 800C78D4 4600540D */ trunc.w.s $f16, $f10
  /* 0432B8 800C78D8 44028000 */      mfc1 $v0, $f16
  /* 0432BC 800C78DC 00000000 */       nop 
  /* 0432C0 800C78E0 30420FFF */      andi $v0, $v0, 0xfff
  /* 0432C4 800C78E4 3042FFFF */      andi $v0, $v0, 0xffff
  /* 0432C8 800C78E8 304F0400 */      andi $t7, $v0, 0x400
  /* 0432CC 800C78EC 11E00008 */      beqz $t7, .L800C7910
  /* 0432D0 800C78F0 304B0800 */      andi $t3, $v0, 0x800
  /* 0432D4 800C78F4 305803FF */      andi $t8, $v0, 0x3ff
  /* 0432D8 800C78F8 0018C880 */       sll $t9, $t8, 2
  /* 0432DC 800C78FC 00194023 */      negu $t0, $t9
  /* 0432E0 800C7900 3C01800D */       lui $at, %hi(D_ovl0_800D4CA0)
  /* 0432E4 800C7904 00280821 */      addu $at, $at, $t0
  /* 0432E8 800C7908 10000005 */         b .L800C7920
  /* 0432EC 800C790C C4225C9C */      lwc1 $f2, %lo(D_ovl0_800D5C9C)($at)
  .L800C7910:
  /* 0432F0 800C7910 304903FF */      andi $t1, $v0, 0x3ff
  /* 0432F4 800C7914 00095080 */       sll $t2, $t1, 2
  /* 0432F8 800C7918 002A0821 */      addu $at, $at, $t2
  /* 0432FC 800C791C C4224CA0 */      lwc1 $f2, %lo(D_ovl0_800D4CA0)($at)
  .L800C7920:
  /* 043300 800C7920 51600004 */      beql $t3, $zero, .L800C7934
  /* 043304 800C7924 46001006 */     mov.s $f0, $f2
  /* 043308 800C7928 03E00008 */        jr $ra
  /* 04330C 800C792C 46001007 */     neg.s $f0, $f2

  /* 043310 800C7930 46001006 */     mov.s $f0, $f2
  .L800C7934:
  /* 043314 800C7934 03E00008 */        jr $ra
  /* 043318 800C7938 00000000 */       nop 

glabel func_ovl0_800C793C
  /* 04331C 800C793C 3C01800D */       lui $at, %hi(D_ovl0_800D5E6C)
  /* 043320 800C7940 C4245E6C */      lwc1 $f4, %lo(D_ovl0_800D5E6C)($at)
  /* 043324 800C7944 3C01800D */       lui $at, 0x800d
  /* 043328 800C7948 46046182 */     mul.s $f6, $f12, $f4
  /* 04332C 800C794C 4600320D */ trunc.w.s $f8, $f6
  /* 043330 800C7950 44034000 */      mfc1 $v1, $f8
  /* 043334 800C7954 00000000 */       nop 
  /* 043338 800C7958 30630FFF */      andi $v1, $v1, 0xfff
  /* 04333C 800C795C 3064FFFF */      andi $a0, $v1, 0xffff
  /* 043340 800C7960 308F0400 */      andi $t7, $a0, 0x400
  /* 043344 800C7964 11E00008 */      beqz $t7, .L800C7988
  /* 043348 800C7968 308B0800 */      andi $t3, $a0, 0x800
  /* 04334C 800C796C 309803FF */      andi $t8, $a0, 0x3ff
  /* 043350 800C7970 0018C880 */       sll $t9, $t8, 2
  /* 043354 800C7974 00194023 */      negu $t0, $t9
  /* 043358 800C7978 3C01800D */       lui $at, %hi(D_ovl0_800D4CA0)
  /* 04335C 800C797C 00280821 */      addu $at, $at, $t0
  /* 043360 800C7980 10000005 */         b .L800C7998
  /* 043364 800C7984 C4225C9C */      lwc1 $f2, %lo(D_ovl0_800D5C9C)($at)
  .L800C7988:
  /* 043368 800C7988 308903FF */      andi $t1, $a0, 0x3ff
  /* 04336C 800C798C 00095080 */       sll $t2, $t1, 2
  /* 043370 800C7990 002A0821 */      addu $at, $at, $t2
  /* 043374 800C7994 C4224CA0 */      lwc1 $f2, %lo(D_ovl0_800D4CA0)($at)
  .L800C7998:
  /* 043378 800C7998 11600002 */      beqz $t3, .L800C79A4
  /* 04337C 800C799C 24820400 */     addiu $v0, $a0, 0x400
  /* 043380 800C79A0 46001087 */     neg.s $f2, $f2
  .L800C79A4:
  /* 043384 800C79A4 30420FFF */      andi $v0, $v0, 0xfff
  /* 043388 800C79A8 3042FFFF */      andi $v0, $v0, 0xffff
  /* 04338C 800C79AC 304C0400 */      andi $t4, $v0, 0x400
  /* 043390 800C79B0 11800008 */      beqz $t4, .L800C79D4
  /* 043394 800C79B4 00401825 */        or $v1, $v0, $zero
  /* 043398 800C79B8 304D03FF */      andi $t5, $v0, 0x3ff
  /* 04339C 800C79BC 000D7080 */       sll $t6, $t5, 2
  /* 0433A0 800C79C0 000E7823 */      negu $t7, $t6
  /* 0433A4 800C79C4 3C01800D */       lui $at, %hi(D_ovl0_800D5C9C)
  /* 0433A8 800C79C8 002F0821 */      addu $at, $at, $t7
  /* 0433AC 800C79CC 10000006 */         b .L800C79E8
  /* 0433B0 800C79D0 C42C5C9C */      lwc1 $f12, %lo(D_ovl0_800D5C9C)($at)
  .L800C79D4:
  /* 0433B4 800C79D4 307803FF */      andi $t8, $v1, 0x3ff
  /* 0433B8 800C79D8 0018C880 */       sll $t9, $t8, 2
  /* 0433BC 800C79DC 3C01800D */       lui $at, %hi(D_ovl0_800D4CA0)
  /* 0433C0 800C79E0 00390821 */      addu $at, $at, $t9
  /* 0433C4 800C79E4 C42C4CA0 */      lwc1 $f12, %lo(D_ovl0_800D4CA0)($at)
  .L800C79E8:
  /* 0433C8 800C79E8 30680800 */      andi $t0, $v1, 0x800
  /* 0433CC 800C79EC 11000002 */      beqz $t0, .L800C79F8
  /* 0433D0 800C79F0 00000000 */       nop 
  /* 0433D4 800C79F4 46006307 */     neg.s $f12, $f12
  .L800C79F8:
  /* 0433D8 800C79F8 03E00008 */        jr $ra
  /* 0433DC 800C79FC 460C1003 */     div.s $f0, $f2, $f12

glabel func_ovl0_800C7A00
  /* 0433E0 800C7A00 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0433E4 800C7A04 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0433E8 800C7A08 C4800000 */      lwc1 $f0, ($a0)
  /* 0433EC 800C7A0C C4820004 */      lwc1 $f2, 4($a0)
  /* 0433F0 800C7A10 AFA40018 */        sw $a0, 0x18($sp)
  /* 0433F4 800C7A14 46000102 */     mul.s $f4, $f0, $f0
  /* 0433F8 800C7A18 00000000 */       nop 
  /* 0433FC 800C7A1C 46021182 */     mul.s $f6, $f2, $f2
  /* 043400 800C7A20 0C00CD44 */       jal sqrtf
  /* 043404 800C7A24 46062300 */     add.s $f12, $f4, $f6
  /* 043408 800C7A28 44801000 */      mtc1 $zero, $f2
  /* 04340C 800C7A2C 8FA40018 */        lw $a0, 0x18($sp)
  /* 043410 800C7A30 46000306 */     mov.s $f12, $f0
  /* 043414 800C7A34 46020032 */    c.eq.s $f0, $f2
  /* 043418 800C7A38 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04341C 800C7A3C 45020004 */     bc1fl .L800C7A50
  /* 043420 800C7A40 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  /* 043424 800C7A44 1000000B */         b .L800C7A74
  /* 043428 800C7A48 46001006 */     mov.s $f0, $f2
  /* 04342C 800C7A4C 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  .L800C7A50:
  /* 043430 800C7A50 C48A0000 */      lwc1 $f10, ($a0)
  /* 043434 800C7A54 C4920004 */      lwc1 $f18, 4($a0)
  /* 043438 800C7A58 460C4083 */     div.s $f2, $f8, $f12
  /* 04343C 800C7A5C 46006006 */     mov.s $f0, $f12
  /* 043440 800C7A60 46025402 */     mul.s $f16, $f10, $f2
  /* 043444 800C7A64 00000000 */       nop 
  /* 043448 800C7A68 46029102 */     mul.s $f4, $f18, $f2
  /* 04344C 800C7A6C E4900000 */      swc1 $f16, ($a0)
  /* 043450 800C7A70 E4840004 */      swc1 $f4, 4($a0)
  .L800C7A74:
  /* 043454 800C7A74 8FBF0014 */        lw $ra, 0x14($sp)
  /* 043458 800C7A78 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04345C 800C7A7C 03E00008 */        jr $ra
  /* 043460 800C7A80 00000000 */       nop 

glabel func_ovl0_800C7A84
  /* 043464 800C7A84 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 043468 800C7A88 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04346C 800C7A8C C4800000 */      lwc1 $f0, ($a0)
  /* 043470 800C7A90 C4820004 */      lwc1 $f2, 4($a0)
  /* 043474 800C7A94 46000102 */     mul.s $f4, $f0, $f0
  /* 043478 800C7A98 00000000 */       nop 
  /* 04347C 800C7A9C 46021182 */     mul.s $f6, $f2, $f2
  /* 043480 800C7AA0 0C00CD44 */       jal sqrtf
  /* 043484 800C7AA4 46062300 */     add.s $f12, $f4, $f6
  /* 043488 800C7AA8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04348C 800C7AAC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 043490 800C7AB0 03E00008 */        jr $ra
  /* 043494 800C7AB4 00000000 */       nop 

glabel func_ovl0_800C7AB8
  /* 043498 800C7AB8 C4840000 */      lwc1 $f4, ($a0)
  /* 04349C 800C7ABC C4A60000 */      lwc1 $f6, ($a1)
  /* 0434A0 800C7AC0 C48A0004 */      lwc1 $f10, 4($a0)
  /* 0434A4 800C7AC4 00801025 */        or $v0, $a0, $zero
  /* 0434A8 800C7AC8 46062200 */     add.s $f8, $f4, $f6
  /* 0434AC 800C7ACC E4880000 */      swc1 $f8, ($a0)
  /* 0434B0 800C7AD0 C4B00004 */      lwc1 $f16, 4($a1)
  /* 0434B4 800C7AD4 46105480 */     add.s $f18, $f10, $f16
  /* 0434B8 800C7AD8 03E00008 */        jr $ra
  /* 0434BC 800C7ADC E4920004 */      swc1 $f18, 4($a0)

glabel func_ovl0_800C7AE0
  /* 0434C0 800C7AE0 44856000 */      mtc1 $a1, $f12
  /* 0434C4 800C7AE4 C4840000 */      lwc1 $f4, ($a0)
  /* 0434C8 800C7AE8 C4880004 */      lwc1 $f8, 4($a0)
  /* 0434CC 800C7AEC 00801025 */        or $v0, $a0, $zero
  /* 0434D0 800C7AF0 460C2182 */     mul.s $f6, $f4, $f12
  /* 0434D4 800C7AF4 00000000 */       nop 
  /* 0434D8 800C7AF8 460C4282 */     mul.s $f10, $f8, $f12
  /* 0434DC 800C7AFC E4860000 */      swc1 $f6, ($a0)
  /* 0434E0 800C7B00 03E00008 */        jr $ra
  /* 0434E4 800C7B04 E48A0004 */      swc1 $f10, 4($a0)

glabel func_ovl0_800C7B08
  /* 0434E8 800C7B08 C4A20000 */      lwc1 $f2, ($a1)
  /* 0434EC 800C7B0C C48C0000 */      lwc1 $f12, ($a0)
  /* 0434F0 800C7B10 C48E0004 */      lwc1 $f14, 4($a0)
  /* 0434F4 800C7B14 C4A60004 */      lwc1 $f6, 4($a1)
  /* 0434F8 800C7B18 460C1102 */     mul.s $f4, $f2, $f12
  /* 0434FC 800C7B1C 3C01C000 */       lui $at, (0xC0000000 >> 16) # -2.0
  /* 043500 800C7B20 44818000 */      mtc1 $at, $f16 # -2.0 to cop1
  /* 043504 800C7B24 460E3202 */     mul.s $f8, $f6, $f14
  /* 043508 800C7B28 00801025 */        or $v0, $a0, $zero
  /* 04350C 800C7B2C 46082280 */     add.s $f10, $f4, $f8
  /* 043510 800C7B30 46105002 */     mul.s $f0, $f10, $f16
  /* 043514 800C7B34 00000000 */       nop 
  /* 043518 800C7B38 46001482 */     mul.s $f18, $f2, $f0
  /* 04351C 800C7B3C 46126180 */     add.s $f6, $f12, $f18
  /* 043520 800C7B40 E4860000 */      swc1 $f6, ($a0)
  /* 043524 800C7B44 C4A40004 */      lwc1 $f4, 4($a1)
  /* 043528 800C7B48 46002202 */     mul.s $f8, $f4, $f0
  /* 04352C 800C7B4C 46087280 */     add.s $f10, $f14, $f8
  /* 043530 800C7B50 03E00008 */        jr $ra
  /* 043534 800C7B54 E48A0004 */      swc1 $f10, 4($a0)

glabel func_ovl0_800C7B58
  /* 043538 800C7B58 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04353C 800C7B5C AFBF0014 */        sw $ra, 0x14($sp)
  /* 043540 800C7B60 C4800000 */      lwc1 $f0, ($a0)
  /* 043544 800C7B64 C4820004 */      lwc1 $f2, 4($a0)
  /* 043548 800C7B68 C48E0008 */      lwc1 $f14, 8($a0)
  /* 04354C 800C7B6C 46000102 */     mul.s $f4, $f0, $f0
  /* 043550 800C7B70 AFA50024 */        sw $a1, 0x24($sp)
  /* 043554 800C7B74 AFA40020 */        sw $a0, 0x20($sp)
  /* 043558 800C7B78 46021182 */     mul.s $f6, $f2, $f2
  /* 04355C 800C7B7C 46062200 */     add.s $f8, $f4, $f6
  /* 043560 800C7B80 460E7282 */     mul.s $f10, $f14, $f14
  /* 043564 800C7B84 0C00CD44 */       jal sqrtf
  /* 043568 800C7B88 460A4300 */     add.s $f12, $f8, $f10
  /* 04356C 800C7B8C 8FA50024 */        lw $a1, 0x24($sp)
  /* 043570 800C7B90 E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 043574 800C7B94 C4A20000 */      lwc1 $f2, ($a1)
  /* 043578 800C7B98 C4AE0004 */      lwc1 $f14, 4($a1)
  /* 04357C 800C7B9C C4B00008 */      lwc1 $f16, 8($a1)
  /* 043580 800C7BA0 46021482 */     mul.s $f18, $f2, $f2
  /* 043584 800C7BA4 00000000 */       nop 
  /* 043588 800C7BA8 460E7102 */     mul.s $f4, $f14, $f14
  /* 04358C 800C7BAC 46049180 */     add.s $f6, $f18, $f4
  /* 043590 800C7BB0 46108202 */     mul.s $f8, $f16, $f16
  /* 043594 800C7BB4 0C00CD44 */       jal sqrtf
  /* 043598 800C7BB8 46083300 */     add.s $f12, $f6, $f8
  /* 04359C 800C7BBC 8FA40020 */        lw $a0, 0x20($sp)
  /* 0435A0 800C7BC0 8FA50024 */        lw $a1, 0x24($sp)
  /* 0435A4 800C7BC4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0435A8 800C7BC8 C48A0000 */      lwc1 $f10, ($a0)
  /* 0435AC 800C7BCC C4B20000 */      lwc1 $f18, ($a1)
  /* 0435B0 800C7BD0 C4860004 */      lwc1 $f6, 4($a0)
  /* 0435B4 800C7BD4 C4A80004 */      lwc1 $f8, 4($a1)
  /* 0435B8 800C7BD8 46125102 */     mul.s $f4, $f10, $f18
  /* 0435BC 800C7BDC 00000000 */       nop 
  /* 0435C0 800C7BE0 46083282 */     mul.s $f10, $f6, $f8
  /* 0435C4 800C7BE4 C4860008 */      lwc1 $f6, 8($a0)
  /* 0435C8 800C7BE8 C4A80008 */      lwc1 $f8, 8($a1)
  /* 0435CC 800C7BEC 460A2480 */     add.s $f18, $f4, $f10
  /* 0435D0 800C7BF0 46083102 */     mul.s $f4, $f6, $f8
  /* 0435D4 800C7BF4 C7A6001C */      lwc1 $f6, 0x1c($sp)
  /* 0435D8 800C7BF8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0435DC 800C7BFC 46060200 */     add.s $f8, $f0, $f6
  /* 0435E0 800C7C00 46049280 */     add.s $f10, $f18, $f4
  /* 0435E4 800C7C04 03E00008 */        jr $ra
  /* 0435E8 800C7C08 46085003 */     div.s $f0, $f10, $f8

glabel func_ovl0_800C7C0C
  /* 0435EC 800C7C0C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0435F0 800C7C10 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0435F4 800C7C14 AFA50024 */        sw $a1, 0x24($sp)
  /* 0435F8 800C7C18 C4800000 */      lwc1 $f0, ($a0)
  /* 0435FC 800C7C1C C4820004 */      lwc1 $f2, 4($a0)
  /* 043600 800C7C20 AFA40020 */        sw $a0, 0x20($sp)
  /* 043604 800C7C24 46000102 */     mul.s $f4, $f0, $f0
  /* 043608 800C7C28 00000000 */       nop 
  /* 04360C 800C7C2C 46021182 */     mul.s $f6, $f2, $f2
  /* 043610 800C7C30 0C00CD44 */       jal sqrtf
  /* 043614 800C7C34 46062300 */     add.s $f12, $f4, $f6
  /* 043618 800C7C38 8FA20024 */        lw $v0, 0x24($sp)
  /* 04361C 800C7C3C E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 043620 800C7C40 C4420000 */      lwc1 $f2, ($v0)
  /* 043624 800C7C44 C44E0004 */      lwc1 $f14, 4($v0)
  /* 043628 800C7C48 46021202 */     mul.s $f8, $f2, $f2
  /* 04362C 800C7C4C 00000000 */       nop 
  /* 043630 800C7C50 460E7282 */     mul.s $f10, $f14, $f14
  /* 043634 800C7C54 0C00CD44 */       jal sqrtf
  /* 043638 800C7C58 460A4300 */     add.s $f12, $f8, $f10
  /* 04363C 800C7C5C 8FA20024 */        lw $v0, 0x24($sp)
  /* 043640 800C7C60 8FA40020 */        lw $a0, 0x20($sp)
  /* 043644 800C7C64 8FBF0014 */        lw $ra, 0x14($sp)
  /* 043648 800C7C68 C4520000 */      lwc1 $f18, ($v0)
  /* 04364C 800C7C6C C4900000 */      lwc1 $f16, ($a0)
  /* 043650 800C7C70 C4480004 */      lwc1 $f8, 4($v0)
  /* 043654 800C7C74 C4860004 */      lwc1 $f6, 4($a0)
  /* 043658 800C7C78 46128102 */     mul.s $f4, $f16, $f18
  /* 04365C 800C7C7C C7B2001C */      lwc1 $f18, 0x1c($sp)
  /* 043660 800C7C80 27BD0020 */     addiu $sp, $sp, 0x20
  /* 043664 800C7C84 46083282 */     mul.s $f10, $f6, $f8
  /* 043668 800C7C88 46120180 */     add.s $f6, $f0, $f18
  /* 04366C 800C7C8C 460A2400 */     add.s $f16, $f4, $f10
  /* 043670 800C7C90 03E00008 */        jr $ra
  /* 043674 800C7C94 46068003 */     div.s $f0, $f16, $f6

glabel func_ovl0_800C7C98
  /* 043678 800C7C98 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 04367C 800C7C9C AFB00018 */        sw $s0, 0x18($sp)
  /* 043680 800C7CA0 00808025 */        or $s0, $a0, $zero
  /* 043684 800C7CA4 AFA60030 */        sw $a2, 0x30($sp)
  /* 043688 800C7CA8 00A03025 */        or $a2, $a1, $zero
  /* 04368C 800C7CAC AFBF001C */        sw $ra, 0x1c($sp)
  /* 043690 800C7CB0 AFA5002C */        sw $a1, 0x2c($sp)
  /* 043694 800C7CB4 00A02025 */        or $a0, $a1, $zero
  /* 043698 800C7CB8 02002825 */        or $a1, $s0, $zero
  /* 04369C 800C7CBC 0C031F03 */       jal func_ovl0_800C7C0C
  /* 0436A0 800C7CC0 AFA6002C */        sw $a2, 0x2c($sp)
  /* 0436A4 800C7CC4 44802000 */      mtc1 $zero, $f4
  /* 0436A8 800C7CC8 8FA6002C */        lw $a2, 0x2c($sp)
  /* 0436AC 800C7CCC 46000086 */     mov.s $f2, $f0
  /* 0436B0 800C7CD0 4604003E */    c.le.s $f0, $f4
  /* 0436B4 800C7CD4 C7A60030 */      lwc1 $f6, 0x30($sp)
  /* 0436B8 800C7CD8 3C01800D */       lui $at, %hi(D_ovl0_800D5E70)
  /* 0436BC 800C7CDC 45020030 */     bc1fl .L800C7DA0
  /* 0436C0 800C7CE0 00001025 */        or $v0, $zero, $zero
  /* 0436C4 800C7CE4 C4285E70 */      lwc1 $f8, %lo(D_ovl0_800D5E70)($at)
  /* 0436C8 800C7CE8 AFA6002C */        sw $a2, 0x2c($sp)
  /* 0436CC 800C7CEC E7A20024 */      swc1 $f2, 0x24($sp)
  /* 0436D0 800C7CF0 0C00D734 */       jal cosf
  /* 0436D4 800C7CF4 46083300 */     add.s $f12, $f6, $f8
  /* 0436D8 800C7CF8 C7A20024 */      lwc1 $f2, 0x24($sp)
  /* 0436DC 800C7CFC 8FA6002C */        lw $a2, 0x2c($sp)
  /* 0436E0 800C7D00 02002025 */        or $a0, $s0, $zero
  /* 0436E4 800C7D04 4602003E */    c.le.s $f0, $f2
  /* 0436E8 800C7D08 00000000 */       nop 
  /* 0436EC 800C7D0C 45020024 */     bc1fl .L800C7DA0
  /* 0436F0 800C7D10 00001025 */        or $v0, $zero, $zero
  /* 0436F4 800C7D14 C4CA0000 */      lwc1 $f10, ($a2)
  /* 0436F8 800C7D18 C6100004 */      lwc1 $f16, 4($s0)
  /* 0436FC 800C7D1C C4C40004 */      lwc1 $f4, 4($a2)
  /* 043700 800C7D20 C6060000 */      lwc1 $f6, ($s0)
  /* 043704 800C7D24 46105482 */     mul.s $f18, $f10, $f16
  /* 043708 800C7D28 44805000 */      mtc1 $zero, $f10
  /* 04370C 800C7D2C 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 043710 800C7D30 46062202 */     mul.s $f8, $f4, $f6
  /* 043714 800C7D34 46089301 */     sub.s $f12, $f18, $f8
  /* 043718 800C7D38 460A603C */    c.lt.s $f12, $f10
  /* 04371C 800C7D3C 00000000 */       nop 
  /* 043720 800C7D40 45020006 */     bc1fl .L800C7D5C
  /* 043724 800C7D44 44816000 */      mtc1 $at, $f12 # 1.0 to cop1
  /* 043728 800C7D48 3C01BF80 */       lui $at, (0xBF800000 >> 16) # -1.0
  /* 04372C 800C7D4C 44816000 */      mtc1 $at, $f12 # -1.0 to cop1
  /* 043730 800C7D50 10000004 */         b .L800C7D64
  /* 043734 800C7D54 AFA6002C */        sw $a2, 0x2c($sp)
  /* 043738 800C7D58 44816000 */      mtc1 $at, $f12 # -1.0 to cop1
  .L800C7D5C:
  /* 04373C 800C7D5C 00000000 */       nop 
  /* 043740 800C7D60 AFA6002C */        sw $a2, 0x2c($sp)
  .L800C7D64:
  /* 043744 800C7D64 0C031EA1 */       jal func_ovl0_800C7A84
  /* 043748 800C7D68 E7AC0020 */      swc1 $f12, 0x20($sp)
  /* 04374C 800C7D6C C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 043750 800C7D70 8FA6002C */        lw $a2, 0x2c($sp)
  /* 043754 800C7D74 24020001 */     addiu $v0, $zero, 1
  /* 043758 800C7D78 460C0082 */     mul.s $f2, $f0, $f12
  /* 04375C 800C7D7C C4D00004 */      lwc1 $f16, 4($a2)
  /* 043760 800C7D80 46008107 */     neg.s $f4, $f16
  /* 043764 800C7D84 46022182 */     mul.s $f6, $f4, $f2
  /* 043768 800C7D88 E6060000 */      swc1 $f6, ($s0)
  /* 04376C 800C7D8C C4D20000 */      lwc1 $f18, ($a2)
  /* 043770 800C7D90 46029202 */     mul.s $f8, $f18, $f2
  /* 043774 800C7D94 10000002 */         b .L800C7DA0
  /* 043778 800C7D98 E6080004 */      swc1 $f8, 4($s0)
  /* 04377C 800C7D9C 00001025 */        or $v0, $zero, $zero
  .L800C7DA0:
  /* 043780 800C7DA0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 043784 800C7DA4 8FB00018 */        lw $s0, 0x18($sp)
  /* 043788 800C7DA8 27BD0028 */     addiu $sp, $sp, 0x28
  /* 04378C 800C7DAC 03E00008 */        jr $ra
  /* 043790 800C7DB0 00000000 */       nop 

glabel func_ovl0_800C7DB4
  /* 043794 800C7DB4 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 043798 800C7DB8 3C01800D */       lui $at, %hi(D_ovl0_800D5E74)
  /* 04379C 800C7DBC C4205E74 */      lwc1 $f0, %lo(D_ovl0_800D5E74)($at)
  /* 0437A0 800C7DC0 C7A40070 */      lwc1 $f4, 0x70($sp)
  /* 0437A4 800C7DC4 C7AA0074 */      lwc1 $f10, 0x74($sp)
  /* 0437A8 800C7DC8 3C014380 */       lui $at, (0x43800000 >> 16) # 256.0
  /* 0437AC 800C7DCC 46002182 */     mul.s $f6, $f4, $f0
  /* 0437B0 800C7DD0 C7A40078 */      lwc1 $f4, 0x78($sp)
  /* 0437B4 800C7DD4 44856000 */      mtc1 $a1, $f12
  /* 0437B8 800C7DD8 46005402 */     mul.s $f16, $f10, $f0
  /* 0437BC 800C7DDC C7AA008C */      lwc1 $f10, 0x8c($sp)
  /* 0437C0 800C7DE0 3C0B8004 */       lui $t3, %hi(gSinTable)
  /* 0437C4 800C7DE4 256BB950 */     addiu $t3, $t3, %lo(gSinTable)
  /* 0437C8 800C7DE8 AFB00004 */        sw $s0, 4($sp)
  /* 0437CC 800C7DEC 44867000 */      mtc1 $a2, $f14
  /* 0437D0 800C7DF0 4600320D */ trunc.w.s $f8, $f6
  /* 0437D4 800C7DF4 46002182 */     mul.s $f6, $f4, $f0
  /* 0437D8 800C7DF8 44810000 */      mtc1 $at, $f0 # 256.0 to cop1
  /* 0437DC 800C7DFC AFA7006C */        sw $a3, 0x6c($sp)
  /* 0437E0 800C7E00 44034000 */      mfc1 $v1, $f8
  /* 0437E4 800C7E04 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0437E8 800C7E08 4600848D */ trunc.w.s $f18, $f16
  /* 0437EC 800C7E0C 46005402 */     mul.s $f16, $f10, $f0
  /* 0437F0 800C7E10 30630FFF */      andi $v1, $v1, 0xfff
  /* 0437F4 800C7E14 3065FFFF */      andi $a1, $v1, 0xffff
  /* 0437F8 800C7E18 30AF07FF */      andi $t7, $a1, 0x7ff
  /* 0437FC 800C7E1C 000FC040 */       sll $t8, $t7, 1
  /* 043800 800C7E20 0178C821 */      addu $t9, $t3, $t8
  /* 043804 800C7E24 30AE0800 */      andi $t6, $a1, 0x800
  /* 043808 800C7E28 44039000 */      mfc1 $v1, $f18
  /* 04380C 800C7E2C 97300000 */       lhu $s0, ($t9)
  /* 043810 800C7E30 4600320D */ trunc.w.s $f8, $f6
  /* 043814 800C7E34 C7AA007C */      lwc1 $f10, 0x7c($sp)
  /* 043818 800C7E38 11C00002 */      beqz $t6, .L800C7E44
  /* 04381C 800C7E3C 4600848D */ trunc.w.s $f18, $f16
  /* 043820 800C7E40 00108023 */      negu $s0, $s0
  .L800C7E44:
  /* 043824 800C7E44 24A20400 */     addiu $v0, $a1, 0x400
  /* 043828 800C7E48 304F07FF */      andi $t7, $v0, 0x7ff
  /* 04382C 800C7E4C 000FC040 */       sll $t8, $t7, 1
  /* 043830 800C7E50 0178C821 */      addu $t9, $t3, $t8
  /* 043834 800C7E54 304E0800 */      andi $t6, $v0, 0x800
  /* 043838 800C7E58 11C00002 */      beqz $t6, .L800C7E64
  /* 04383C 800C7E5C 97290000 */       lhu $t1, ($t9)
  /* 043840 800C7E60 00094823 */      negu $t1, $t1
  .L800C7E64:
  /* 043844 800C7E64 30630FFF */      andi $v1, $v1, 0xfff
  /* 043848 800C7E68 3065FFFF */      andi $a1, $v1, 0xffff
  /* 04384C 800C7E6C 30B807FF */      andi $t8, $a1, 0x7ff
  /* 043850 800C7E70 0018C840 */       sll $t9, $t8, 1
  /* 043854 800C7E74 01797021 */      addu $t6, $t3, $t9
  /* 043858 800C7E78 30AF0800 */      andi $t7, $a1, 0x800
  /* 04385C 800C7E7C 11E00002 */      beqz $t7, .L800C7E88
  /* 043860 800C7E80 95CA0000 */       lhu $t2, ($t6)
  /* 043864 800C7E84 000A5023 */      negu $t2, $t2
  .L800C7E88:
  /* 043868 800C7E88 24A20400 */     addiu $v0, $a1, 0x400
  /* 04386C 800C7E8C 305807FF */      andi $t8, $v0, 0x7ff
  /* 043870 800C7E90 0018C840 */       sll $t9, $t8, 1
  /* 043874 800C7E94 01797021 */      addu $t6, $t3, $t9
  /* 043878 800C7E98 304F0800 */      andi $t7, $v0, 0x800
  /* 04387C 800C7E9C 11E00002 */      beqz $t7, .L800C7EA8
  /* 043880 800C7EA0 95C60000 */       lhu $a2, ($t6)
  /* 043884 800C7EA4 00063023 */      negu $a2, $a2
  .L800C7EA8:
  /* 043888 800C7EA8 44024000 */      mfc1 $v0, $f8
  /* 04388C 800C7EAC 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 043890 800C7EB0 30420FFF */      andi $v0, $v0, 0xfff
  /* 043894 800C7EB4 3047FFFF */      andi $a3, $v0, 0xffff
  /* 043898 800C7EB8 30F907FF */      andi $t9, $a3, 0x7ff
  /* 04389C 800C7EBC 00197040 */       sll $t6, $t9, 1
  /* 0438A0 800C7EC0 016E7821 */      addu $t7, $t3, $t6
  /* 0438A4 800C7EC4 30F80800 */      andi $t8, $a3, 0x800
  /* 0438A8 800C7EC8 95E50000 */       lhu $a1, ($t7)
  /* 0438AC 800C7ECC 13000002 */      beqz $t8, .L800C7ED8
  /* 0438B0 800C7ED0 460A1403 */     div.s $f16, $f2, $f10
  /* 0438B4 800C7ED4 00052823 */      negu $a1, $a1
  .L800C7ED8:
  /* 0438B8 800C7ED8 24E30400 */     addiu $v1, $a3, 0x400
  /* 0438BC 800C7EDC 307907FF */      andi $t9, $v1, 0x7ff
  /* 0438C0 800C7EE0 00197040 */       sll $t6, $t9, 1
  /* 0438C4 800C7EE4 016E7821 */      addu $t7, $t3, $t6
  /* 0438C8 800C7EE8 30780800 */      andi $t8, $v1, 0x800
  /* 0438CC 800C7EEC 13000002 */      beqz $t8, .L800C7EF8
  /* 0438D0 800C7EF0 95E20000 */       lhu $v0, ($t7)
  /* 0438D4 800C7EF4 00021023 */      negu $v0, $v0
  .L800C7EF8:
  /* 0438D8 800C7EF8 C7A40090 */      lwc1 $f4, 0x90($sp)
  /* 0438DC 800C7EFC 440C9000 */      mfc1 $t4, $f18
  /* 0438E0 800C7F00 00C20019 */     multu $a2, $v0
  /* 0438E4 800C7F04 46002182 */     mul.s $f6, $f4, $f0
  /* 0438E8 800C7F08 3C03FFFF */       lui $v1, 0xffff
  /* 0438EC 800C7F0C 3C014780 */       lui $at, (0x47800000 >> 16) # 65536.0
  /* 0438F0 800C7F10 46008482 */     mul.s $f18, $f16, $f0
  /* 0438F4 800C7F14 4600320D */ trunc.w.s $f8, $f6
  /* 0438F8 800C7F18 C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 0438FC 800C7F1C 4600910D */ trunc.w.s $f4, $f18
  /* 043900 800C7F20 44074000 */      mfc1 $a3, $f8
  /* 043904 800C7F24 C7B20084 */      lwc1 $f18, 0x84($sp)
  /* 043908 800C7F28 46061203 */     div.s $f8, $f2, $f6
  /* 04390C 800C7F2C 44082000 */      mfc1 $t0, $f4
  /* 043910 800C7F30 00000000 */       nop 
  /* 043914 800C7F34 AFA80030 */        sw $t0, 0x30($sp)
  /* 043918 800C7F38 46121103 */     div.s $f4, $f2, $f18
  /* 04391C 800C7F3C 46004282 */     mul.s $f10, $f8, $f0
  /* 043920 800C7F40 4600540D */ trunc.w.s $f16, $f10
  /* 043924 800C7F44 46002182 */     mul.s $f6, $f4, $f0
  /* 043928 800C7F48 C7AA0088 */      lwc1 $f10, 0x88($sp)
  /* 04392C 800C7F4C 440D8000 */      mfc1 $t5, $f16
  /* 043930 800C7F50 46005402 */     mul.s $f16, $f10, $f0
  /* 043934 800C7F54 44810000 */      mtc1 $at, $f0 # 65536.0 to cop1
  /* 043938 800C7F58 AFAD0014 */        sw $t5, 0x14($sp)
  /* 04393C 800C7F5C 46006102 */     mul.s $f4, $f12, $f0
  /* 043940 800C7F60 4600320D */ trunc.w.s $f8, $f6
  /* 043944 800C7F64 4600848D */ trunc.w.s $f18, $f16
  /* 043948 800C7F68 440F4000 */      mfc1 $t7, $f8
  /* 04394C 800C7F6C 46007202 */     mul.s $f8, $f14, $f0
  /* 043950 800C7F70 4600218D */ trunc.w.s $f6, $f4
  /* 043954 800C7F74 AFAF0010 */        sw $t7, 0x10($sp)
  /* 043958 800C7F78 AFAF0028 */        sw $t7, 0x28($sp)
  /* 04395C 800C7F7C 00007812 */      mflo $t7
  /* 043960 800C7F80 440E9000 */      mfc1 $t6, $f18
  /* 043964 800C7F84 000FC383 */       sra $t8, $t7, 0xe
  /* 043968 800C7F88 4600428D */ trunc.w.s $f10, $f8
  /* 04396C 800C7F8C 030E0019 */     multu $t8, $t6
  /* 043970 800C7F90 AFAE000C */        sw $t6, 0xc($sp)
  /* 043974 800C7F94 00007812 */      mflo $t7
  /* 043978 800C7F98 000FC203 */       sra $t8, $t7, 8
  /* 04397C 800C7F9C 00000000 */       nop 
  /* 043980 800C7FA0 03080019 */     multu $t8, $t0
  /* 043984 800C7FA4 00007812 */      mflo $t7
  /* 043988 800C7FA8 000FC203 */       sra $t8, $t7, 8
  /* 04398C 800C7FAC AFB80008 */        sw $t8, 8($sp)
  /* 043990 800C7FB0 00C50019 */     multu $a2, $a1
  /* 043994 800C7FB4 8FB90008 */        lw $t9, 8($sp)
  /* 043998 800C7FB8 00007812 */      mflo $t7
  /* 04399C 800C7FBC 000FC383 */       sra $t8, $t7, 0xe
  /* 0439A0 800C7FC0 00000000 */       nop 
  /* 0439A4 800C7FC4 030E0019 */     multu $t8, $t6
  /* 0439A8 800C7FC8 00007812 */      mflo $t7
  /* 0439AC 800C7FCC 000FC203 */       sra $t8, $t7, 8
  /* 0439B0 800C7FD0 00000000 */       nop 
  /* 0439B4 800C7FD4 030D0019 */     multu $t8, $t5
  /* 0439B8 800C7FD8 00007012 */      mflo $t6
  /* 0439BC 800C7FDC 000E7A03 */       sra $t7, $t6, 8
  /* 0439C0 800C7FE0 AFAF0014 */        sw $t7, 0x14($sp)
  /* 0439C4 800C7FE4 000FC402 */       srl $t8, $t7, 0x10
  /* 0439C8 800C7FE8 03237024 */       and $t6, $t9, $v1
  /* 0439CC 800C7FEC 01D87825 */        or $t7, $t6, $t8
  /* 0439D0 800C7FF0 AC8F0000 */        sw $t7, ($a0)
  /* 0439D4 800C7FF4 8FB80014 */        lw $t8, 0x14($sp)
  /* 0439D8 800C7FF8 8FB90008 */        lw $t9, 8($sp)
  /* 0439DC 800C7FFC 330FFFFF */      andi $t7, $t8, 0xffff
  /* 0439E0 800C8000 00197400 */       sll $t6, $t9, 0x10
  /* 0439E4 800C8004 01CFC825 */        or $t9, $t6, $t7
  /* 0439E8 800C8008 AC990020 */        sw $t9, 0x20($a0)
  /* 0439EC 800C800C 8FAE000C */        lw $t6, 0xc($sp)
  /* 0439F0 800C8010 000AC023 */      negu $t8, $t2
  /* 0439F4 800C8014 030E0019 */     multu $t8, $t6
  /* 0439F8 800C8018 8FB80010 */        lw $t8, 0x10($sp)
  /* 0439FC 800C801C 00007812 */      mflo $t7
  /* 043A00 800C8020 000FC9C3 */       sra $t9, $t7, 7
  /* 043A04 800C8024 00000000 */       nop 
  /* 043A08 800C8028 03380019 */     multu $t9, $t8
  /* 043A0C 800C802C 00007012 */      mflo $t6
  /* 043A10 800C8030 000E7A03 */       sra $t7, $t6, 8
  /* 043A14 800C8034 AFAF0014 */        sw $t7, 0x14($sp)
  /* 043A18 800C8038 020A0019 */     multu $s0, $t2
  /* 043A1C 800C803C 01E3C824 */       and $t9, $t7, $v1
  /* 043A20 800C8040 AC990004 */        sw $t9, 4($a0)
  /* 043A24 800C8044 8FB80014 */        lw $t8, 0x14($sp)
  /* 043A28 800C8048 00187400 */       sll $t6, $t8, 0x10
  /* 043A2C 800C804C AC8E0024 */        sw $t6, 0x24($a0)
  /* 043A30 800C8050 00007812 */      mflo $t7
  /* 043A34 800C8054 000FCBC3 */       sra $t9, $t7, 0xf
  /* 043A38 800C8058 AFB90014 */        sw $t9, 0x14($sp)
  /* 043A3C 800C805C 03220019 */     multu $t9, $v0
  /* 043A40 800C8060 0000C012 */      mflo $t8
  /* 043A44 800C8064 00187383 */       sra $t6, $t8, 0xe
  /* 043A48 800C8068 00000000 */       nop 
  /* 043A4C 800C806C 01250019 */     multu $t1, $a1
  /* 043A50 800C8070 00007812 */      mflo $t7
  /* 043A54 800C8074 000FC383 */       sra $t8, $t7, 0xe
  /* 043A58 800C8078 01D87823 */      subu $t7, $t6, $t8
  /* 043A5C 800C807C 01EC0019 */     multu $t7, $t4
  /* 043A60 800C8080 00007012 */      mflo $t6
  /* 043A64 800C8084 000EC203 */       sra $t8, $t6, 8
  /* 043A68 800C8088 00000000 */       nop 
  /* 043A6C 800C808C 03080019 */     multu $t8, $t0
  /* 043A70 800C8090 00007812 */      mflo $t7
  /* 043A74 800C8094 000F7203 */       sra $t6, $t7, 8
  /* 043A78 800C8098 AFAE0010 */        sw $t6, 0x10($sp)
  /* 043A7C 800C809C 03250019 */     multu $t9, $a1
  /* 043A80 800C80A0 0000C012 */      mflo $t8
  /* 043A84 800C80A4 00187B83 */       sra $t7, $t8, 0xe
  /* 043A88 800C80A8 00000000 */       nop 
  /* 043A8C 800C80AC 01220019 */     multu $t1, $v0
  /* 043A90 800C80B0 0000C812 */      mflo $t9
  /* 043A94 800C80B4 0019C383 */       sra $t8, $t9, 0xe
  /* 043A98 800C80B8 01F8C821 */      addu $t9, $t7, $t8
  /* 043A9C 800C80BC 032C0019 */     multu $t9, $t4
  /* 043AA0 800C80C0 00007812 */      mflo $t7
  /* 043AA4 800C80C4 000FC203 */       sra $t8, $t7, 8
  /* 043AA8 800C80C8 00000000 */       nop 
  /* 043AAC 800C80CC 030D0019 */     multu $t8, $t5
  /* 043AB0 800C80D0 01C3C024 */       and $t8, $t6, $v1
  /* 043AB4 800C80D4 0000C812 */      mflo $t9
  /* 043AB8 800C80D8 00197A03 */       sra $t7, $t9, 8
  /* 043ABC 800C80DC 000FCC02 */       srl $t9, $t7, 0x10
  /* 043AC0 800C80E0 02060019 */     multu $s0, $a2
  /* 043AC4 800C80E4 03197025 */        or $t6, $t8, $t9
  /* 043AC8 800C80E8 AFAF0014 */        sw $t7, 0x14($sp)
  /* 043ACC 800C80EC AC8E0008 */        sw $t6, 8($a0)
  /* 043AD0 800C80F0 8FB90014 */        lw $t9, 0x14($sp)
  /* 043AD4 800C80F4 8FAF0010 */        lw $t7, 0x10($sp)
  /* 043AD8 800C80F8 332EFFFF */      andi $t6, $t9, 0xffff
  /* 043ADC 800C80FC 000FC400 */       sll $t8, $t7, 0x10
  /* 043AE0 800C8100 030E7825 */        or $t7, $t8, $t6
  /* 043AE4 800C8104 0000C812 */      mflo $t9
  /* 043AE8 800C8108 0019C383 */       sra $t8, $t9, 0xe
  /* 043AEC 800C810C AC8F0028 */        sw $t7, 0x28($a0)
  /* 043AF0 800C8110 030C0019 */     multu $t8, $t4
  /* 043AF4 800C8114 8FB90028 */        lw $t9, 0x28($sp)
  /* 043AF8 800C8118 00007012 */      mflo $t6
  /* 043AFC 800C811C 000E7A03 */       sra $t7, $t6, 8
  /* 043B00 800C8120 00000000 */       nop 
  /* 043B04 800C8124 01F90019 */     multu $t7, $t9
  /* 043B08 800C8128 0000C012 */      mflo $t8
  /* 043B0C 800C812C 00187203 */       sra $t6, $t8, 8
  /* 043B10 800C8130 AFAE0014 */        sw $t6, 0x14($sp)
  /* 043B14 800C8134 012A0019 */     multu $t1, $t2
  /* 043B18 800C8138 01C37824 */       and $t7, $t6, $v1
  /* 043B1C 800C813C AC8F000C */        sw $t7, 0xc($a0)
  /* 043B20 800C8140 8FB90014 */        lw $t9, 0x14($sp)
  /* 043B24 800C8144 0019C400 */       sll $t8, $t9, 0x10
  /* 043B28 800C8148 AC98002C */        sw $t8, 0x2c($a0)
  /* 043B2C 800C814C 00004012 */      mflo $t0
  /* 043B30 800C8150 000843C3 */       sra $t0, $t0, 0xf
  /* 043B34 800C8154 00000000 */       nop 
  /* 043B38 800C8158 01020019 */     multu $t0, $v0
  /* 043B3C 800C815C 00007012 */      mflo $t6
  /* 043B40 800C8160 000E7B83 */       sra $t7, $t6, 0xe
  /* 043B44 800C8164 00000000 */       nop 
  /* 043B48 800C8168 02050019 */     multu $s0, $a1
  /* 043B4C 800C816C 0000C812 */      mflo $t9
  /* 043B50 800C8170 0019C383 */       sra $t8, $t9, 0xe
  /* 043B54 800C8174 01F87021 */      addu $t6, $t7, $t8
  /* 043B58 800C8178 01C70019 */     multu $t6, $a3
  /* 043B5C 800C817C 8FB80030 */        lw $t8, 0x30($sp)
  /* 043B60 800C8180 0000C812 */      mflo $t9
  /* 043B64 800C8184 00197A03 */       sra $t7, $t9, 8
  /* 043B68 800C8188 00000000 */       nop 
  /* 043B6C 800C818C 01F80019 */     multu $t7, $t8
  /* 043B70 800C8190 00005812 */      mflo $t3
  /* 043B74 800C8194 000B5A03 */       sra $t3, $t3, 8
  /* 043B78 800C8198 00000000 */       nop 
  /* 043B7C 800C819C 01050019 */     multu $t0, $a1
  /* 043B80 800C81A0 00007012 */      mflo $t6
  /* 043B84 800C81A4 000ECB83 */       sra $t9, $t6, 0xe
  /* 043B88 800C81A8 00000000 */       nop 
  /* 043B8C 800C81AC 02020019 */     multu $s0, $v0
  /* 043B90 800C81B0 00007812 */      mflo $t7
  /* 043B94 800C81B4 000FC383 */       sra $t8, $t7, 0xe
  /* 043B98 800C81B8 03387023 */      subu $t6, $t9, $t8
  /* 043B9C 800C81BC 01C70019 */     multu $t6, $a3
  /* 043BA0 800C81C0 0163C024 */       and $t8, $t3, $v1
  /* 043BA4 800C81C4 00007812 */      mflo $t7
  /* 043BA8 800C81C8 000FCA03 */       sra $t9, $t7, 8
  /* 043BAC 800C81CC 00000000 */       nop 
  /* 043BB0 800C81D0 032D0019 */     multu $t9, $t5
  /* 043BB4 800C81D4 000BCC00 */       sll $t9, $t3, 0x10
  /* 043BB8 800C81D8 00006012 */      mflo $t4
  /* 043BBC 800C81DC 000C6203 */       sra $t4, $t4, 8
  /* 043BC0 800C81E0 000C7402 */       srl $t6, $t4, 0x10
  /* 043BC4 800C81E4 01260019 */     multu $t1, $a2
  /* 043BC8 800C81E8 030E7825 */        or $t7, $t8, $t6
  /* 043BCC 800C81EC AC8F0010 */        sw $t7, 0x10($a0)
  /* 043BD0 800C81F0 3198FFFF */      andi $t8, $t4, 0xffff
  /* 043BD4 800C81F4 03387025 */        or $t6, $t9, $t8
  /* 043BD8 800C81F8 AC8E0030 */        sw $t6, 0x30($a0)
  /* 043BDC 800C81FC 00007812 */      mflo $t7
  /* 043BE0 800C8200 000FCB83 */       sra $t9, $t7, 0xe
  /* 043BE4 800C8204 8FAF0028 */        lw $t7, 0x28($sp)
  /* 043BE8 800C8208 03270019 */     multu $t9, $a3
  /* 043BEC 800C820C 0000C012 */      mflo $t8
  /* 043BF0 800C8210 00187203 */       sra $t6, $t8, 8
  /* 043BF4 800C8214 00000000 */       nop 
  /* 043BF8 800C8218 01CF0019 */     multu $t6, $t7
  /* 043BFC 800C821C 0000C812 */      mflo $t9
  /* 043C00 800C8220 0019C203 */       sra $t8, $t9, 8
  /* 043C04 800C8224 AFB80014 */        sw $t8, 0x14($sp)
  /* 043C08 800C8228 03037024 */       and $t6, $t8, $v1
  /* 043C0C 800C822C AC8E0014 */        sw $t6, 0x14($a0)
  /* 043C10 800C8230 8FAF0014 */        lw $t7, 0x14($sp)
  /* 043C14 800C8234 440E3000 */      mfc1 $t6, $f6
  /* 043C18 800C8238 000FCC00 */       sll $t9, $t7, 0x10
  /* 043C1C 800C823C AC990034 */        sw $t9, 0x34($a0)
  /* 043C20 800C8240 44195000 */      mfc1 $t9, $f10
  /* 043C24 800C8244 AFAE001C */        sw $t6, 0x1c($sp)
  /* 043C28 800C8248 01C3C024 */       and $t8, $t6, $v1
  /* 043C2C 800C824C 00197C02 */       srl $t7, $t9, 0x10
  /* 043C30 800C8250 030F7025 */        or $t6, $t8, $t7
  /* 043C34 800C8254 AFB90018 */        sw $t9, 0x18($sp)
  /* 043C38 800C8258 AC8E0018 */        sw $t6, 0x18($a0)
  /* 043C3C 800C825C 8FAF0018 */        lw $t7, 0x18($sp)
  /* 043C40 800C8260 8FB9001C */        lw $t9, 0x1c($sp)
  /* 043C44 800C8264 31EEFFFF */      andi $t6, $t7, 0xffff
  /* 043C48 800C8268 0019C400 */       sll $t8, $t9, 0x10
  /* 043C4C 800C826C 030EC825 */        or $t9, $t8, $t6
  /* 043C50 800C8270 AC990038 */        sw $t9, 0x38($a0)
  /* 043C54 800C8274 C7B0006C */      lwc1 $f16, 0x6c($sp)
  /* 043C58 800C8278 46008482 */     mul.s $f18, $f16, $f0
  /* 043C5C 800C827C 00000000 */       nop 
  /* 043C60 800C8280 4600910D */ trunc.w.s $f4, $f18
  /* 043C64 800C8284 44022000 */      mfc1 $v0, $f4
  /* 043C68 800C8288 00000000 */       nop 
  /* 043C6C 800C828C 0043C024 */       and $t8, $v0, $v1
  /* 043C70 800C8290 370E0001 */       ori $t6, $t8, 1
  /* 043C74 800C8294 0002CC00 */       sll $t9, $v0, 0x10
  /* 043C78 800C8298 AC8E001C */        sw $t6, 0x1c($a0)
  /* 043C7C 800C829C AC99003C */        sw $t9, 0x3c($a0)
  /* 043C80 800C82A0 8FB00004 */        lw $s0, 4($sp)
  /* 043C84 800C82A4 03E00008 */        jr $ra
  /* 043C88 800C82A8 27BD0060 */     addiu $sp, $sp, 0x60

glabel func_ovl0_800C82AC
  /* 043C8C 800C82AC 3C01800D */       lui $at, %hi(D_ovl0_800D5E78)
  /* 043C90 800C82B0 C4205E78 */      lwc1 $f0, %lo(D_ovl0_800D5E78)($at)
  /* 043C94 800C82B4 44856000 */      mtc1 $a1, $f12
  /* 043C98 800C82B8 44867000 */      mtc1 $a2, $f14
  /* 043C9C 800C82BC 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* 043CA0 800C82C0 46006102 */     mul.s $f4, $f12, $f0
  /* 043CA4 800C82C4 AFA70054 */        sw $a3, 0x54($sp)
  /* 043CA8 800C82C8 C7B00054 */      lwc1 $f16, 0x54($sp)
  /* 043CAC 800C82CC 46007202 */     mul.s $f8, $f14, $f0
  /* 043CB0 800C82D0 3C014380 */       lui $at, (0x43800000 >> 16) # 256.0
  /* 043CB4 800C82D4 3C0C8004 */       lui $t4, %hi(gSinTable)
  /* 043CB8 800C82D8 46008482 */     mul.s $f18, $f16, $f0
  /* 043CBC 800C82DC 44810000 */      mtc1 $at, $f0 # 256.0 to cop1
  /* 043CC0 800C82E0 258CB950 */     addiu $t4, $t4, %lo(gSinTable)
  /* 043CC4 800C82E4 4600218D */ trunc.w.s $f6, $f4
  /* 043CC8 800C82E8 4600428D */ trunc.w.s $f10, $f8
  /* 043CCC 800C82EC 44033000 */      mfc1 $v1, $f6
  /* 043CD0 800C82F0 C7A6005C */      lwc1 $f6, 0x5c($sp)
  /* 043CD4 800C82F4 4600910D */ trunc.w.s $f4, $f18
  /* 043CD8 800C82F8 30630FFF */      andi $v1, $v1, 0xfff
  /* 043CDC 800C82FC 46003202 */     mul.s $f8, $f6, $f0
  /* 043CE0 800C8300 3065FFFF */      andi $a1, $v1, 0xffff
  /* 043CE4 800C8304 30AF07FF */      andi $t7, $a1, 0x7ff
  /* 043CE8 800C8308 000FC040 */       sll $t8, $t7, 1
  /* 043CEC 800C830C 0198C821 */      addu $t9, $t4, $t8
  /* 043CF0 800C8310 30AE0800 */      andi $t6, $a1, 0x800
  /* 043CF4 800C8314 44035000 */      mfc1 $v1, $f10
  /* 043CF8 800C8318 972A0000 */       lhu $t2, ($t9)
  /* 043CFC 800C831C 11C00002 */      beqz $t6, .L800C8328
  /* 043D00 800C8320 4600428D */ trunc.w.s $f10, $f8
  /* 043D04 800C8324 000A5023 */      negu $t2, $t2
  .L800C8328:
  /* 043D08 800C8328 24A20400 */     addiu $v0, $a1, 0x400
  /* 043D0C 800C832C 304F07FF */      andi $t7, $v0, 0x7ff
  /* 043D10 800C8330 000FC040 */       sll $t8, $t7, 1
  /* 043D14 800C8334 0198C821 */      addu $t9, $t4, $t8
  /* 043D18 800C8338 304E0800 */      andi $t6, $v0, 0x800
  /* 043D1C 800C833C 11C00002 */      beqz $t6, .L800C8348
  /* 043D20 800C8340 97280000 */       lhu $t0, ($t9)
  /* 043D24 800C8344 00084023 */      negu $t0, $t0
  .L800C8348:
  /* 043D28 800C8348 30630FFF */      andi $v1, $v1, 0xfff
  /* 043D2C 800C834C 3065FFFF */      andi $a1, $v1, 0xffff
  /* 043D30 800C8350 30B807FF */      andi $t8, $a1, 0x7ff
  /* 043D34 800C8354 0018C840 */       sll $t9, $t8, 1
  /* 043D38 800C8358 01997021 */      addu $t6, $t4, $t9
  /* 043D3C 800C835C 30AF0800 */      andi $t7, $a1, 0x800
  /* 043D40 800C8360 11E00002 */      beqz $t7, .L800C836C
  /* 043D44 800C8364 95C90000 */       lhu $t1, ($t6)
  /* 043D48 800C8368 00094823 */      negu $t1, $t1
  .L800C836C:
  /* 043D4C 800C836C 24A20400 */     addiu $v0, $a1, 0x400
  /* 043D50 800C8370 305807FF */      andi $t8, $v0, 0x7ff
  /* 043D54 800C8374 0018C840 */       sll $t9, $t8, 1
  /* 043D58 800C8378 01997021 */      addu $t6, $t4, $t9
  /* 043D5C 800C837C 304F0800 */      andi $t7, $v0, 0x800
  /* 043D60 800C8380 11E00002 */      beqz $t7, .L800C838C
  /* 043D64 800C8384 95C60000 */       lhu $a2, ($t6)
  /* 043D68 800C8388 00063023 */      negu $a2, $a2
  .L800C838C:
  /* 043D6C 800C838C 44022000 */      mfc1 $v0, $f4
  /* 043D70 800C8390 00000000 */       nop 
  /* 043D74 800C8394 30420FFF */      andi $v0, $v0, 0xfff
  /* 043D78 800C8398 3047FFFF */      andi $a3, $v0, 0xffff
  /* 043D7C 800C839C 30F907FF */      andi $t9, $a3, 0x7ff
  /* 043D80 800C83A0 00197040 */       sll $t6, $t9, 1
  /* 043D84 800C83A4 018E7821 */      addu $t7, $t4, $t6
  /* 043D88 800C83A8 30F80800 */      andi $t8, $a3, 0x800
  /* 043D8C 800C83AC 13000002 */      beqz $t8, .L800C83B8
  /* 043D90 800C83B0 95E30000 */       lhu $v1, ($t7)
  /* 043D94 800C83B4 00031823 */      negu $v1, $v1
  .L800C83B8:
  /* 043D98 800C83B8 24E50400 */     addiu $a1, $a3, 0x400
  /* 043D9C 800C83BC 30B907FF */      andi $t9, $a1, 0x7ff
  /* 043DA0 800C83C0 00197040 */       sll $t6, $t9, 1
  /* 043DA4 800C83C4 018E7821 */      addu $t7, $t4, $t6
  /* 043DA8 800C83C8 30B80800 */      andi $t8, $a1, 0x800
  /* 043DAC 800C83CC 13000002 */      beqz $t8, .L800C83D8
  /* 043DB0 800C83D0 95E20000 */       lhu $v0, ($t7)
  /* 043DB4 800C83D4 00021023 */      negu $v0, $v0
  .L800C83D8:
  /* 043DB8 800C83D8 C7B00060 */      lwc1 $f16, 0x60($sp)
  /* 043DBC 800C83DC C7A60058 */      lwc1 $f6, 0x58($sp)
  /* 043DC0 800C83E0 00C20019 */     multu $a2, $v0
  /* 043DC4 800C83E4 46008482 */     mul.s $f18, $f16, $f0
  /* 043DC8 800C83E8 440D5000 */      mfc1 $t5, $f10
  /* 043DCC 800C83EC 3C05FFFF */       lui $a1, 0xffff
  /* 043DD0 800C83F0 46003202 */     mul.s $f8, $f6, $f0
  /* 043DD4 800C83F4 0000C012 */      mflo $t8
  /* 043DD8 800C83F8 4600428D */ trunc.w.s $f10, $f8
  /* 043DDC 800C83FC 0018CB83 */       sra $t9, $t8, 0xe
  /* 043DE0 800C8400 4600910D */ trunc.w.s $f4, $f18
  /* 043DE4 800C8404 440B5000 */      mfc1 $t3, $f10
  /* 043DE8 800C8408 00000000 */       nop 
  /* 043DEC 800C840C 032B0019 */     multu $t9, $t3
  /* 043DF0 800C8410 44072000 */      mfc1 $a3, $f4
  /* 043DF4 800C8414 00007012 */      mflo $t6
  /* 043DF8 800C8418 000E7A03 */       sra $t7, $t6, 8
  /* 043DFC 800C841C AFAF0008 */        sw $t7, 8($sp)
  /* 043E00 800C8420 00C30019 */     multu $a2, $v1
  /* 043E04 800C8424 0000C012 */      mflo $t8
  /* 043E08 800C8428 0018CB83 */       sra $t9, $t8, 0xe
  /* 043E0C 800C842C 00000000 */       nop 
  /* 043E10 800C8430 032B0019 */     multu $t9, $t3
  /* 043E14 800C8434 01E5C824 */       and $t9, $t7, $a1
  /* 043E18 800C8438 00007012 */      mflo $t6
  /* 043E1C 800C843C 000EC203 */       sra $t8, $t6, 8
  /* 043E20 800C8440 00187402 */       srl $t6, $t8, 0x10
  /* 043E24 800C8444 032E7825 */        or $t7, $t9, $t6
  /* 043E28 800C8448 AFB80004 */        sw $t8, 4($sp)
  /* 043E2C 800C844C AC8F0000 */        sw $t7, ($a0)
  /* 043E30 800C8450 8FAE0004 */        lw $t6, 4($sp)
  /* 043E34 800C8454 8FB80008 */        lw $t8, 8($sp)
  /* 043E38 800C8458 31CFFFFF */      andi $t7, $t6, 0xffff
  /* 043E3C 800C845C 00097023 */      negu $t6, $t1
  /* 043E40 800C8460 01CB0019 */     multu $t6, $t3
  /* 043E44 800C8464 0018CC00 */       sll $t9, $t8, 0x10
  /* 043E48 800C8468 032FC025 */        or $t8, $t9, $t7
  /* 043E4C 800C846C AC980020 */        sw $t8, 0x20($a0)
  /* 043E50 800C8470 0000C812 */      mflo $t9
  /* 043E54 800C8474 001979C3 */       sra $t7, $t9, 7
  /* 043E58 800C8478 AFAF000C */        sw $t7, 0xc($sp)
  /* 043E5C 800C847C 01490019 */     multu $t2, $t1
  /* 043E60 800C8480 01E5C024 */       and $t8, $t7, $a1
  /* 043E64 800C8484 AC980004 */        sw $t8, 4($a0)
  /* 043E68 800C8488 8FAE000C */        lw $t6, 0xc($sp)
  /* 043E6C 800C848C 000ECC00 */       sll $t9, $t6, 0x10
  /* 043E70 800C8490 AC990024 */        sw $t9, 0x24($a0)
  /* 043E74 800C8494 00005812 */      mflo $t3
  /* 043E78 800C8498 000B5BC3 */       sra $t3, $t3, 0xf
  /* 043E7C 800C849C 00000000 */       nop 
  /* 043E80 800C84A0 01620019 */     multu $t3, $v0
  /* 043E84 800C84A4 00007812 */      mflo $t7
  /* 043E88 800C84A8 000FC383 */       sra $t8, $t7, 0xe
  /* 043E8C 800C84AC 00000000 */       nop 
  /* 043E90 800C84B0 01030019 */     multu $t0, $v1
  /* 043E94 800C84B4 00007012 */      mflo $t6
  /* 043E98 800C84B8 000ECB83 */       sra $t9, $t6, 0xe
  /* 043E9C 800C84BC 03197823 */      subu $t7, $t8, $t9
  /* 043EA0 800C84C0 01ED0019 */     multu $t7, $t5
  /* 043EA4 800C84C4 00007012 */      mflo $t6
  /* 043EA8 800C84C8 000EC203 */       sra $t8, $t6, 8
  /* 043EAC 800C84CC AFB80008 */        sw $t8, 8($sp)
  /* 043EB0 800C84D0 01630019 */     multu $t3, $v1
  /* 043EB4 800C84D4 0000C812 */      mflo $t9
  /* 043EB8 800C84D8 00197B83 */       sra $t7, $t9, 0xe
  /* 043EBC 800C84DC 00000000 */       nop 
  /* 043EC0 800C84E0 01020019 */     multu $t0, $v0
  /* 043EC4 800C84E4 00007012 */      mflo $t6
  /* 043EC8 800C84E8 000ECB83 */       sra $t9, $t6, 0xe
  /* 043ECC 800C84EC 01F97021 */      addu $t6, $t7, $t9
  /* 043ED0 800C84F0 01CD0019 */     multu $t6, $t5
  /* 043ED4 800C84F4 03057024 */       and $t6, $t8, $a1
  /* 043ED8 800C84F8 00007812 */      mflo $t7
  /* 043EDC 800C84FC 000FCA03 */       sra $t9, $t7, 8
  /* 043EE0 800C8500 00197C02 */       srl $t7, $t9, 0x10
  /* 043EE4 800C8504 01460019 */     multu $t2, $a2
  /* 043EE8 800C8508 01CFC025 */        or $t8, $t6, $t7
  /* 043EEC 800C850C AFB9000C */        sw $t9, 0xc($sp)
  /* 043EF0 800C8510 AC980008 */        sw $t8, 8($a0)
  /* 043EF4 800C8514 8FAF000C */        lw $t7, 0xc($sp)
  /* 043EF8 800C8518 8FB90008 */        lw $t9, 8($sp)
  /* 043EFC 800C851C 31F8FFFF */      andi $t8, $t7, 0xffff
  /* 043F00 800C8520 00197400 */       sll $t6, $t9, 0x10
  /* 043F04 800C8524 01D8C825 */        or $t9, $t6, $t8
  /* 043F08 800C8528 00007812 */      mflo $t7
  /* 043F0C 800C852C 000F7383 */       sra $t6, $t7, 0xe
  /* 043F10 800C8530 AC990028 */        sw $t9, 0x28($a0)
  /* 043F14 800C8534 01CD0019 */     multu $t6, $t5
  /* 043F18 800C8538 0000C012 */      mflo $t8
  /* 043F1C 800C853C 0018CA03 */       sra $t9, $t8, 8
  /* 043F20 800C8540 AFB9000C */        sw $t9, 0xc($sp)
  /* 043F24 800C8544 01090019 */     multu $t0, $t1
  /* 043F28 800C8548 03257824 */       and $t7, $t9, $a1
  /* 043F2C 800C854C AC8F000C */        sw $t7, 0xc($a0)
  /* 043F30 800C8550 8FAE000C */        lw $t6, 0xc($sp)
  /* 043F34 800C8554 000EC400 */       sll $t8, $t6, 0x10
  /* 043F38 800C8558 AC98002C */        sw $t8, 0x2c($a0)
  /* 043F3C 800C855C 00005812 */      mflo $t3
  /* 043F40 800C8560 000B5BC3 */       sra $t3, $t3, 0xf
  /* 043F44 800C8564 00000000 */       nop 
  /* 043F48 800C8568 01620019 */     multu $t3, $v0
  /* 043F4C 800C856C 0000C812 */      mflo $t9
  /* 043F50 800C8570 00197B83 */       sra $t7, $t9, 0xe
  /* 043F54 800C8574 00000000 */       nop 
  /* 043F58 800C8578 01430019 */     multu $t2, $v1
  /* 043F5C 800C857C 00007012 */      mflo $t6
  /* 043F60 800C8580 000EC383 */       sra $t8, $t6, 0xe
  /* 043F64 800C8584 01F8C821 */      addu $t9, $t7, $t8
  /* 043F68 800C8588 03270019 */     multu $t9, $a3
  /* 043F6C 800C858C 00006012 */      mflo $t4
  /* 043F70 800C8590 000C6203 */       sra $t4, $t4, 8
  /* 043F74 800C8594 00000000 */       nop 
  /* 043F78 800C8598 01630019 */     multu $t3, $v1
  /* 043F7C 800C859C 00007012 */      mflo $t6
  /* 043F80 800C85A0 000E7B83 */       sra $t7, $t6, 0xe
  /* 043F84 800C85A4 00000000 */       nop 
  /* 043F88 800C85A8 01420019 */     multu $t2, $v0
  /* 043F8C 800C85AC 0000C012 */      mflo $t8
  /* 043F90 800C85B0 0018CB83 */       sra $t9, $t8, 0xe
  /* 043F94 800C85B4 01F97023 */      subu $t6, $t7, $t9
  /* 043F98 800C85B8 01C70019 */     multu $t6, $a3
  /* 043F9C 800C85BC 0185C024 */       and $t8, $t4, $a1
  /* 043FA0 800C85C0 000C7400 */       sll $t6, $t4, 0x10
  /* 043FA4 800C85C4 00006812 */      mflo $t5
  /* 043FA8 800C85C8 000D6A03 */       sra $t5, $t5, 8
  /* 043FAC 800C85CC 000D7C02 */       srl $t7, $t5, 0x10
  /* 043FB0 800C85D0 01060019 */     multu $t0, $a2
  /* 043FB4 800C85D4 030FC825 */        or $t9, $t8, $t7
  /* 043FB8 800C85D8 AC990010 */        sw $t9, 0x10($a0)
  /* 043FBC 800C85DC 31B8FFFF */      andi $t8, $t5, 0xffff
  /* 043FC0 800C85E0 01D87825 */        or $t7, $t6, $t8
  /* 043FC4 800C85E4 AC8F0030 */        sw $t7, 0x30($a0)
  /* 043FC8 800C85E8 0000C812 */      mflo $t9
  /* 043FCC 800C85EC 00197383 */       sra $t6, $t9, 0xe
  /* 043FD0 800C85F0 00000000 */       nop 
  /* 043FD4 800C85F4 01C70019 */     multu $t6, $a3
  /* 043FD8 800C85F8 0000C012 */      mflo $t8
  /* 043FDC 800C85FC 00187A03 */       sra $t7, $t8, 8
  /* 043FE0 800C8600 AFAF0010 */        sw $t7, 0x10($sp)
  /* 043FE4 800C8604 01E5C824 */       and $t9, $t7, $a1
  /* 043FE8 800C8608 AC990014 */        sw $t9, 0x14($a0)
  /* 043FEC 800C860C 8FAE0010 */        lw $t6, 0x10($sp)
  /* 043FF0 800C8610 240F0001 */     addiu $t7, $zero, 1
  /* 043FF4 800C8614 AC800018 */        sw $zero, 0x18($a0)
  /* 043FF8 800C8618 000EC400 */       sll $t8, $t6, 0x10
  /* 043FFC 800C861C AC980034 */        sw $t8, 0x34($a0)
  /* 044000 800C8620 AC800038 */        sw $zero, 0x38($a0)
  /* 044004 800C8624 AC8F001C */        sw $t7, 0x1c($a0)
  /* 044008 800C8628 AC80003C */        sw $zero, 0x3c($a0)
  /* 04400C 800C862C 03E00008 */        jr $ra
  /* 044010 800C8630 27BD0048 */     addiu $sp, $sp, 0x48

  /* 044014 800C8634 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 044018 800C8638 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04401C 800C863C 0C002979 */       jal func_8000A5E4
  /* 044020 800C8640 00000000 */       nop 
  /* 044024 800C8644 8FBF0014 */        lw $ra, 0x14($sp)
  /* 044028 800C8648 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04402C 800C864C 03E00008 */        jr $ra
  /* 044030 800C8650 00000000 */       nop 

glabel func_ovl0_800C8654
  /* 044034 800C8654 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 044038 800C8658 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04403C 800C865C AFA40020 */        sw $a0, 0x20($sp)
  /* 044040 800C8660 3084FFFF */      andi $a0, $a0, 0xffff
  /* 044044 800C8664 0C009A84 */       jal func_80026A10
  /* 044048 800C8668 AFA50024 */        sw $a1, 0x24($sp)
  /* 04404C 800C866C 10400019 */      beqz $v0, .L800C86D4
  /* 044050 800C8670 00402025 */        or $a0, $v0, $zero
  /* 044054 800C8674 3C0145FA */       lui $at, (0x45FA0000 >> 16) # 8000.0
  /* 044058 800C8678 44813000 */      mtc1 $at, $f6 # 8000.0 to cop1
  /* 04405C 800C867C C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 044060 800C8680 3C014270 */       lui $at, (0x42700000 >> 16) # 60.0
  /* 044064 800C8684 44815000 */      mtc1 $at, $f10 # 60.0 to cop1
  /* 044068 800C8688 46062203 */     div.s $f8, $f4, $f6
  /* 04406C 800C868C 240F0040 */     addiu $t7, $zero, 0x40
  /* 044070 800C8690 460A4402 */     mul.s $f16, $f8, $f10
  /* 044074 800C8694 4600848D */ trunc.w.s $f18, $f16
  /* 044078 800C8698 44029000 */      mfc1 $v0, $f18
  /* 04407C 800C869C 00000000 */       nop 
  /* 044080 800C86A0 2841003D */      slti $at, $v0, 0x3d
  /* 044084 800C86A4 54200003 */      bnel $at, $zero, .L800C86B4
  /* 044088 800C86A8 2841FFC4 */      slti $at, $v0, -0x3c
  /* 04408C 800C86AC 2402003C */     addiu $v0, $zero, 0x3c
  /* 044090 800C86B0 2841FFC4 */      slti $at, $v0, -0x3c
  .L800C86B4:
  /* 044094 800C86B4 50200003 */      beql $at, $zero, .L800C86C4
  /* 044098 800C86B8 01E21023 */      subu $v0, $t7, $v0
  /* 04409C 800C86BC 2402FFC4 */     addiu $v0, $zero, -0x3c
  /* 0440A0 800C86C0 01E21023 */      subu $v0, $t7, $v0
  .L800C86C4:
  /* 0440A4 800C86C4 A082002F */        sb $v0, 0x2f($a0)
  /* 0440A8 800C86C8 0C0099FD */       jal func_800267F4
  /* 0440AC 800C86CC AFA4001C */        sw $a0, 0x1c($sp)
  /* 0440B0 800C86D0 8FA4001C */        lw $a0, 0x1c($sp)
  .L800C86D4:
  /* 0440B4 800C86D4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0440B8 800C86D8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0440BC 800C86DC 00801025 */        or $v0, $a0, $zero
  /* 0440C0 800C86E0 03E00008 */        jr $ra
  /* 0440C4 800C86E4 00000000 */       nop 

glabel func_ovl0_800C86E8
  /* 0440C8 800C86E8 8C820010 */        lw $v0, 0x10($a0)
  /* 0440CC 800C86EC 10400003 */      beqz $v0, .L800C86FC
  /* 0440D0 800C86F0 00000000 */       nop 
  /* 0440D4 800C86F4 03E00008 */        jr $ra
  /* 0440D8 800C86F8 00000000 */       nop 

  .L800C86FC:
  /* 0440DC 800C86FC 54850004 */      bnel $a0, $a1, .L800C8710
  /* 0440E0 800C8700 8C820008 */        lw $v0, 8($a0)
  /* 0440E4 800C8704 03E00008 */        jr $ra
  /* 0440E8 800C8708 00001025 */        or $v0, $zero, $zero

  /* 0440EC 800C870C 8C820008 */        lw $v0, 8($a0)
  .L800C8710:
  /* 0440F0 800C8710 50400004 */      beql $v0, $zero, .L800C8724
  /* 0440F4 800C8714 8C820014 */        lw $v0, 0x14($a0)
  /* 0440F8 800C8718 03E00008 */        jr $ra
  /* 0440FC 800C871C 00000000 */       nop 

  .L800C8720:
  /* 044100 800C8720 8C820014 */        lw $v0, 0x14($a0)
  .L800C8724:
  /* 044104 800C8724 54A20004 */      bnel $a1, $v0, .L800C8738
  /* 044108 800C8728 8C430008 */        lw $v1, 8($v0)
  /* 04410C 800C872C 03E00008 */        jr $ra
  /* 044110 800C8730 00001025 */        or $v0, $zero, $zero

  /* 044114 800C8734 8C430008 */        lw $v1, 8($v0)
  .L800C8738:
  /* 044118 800C8738 10600003 */      beqz $v1, .L800C8748
  /* 04411C 800C873C 00000000 */       nop 
  /* 044120 800C8740 03E00008 */        jr $ra
  /* 044124 800C8744 00601025 */        or $v0, $v1, $zero

  .L800C8748:
  /* 044128 800C8748 1000FFF5 */         b .L800C8720
  /* 04412C 800C874C 00402025 */        or $a0, $v0, $zero
  /* 044130 800C8750 03E00008 */        jr $ra
  /* 044134 800C8754 00801025 */        or $v0, $a0, $zero

glabel func_ovl0_800C8758
  /* 044138 800C8758 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 04413C 800C875C F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 044140 800C8760 AFBF0034 */        sw $ra, 0x34($sp)
  /* 044144 800C8764 AFB20030 */        sw $s2, 0x30($sp)
  /* 044148 800C8768 AFB1002C */        sw $s1, 0x2c($sp)
  /* 04414C 800C876C AFB00028 */        sw $s0, 0x28($sp)
  /* 044150 800C8770 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 044154 800C8774 4486A000 */      mtc1 $a2, $f20
  /* 044158 800C8778 8C8E0004 */        lw $t6, 4($a0)
  /* 04415C 800C877C 00A08825 */        or $s1, $a1, $zero
  /* 044160 800C8780 00809025 */        or $s2, $a0, $zero
  /* 044164 800C8784 00808025 */        or $s0, $a0, $zero
  /* 044168 800C8788 10800012 */      beqz $a0, .L800C87D4
  /* 04416C 800C878C E5D40078 */      swc1 $f20, 0x78($t6)
  /* 044170 800C8790 3C01800D */       lui $at, %hi(D_ovl0_800D5E7C)
  /* 044174 800C8794 C4365E7C */      lwc1 $f22, %lo(D_ovl0_800D5E7C)($at)
  .L800C8798:
  /* 044178 800C8798 8E250000 */        lw $a1, ($s1)
  /* 04417C 800C879C 50A00007 */      beql $a1, $zero, .L800C87BC
  /* 044180 800C87A0 E6160074 */      swc1 $f22, 0x74($s0)
  /* 044184 800C87A4 4406A000 */      mfc1 $a2, $f20
  /* 044188 800C87A8 0C002F47 */       jal func_8000BD1C
  /* 04418C 800C87AC 02002025 */        or $a0, $s0, $zero
  /* 044190 800C87B0 10000003 */         b .L800C87C0
  /* 044194 800C87B4 26310004 */     addiu $s1, $s1, 4
  /* 044198 800C87B8 E6160074 */      swc1 $f22, 0x74($s0)
  .L800C87BC:
  /* 04419C 800C87BC 26310004 */     addiu $s1, $s1, 4
  .L800C87C0:
  /* 0441A0 800C87C0 02002025 */        or $a0, $s0, $zero
  /* 0441A4 800C87C4 0C0321BA */       jal func_ovl0_800C86E8
  /* 0441A8 800C87C8 02402825 */        or $a1, $s2, $zero
  /* 0441AC 800C87CC 1440FFF2 */      bnez $v0, .L800C8798
  /* 0441B0 800C87D0 00408025 */        or $s0, $v0, $zero
  .L800C87D4:
  /* 0441B4 800C87D4 8FBF0034 */        lw $ra, 0x34($sp)
  /* 0441B8 800C87D8 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 0441BC 800C87DC D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 0441C0 800C87E0 8FB00028 */        lw $s0, 0x28($sp)
  /* 0441C4 800C87E4 8FB1002C */        lw $s1, 0x2c($sp)
  /* 0441C8 800C87E8 8FB20030 */        lw $s2, 0x30($sp)
  /* 0441CC 800C87EC 03E00008 */        jr $ra
  /* 0441D0 800C87F0 27BD0038 */     addiu $sp, $sp, 0x38

glabel func_ovl0_800C87F4
  /* 0441D4 800C87F4 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 0441D8 800C87F8 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 0441DC 800C87FC AFBF003C */        sw $ra, 0x3c($sp)
  /* 0441E0 800C8800 AFB40038 */        sw $s4, 0x38($sp)
  /* 0441E4 800C8804 AFB30034 */        sw $s3, 0x34($sp)
  /* 0441E8 800C8808 AFB20030 */        sw $s2, 0x30($sp)
  /* 0441EC 800C880C AFB1002C */        sw $s1, 0x2c($sp)
  /* 0441F0 800C8810 AFB00028 */        sw $s0, 0x28($sp)
  /* 0441F4 800C8814 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 0441F8 800C8818 4486A000 */      mtc1 $a2, $f20
  /* 0441FC 800C881C 8C8E0004 */        lw $t6, 4($a0)
  /* 044200 800C8820 00A09025 */        or $s2, $a1, $zero
  /* 044204 800C8824 00809825 */        or $s3, $a0, $zero
  /* 044208 800C8828 00808025 */        or $s0, $a0, $zero
  /* 04420C 800C882C 10800015 */      beqz $a0, .L800C8884
  /* 044210 800C8830 E5D40078 */      swc1 $f20, 0x78($t6)
  /* 044214 800C8834 3C01800D */       lui $at, %hi(D_ovl0_800D5E80)
  /* 044218 800C8838 C4365E80 */      lwc1 $f22, %lo(D_ovl0_800D5E80)($at)
  /* 04421C 800C883C 24140001 */     addiu $s4, $zero, 1
  .L800C8840:
  /* 044220 800C8840 8E450000 */        lw $a1, ($s2)
  /* 044224 800C8844 8E110084 */        lw $s1, 0x84($s0)
  /* 044228 800C8848 50A00007 */      beql $a1, $zero, .L800C8868
  /* 04422C 800C884C E6160074 */      swc1 $f22, 0x74($s0)
  /* 044230 800C8850 4406A000 */      mfc1 $a2, $f20
  /* 044234 800C8854 0C002F47 */       jal func_8000BD1C
  /* 044238 800C8858 02002025 */        or $a0, $s0, $zero
  /* 04423C 800C885C 10000003 */         b .L800C886C
  /* 044240 800C8860 A234000E */        sb $s4, 0xe($s1)
  /* 044244 800C8864 E6160074 */      swc1 $f22, 0x74($s0)
  .L800C8868:
  /* 044248 800C8868 A220000E */        sb $zero, 0xe($s1)
  .L800C886C:
  /* 04424C 800C886C 26520004 */     addiu $s2, $s2, 4
  /* 044250 800C8870 02002025 */        or $a0, $s0, $zero
  /* 044254 800C8874 0C0321BA */       jal func_ovl0_800C86E8
  /* 044258 800C8878 02602825 */        or $a1, $s3, $zero
  /* 04425C 800C887C 1440FFF0 */      bnez $v0, .L800C8840
  /* 044260 800C8880 00408025 */        or $s0, $v0, $zero
  .L800C8884:
  /* 044264 800C8884 8FBF003C */        lw $ra, 0x3c($sp)
  /* 044268 800C8888 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 04426C 800C888C D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 044270 800C8890 8FB00028 */        lw $s0, 0x28($sp)
  /* 044274 800C8894 8FB1002C */        lw $s1, 0x2c($sp)
  /* 044278 800C8898 8FB20030 */        lw $s2, 0x30($sp)
  /* 04427C 800C889C 8FB30034 */        lw $s3, 0x34($sp)
  /* 044280 800C88A0 8FB40038 */        lw $s4, 0x38($sp)
  /* 044284 800C88A4 03E00008 */        jr $ra
  /* 044288 800C88A8 27BD0040 */     addiu $sp, $sp, 0x40

glabel func_ovl0_800C88AC
  /* 04428C 800C88AC 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 044290 800C88B0 F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 044294 800C88B4 AFBF003C */        sw $ra, 0x3c($sp)
  /* 044298 800C88B8 AFB50038 */        sw $s5, 0x38($sp)
  /* 04429C 800C88BC AFB40034 */        sw $s4, 0x34($sp)
  /* 0442A0 800C88C0 AFB30030 */        sw $s3, 0x30($sp)
  /* 0442A4 800C88C4 AFB2002C */        sw $s2, 0x2c($sp)
  /* 0442A8 800C88C8 AFB10028 */        sw $s1, 0x28($sp)
  /* 0442AC 800C88CC AFB00024 */        sw $s0, 0x24($sp)
  /* 0442B0 800C88D0 F7B60018 */      sdc1 $f22, 0x18($sp)
  /* 0442B4 800C88D4 4487A000 */      mtc1 $a3, $f20
  /* 0442B8 800C88D8 8C8E0004 */        lw $t6, 4($a0)
  /* 0442BC 800C88DC 00A09825 */        or $s3, $a1, $zero
  /* 0442C0 800C88E0 00C0A025 */        or $s4, $a2, $zero
  /* 0442C4 800C88E4 0080A825 */        or $s5, $a0, $zero
  /* 0442C8 800C88E8 00809025 */        or $s2, $a0, $zero
  /* 0442CC 800C88EC 10800028 */      beqz $a0, .L800C8990
  /* 0442D0 800C88F0 E5D40078 */      swc1 $f20, 0x78($t6)
  /* 0442D4 800C88F4 3C01800D */       lui $at, %hi(D_ovl0_800D5E84)
  /* 0442D8 800C88F8 C4365E84 */      lwc1 $f22, %lo(D_ovl0_800D5E84)($at)
  .L800C88FC:
  /* 0442DC 800C88FC 1260000B */      beqz $s3, .L800C892C
  /* 0442E0 800C8900 00000000 */       nop 
  /* 0442E4 800C8904 8E650000 */        lw $a1, ($s3)
  /* 0442E8 800C8908 50A00007 */      beql $a1, $zero, .L800C8928
  /* 0442EC 800C890C E6560074 */      swc1 $f22, 0x74($s2)
  /* 0442F0 800C8910 4406A000 */      mfc1 $a2, $f20
  /* 0442F4 800C8914 0C002F47 */       jal func_8000BD1C
  /* 0442F8 800C8918 02402025 */        or $a0, $s2, $zero
  /* 0442FC 800C891C 10000003 */         b .L800C892C
  /* 044300 800C8920 26730004 */     addiu $s3, $s3, 4
  /* 044304 800C8924 E6560074 */      swc1 $f22, 0x74($s2)
  .L800C8928:
  /* 044308 800C8928 26730004 */     addiu $s3, $s3, 4
  .L800C892C:
  /* 04430C 800C892C 52800014 */      beql $s4, $zero, .L800C8980
  /* 044310 800C8930 02402025 */        or $a0, $s2, $zero
  /* 044314 800C8934 8E820000 */        lw $v0, ($s4)
  /* 044318 800C8938 50400010 */      beql $v0, $zero, .L800C897C
  /* 04431C 800C893C 26940004 */     addiu $s4, $s4, 4
  /* 044320 800C8940 8E500080 */        lw $s0, 0x80($s2)
  /* 044324 800C8944 00408825 */        or $s1, $v0, $zero
  /* 044328 800C8948 5200000C */      beql $s0, $zero, .L800C897C
  /* 04432C 800C894C 26940004 */     addiu $s4, $s4, 4
  /* 044330 800C8950 8E250000 */        lw $a1, ($s1)
  .L800C8954:
  /* 044334 800C8954 50A00005 */      beql $a1, $zero, .L800C896C
  /* 044338 800C8958 8E100000 */        lw $s0, ($s0)
  /* 04433C 800C895C 4406A000 */      mfc1 $a2, $f20
  /* 044340 800C8960 0C002F55 */       jal func_8000BD54
  /* 044344 800C8964 02002025 */        or $a0, $s0, $zero
  /* 044348 800C8968 8E100000 */        lw $s0, ($s0)
  .L800C896C:
  /* 04434C 800C896C 26310004 */     addiu $s1, $s1, 4
  /* 044350 800C8970 5600FFF8 */      bnel $s0, $zero, .L800C8954
  /* 044354 800C8974 8E250000 */        lw $a1, ($s1)
  /* 044358 800C8978 26940004 */     addiu $s4, $s4, 4
  .L800C897C:
  /* 04435C 800C897C 02402025 */        or $a0, $s2, $zero
  .L800C8980:
  /* 044360 800C8980 0C0321BA */       jal func_ovl0_800C86E8
  /* 044364 800C8984 02A02825 */        or $a1, $s5, $zero
  /* 044368 800C8988 1440FFDC */      bnez $v0, .L800C88FC
  /* 04436C 800C898C 00409025 */        or $s2, $v0, $zero
  .L800C8990:
  /* 044370 800C8990 8FBF003C */        lw $ra, 0x3c($sp)
  /* 044374 800C8994 D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 044378 800C8998 D7B60018 */      ldc1 $f22, 0x18($sp)
  /* 04437C 800C899C 8FB00024 */        lw $s0, 0x24($sp)
  /* 044380 800C89A0 8FB10028 */        lw $s1, 0x28($sp)
  /* 044384 800C89A4 8FB2002C */        lw $s2, 0x2c($sp)
  /* 044388 800C89A8 8FB30030 */        lw $s3, 0x30($sp)
  /* 04438C 800C89AC 8FB40034 */        lw $s4, 0x34($sp)
  /* 044390 800C89B0 8FB50038 */        lw $s5, 0x38($sp)
  /* 044394 800C89B4 03E00008 */        jr $ra
  /* 044398 800C89B8 27BD0040 */     addiu $sp, $sp, 0x40

glabel func_ovl0_800C89BC
  /* 04439C 800C89BC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0443A0 800C89C0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0443A4 800C89C4 AFA5001C */        sw $a1, 0x1c($sp)
  /* 0443A8 800C89C8 AFA60020 */        sw $a2, 0x20($sp)
  /* 0443AC 800C89CC AFA70024 */        sw $a3, 0x24($sp)
  /* 0443B0 800C89D0 30E700FF */      andi $a3, $a3, 0xff
  /* 0443B4 800C89D4 30C600FF */      andi $a2, $a2, 0xff
  /* 0443B8 800C89D8 30A500FF */      andi $a1, $a1, 0xff
  /* 0443BC 800C89DC 0C003CBF */       jal func_8000F2FC
  /* 0443C0 800C89E0 AFA40018 */        sw $a0, 0x18($sp)
  /* 0443C4 800C89E4 3C0E8004 */       lui $t6, %hi(D_8003B8DC + 4)
  /* 0443C8 800C89E8 25CEB8E0 */     addiu $t6, $t6, %lo(D_8003B8DC + 4)
  /* 0443CC 800C89EC 8FA40018 */        lw $a0, 0x18($sp)
  /* 0443D0 800C89F0 8DD80000 */        lw $t8, ($t6) # D_8003B8DC + 4 + 0
  /* 0443D4 800C89F4 3C198004 */       lui $t9, %hi(D_8003B900 + 8)
  /* 0443D8 800C89F8 2739B908 */     addiu $t9, $t9, %lo(D_8003B900 + 8)
  /* 0443DC 800C89FC AC98001C */        sw $t8, 0x1c($a0)
  /* 0443E0 800C8A00 8DCF0004 */        lw $t7, 4($t6) # D_8003B8DC + 4 + 4
  /* 0443E4 800C8A04 3C0A8004 */       lui $t2, %hi(D_8003B914 + 4)
  /* 0443E8 800C8A08 254AB918 */     addiu $t2, $t2, %lo(D_8003B914 + 4)
  /* 0443EC 800C8A0C AC8F0020 */        sw $t7, 0x20($a0)
  /* 0443F0 800C8A10 8DD80008 */        lw $t8, 8($t6) # D_8003B8DC + 4 + 8
  /* 0443F4 800C8A14 AC980024 */        sw $t8, 0x24($a0)
  /* 0443F8 800C8A18 8F290000 */        lw $t1, ($t9) # D_8003B900 + 8 + 0
  /* 0443FC 800C8A1C AC890030 */        sw $t1, 0x30($a0)
  /* 044400 800C8A20 8F280004 */        lw $t0, 4($t9) # D_8003B900 + 8 + 4
  /* 044404 800C8A24 AC880034 */        sw $t0, 0x34($a0)
  /* 044408 800C8A28 8F290008 */        lw $t1, 8($t9) # D_8003B900 + 8 + 8
  /* 04440C 800C8A2C AC890038 */        sw $t1, 0x38($a0)
  /* 044410 800C8A30 8D4C0000 */        lw $t4, ($t2) # D_8003B914 + 4 + 0
  /* 044414 800C8A34 AC8C0040 */        sw $t4, 0x40($a0)
  /* 044418 800C8A38 8D4B0004 */        lw $t3, 4($t2) # D_8003B914 + 4 + 4
  /* 04441C 800C8A3C AC8B0044 */        sw $t3, 0x44($a0)
  /* 044420 800C8A40 8D4C0008 */        lw $t4, 8($t2) # D_8003B914 + 4 + 8
  /* 044424 800C8A44 AC8C0048 */        sw $t4, 0x48($a0)
  /* 044428 800C8A48 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04442C 800C8A4C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 044430 800C8A50 03E00008 */        jr $ra
  /* 044434 800C8A54 00000000 */       nop 

glabel func_ovl0_800C8A58
  /* 044438 800C8A58 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04443C 800C8A5C AFA50024 */        sw $a1, 0x24($sp)
  /* 044440 800C8A60 30A500FF */      andi $a1, $a1, 0xff
  /* 044444 800C8A64 AFB00018 */        sw $s0, 0x18($sp)
  /* 044448 800C8A68 00808025 */        or $s0, $a0, $zero
  /* 04444C 800C8A6C AFBF001C */        sw $ra, 0x1c($sp)
  /* 044450 800C8A70 AFA60028 */        sw $a2, 0x28($sp)
  /* 044454 800C8A74 10A00003 */      beqz $a1, .L800C8A84
  /* 044458 800C8A78 AFA7002C */        sw $a3, 0x2c($sp)
  /* 04445C 800C8A7C 0C002330 */       jal func_80008CC0
  /* 044460 800C8A80 93A60033 */       lbu $a2, 0x33($sp)
  .L800C8A84:
  /* 044464 800C8A84 93AE002B */       lbu $t6, 0x2b($sp)
  /* 044468 800C8A88 02002025 */        or $a0, $s0, $zero
  /* 04446C 800C8A8C 11C00003 */      beqz $t6, .L800C8A9C
  /* 044470 800C8A90 01C02825 */        or $a1, $t6, $zero
  /* 044474 800C8A94 0C002330 */       jal func_80008CC0
  /* 044478 800C8A98 93A60033 */       lbu $a2, 0x33($sp)
  .L800C8A9C:
  /* 04447C 800C8A9C 93AF002F */       lbu $t7, 0x2f($sp)
  /* 044480 800C8AA0 02002025 */        or $a0, $s0, $zero
  /* 044484 800C8AA4 11E00003 */      beqz $t7, .L800C8AB4
  /* 044488 800C8AA8 01E02825 */        or $a1, $t7, $zero
  /* 04448C 800C8AAC 0C002330 */       jal func_80008CC0
  /* 044490 800C8AB0 93A60033 */       lbu $a2, 0x33($sp)
  .L800C8AB4:
  /* 044494 800C8AB4 3C188004 */       lui $t8, %hi(D_8003B8DC + 4)
  /* 044498 800C8AB8 2718B8E0 */     addiu $t8, $t8, %lo(D_8003B8DC + 4)
  /* 04449C 800C8ABC 8F080000 */        lw $t0, ($t8) # D_8003B8DC + 4 + 0
  /* 0444A0 800C8AC0 3C098004 */       lui $t1, %hi(D_8003B900 + 8)
  /* 0444A4 800C8AC4 2529B908 */     addiu $t1, $t1, %lo(D_8003B900 + 8)
  /* 0444A8 800C8AC8 AE08001C */        sw $t0, 0x1c($s0)
  /* 0444AC 800C8ACC 8F190004 */        lw $t9, 4($t8) # D_8003B8DC + 4 + 4
  /* 0444B0 800C8AD0 3C0C8004 */       lui $t4, %hi(D_8003B914 + 4)
  /* 0444B4 800C8AD4 258CB918 */     addiu $t4, $t4, %lo(D_8003B914 + 4)
  /* 0444B8 800C8AD8 AE190020 */        sw $t9, 0x20($s0)
  /* 0444BC 800C8ADC 8F080008 */        lw $t0, 8($t8) # D_8003B8DC + 4 + 8
  /* 0444C0 800C8AE0 AE080024 */        sw $t0, 0x24($s0)
  /* 0444C4 800C8AE4 8D2B0000 */        lw $t3, ($t1) # D_8003B900 + 8 + 0
  /* 0444C8 800C8AE8 AE0B0030 */        sw $t3, 0x30($s0)
  /* 0444CC 800C8AEC 8D2A0004 */        lw $t2, 4($t1) # D_8003B900 + 8 + 4
  /* 0444D0 800C8AF0 AE0A0034 */        sw $t2, 0x34($s0)
  /* 0444D4 800C8AF4 8D2B0008 */        lw $t3, 8($t1) # D_8003B900 + 8 + 8
  /* 0444D8 800C8AF8 AE0B0038 */        sw $t3, 0x38($s0)
  /* 0444DC 800C8AFC 8D8E0000 */        lw $t6, ($t4) # D_8003B914 + 4 + 0
  /* 0444E0 800C8B00 AE0E0040 */        sw $t6, 0x40($s0)
  /* 0444E4 800C8B04 8D8D0004 */        lw $t5, 4($t4) # D_8003B914 + 4 + 4
  /* 0444E8 800C8B08 AE0D0044 */        sw $t5, 0x44($s0)
  /* 0444EC 800C8B0C 8D8E0008 */        lw $t6, 8($t4) # D_8003B914 + 4 + 8
  /* 0444F0 800C8B10 AE0E0048 */        sw $t6, 0x48($s0)
  /* 0444F4 800C8B14 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0444F8 800C8B18 8FB00018 */        lw $s0, 0x18($sp)
  /* 0444FC 800C8B1C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 044500 800C8B20 03E00008 */        jr $ra
  /* 044504 800C8B24 00000000 */       nop 

glabel func_ovl0_800C8B28
  /* 044508 800C8B28 27BDFF58 */     addiu $sp, $sp, -0xa8
  /* 04450C 800C8B2C AFB60038 */        sw $s6, 0x38($sp)
  /* 044510 800C8B30 AFB3002C */        sw $s3, 0x2c($sp)
  /* 044514 800C8B34 AFB10024 */        sw $s1, 0x24($sp)
  /* 044518 800C8B38 00A08825 */        or $s1, $a1, $zero
  /* 04451C 800C8B3C 00C09825 */        or $s3, $a2, $zero
  /* 044520 800C8B40 30F600FF */      andi $s6, $a3, 0xff
  /* 044524 800C8B44 AFBF0044 */        sw $ra, 0x44($sp)
  /* 044528 800C8B48 AFBE0040 */        sw $fp, 0x40($sp)
  /* 04452C 800C8B4C AFB7003C */        sw $s7, 0x3c($sp)
  /* 044530 800C8B50 AFB50034 */        sw $s5, 0x34($sp)
  /* 044534 800C8B54 AFB40030 */        sw $s4, 0x30($sp)
  /* 044538 800C8B58 AFB20028 */        sw $s2, 0x28($sp)
  /* 04453C 800C8B5C AFB00020 */        sw $s0, 0x20($sp)
  /* 044540 800C8B60 AFA400A8 */        sw $a0, 0xa8($sp)
  /* 044544 800C8B64 AFA700B4 */        sw $a3, 0xb4($sp)
  /* 044548 800C8B68 AFA00050 */        sw $zero, 0x50($sp)
  /* 04454C 800C8B6C AFA00054 */        sw $zero, 0x54($sp)
  /* 044550 800C8B70 27A20058 */     addiu $v0, $sp, 0x58
  /* 044554 800C8B74 27A30098 */     addiu $v1, $sp, 0x98
  .L800C8B78:
  /* 044558 800C8B78 24420010 */     addiu $v0, $v0, 0x10
  /* 04455C 800C8B7C AC40FFF4 */        sw $zero, -0xc($v0)
  /* 044560 800C8B80 AC40FFF8 */        sw $zero, -8($v0)
  /* 044564 800C8B84 AC40FFFC */        sw $zero, -4($v0)
  /* 044568 800C8B88 1443FFFB */       bne $v0, $v1, .L800C8B78
  /* 04456C 800C8B8C AC40FFF0 */        sw $zero, -0x10($v0)
  /* 044570 800C8B90 8E220000 */        lw $v0, ($s1)
  /* 044574 800C8B94 241E0012 */     addiu $fp, $zero, 0x12
  /* 044578 800C8B98 27B70050 */     addiu $s7, $sp, 0x50
  /* 04457C 800C8B9C 13C2003A */       beq $fp, $v0, .L800C8C88
  /* 044580 800C8BA0 93B500BF */       lbu $s5, 0xbf($sp)
  /* 044584 800C8BA4 93B400BB */       lbu $s4, 0xbb($sp)
  /* 044588 800C8BA8 30430FFF */      andi $v1, $v0, 0xfff
  .L800C8BAC:
  /* 04458C 800C8BAC 10600008 */      beqz $v1, .L800C8BD0
  /* 044590 800C8BB0 00037080 */       sll $t6, $v1, 2
  /* 044594 800C8BB4 02EE9021 */      addu $s2, $s7, $t6
  /* 044598 800C8BB8 8E44FFFC */        lw $a0, -4($s2)
  /* 04459C 800C8BBC 0C0024FD */       jal func_800093F4
  /* 0445A0 800C8BC0 8E250004 */        lw $a1, 4($s1)
  /* 0445A4 800C8BC4 AE420000 */        sw $v0, ($s2)
  /* 0445A8 800C8BC8 10000006 */         b .L800C8BE4
  /* 0445AC 800C8BCC 00408025 */        or $s0, $v0, $zero
  .L800C8BD0:
  /* 0445B0 800C8BD0 8FA400A8 */        lw $a0, 0xa8($sp)
  /* 0445B4 800C8BD4 0C0024FD */       jal func_800093F4
  /* 0445B8 800C8BD8 8E250004 */        lw $a1, 4($s1)
  /* 0445BC 800C8BDC AFA20050 */        sw $v0, 0x50($sp)
  /* 0445C0 800C8BE0 00408025 */        or $s0, $v0, $zero
  .L800C8BE4:
  /* 0445C4 800C8BE4 8E220000 */        lw $v0, ($s1)
  /* 0445C8 800C8BE8 02002025 */        or $a0, $s0, $zero
  /* 0445CC 800C8BEC 32C500FF */      andi $a1, $s6, 0xff
  /* 0445D0 800C8BF0 3042F000 */      andi $v0, $v0, 0xf000
  /* 0445D4 800C8BF4 10400009 */      beqz $v0, .L800C8C1C
  /* 0445D8 800C8BF8 328600FF */      andi $a2, $s4, 0xff
  /* 0445DC 800C8BFC 02002025 */        or $a0, $s0, $zero
  /* 0445E0 800C8C00 32C500FF */      andi $a1, $s6, 0xff
  /* 0445E4 800C8C04 328600FF */      andi $a2, $s4, 0xff
  /* 0445E8 800C8C08 32A700FF */      andi $a3, $s5, 0xff
  /* 0445EC 800C8C0C 0C003CD9 */       jal func_8000F364
  /* 0445F0 800C8C10 AFA20010 */        sw $v0, 0x10($sp)
  /* 0445F4 800C8C14 10000004 */         b .L800C8C28
  /* 0445F8 800C8C18 8E380008 */        lw $t8, 8($s1)
  .L800C8C1C:
  /* 0445FC 800C8C1C 0C003CBF */       jal func_8000F2FC
  /* 044600 800C8C20 32A700FF */      andi $a3, $s5, 0xff
  /* 044604 800C8C24 8E380008 */        lw $t8, 8($s1)
  .L800C8C28:
  /* 044608 800C8C28 AE18001C */        sw $t8, 0x1c($s0)
  /* 04460C 800C8C2C 8E2F000C */        lw $t7, 0xc($s1)
  /* 044610 800C8C30 AE0F0020 */        sw $t7, 0x20($s0)
  /* 044614 800C8C34 8E380010 */        lw $t8, 0x10($s1)
  /* 044618 800C8C38 AE180024 */        sw $t8, 0x24($s0)
  /* 04461C 800C8C3C 8E280014 */        lw $t0, 0x14($s1)
  /* 044620 800C8C40 AE080030 */        sw $t0, 0x30($s0)
  /* 044624 800C8C44 8E390018 */        lw $t9, 0x18($s1)
  /* 044628 800C8C48 AE190034 */        sw $t9, 0x34($s0)
  /* 04462C 800C8C4C 8E28001C */        lw $t0, 0x1c($s1)
  /* 044630 800C8C50 AE080038 */        sw $t0, 0x38($s0)
  /* 044634 800C8C54 8E2A0020 */        lw $t2, 0x20($s1)
  /* 044638 800C8C58 AE0A0040 */        sw $t2, 0x40($s0)
  /* 04463C 800C8C5C 8E290024 */        lw $t1, 0x24($s1)
  /* 044640 800C8C60 AE090044 */        sw $t1, 0x44($s0)
  /* 044644 800C8C64 8E2A0028 */        lw $t2, 0x28($s1)
  /* 044648 800C8C68 12600003 */      beqz $s3, .L800C8C78
  /* 04464C 800C8C6C AE0A0048 */        sw $t2, 0x48($s0)
  /* 044650 800C8C70 AE700000 */        sw $s0, ($s3)
  /* 044654 800C8C74 26730004 */     addiu $s3, $s3, 4
  .L800C8C78:
  /* 044658 800C8C78 8E22002C */        lw $v0, 0x2c($s1)
  /* 04465C 800C8C7C 2631002C */     addiu $s1, $s1, 0x2c
  /* 044660 800C8C80 57C2FFCA */      bnel $fp, $v0, .L800C8BAC
  /* 044664 800C8C84 30430FFF */      andi $v1, $v0, 0xfff
  .L800C8C88:
  /* 044668 800C8C88 8FBF0044 */        lw $ra, 0x44($sp)
  /* 04466C 800C8C8C 8FB00020 */        lw $s0, 0x20($sp)
  /* 044670 800C8C90 8FB10024 */        lw $s1, 0x24($sp)
  /* 044674 800C8C94 8FB20028 */        lw $s2, 0x28($sp)
  /* 044678 800C8C98 8FB3002C */        lw $s3, 0x2c($sp)
  /* 04467C 800C8C9C 8FB40030 */        lw $s4, 0x30($sp)
  /* 044680 800C8CA0 8FB50034 */        lw $s5, 0x34($sp)
  /* 044684 800C8CA4 8FB60038 */        lw $s6, 0x38($sp)
  /* 044688 800C8CA8 8FB7003C */        lw $s7, 0x3c($sp)
  /* 04468C 800C8CAC 8FBE0040 */        lw $fp, 0x40($sp)
  /* 044690 800C8CB0 03E00008 */        jr $ra
  /* 044694 800C8CB4 27BD00A8 */     addiu $sp, $sp, 0xa8

glabel func_ovl0_800C8CB8
  /* 044698 800C8CB8 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 04469C 800C8CBC AFB40038 */        sw $s4, 0x38($sp)
  /* 0446A0 800C8CC0 AFB30034 */        sw $s3, 0x34($sp)
  /* 0446A4 800C8CC4 AFB20030 */        sw $s2, 0x30($sp)
  /* 0446A8 800C8CC8 AFB1002C */        sw $s1, 0x2c($sp)
  /* 0446AC 800C8CCC 00C08825 */        or $s1, $a2, $zero
  /* 0446B0 800C8CD0 00E09025 */        or $s2, $a3, $zero
  /* 0446B4 800C8CD4 00A09825 */        or $s3, $a1, $zero
  /* 0446B8 800C8CD8 0080A025 */        or $s4, $a0, $zero
  /* 0446BC 800C8CDC AFBF003C */        sw $ra, 0x3c($sp)
  /* 0446C0 800C8CE0 AFB00028 */        sw $s0, 0x28($sp)
  /* 0446C4 800C8CE4 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 0446C8 800C8CE8 10A00028 */      beqz $a1, .L800C8D8C
  /* 0446CC 800C8CEC F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 0446D0 800C8CF0 8CA50000 */        lw $a1, ($a1)
  /* 0446D4 800C8CF4 50A00026 */      beql $a1, $zero, .L800C8D90
  /* 0446D8 800C8CF8 8FBF003C */        lw $ra, 0x3c($sp)
  /* 0446DC 800C8CFC 4480B000 */      mtc1 $zero, $f22
  /* 0446E0 800C8D00 C7B40050 */      lwc1 $f20, 0x50($sp)
  .L800C8D04:
  /* 0446E4 800C8D04 0C002437 */       jal func_800090DC
  /* 0446E8 800C8D08 02802025 */        or $a0, $s4, $zero
  /* 0446EC 800C8D0C 1220000E */      beqz $s1, .L800C8D48
  /* 0446F0 800C8D10 00408025 */        or $s0, $v0, $zero
  /* 0446F4 800C8D14 8E250000 */        lw $a1, ($s1)
  /* 0446F8 800C8D18 50A0000B */      beql $a1, $zero, .L800C8D48
  /* 0446FC 800C8D1C 26310004 */     addiu $s1, $s1, 4
  /* 044700 800C8D20 4406A000 */      mfc1 $a2, $f20
  /* 044704 800C8D24 0C002F55 */       jal func_8000BD54
  /* 044708 800C8D28 00402025 */        or $a0, $v0, $zero
  /* 04470C 800C8D2C 0C0033DB */       jal func_8000CF6C
  /* 044710 800C8D30 02002025 */        or $a0, $s0, $zero
  /* 044714 800C8D34 0C003690 */       jal func_8000DA40
  /* 044718 800C8D38 02002025 */        or $a0, $s0, $zero
  /* 04471C 800C8D3C 0C0023EC */       jal func_80008FB0
  /* 044720 800C8D40 02002025 */        or $a0, $s0, $zero
  /* 044724 800C8D44 26310004 */     addiu $s1, $s1, 4
  .L800C8D48:
  /* 044728 800C8D48 5240000D */      beql $s2, $zero, .L800C8D80
  /* 04472C 800C8D4C 8E650004 */        lw $a1, 4($s3)
  /* 044730 800C8D50 8E450000 */        lw $a1, ($s2)
  /* 044734 800C8D54 50A00009 */      beql $a1, $zero, .L800C8D7C
  /* 044738 800C8D58 26520004 */     addiu $s2, $s2, 4
  /* 04473C 800C8D5C 4406B000 */      mfc1 $a2, $f22
  /* 044740 800C8D60 0C002F55 */       jal func_8000BD54
  /* 044744 800C8D64 02002025 */        or $a0, $s0, $zero
  /* 044748 800C8D68 0C0033DB */       jal func_8000CF6C
  /* 04474C 800C8D6C 02002025 */        or $a0, $s0, $zero
  /* 044750 800C8D70 0C003690 */       jal func_8000DA40
  /* 044754 800C8D74 02002025 */        or $a0, $s0, $zero
  /* 044758 800C8D78 26520004 */     addiu $s2, $s2, 4
  .L800C8D7C:
  /* 04475C 800C8D7C 8E650004 */        lw $a1, 4($s3)
  .L800C8D80:
  /* 044760 800C8D80 26730004 */     addiu $s3, $s3, 4
  /* 044764 800C8D84 14A0FFDF */      bnez $a1, .L800C8D04
  /* 044768 800C8D88 00000000 */       nop 
  .L800C8D8C:
  /* 04476C 800C8D8C 8FBF003C */        lw $ra, 0x3c($sp)
  .L800C8D90:
  /* 044770 800C8D90 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 044774 800C8D94 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 044778 800C8D98 8FB00028 */        lw $s0, 0x28($sp)
  /* 04477C 800C8D9C 8FB1002C */        lw $s1, 0x2c($sp)
  /* 044780 800C8DA0 8FB20030 */        lw $s2, 0x30($sp)
  /* 044784 800C8DA4 8FB30034 */        lw $s3, 0x34($sp)
  /* 044788 800C8DA8 8FB40038 */        lw $s4, 0x38($sp)
  /* 04478C 800C8DAC 03E00008 */        jr $ra
  /* 044790 800C8DB0 27BD0040 */     addiu $sp, $sp, 0x40

glabel func_ovl0_800C8DB4
  /* 044794 800C8DB4 27BDFF38 */     addiu $sp, $sp, -0xc8
  /* 044798 800C8DB8 AFB00020 */        sw $s0, 0x20($sp)
  /* 04479C 800C8DBC 8FB000D8 */        lw $s0, 0xd8($sp)
  /* 0447A0 800C8DC0 AFBE0040 */        sw $fp, 0x40($sp)
  /* 0447A4 800C8DC4 AFB7003C */        sw $s7, 0x3c($sp)
  /* 0447A8 800C8DC8 00067100 */       sll $t6, $a2, 4
  /* 0447AC 800C8DCC AFBF0044 */        sw $ra, 0x44($sp)
  /* 0447B0 800C8DD0 AFB60038 */        sw $s6, 0x38($sp)
  /* 0447B4 800C8DD4 AFB50034 */        sw $s5, 0x34($sp)
  /* 0447B8 800C8DD8 AFB40030 */        sw $s4, 0x30($sp)
  /* 0447BC 800C8DDC AFB3002C */        sw $s3, 0x2c($sp)
  /* 0447C0 800C8DE0 AFB20028 */        sw $s2, 0x28($sp)
  /* 0447C4 800C8DE4 AFB10024 */        sw $s1, 0x24($sp)
  /* 0447C8 800C8DE8 AFA400C8 */        sw $a0, 0xc8($sp)
  /* 0447CC 800C8DEC AFAE0054 */        sw $t6, 0x54($sp)
  /* 0447D0 800C8DF0 00AEC021 */      addu $t8, $a1, $t6
  /* 0447D4 800C8DF4 00E0B825 */        or $s7, $a3, $zero
  /* 0447D8 800C8DF8 00A0F025 */        or $fp, $a1, $zero
  /* 0447DC 800C8DFC 8F14FFF0 */        lw $s4, -0x10($t8)
  /* 0447E0 800C8E00 27A2006C */     addiu $v0, $sp, 0x6c
  /* 0447E4 800C8E04 27A300B4 */     addiu $v1, $sp, 0xb4
  /* 0447E8 800C8E08 8E160004 */        lw $s6, 4($s0)
  /* 0447EC 800C8E0C 8E150000 */        lw $s5, ($s0)
  .L800C8E10:
  /* 0447F0 800C8E10 24420004 */     addiu $v0, $v0, 4
  /* 0447F4 800C8E14 0043082B */      sltu $at, $v0, $v1
  /* 0447F8 800C8E18 1420FFFD */      bnez $at, .L800C8E10
  /* 0447FC 800C8E1C AC40FFFC */        sw $zero, -4($v0)
  /* 044800 800C8E20 16A00003 */      bnez $s5, .L800C8E30
  /* 044804 800C8E24 00009825 */        or $s3, $zero, $zero
  /* 044808 800C8E28 52C0007E */      beql $s6, $zero, .L800C9024
  /* 04480C 800C8E2C 8FBF0044 */        lw $ra, 0x44($sp)
  .L800C8E30:
  /* 044810 800C8E30 8E840000 */        lw $a0, ($s4)
  /* 044814 800C8E34 24010012 */     addiu $at, $zero, 0x12
  /* 044818 800C8E38 10810079 */       beq $a0, $at, .L800C9020
  /* 04481C 800C8E3C 2A610020 */      slti $at, $s3, 0x20
  .L800C8E40:
  /* 044820 800C8E40 10200003 */      beqz $at, .L800C8E50
  /* 044824 800C8E44 02C01025 */        or $v0, $s6, $zero
  /* 044828 800C8E48 10000001 */         b .L800C8E50
  /* 04482C 800C8E4C 02A01025 */        or $v0, $s5, $zero
  .L800C8E50:
  /* 044830 800C8E50 0002C800 */       sll $t9, $v0, 0
  /* 044834 800C8E54 07210063 */      bgez $t9, .L800C8FE4
  /* 044838 800C8E58 30860FFF */      andi $a2, $a0, 0xfff
  /* 04483C 800C8E5C 00131880 */       sll $v1, $s3, 2
  /* 044840 800C8E60 8FA80054 */        lw $t0, 0x54($sp)
  /* 044844 800C8E64 00731823 */      subu $v1, $v1, $s3
  /* 044848 800C8E68 00031880 */       sll $v1, $v1, 2
  /* 04484C 800C8E6C 00731823 */      subu $v1, $v1, $s3
  /* 044850 800C8E70 24010010 */     addiu $at, $zero, 0x10
  /* 044854 800C8E74 11010007 */       beq $t0, $at, .L800C8E94
  /* 044858 800C8E78 00031880 */       sll $v1, $v1, 2
  /* 04485C 800C8E7C 8FC90010 */        lw $t1, 0x10($fp)
  /* 044860 800C8E80 24020001 */     addiu $v0, $zero, 1
  /* 044864 800C8E84 01235021 */      addu $t2, $t1, $v1
  /* 044868 800C8E88 8D4B0004 */        lw $t3, 4($t2)
  /* 04486C 800C8E8C 15600003 */      bnez $t3, .L800C8E9C
  /* 044870 800C8E90 00000000 */       nop 
  .L800C8E94:
  /* 044874 800C8E94 10000001 */         b .L800C8E9C
  /* 044878 800C8E98 00001025 */        or $v0, $zero, $zero
  .L800C8E9C:
  /* 04487C 800C8E9C 10C0000D */      beqz $a2, .L800C8ED4
  /* 044880 800C8EA0 00066080 */       sll $t4, $a2, 2
  /* 044884 800C8EA4 00027100 */       sll $t6, $v0, 4
  /* 044888 800C8EA8 03CE9021 */      addu $s2, $fp, $t6
  /* 04488C 800C8EAC 8E4F0000 */        lw $t7, ($s2)
  /* 044890 800C8EB0 27AD006C */     addiu $t5, $sp, 0x6c
  /* 044894 800C8EB4 018D8821 */      addu $s1, $t4, $t5
  /* 044898 800C8EB8 01E3C021 */      addu $t8, $t7, $v1
  /* 04489C 800C8EBC 8F050004 */        lw $a1, 4($t8)
  /* 0448A0 800C8EC0 0C0024FD */       jal func_800093F4
  /* 0448A4 800C8EC4 8E24FFFC */        lw $a0, -4($s1)
  /* 0448A8 800C8EC8 AE220000 */        sw $v0, ($s1)
  /* 0448AC 800C8ECC 1000000A */         b .L800C8EF8
  /* 0448B0 800C8ED0 00408025 */        or $s0, $v0, $zero
  .L800C8ED4:
  /* 0448B4 800C8ED4 0002C900 */       sll $t9, $v0, 4
  /* 0448B8 800C8ED8 03D99021 */      addu $s2, $fp, $t9
  /* 0448BC 800C8EDC 8E480000 */        lw $t0, ($s2)
  /* 0448C0 800C8EE0 8FA400C8 */        lw $a0, 0xc8($sp)
  /* 0448C4 800C8EE4 01034821 */      addu $t1, $t0, $v1
  /* 0448C8 800C8EE8 0C0024FD */       jal func_800093F4
  /* 0448CC 800C8EEC 8D250004 */        lw $a1, 4($t1)
  /* 0448D0 800C8EF0 AFA2006C */        sw $v0, 0x6c($sp)
  /* 0448D4 800C8EF4 00408025 */        or $s0, $v0, $zero
  .L800C8EF8:
  /* 0448D8 800C8EF8 8E8A0000 */        lw $t2, ($s4)
  /* 0448DC 800C8EFC 02002025 */        or $a0, $s0, $zero
  /* 0448E0 800C8F00 93A500DF */       lbu $a1, 0xdf($sp)
  /* 0448E4 800C8F04 314B8000 */      andi $t3, $t2, 0x8000
  /* 0448E8 800C8F08 1160000A */      beqz $t3, .L800C8F34
  /* 0448EC 800C8F0C 93A600E3 */       lbu $a2, 0xe3($sp)
  /* 0448F0 800C8F10 340C8000 */       ori $t4, $zero, 0x8000
  /* 0448F4 800C8F14 AFAC0010 */        sw $t4, 0x10($sp)
  /* 0448F8 800C8F18 02002025 */        or $a0, $s0, $zero
  /* 0448FC 800C8F1C 93A500DF */       lbu $a1, 0xdf($sp)
  /* 044900 800C8F20 93A600E3 */       lbu $a2, 0xe3($sp)
  /* 044904 800C8F24 0C003CD9 */       jal func_8000F364
  /* 044908 800C8F28 93A700E7 */       lbu $a3, 0xe7($sp)
  /* 04490C 800C8F2C 10000006 */         b .L800C8F48
  /* 044910 800C8F30 8E8F0008 */        lw $t7, 8($s4)
  .L800C8F34:
  /* 044914 800C8F34 93AD00EF */       lbu $t5, 0xef($sp)
  /* 044918 800C8F38 93A700E7 */       lbu $a3, 0xe7($sp)
  /* 04491C 800C8F3C 0C032296 */       jal func_ovl0_800C8A58
  /* 044920 800C8F40 AFAD0010 */        sw $t5, 0x10($sp)
  /* 044924 800C8F44 8E8F0008 */        lw $t7, 8($s4)
  .L800C8F48:
  /* 044928 800C8F48 00135080 */       sll $t2, $s3, 2
  /* 04492C 800C8F4C 02002025 */        or $a0, $s0, $zero
  /* 044930 800C8F50 AE0F001C */        sw $t7, 0x1c($s0)
  /* 044934 800C8F54 8E8E000C */        lw $t6, 0xc($s4)
  /* 044938 800C8F58 00002825 */        or $a1, $zero, $zero
  /* 04493C 800C8F5C 00003025 */        or $a2, $zero, $zero
  /* 044940 800C8F60 AE0E0020 */        sw $t6, 0x20($s0)
  /* 044944 800C8F64 8E8F0010 */        lw $t7, 0x10($s4)
  /* 044948 800C8F68 00136080 */       sll $t4, $s3, 2
  /* 04494C 800C8F6C AE0F0024 */        sw $t7, 0x24($s0)
  /* 044950 800C8F70 8E990014 */        lw $t9, 0x14($s4)
  /* 044954 800C8F74 AE190030 */        sw $t9, 0x30($s0)
  /* 044958 800C8F78 8E980018 */        lw $t8, 0x18($s4)
  /* 04495C 800C8F7C AE180034 */        sw $t8, 0x34($s0)
  /* 044960 800C8F80 8E99001C */        lw $t9, 0x1c($s4)
  /* 044964 800C8F84 AE190038 */        sw $t9, 0x38($s0)
  /* 044968 800C8F88 8E890020 */        lw $t1, 0x20($s4)
  /* 04496C 800C8F8C AE090040 */        sw $t1, 0x40($s0)
  /* 044970 800C8F90 8E880024 */        lw $t0, 0x24($s4)
  /* 044974 800C8F94 AE080044 */        sw $t0, 0x44($s0)
  /* 044978 800C8F98 8E890028 */        lw $t1, 0x28($s4)
  /* 04497C 800C8F9C AE090048 */        sw $t1, 0x48($s0)
  /* 044980 800C8FA0 8E420004 */        lw $v0, 4($s2)
  /* 044984 800C8FA4 C7A400E8 */      lwc1 $f4, 0xe8($sp)
  /* 044988 800C8FA8 10400003 */      beqz $v0, .L800C8FB8
  /* 04498C 800C8FAC 004A5821 */      addu $t3, $v0, $t2
  /* 044990 800C8FB0 10000001 */         b .L800C8FB8
  /* 044994 800C8FB4 8D650000 */        lw $a1, ($t3)
  .L800C8FB8:
  /* 044998 800C8FB8 8E420008 */        lw $v0, 8($s2)
  /* 04499C 800C8FBC 00003825 */        or $a3, $zero, $zero
  /* 0449A0 800C8FC0 10400003 */      beqz $v0, .L800C8FD0
  /* 0449A4 800C8FC4 004C6821 */      addu $t5, $v0, $t4
  /* 0449A8 800C8FC8 10000001 */         b .L800C8FD0
  /* 0449AC 800C8FCC 8DA60000 */        lw $a2, ($t5)
  .L800C8FD0:
  /* 0449B0 800C8FD0 0C03232E */       jal func_ovl0_800C8CB8
  /* 0449B4 800C8FD4 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 0449B8 800C8FD8 52E00003 */      beql $s7, $zero, .L800C8FE8
  /* 0449BC 800C8FDC 2A610020 */      slti $at, $s3, 0x20
  /* 0449C0 800C8FE0 AEF00000 */        sw $s0, ($s7)
  .L800C8FE4:
  /* 0449C4 800C8FE4 2A610020 */      slti $at, $s3, 0x20
  .L800C8FE8:
  /* 0449C8 800C8FE8 26F70004 */     addiu $s7, $s7, 4
  /* 0449CC 800C8FEC 10200003 */      beqz $at, .L800C8FFC
  /* 0449D0 800C8FF0 2694002C */     addiu $s4, $s4, 0x2c
  /* 0449D4 800C8FF4 10000002 */         b .L800C9000
  /* 0449D8 800C8FF8 0015A840 */       sll $s5, $s5, 1
  .L800C8FFC:
  /* 0449DC 800C8FFC 0016B040 */       sll $s6, $s6, 1
  .L800C9000:
  /* 0449E0 800C9000 16A00003 */      bnez $s5, .L800C9010
  /* 0449E4 800C9004 26730001 */     addiu $s3, $s3, 1
  /* 0449E8 800C9008 52C00006 */      beql $s6, $zero, .L800C9024
  /* 0449EC 800C900C 8FBF0044 */        lw $ra, 0x44($sp)
  .L800C9010:
  /* 0449F0 800C9010 8E840000 */        lw $a0, ($s4)
  /* 0449F4 800C9014 24010012 */     addiu $at, $zero, 0x12
  /* 0449F8 800C9018 5481FF89 */      bnel $a0, $at, .L800C8E40
  /* 0449FC 800C901C 2A610020 */      slti $at, $s3, 0x20
  .L800C9020:
  /* 044A00 800C9020 8FBF0044 */        lw $ra, 0x44($sp)
  .L800C9024:
  /* 044A04 800C9024 8FB00020 */        lw $s0, 0x20($sp)
  /* 044A08 800C9028 8FB10024 */        lw $s1, 0x24($sp)
  /* 044A0C 800C902C 8FB20028 */        lw $s2, 0x28($sp)
  /* 044A10 800C9030 8FB3002C */        lw $s3, 0x2c($sp)
  /* 044A14 800C9034 8FB40030 */        lw $s4, 0x30($sp)
  /* 044A18 800C9038 8FB50034 */        lw $s5, 0x34($sp)
  /* 044A1C 800C903C 8FB60038 */        lw $s6, 0x38($sp)
  /* 044A20 800C9040 8FB7003C */        lw $s7, 0x3c($sp)
  /* 044A24 800C9044 8FBE0040 */        lw $fp, 0x40($sp)
  /* 044A28 800C9048 03E00008 */        jr $ra
  /* 044A2C 800C904C 27BD00C8 */     addiu $sp, $sp, 0xc8

  /* 044A30 800C9050 27BDFF50 */     addiu $sp, $sp, -0xb0
  /* 044A34 800C9054 AFB50034 */        sw $s5, 0x34($sp)
  /* 044A38 800C9058 AFB40030 */        sw $s4, 0x30($sp)
  /* 044A3C 800C905C AFB3002C */        sw $s3, 0x2c($sp)
  /* 044A40 800C9060 00A09825 */        or $s3, $a1, $zero
  /* 044A44 800C9064 00C0A025 */        or $s4, $a2, $zero
  /* 044A48 800C9068 00E0A825 */        or $s5, $a3, $zero
  /* 044A4C 800C906C AFBF0044 */        sw $ra, 0x44($sp)
  /* 044A50 800C9070 AFBE0040 */        sw $fp, 0x40($sp)
  /* 044A54 800C9074 AFB7003C */        sw $s7, 0x3c($sp)
  /* 044A58 800C9078 AFB60038 */        sw $s6, 0x38($sp)
  /* 044A5C 800C907C AFB20028 */        sw $s2, 0x28($sp)
  /* 044A60 800C9080 AFB10024 */        sw $s1, 0x24($sp)
  /* 044A64 800C9084 AFB00020 */        sw $s0, 0x20($sp)
  /* 044A68 800C9088 AFA400B0 */        sw $a0, 0xb0($sp)
  /* 044A6C 800C908C AFA0005C */        sw $zero, 0x5c($sp)
  /* 044A70 800C9090 AFA00060 */        sw $zero, 0x60($sp)
  /* 044A74 800C9094 27A20064 */     addiu $v0, $sp, 0x64
  /* 044A78 800C9098 27A300A4 */     addiu $v1, $sp, 0xa4
  .L800C909C:
  /* 044A7C 800C909C 24420010 */     addiu $v0, $v0, 0x10
  /* 044A80 800C90A0 AC40FFF4 */        sw $zero, -0xc($v0)
  /* 044A84 800C90A4 AC40FFF8 */        sw $zero, -8($v0)
  /* 044A88 800C90A8 AC40FFFC */        sw $zero, -4($v0)
  /* 044A8C 800C90AC 1443FFFB */       bne $v0, $v1, .L800C909C
  /* 044A90 800C90B0 AC40FFF0 */        sw $zero, -0x10($v0)
  /* 044A94 800C90B4 8E620000 */        lw $v0, ($s3)
  /* 044A98 800C90B8 24010012 */     addiu $at, $zero, 0x12
  /* 044A9C 800C90BC 93BE00CB */       lbu $fp, 0xcb($sp)
  /* 044AA0 800C90C0 1041004D */       beq $v0, $at, .L800C91F8
  /* 044AA4 800C90C4 93B700C7 */       lbu $s7, 0xc7($sp)
  /* 044AA8 800C90C8 93B600C3 */       lbu $s6, 0xc3($sp)
  /* 044AAC 800C90CC 30430FFF */      andi $v1, $v0, 0xfff
  .L800C90D0:
  /* 044AB0 800C90D0 10600009 */      beqz $v1, .L800C90F8
  /* 044AB4 800C90D4 00037080 */       sll $t6, $v1, 2
  /* 044AB8 800C90D8 27AF005C */     addiu $t7, $sp, 0x5c
  /* 044ABC 800C90DC 01CF8021 */      addu $s0, $t6, $t7
  /* 044AC0 800C90E0 8E04FFFC */        lw $a0, -4($s0)
  /* 044AC4 800C90E4 0C0024FD */       jal func_800093F4
  /* 044AC8 800C90E8 8E650004 */        lw $a1, 4($s3)
  /* 044ACC 800C90EC AE020000 */        sw $v0, ($s0)
  /* 044AD0 800C90F0 10000006 */         b .L800C910C
  /* 044AD4 800C90F4 00409025 */        or $s2, $v0, $zero
  .L800C90F8:
  /* 044AD8 800C90F8 8FA400B0 */        lw $a0, 0xb0($sp)
  /* 044ADC 800C90FC 0C0024FD */       jal func_800093F4
  /* 044AE0 800C9100 8E650004 */        lw $a1, 4($s3)
  /* 044AE4 800C9104 AFA2005C */        sw $v0, 0x5c($sp)
  /* 044AE8 800C9108 00409025 */        or $s2, $v0, $zero
  .L800C910C:
  /* 044AEC 800C910C 8E780000 */        lw $t8, ($s3)
  /* 044AF0 800C9110 02402025 */        or $a0, $s2, $zero
  /* 044AF4 800C9114 32C500FF */      andi $a1, $s6, 0xff
  /* 044AF8 800C9118 33198000 */      andi $t9, $t8, 0x8000
  /* 044AFC 800C911C 1320000A */      beqz $t9, .L800C9148
  /* 044B00 800C9120 32E600FF */      andi $a2, $s7, 0xff
  /* 044B04 800C9124 34088000 */       ori $t0, $zero, 0x8000
  /* 044B08 800C9128 AFA80010 */        sw $t0, 0x10($sp)
  /* 044B0C 800C912C 02402025 */        or $a0, $s2, $zero
  /* 044B10 800C9130 32C500FF */      andi $a1, $s6, 0xff
  /* 044B14 800C9134 32E600FF */      andi $a2, $s7, 0xff
  /* 044B18 800C9138 0C003CD9 */       jal func_8000F364
  /* 044B1C 800C913C 33C700FF */      andi $a3, $fp, 0xff
  /* 044B20 800C9140 10000004 */         b .L800C9154
  /* 044B24 800C9144 8E6A0008 */        lw $t2, 8($s3)
  .L800C9148:
  /* 044B28 800C9148 0C003CBF */       jal func_8000F2FC
  /* 044B2C 800C914C 33C700FF */      andi $a3, $fp, 0xff
  /* 044B30 800C9150 8E6A0008 */        lw $t2, 8($s3)
  .L800C9154:
  /* 044B34 800C9154 AE4A001C */        sw $t2, 0x1c($s2)
  /* 044B38 800C9158 8E69000C */        lw $t1, 0xc($s3)
  /* 044B3C 800C915C AE490020 */        sw $t1, 0x20($s2)
  /* 044B40 800C9160 8E6A0010 */        lw $t2, 0x10($s3)
  /* 044B44 800C9164 AE4A0024 */        sw $t2, 0x24($s2)
  /* 044B48 800C9168 8E6C0014 */        lw $t4, 0x14($s3)
  /* 044B4C 800C916C AE4C0030 */        sw $t4, 0x30($s2)
  /* 044B50 800C9170 8E6B0018 */        lw $t3, 0x18($s3)
  /* 044B54 800C9174 AE4B0034 */        sw $t3, 0x34($s2)
  /* 044B58 800C9178 8E6C001C */        lw $t4, 0x1c($s3)
  /* 044B5C 800C917C AE4C0038 */        sw $t4, 0x38($s2)
  /* 044B60 800C9180 8E6E0020 */        lw $t6, 0x20($s3)
  /* 044B64 800C9184 AE4E0040 */        sw $t6, 0x40($s2)
  /* 044B68 800C9188 8E6D0024 */        lw $t5, 0x24($s3)
  /* 044B6C 800C918C AE4D0044 */        sw $t5, 0x44($s2)
  /* 044B70 800C9190 8E6E0028 */        lw $t6, 0x28($s3)
  /* 044B74 800C9194 1280000F */      beqz $s4, .L800C91D4
  /* 044B78 800C9198 AE4E0048 */        sw $t6, 0x48($s2)
  /* 044B7C 800C919C 8E820000 */        lw $v0, ($s4)
  /* 044B80 800C91A0 5040000C */      beql $v0, $zero, .L800C91D4
  /* 044B84 800C91A4 26940004 */     addiu $s4, $s4, 4
  /* 044B88 800C91A8 8C510000 */        lw $s1, ($v0)
  /* 044B8C 800C91AC 00408025 */        or $s0, $v0, $zero
  /* 044B90 800C91B0 12200007 */      beqz $s1, .L800C91D0
  /* 044B94 800C91B4 02402025 */        or $a0, $s2, $zero
  .L800C91B8:
  /* 044B98 800C91B8 0C002437 */       jal func_800090DC
  /* 044B9C 800C91BC 02202825 */        or $a1, $s1, $zero
  /* 044BA0 800C91C0 8E110004 */        lw $s1, 4($s0)
  /* 044BA4 800C91C4 26100004 */     addiu $s0, $s0, 4
  /* 044BA8 800C91C8 5620FFFB */      bnel $s1, $zero, .L800C91B8
  /* 044BAC 800C91CC 02402025 */        or $a0, $s2, $zero
  .L800C91D0:
  /* 044BB0 800C91D0 26940004 */     addiu $s4, $s4, 4
  .L800C91D4:
  /* 044BB4 800C91D4 52A00004 */      beql $s5, $zero, .L800C91E8
  /* 044BB8 800C91D8 8E62002C */        lw $v0, 0x2c($s3)
  /* 044BBC 800C91DC AEB20000 */        sw $s2, ($s5)
  /* 044BC0 800C91E0 26B50004 */     addiu $s5, $s5, 4
  /* 044BC4 800C91E4 8E62002C */        lw $v0, 0x2c($s3)
  .L800C91E8:
  /* 044BC8 800C91E8 24010012 */     addiu $at, $zero, 0x12
  /* 044BCC 800C91EC 2673002C */     addiu $s3, $s3, 0x2c
  /* 044BD0 800C91F0 5441FFB7 */      bnel $v0, $at, .L800C90D0
  /* 044BD4 800C91F4 30430FFF */      andi $v1, $v0, 0xfff
  .L800C91F8:
  /* 044BD8 800C91F8 8FBF0044 */        lw $ra, 0x44($sp)
  /* 044BDC 800C91FC 8FB00020 */        lw $s0, 0x20($sp)
  /* 044BE0 800C9200 8FB10024 */        lw $s1, 0x24($sp)
  /* 044BE4 800C9204 8FB20028 */        lw $s2, 0x28($sp)
  /* 044BE8 800C9208 8FB3002C */        lw $s3, 0x2c($sp)
  /* 044BEC 800C920C 8FB40030 */        lw $s4, 0x30($sp)
  /* 044BF0 800C9210 8FB50034 */        lw $s5, 0x34($sp)
  /* 044BF4 800C9214 8FB60038 */        lw $s6, 0x38($sp)
  /* 044BF8 800C9218 8FB7003C */        lw $s7, 0x3c($sp)
  /* 044BFC 800C921C 8FBE0040 */        lw $fp, 0x40($sp)
  /* 044C00 800C9220 03E00008 */        jr $ra
  /* 044C04 800C9224 27BD00B0 */     addiu $sp, $sp, 0xb0

glabel func_ovl0_800C9228
  /* 044C08 800C9228 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 044C0C 800C922C AFB40028 */        sw $s4, 0x28($sp)
  /* 044C10 800C9230 AFB30024 */        sw $s3, 0x24($sp)
  /* 044C14 800C9234 AFB20020 */        sw $s2, 0x20($sp)
  /* 044C18 800C9238 00A09825 */        or $s3, $a1, $zero
  /* 044C1C 800C923C 0080A025 */        or $s4, $a0, $zero
  /* 044C20 800C9240 AFBF002C */        sw $ra, 0x2c($sp)
  /* 044C24 800C9244 AFB1001C */        sw $s1, 0x1c($sp)
  /* 044C28 800C9248 AFB00018 */        sw $s0, 0x18($sp)
  /* 044C2C 800C924C 10800016 */      beqz $a0, .L800C92A8
  /* 044C30 800C9250 00809025 */        or $s2, $a0, $zero
  .L800C9254:
  /* 044C34 800C9254 52600010 */      beql $s3, $zero, .L800C9298
  /* 044C38 800C9258 02402025 */        or $a0, $s2, $zero
  /* 044C3C 800C925C 8E620000 */        lw $v0, ($s3)
  /* 044C40 800C9260 5040000C */      beql $v0, $zero, .L800C9294
  /* 044C44 800C9264 26730004 */     addiu $s3, $s3, 4
  /* 044C48 800C9268 8C510000 */        lw $s1, ($v0)
  /* 044C4C 800C926C 00408025 */        or $s0, $v0, $zero
  /* 044C50 800C9270 12200007 */      beqz $s1, .L800C9290
  /* 044C54 800C9274 02402025 */        or $a0, $s2, $zero
  .L800C9278:
  /* 044C58 800C9278 0C002437 */       jal func_800090DC
  /* 044C5C 800C927C 02202825 */        or $a1, $s1, $zero
  /* 044C60 800C9280 8E110004 */        lw $s1, 4($s0)
  /* 044C64 800C9284 26100004 */     addiu $s0, $s0, 4
  /* 044C68 800C9288 5620FFFB */      bnel $s1, $zero, .L800C9278
  /* 044C6C 800C928C 02402025 */        or $a0, $s2, $zero
  .L800C9290:
  /* 044C70 800C9290 26730004 */     addiu $s3, $s3, 4
  .L800C9294:
  /* 044C74 800C9294 02402025 */        or $a0, $s2, $zero
  .L800C9298:
  /* 044C78 800C9298 0C0321BA */       jal func_ovl0_800C86E8
  /* 044C7C 800C929C 02802825 */        or $a1, $s4, $zero
  /* 044C80 800C92A0 1440FFEC */      bnez $v0, .L800C9254
  /* 044C84 800C92A4 00409025 */        or $s2, $v0, $zero
  .L800C92A8:
  /* 044C88 800C92A8 8FBF002C */        lw $ra, 0x2c($sp)
  /* 044C8C 800C92AC 8FB00018 */        lw $s0, 0x18($sp)
  /* 044C90 800C92B0 8FB1001C */        lw $s1, 0x1c($sp)
  /* 044C94 800C92B4 8FB20020 */        lw $s2, 0x20($sp)
  /* 044C98 800C92B8 8FB30024 */        lw $s3, 0x24($sp)
  /* 044C9C 800C92BC 8FB40028 */        lw $s4, 0x28($sp)
  /* 044CA0 800C92C0 03E00008 */        jr $ra
  /* 044CA4 800C92C4 27BD0030 */     addiu $sp, $sp, 0x30

glabel func_ovl0_800C92C8
  /* 044CA8 800C92C8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 044CAC 800C92CC AFB10018 */        sw $s1, 0x18($sp)
  /* 044CB0 800C92D0 AFB00014 */        sw $s0, 0x14($sp)
  /* 044CB4 800C92D4 00808825 */        or $s1, $a0, $zero
  /* 044CB8 800C92D8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 044CBC 800C92DC 10800008 */      beqz $a0, .L800C9300
  /* 044CC0 800C92E0 00808025 */        or $s0, $a0, $zero
  .L800C92E4:
  /* 044CC4 800C92E4 0C00332F */       jal func_8000CCBC
  /* 044CC8 800C92E8 02002025 */        or $a0, $s0, $zero
  /* 044CCC 800C92EC 02002025 */        or $a0, $s0, $zero
  /* 044CD0 800C92F0 0C0321BA */       jal func_ovl0_800C86E8
  /* 044CD4 800C92F4 02202825 */        or $a1, $s1, $zero
  /* 044CD8 800C92F8 1440FFFA */      bnez $v0, .L800C92E4
  /* 044CDC 800C92FC 00408025 */        or $s0, $v0, $zero
  .L800C9300:
  /* 044CE0 800C9300 8FBF001C */        lw $ra, 0x1c($sp)
  /* 044CE4 800C9304 8FB00014 */        lw $s0, 0x14($sp)
  /* 044CE8 800C9308 8FB10018 */        lw $s1, 0x18($sp)
  /* 044CEC 800C930C 03E00008 */        jr $ra
  /* 044CF0 800C9310 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_ovl0_800C9314
  /* 044CF4 800C9314 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 044CF8 800C9318 AFB30020 */        sw $s3, 0x20($sp)
  /* 044CFC 800C931C AFB10018 */        sw $s1, 0x18($sp)
  /* 044D00 800C9320 AFB00014 */        sw $s0, 0x14($sp)
  /* 044D04 800C9324 00A08025 */        or $s0, $a1, $zero
  /* 044D08 800C9328 00809825 */        or $s3, $a0, $zero
  /* 044D0C 800C932C AFBF0024 */        sw $ra, 0x24($sp)
  /* 044D10 800C9330 AFB2001C */        sw $s2, 0x1c($sp)
  /* 044D14 800C9334 10800020 */      beqz $a0, .L800C93B8
  /* 044D18 800C9338 00808825 */        or $s1, $a0, $zero
  /* 044D1C 800C933C 8CAE0000 */        lw $t6, ($a1)
  /* 044D20 800C9340 24120012 */     addiu $s2, $zero, 0x12
  /* 044D24 800C9344 524E001D */      beql $s2, $t6, .L800C93BC
  /* 044D28 800C9348 8FBF0024 */        lw $ra, 0x24($sp)
  /* 044D2C 800C934C 8E180008 */        lw $t8, 8($s0)
  .L800C9350:
  /* 044D30 800C9350 2610002C */     addiu $s0, $s0, 0x2c
  /* 044D34 800C9354 02202025 */        or $a0, $s1, $zero
  /* 044D38 800C9358 AE38001C */        sw $t8, 0x1c($s1)
  /* 044D3C 800C935C 8E0FFFE0 */        lw $t7, -0x20($s0)
  /* 044D40 800C9360 02602825 */        or $a1, $s3, $zero
  /* 044D44 800C9364 AE2F0020 */        sw $t7, 0x20($s1)
  /* 044D48 800C9368 8E18FFE4 */        lw $t8, -0x1c($s0)
  /* 044D4C 800C936C AE380024 */        sw $t8, 0x24($s1)
  /* 044D50 800C9370 8E08FFE8 */        lw $t0, -0x18($s0)
  /* 044D54 800C9374 AE280030 */        sw $t0, 0x30($s1)
  /* 044D58 800C9378 8E19FFEC */        lw $t9, -0x14($s0)
  /* 044D5C 800C937C AE390034 */        sw $t9, 0x34($s1)
  /* 044D60 800C9380 8E08FFF0 */        lw $t0, -0x10($s0)
  /* 044D64 800C9384 AE280038 */        sw $t0, 0x38($s1)
  /* 044D68 800C9388 8E0AFFF4 */        lw $t2, -0xc($s0)
  /* 044D6C 800C938C AE2A0040 */        sw $t2, 0x40($s1)
  /* 044D70 800C9390 8E09FFF8 */        lw $t1, -8($s0)
  /* 044D74 800C9394 AE290044 */        sw $t1, 0x44($s1)
  /* 044D78 800C9398 8E0AFFFC */        lw $t2, -4($s0)
  /* 044D7C 800C939C 0C0321BA */       jal func_ovl0_800C86E8
  /* 044D80 800C93A0 AE2A0048 */        sw $t2, 0x48($s1)
  /* 044D84 800C93A4 10400004 */      beqz $v0, .L800C93B8
  /* 044D88 800C93A8 00408825 */        or $s1, $v0, $zero
  /* 044D8C 800C93AC 8E0B0000 */        lw $t3, ($s0)
  /* 044D90 800C93B0 564BFFE7 */      bnel $s2, $t3, .L800C9350
  /* 044D94 800C93B4 8E180008 */        lw $t8, 8($s0)
  .L800C93B8:
  /* 044D98 800C93B8 8FBF0024 */        lw $ra, 0x24($sp)
  .L800C93BC:
  /* 044D9C 800C93BC 8FB00014 */        lw $s0, 0x14($sp)
  /* 044DA0 800C93C0 8FB10018 */        lw $s1, 0x18($sp)
  /* 044DA4 800C93C4 8FB2001C */        lw $s2, 0x1c($sp)
  /* 044DA8 800C93C8 8FB30020 */        lw $s3, 0x20($sp)
  /* 044DAC 800C93CC 03E00008 */        jr $ra
  /* 044DB0 800C93D0 27BD0028 */     addiu $sp, $sp, 0x28

  /* 044DB4 800C93D4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 044DB8 800C93D8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 044DBC 800C93DC 00803025 */        or $a2, $a0, $zero
  /* 044DC0 800C93E0 8C840004 */        lw $a0, 4($a0)
  /* 044DC4 800C93E4 0C0024B4 */       jal func_800092D0
  /* 044DC8 800C93E8 AFA60018 */        sw $a2, 0x18($sp)
  /* 044DCC 800C93EC 8C4E000C */        lw $t6, 0xc($v0)
  /* 044DD0 800C93F0 8FA60018 */        lw $a2, 0x18($sp)
  /* 044DD4 800C93F4 ADC00008 */        sw $zero, 8($t6)
  /* 044DD8 800C93F8 AC40000C */        sw $zero, 0xc($v0)
  /* 044DDC 800C93FC 8CCF0010 */        lw $t7, 0x10($a2)
  /* 044DE0 800C9400 ADE20014 */        sw $v0, 0x14($t7)
  /* 044DE4 800C9404 8CD80010 */        lw $t8, 0x10($a2)
  /* 044DE8 800C9408 AC580010 */        sw $t8, 0x10($v0)
  /* 044DEC 800C940C ACC20010 */        sw $v0, 0x10($a2)
  /* 044DF0 800C9410 AC460014 */        sw $a2, 0x14($v0)
  /* 044DF4 800C9414 8FBF0014 */        lw $ra, 0x14($sp)
  /* 044DF8 800C9418 27BD0018 */     addiu $sp, $sp, 0x18
  /* 044DFC 800C941C 03E00008 */        jr $ra
  /* 044E00 800C9420 00000000 */       nop 

glabel func_ovl0_800C9424
  /* 044E04 800C9424 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 044E08 800C9428 AFBF0014 */        sw $ra, 0x14($sp)
  /* 044E0C 800C942C 8C820010 */        lw $v0, 0x10($a0)
  /* 044E10 800C9430 8C830014 */        lw $v1, 0x14($a0)
  /* 044E14 800C9434 AC800010 */        sw $zero, 0x10($a0)
  /* 044E18 800C9438 AFA2001C */        sw $v0, 0x1c($sp)
  /* 044E1C 800C943C 0C002523 */       jal func_8000948C
  /* 044E20 800C9440 AFA30018 */        sw $v1, 0x18($sp)
  /* 044E24 800C9444 8FA30018 */        lw $v1, 0x18($sp)
  /* 044E28 800C9448 24010001 */     addiu $at, $zero, 1
  /* 044E2C 800C944C 8FA2001C */        lw $v0, 0x1c($sp)
  /* 044E30 800C9450 54610008 */      bnel $v1, $at, .L800C9474
  /* 044E34 800C9454 AC620010 */        sw $v0, 0x10($v1)
  /* 044E38 800C9458 8C4E0004 */        lw $t6, 4($v0)
  /* 044E3C 800C945C 240F0001 */     addiu $t7, $zero, 1
  /* 044E40 800C9460 ADC20074 */        sw $v0, 0x74($t6)
  /* 044E44 800C9464 8C580004 */        lw $t8, 4($v0)
  /* 044E48 800C9468 10000002 */         b .L800C9474
  /* 044E4C 800C946C A30F000F */        sb $t7, 0xf($t8)
  /* 044E50 800C9470 AC620010 */        sw $v0, 0x10($v1)
  .L800C9474:
  /* 044E54 800C9474 AC430014 */        sw $v1, 0x14($v0)
  /* 044E58 800C9478 8FBF0014 */        lw $ra, 0x14($sp)
  /* 044E5C 800C947C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 044E60 800C9480 03E00008 */        jr $ra
  /* 044E64 800C9484 00000000 */       nop 

glabel func_ovl0_800C9488
  /* 044E68 800C9488 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 044E6C 800C948C AFBF003C */        sw $ra, 0x3c($sp)
  /* 044E70 800C9490 AFB30038 */        sw $s3, 0x38($sp)
  /* 044E74 800C9494 AFB20034 */        sw $s2, 0x34($sp)
  /* 044E78 800C9498 AFB10030 */        sw $s1, 0x30($sp)
  /* 044E7C 800C949C AFB0002C */        sw $s0, 0x2c($sp)
  /* 044E80 800C94A0 F7B80020 */      sdc1 $f24, 0x20($sp)
  /* 044E84 800C94A4 F7B60018 */      sdc1 $f22, 0x18($sp)
  /* 044E88 800C94A8 F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 044E8C 800C94AC 3C01800D */       lui $at, %hi(D_ovl0_800D5E88)
  /* 044E90 800C94B0 C4245E88 */      lwc1 $f4, %lo(D_ovl0_800D5E88)($at)
  /* 044E94 800C94B4 C4800074 */      lwc1 $f0, 0x74($a0)
  /* 044E98 800C94B8 00808825 */        or $s1, $a0, $zero
  /* 044E9C 800C94BC 00A09825 */        or $s3, $a1, $zero
  /* 044EA0 800C94C0 46002032 */    c.eq.s $f4, $f0
  /* 044EA4 800C94C4 00000000 */       nop 
  /* 044EA8 800C94C8 4503007B */     bc1tl .L800C96B8
  /* 044EAC 800C94CC 8FBF003C */        lw $ra, 0x3c($sp)
  /* 044EB0 800C94D0 8C90006C */        lw $s0, 0x6c($a0)
  /* 044EB4 800C94D4 3C01800D */       lui $at, %hi(D_ovl0_800D5E8C)
  /* 044EB8 800C94D8 1200006D */      beqz $s0, .L800C9690
  /* 044EBC 800C94DC 00000000 */       nop 
  /* 044EC0 800C94E0 C4385E8C */      lwc1 $f24, %lo(D_ovl0_800D5E8C)($at)
  /* 044EC4 800C94E4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 044EC8 800C94E8 4481B000 */      mtc1 $at, $f22 # 1.0 to cop1
  /* 044ECC 800C94EC 4480A000 */      mtc1 $zero, $f20
  /* 044ED0 800C94F0 00000000 */       nop 
  /* 044ED4 800C94F4 920E0005 */       lbu $t6, 5($s0)
  .L800C94F8:
  /* 044ED8 800C94F8 51C00062 */      beql $t6, $zero, .L800C9684
  /* 044EDC 800C94FC 8E100000 */        lw $s0, ($s0)
  /* 044EE0 800C9500 C6260074 */      lwc1 $f6, 0x74($s1)
  /* 044EE4 800C9504 4606C032 */    c.eq.s $f24, $f6
  /* 044EE8 800C9508 00000000 */       nop 
  /* 044EEC 800C950C 45030006 */     bc1tl .L800C9528
  /* 044EF0 800C9510 8E2F0004 */        lw $t7, 4($s1)
  /* 044EF4 800C9514 C608000C */      lwc1 $f8, 0xc($s0)
  /* 044EF8 800C9518 C62A0078 */      lwc1 $f10, 0x78($s1)
  /* 044EFC 800C951C 460A4400 */     add.s $f16, $f8, $f10
  /* 044F00 800C9520 E610000C */      swc1 $f16, 0xc($s0)
  /* 044F04 800C9524 8E2F0004 */        lw $t7, 4($s1)
  .L800C9528:
  /* 044F08 800C9528 8DF8007C */        lw $t8, 0x7c($t7)
  /* 044F0C 800C952C 33190002 */      andi $t9, $t8, 2
  /* 044F10 800C9530 57200054 */      bnel $t9, $zero, .L800C9684
  /* 044F14 800C9534 8E100000 */        lw $s0, ($s0)
  /* 044F18 800C9538 92080004 */       lbu $t0, 4($s0)
  /* 044F1C 800C953C 2509FFFF */     addiu $t1, $t0, -1
  /* 044F20 800C9540 2D21000A */     sltiu $at, $t1, 0xa
  /* 044F24 800C9544 1020004E */      beqz $at, .L800C9680
  /* 044F28 800C9548 00094880 */       sll $t1, $t1, 2
  /* 044F2C 800C954C 3C01800D */       lui $at, %hi(jtbl_ovl0_800D5E90)
  /* 044F30 800C9550 00290821 */      addu $at, $at, $t1
  /* 044F34 800C9554 8C295E90 */        lw $t1, %lo(jtbl_ovl0_800D5E90)($at)
  /* 044F38 800C9558 01200008 */        jr $t1
  /* 044F3C 800C955C 00000000 */       nop 
  glabel jtgt_ovl0_800C9560
  /* 044F40 800C9560 0C0032E5 */       jal func_8000CB94
  /* 044F44 800C9564 02002025 */        or $a0, $s0, $zero
  /* 044F48 800C9568 10000045 */         b .L800C9680
  /* 044F4C 800C956C E6200030 */      swc1 $f0, 0x30($s1)
  glabel jtgt_ovl0_800C9570
  /* 044F50 800C9570 0C0032E5 */       jal func_8000CB94
  /* 044F54 800C9574 02002025 */        or $a0, $s0, $zero
  /* 044F58 800C9578 10000041 */         b .L800C9680
  /* 044F5C 800C957C E6200034 */      swc1 $f0, 0x34($s1)
  glabel jtgt_ovl0_800C9580
  /* 044F60 800C9580 0C0032E5 */       jal func_8000CB94
  /* 044F64 800C9584 02002025 */        or $a0, $s0, $zero
  /* 044F68 800C9588 1000003D */         b .L800C9680
  /* 044F6C 800C958C E6200038 */      swc1 $f0, 0x38($s1)
  glabel jtgt_ovl0_800C9590
  /* 044F70 800C9590 02002025 */        or $a0, $s0, $zero
  /* 044F74 800C9594 0C0032E5 */       jal func_8000CB94
  /* 044F78 800C9598 2632001C */     addiu $s2, $s1, 0x1c
  /* 044F7C 800C959C 4614003C */    c.lt.s $f0, $f20
  /* 044F80 800C95A0 46000086 */     mov.s $f2, $f0
  /* 044F84 800C95A4 02402025 */        or $a0, $s2, $zero
  /* 044F88 800C95A8 45020004 */     bc1fl .L800C95BC
  /* 044F8C 800C95AC 4600B03C */    c.lt.s $f22, $f0
  /* 044F90 800C95B0 10000006 */         b .L800C95CC
  /* 044F94 800C95B4 4600A086 */     mov.s $f2, $f20
  /* 044F98 800C95B8 4600B03C */    c.lt.s $f22, $f0
  .L800C95BC:
  /* 044F9C 800C95BC 00000000 */       nop 
  /* 044FA0 800C95C0 45020003 */     bc1fl .L800C95D0
  /* 044FA4 800C95C4 44061000 */      mfc1 $a2, $f2
  /* 044FA8 800C95C8 4600B086 */     mov.s $f2, $f22
  .L800C95CC:
  /* 044FAC 800C95CC 44061000 */      mfc1 $a2, $f2
  .L800C95D0:
  /* 044FB0 800C95D0 0C00794C */       jal hal_interpolation_cubic
  /* 044FB4 800C95D4 8E050020 */        lw $a1, 0x20($s0)
  /* 044FB8 800C95D8 C632001C */      lwc1 $f18, 0x1c($s1)
  /* 044FBC 800C95DC C6640000 */      lwc1 $f4, ($s3)
  /* 044FC0 800C95E0 C6280020 */      lwc1 $f8, 0x20($s1)
  /* 044FC4 800C95E4 46049182 */     mul.s $f6, $f18, $f4
  /* 044FC8 800C95E8 C6320024 */      lwc1 $f18, 0x24($s1)
  /* 044FCC 800C95EC E626001C */      swc1 $f6, 0x1c($s1)
  /* 044FD0 800C95F0 C66A0004 */      lwc1 $f10, 4($s3)
  /* 044FD4 800C95F4 460A4402 */     mul.s $f16, $f8, $f10
  /* 044FD8 800C95F8 E6300020 */      swc1 $f16, 0x20($s1)
  /* 044FDC 800C95FC C6640008 */      lwc1 $f4, 8($s3)
  /* 044FE0 800C9600 46049182 */     mul.s $f6, $f18, $f4
  /* 044FE4 800C9604 1000001E */         b .L800C9680
  /* 044FE8 800C9608 E6260024 */      swc1 $f6, 0x24($s1)
  glabel jtgt_ovl0_800C960C
  /* 044FEC 800C960C 0C0032E5 */       jal func_8000CB94
  /* 044FF0 800C9610 02002025 */        or $a0, $s0, $zero
  /* 044FF4 800C9614 C6680000 */      lwc1 $f8, ($s3)
  /* 044FF8 800C9618 46080282 */     mul.s $f10, $f0, $f8
  /* 044FFC 800C961C 10000018 */         b .L800C9680
  /* 045000 800C9620 E62A001C */      swc1 $f10, 0x1c($s1)
  glabel jtgt_ovl0_800C9624
  /* 045004 800C9624 0C0032E5 */       jal func_8000CB94
  /* 045008 800C9628 02002025 */        or $a0, $s0, $zero
  /* 04500C 800C962C C6700004 */      lwc1 $f16, 4($s3)
  /* 045010 800C9630 46100482 */     mul.s $f18, $f0, $f16
  /* 045014 800C9634 10000012 */         b .L800C9680
  /* 045018 800C9638 E6320020 */      swc1 $f18, 0x20($s1)
  glabel jtgt_ovl0_800C963C
  /* 04501C 800C963C 0C0032E5 */       jal func_8000CB94
  /* 045020 800C9640 02002025 */        or $a0, $s0, $zero
  /* 045024 800C9644 C6640008 */      lwc1 $f4, 8($s3)
  /* 045028 800C9648 46040182 */     mul.s $f6, $f0, $f4
  /* 04502C 800C964C 1000000C */         b .L800C9680
  /* 045030 800C9650 E6260024 */      swc1 $f6, 0x24($s1)
  glabel jtgt_ovl0_800C9654
  /* 045034 800C9654 0C0032E5 */       jal func_8000CB94
  /* 045038 800C9658 02002025 */        or $a0, $s0, $zero
  /* 04503C 800C965C 10000008 */         b .L800C9680
  /* 045040 800C9660 E6200040 */      swc1 $f0, 0x40($s1)
  glabel jtgt_ovl0_800C9664
  /* 045044 800C9664 0C0032E5 */       jal func_8000CB94
  /* 045048 800C9668 02002025 */        or $a0, $s0, $zero
  /* 04504C 800C966C 10000004 */         b .L800C9680
  /* 045050 800C9670 E6200044 */      swc1 $f0, 0x44($s1)
  glabel jtgt_ovl0_800C9674
  /* 045054 800C9674 0C0032E5 */       jal func_8000CB94
  /* 045058 800C9678 02002025 */        or $a0, $s0, $zero
  /* 04505C 800C967C E6200048 */      swc1 $f0, 0x48($s1)
  .L800C9680:
  /* 045060 800C9680 8E100000 */        lw $s0, ($s0)
  .L800C9684:
  /* 045064 800C9684 5600FF9C */      bnel $s0, $zero, .L800C94F8
  /* 045068 800C9688 920E0005 */       lbu $t6, 5($s0)
  /* 04506C 800C968C C6200074 */      lwc1 $f0, 0x74($s1)
  .L800C9690:
  /* 045070 800C9690 3C01800D */       lui $at, %hi(D_ovl0_800D5EB8)
  /* 045074 800C9694 C4385EB8 */      lwc1 $f24, %lo(D_ovl0_800D5EB8)($at)
  /* 045078 800C9698 3C01800D */       lui $at, %hi(D_ovl0_800D5EBC)
  /* 04507C 800C969C 4600C032 */    c.eq.s $f24, $f0
  /* 045080 800C96A0 00000000 */       nop 
  /* 045084 800C96A4 45020004 */     bc1fl .L800C96B8
  /* 045088 800C96A8 8FBF003C */        lw $ra, 0x3c($sp)
  /* 04508C 800C96AC C4285EBC */      lwc1 $f8, %lo(D_ovl0_800D5EBC)($at)
  /* 045090 800C96B0 E6280074 */      swc1 $f8, 0x74($s1)
  /* 045094 800C96B4 8FBF003C */        lw $ra, 0x3c($sp)
  .L800C96B8:
  /* 045098 800C96B8 D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 04509C 800C96BC D7B60018 */      ldc1 $f22, 0x18($sp)
  /* 0450A0 800C96C0 D7B80020 */      ldc1 $f24, 0x20($sp)
  /* 0450A4 800C96C4 8FB0002C */        lw $s0, 0x2c($sp)
  /* 0450A8 800C96C8 8FB10030 */        lw $s1, 0x30($sp)
  /* 0450AC 800C96CC 8FB20034 */        lw $s2, 0x34($sp)
  /* 0450B0 800C96D0 8FB30038 */        lw $s3, 0x38($sp)
  /* 0450B4 800C96D4 03E00008 */        jr $ra
  /* 0450B8 800C96D8 27BD0040 */     addiu $sp, $sp, 0x40

glabel func_ovl0_800C96DC
  /* 0450BC 800C96DC AFA40000 */        sw $a0, ($sp)
  /* 0450C0 800C96E0 AFA50004 */        sw $a1, 4($sp)
  /* 0450C4 800C96E4 03E00008 */        jr $ra
  /* 0450C8 800C96E8 AFA60008 */        sw $a2, 8($sp)

  glabel jtgt_ovl0_800C96EC
  /* 0450CC 800C96EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0450D0 800C96F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0450D4 800C96F4 AFA60020 */        sw $a2, 0x20($sp)
  /* 0450D8 800C96F8 0C0325B7 */       jal func_ovl0_800C96DC
  /* 0450DC 800C96FC 00003025 */        or $a2, $zero, $zero
  /* 0450E0 800C9700 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0450E4 800C9704 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0450E8 800C9708 00001025 */        or $v0, $zero, $zero
  /* 0450EC 800C970C 03E00008 */        jr $ra
  /* 0450F0 800C9710 00000000 */       nop 

  glabel jtgt_ovl0_800C9714
  /* 0450F4 800C9714 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0450F8 800C9718 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0450FC 800C971C AFA60020 */        sw $a2, 0x20($sp)
  /* 045100 800C9720 0C0325B7 */       jal func_ovl0_800C96DC
  /* 045104 800C9724 24060001 */     addiu $a2, $zero, 1
  /* 045108 800C9728 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04510C 800C972C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 045110 800C9730 00001025 */        or $v0, $zero, $zero
  /* 045114 800C9734 03E00008 */        jr $ra
  /* 045118 800C9738 00000000 */       nop 

  glabel jtgt_ovl0_800C973C
  /* 04511C 800C973C 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 045120 800C9740 AFBF0044 */        sw $ra, 0x44($sp)
  /* 045124 800C9744 AFB00040 */        sw $s0, 0x40($sp)
  /* 045128 800C9748 AFA40050 */        sw $a0, 0x50($sp)
  /* 04512C 800C974C AFA60058 */        sw $a2, 0x58($sp)
  /* 045130 800C9750 8CAE0004 */        lw $t6, 4($a1)
  /* 045134 800C9754 00A08025 */        or $s0, $a1, $zero
  /* 045138 800C9758 8CA20084 */        lw $v0, 0x84($a1)
  /* 04513C 800C975C 8DCF0084 */        lw $t7, 0x84($t6)
  /* 045140 800C9760 8DE30190 */        lw $v1, 0x190($t7)
  /* 045144 800C9764 000318C0 */       sll $v1, $v1, 3
  /* 045148 800C9768 00031FC2 */       srl $v1, $v1, 0x1f
  /* 04514C 800C976C 5460003A */      bnel $v1, $zero, .L800C9858
  /* 045150 800C9770 8C590000 */        lw $t9, ($v0)
  /* 045154 800C9774 8C580000 */        lw $t8, ($v0)
  /* 045158 800C9778 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04515C 800C977C 24440010 */     addiu $a0, $v0, 0x10
  /* 045160 800C9780 53000006 */      beql $t8, $zero, .L800C979C
  /* 045164 800C9784 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 045168 800C9788 0C0067A8 */       jal hal_mtx_f2l_fixed_w
  /* 04516C 800C978C 8FA50050 */        lw $a1, 0x50($sp)
  /* 045170 800C9790 1000006A */         b .L800C993C
  /* 045174 800C9794 8FBF0044 */        lw $ra, 0x44($sp)
  /* 045178 800C9798 44811000 */      mtc1 $at, $f2
  .L800C979C:
  /* 04517C 800C979C C6000040 */      lwc1 $f0, 0x40($s0)
  /* 045180 800C97A0 46001032 */    c.eq.s $f2, $f0
  /* 045184 800C97A4 00000000 */       nop 
  /* 045188 800C97A8 4502000C */     bc1fl .L800C97DC
  /* 04518C 800C97AC C6080030 */      lwc1 $f8, 0x30($s0)
  /* 045190 800C97B0 C6040044 */      lwc1 $f4, 0x44($s0)
  /* 045194 800C97B4 46041032 */    c.eq.s $f2, $f4
  /* 045198 800C97B8 00000000 */       nop 
  /* 04519C 800C97BC 45020007 */     bc1fl .L800C97DC
  /* 0451A0 800C97C0 C6080030 */      lwc1 $f8, 0x30($s0)
  /* 0451A4 800C97C4 C6060048 */      lwc1 $f6, 0x48($s0)
  /* 0451A8 800C97C8 46061032 */    c.eq.s $f2, $f6
  /* 0451AC 800C97CC 00000000 */       nop 
  /* 0451B0 800C97D0 45030014 */     bc1tl .L800C9824
  /* 0451B4 800C97D4 C6060030 */      lwc1 $f6, 0x30($s0)
  /* 0451B8 800C97D8 C6080030 */      lwc1 $f8, 0x30($s0)
  .L800C97DC:
  /* 0451BC 800C97DC 8E05001C */        lw $a1, 0x1c($s0)
  /* 0451C0 800C97E0 8E060020 */        lw $a2, 0x20($s0)
  /* 0451C4 800C97E4 8E070024 */        lw $a3, 0x24($s0)
  /* 0451C8 800C97E8 E7A80010 */      swc1 $f8, 0x10($sp)
  /* 0451CC 800C97EC C60A0034 */      lwc1 $f10, 0x34($s0)
  /* 0451D0 800C97F0 8FA40050 */        lw $a0, 0x50($sp)
  /* 0451D4 800C97F4 E7AA0014 */      swc1 $f10, 0x14($sp)
  /* 0451D8 800C97F8 C6100038 */      lwc1 $f16, 0x38($s0)
  /* 0451DC 800C97FC E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 0451E0 800C9800 E7B00018 */      swc1 $f16, 0x18($sp)
  /* 0451E4 800C9804 C6120044 */      lwc1 $f18, 0x44($s0)
  /* 0451E8 800C9808 E7B20020 */      swc1 $f18, 0x20($sp)
  /* 0451EC 800C980C C6040048 */      lwc1 $f4, 0x48($s0)
  /* 0451F0 800C9810 0C007162 */       jal hal_rotate_rpy_translate_scale
  /* 0451F4 800C9814 E7A40024 */      swc1 $f4, 0x24($sp)
  /* 0451F8 800C9818 10000048 */         b .L800C993C
  /* 0451FC 800C981C 8FBF0044 */        lw $ra, 0x44($sp)
  /* 045200 800C9820 C6060030 */      lwc1 $f6, 0x30($s0)
  .L800C9824:
  /* 045204 800C9824 8E05001C */        lw $a1, 0x1c($s0)
  /* 045208 800C9828 8E060020 */        lw $a2, 0x20($s0)
  /* 04520C 800C982C 8E070024 */        lw $a3, 0x24($s0)
  /* 045210 800C9830 E7A60010 */      swc1 $f6, 0x10($sp)
  /* 045214 800C9834 C6080034 */      lwc1 $f8, 0x34($s0)
  /* 045218 800C9838 8FA40050 */        lw $a0, 0x50($sp)
  /* 04521C 800C983C E7A80014 */      swc1 $f8, 0x14($sp)
  /* 045220 800C9840 C60A0038 */      lwc1 $f10, 0x38($s0)
  /* 045224 800C9844 0C007087 */       jal hal_rotate_rpy_translate
  /* 045228 800C9848 E7AA0018 */      swc1 $f10, 0x18($sp)
  /* 04522C 800C984C 1000003B */         b .L800C993C
  /* 045230 800C9850 8FBF0044 */        lw $ra, 0x44($sp)
  /* 045234 800C9854 8C590000 */        lw $t9, ($v0)
  .L800C9858:
  /* 045238 800C9858 3C03800D */       lui $v1, %hi(D_ovl0_800D62D0)
  /* 04523C 800C985C 246362D0 */     addiu $v1, $v1, %lo(D_ovl0_800D62D0)
  /* 045240 800C9860 13200008 */      beqz $t9, .L800C9884
  /* 045244 800C9864 24440010 */     addiu $a0, $v0, 0x10
  /* 045248 800C9868 8FA50050 */        lw $a1, 0x50($sp)
  /* 04524C 800C986C 0C0067A8 */       jal hal_mtx_f2l_fixed_w
  /* 045250 800C9870 AFA20048 */        sw $v0, 0x48($sp)
  /* 045254 800C9874 3C03800D */       lui $v1, %hi(D_ovl0_800D62D0)
  /* 045258 800C9878 246362D0 */     addiu $v1, $v1, %lo(D_ovl0_800D62D0)
  /* 04525C 800C987C 10000028 */         b .L800C9920
  /* 045260 800C9880 8FA20048 */        lw $v0, 0x48($sp)
  .L800C9884:
  /* 045264 800C9884 C6100040 */      lwc1 $f16, 0x40($s0)
  /* 045268 800C9888 C4720000 */      lwc1 $f18, ($v1) # D_ovl0_800D62D0 + 0
  /* 04526C 800C988C 46128102 */     mul.s $f4, $f16, $f18
  /* 045270 800C9890 E4440090 */      swc1 $f4, 0x90($v0)
  /* 045274 800C9894 C4680004 */      lwc1 $f8, 4($v1) # D_ovl0_800D62D0 + 4
  /* 045278 800C9898 C6060044 */      lwc1 $f6, 0x44($s0)
  /* 04527C 800C989C 46083282 */     mul.s $f10, $f6, $f8
  /* 045280 800C98A0 E44A0094 */      swc1 $f10, 0x94($v0)
  /* 045284 800C98A4 C4720008 */      lwc1 $f18, 8($v1) # D_ovl0_800D62D0 + 8
  /* 045288 800C98A8 C6100048 */      lwc1 $f16, 0x48($s0)
  /* 04528C 800C98AC 46128102 */     mul.s $f4, $f16, $f18
  /* 045290 800C98B0 E4440098 */      swc1 $f4, 0x98($v0)
  /* 045294 800C98B4 C6060030 */      lwc1 $f6, 0x30($s0)
  /* 045298 800C98B8 8E070024 */        lw $a3, 0x24($s0)
  /* 04529C 800C98BC 8E060020 */        lw $a2, 0x20($s0)
  /* 0452A0 800C98C0 8E05001C */        lw $a1, 0x1c($s0)
  /* 0452A4 800C98C4 E7A60010 */      swc1 $f6, 0x10($sp)
  /* 0452A8 800C98C8 C6080034 */      lwc1 $f8, 0x34($s0)
  /* 0452AC 800C98CC C4640008 */      lwc1 $f4, 8($v1) # D_ovl0_800D62D0 + 8
  /* 0452B0 800C98D0 C4720004 */      lwc1 $f18, 4($v1) # D_ovl0_800D62D0 + 4
  /* 0452B4 800C98D4 E7A80014 */      swc1 $f8, 0x14($sp)
  /* 0452B8 800C98D8 C60A0038 */      lwc1 $f10, 0x38($s0)
  /* 0452BC 800C98DC C4700000 */      lwc1 $f16, ($v1) # D_ovl0_800D62D0 + 0
  /* 0452C0 800C98E0 E7A40024 */      swc1 $f4, 0x24($sp)
  /* 0452C4 800C98E4 E7B20020 */      swc1 $f18, 0x20($sp)
  /* 0452C8 800C98E8 E7AA0018 */      swc1 $f10, 0x18($sp)
  /* 0452CC 800C98EC E7B0001C */      swc1 $f16, 0x1c($sp)
  /* 0452D0 800C98F0 C4460090 */      lwc1 $f6, 0x90($v0)
  /* 0452D4 800C98F4 8FA40050 */        lw $a0, 0x50($sp)
  /* 0452D8 800C98F8 E7A60028 */      swc1 $f6, 0x28($sp)
  /* 0452DC 800C98FC C4480094 */      lwc1 $f8, 0x94($v0)
  /* 0452E0 800C9900 E7A8002C */      swc1 $f8, 0x2c($sp)
  /* 0452E4 800C9904 C44A0098 */      lwc1 $f10, 0x98($v0)
  /* 0452E8 800C9908 AFA20048 */        sw $v0, 0x48($sp)
  /* 0452EC 800C990C 0C031F6D */       jal func_ovl0_800C7DB4
  /* 0452F0 800C9910 E7AA0030 */      swc1 $f10, 0x30($sp)
  /* 0452F4 800C9914 3C03800D */       lui $v1, %hi(D_ovl0_800D62D0)
  /* 0452F8 800C9918 246362D0 */     addiu $v1, $v1, %lo(D_ovl0_800D62D0)
  /* 0452FC 800C991C 8FA20048 */        lw $v0, 0x48($sp)
  .L800C9920:
  /* 045300 800C9920 8C490090 */        lw $t1, 0x90($v0)
  /* 045304 800C9924 AC690000 */        sw $t1, ($v1) # D_ovl0_800D62D0 + 0
  /* 045308 800C9928 8C480094 */        lw $t0, 0x94($v0)
  /* 04530C 800C992C AC680004 */        sw $t0, 4($v1) # D_ovl0_800D62D0 + 4
  /* 045310 800C9930 8C490098 */        lw $t1, 0x98($v0)
  /* 045314 800C9934 AC690008 */        sw $t1, 8($v1) # D_ovl0_800D62D0 + 8
  /* 045318 800C9938 8FBF0044 */        lw $ra, 0x44($sp)
  .L800C993C:
  /* 04531C 800C993C 8FB00040 */        lw $s0, 0x40($sp)
  /* 045320 800C9940 27BD0050 */     addiu $sp, $sp, 0x50
  /* 045324 800C9944 03E00008 */        jr $ra
  /* 045328 800C9948 00001025 */        or $v0, $zero, $zero

  glabel jtgt_ovl0_800C994C
  /* 04532C 800C994C 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 045330 800C9950 AFBF0014 */        sw $ra, 0x14($sp)
  /* 045334 800C9954 AFA40068 */        sw $a0, 0x68($sp)
  /* 045338 800C9958 AFA60070 */        sw $a2, 0x70($sp)
  /* 04533C 800C995C 8CA40084 */        lw $a0, 0x84($a1)
  /* 045340 800C9960 8C8E0084 */        lw $t6, 0x84($a0)
  /* 045344 800C9964 0C03B6E9 */       jal func_ovl2_800EDBA4
  /* 045348 800C9968 AFAE005C */        sw $t6, 0x5c($sp)
  /* 04534C 800C996C 8FA5005C */        lw $a1, 0x5c($sp)
  /* 045350 800C9970 27A4001C */     addiu $a0, $sp, 0x1c
  /* 045354 800C9974 0C03B360 */       jal func_ovl2_800ECD80
  /* 045358 800C9978 24A50050 */     addiu $a1, $a1, 0x50
  /* 04535C 800C997C C7A2001C */      lwc1 $f2, 0x1c($sp)
  /* 045360 800C9980 C7AE0020 */      lwc1 $f14, 0x20($sp)
  /* 045364 800C9984 C7A00024 */      lwc1 $f0, 0x24($sp)
  /* 045368 800C9988 46021102 */     mul.s $f4, $f2, $f2
  /* 04536C 800C998C 00000000 */       nop 
  /* 045370 800C9990 460E7182 */     mul.s $f6, $f14, $f14
  /* 045374 800C9994 46062200 */     add.s $f8, $f4, $f6
  /* 045378 800C9998 46000282 */     mul.s $f10, $f0, $f0
  /* 04537C 800C999C 0C00CD44 */       jal sqrtf
  /* 045380 800C99A0 46085300 */     add.s $f12, $f10, $f8
  /* 045384 800C99A4 3C018004 */       lui $at, %hi(D_80046FA4)
  /* 045388 800C99A8 E4206FA4 */      swc1 $f0, %lo(D_80046FA4)($at)
  /* 04538C 800C99AC 27A4001C */     addiu $a0, $sp, 0x1c
  /* 045390 800C99B0 0C0067A8 */       jal hal_mtx_f2l_fixed_w
  /* 045394 800C99B4 8FA50068 */        lw $a1, 0x68($sp)
  /* 045398 800C99B8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04539C 800C99BC 27BD0068 */     addiu $sp, $sp, 0x68
  /* 0453A0 800C99C0 00001025 */        or $v0, $zero, $zero
  /* 0453A4 800C99C4 03E00008 */        jr $ra
  /* 0453A8 800C99C8 00000000 */       nop 

  glabel jtgt_ovl0_800C99CC
  /* 0453AC 800C99CC 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 0453B0 800C99D0 AFA50034 */        sw $a1, 0x34($sp)
  /* 0453B4 800C99D4 AFA60038 */        sw $a2, 0x38($sp)
  /* 0453B8 800C99D8 3C0E800D */       lui $t6, %hi(D_ovl0_800D5CA0)
  /* 0453BC 800C99DC 8FA60034 */        lw $a2, 0x34($sp)
  /* 0453C0 800C99E0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0453C4 800C99E4 AFA40030 */        sw $a0, 0x30($sp)
  /* 0453C8 800C99E8 25CE5CA0 */     addiu $t6, $t6, %lo(D_ovl0_800D5CA0)
  /* 0453CC 800C99EC 8DD80000 */        lw $t8, ($t6) # D_ovl0_800D5CA0 + 0
  /* 0453D0 800C99F0 27A50018 */     addiu $a1, $sp, 0x18
  /* 0453D4 800C99F4 8CC40084 */        lw $a0, 0x84($a2)
  /* 0453D8 800C99F8 ACB80000 */        sw $t8, ($a1)
  /* 0453DC 800C99FC 8DCF0004 */        lw $t7, 4($t6) # D_ovl0_800D5CA0 + 4
  /* 0453E0 800C9A00 ACAF0004 */        sw $t7, 4($a1)
  /* 0453E4 800C9A04 8DD80008 */        lw $t8, 8($t6) # D_ovl0_800D5CA0 + 8
  /* 0453E8 800C9A08 0C03B7C9 */       jal func_ovl2_800EDF24
  /* 0453EC 800C9A0C ACB80008 */        sw $t8, 8($a1)
  /* 0453F0 800C9A10 8FA40030 */        lw $a0, 0x30($sp)
  /* 0453F4 800C9A14 8FA50018 */        lw $a1, 0x18($sp)
  /* 0453F8 800C9A18 8FA6001C */        lw $a2, 0x1c($sp)
  /* 0453FC 800C9A1C 0C006E71 */       jal hal_translate
  /* 045400 800C9A20 8FA70020 */        lw $a3, 0x20($sp)
  /* 045404 800C9A24 8FBF0014 */        lw $ra, 0x14($sp)
  /* 045408 800C9A28 27BD0030 */     addiu $sp, $sp, 0x30
  /* 04540C 800C9A2C 00001025 */        or $v0, $zero, $zero
  /* 045410 800C9A30 03E00008 */        jr $ra
  /* 045414 800C9A34 00000000 */       nop 

glabel func_ovl0_800C9A38
  /* 045418 800C9A38 27BDFF70 */     addiu $sp, $sp, -0x90
  /* 04541C 800C9A3C AFBF0024 */        sw $ra, 0x24($sp)
  /* 045420 800C9A40 AFB00020 */        sw $s0, 0x20($sp)
  /* 045424 800C9A44 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 045428 800C9A48 AFA50094 */        sw $a1, 0x94($sp)
  /* 04542C 800C9A4C 8CAF0004 */        lw $t7, 4($a1)
  /* 045430 800C9A50 00808025 */        or $s0, $a0, $zero
  /* 045434 800C9A54 8CA70084 */        lw $a3, 0x84($a1)
  /* 045438 800C9A58 8DE20084 */        lw $v0, 0x84($t7)
  /* 04543C 800C9A5C 8FA40094 */        lw $a0, 0x94($sp)
  /* 045440 800C9A60 8C580190 */        lw $t8, 0x190($v0)
  /* 045444 800C9A64 001840C0 */       sll $t0, $t8, 3
  /* 045448 800C9A68 05000006 */      bltz $t0, .L800C9A84
  /* 04544C 800C9A6C 00000000 */       nop 
  /* 045450 800C9A70 8CA20014 */        lw $v0, 0x14($a1)
  /* 045454 800C9A74 24010001 */     addiu $at, $zero, 1
  /* 045458 800C9A78 00E02825 */        or $a1, $a3, $zero
  /* 04545C 800C9A7C 14410063 */       bne $v0, $at, .L800C9C0C
  /* 045460 800C9A80 24E60010 */     addiu $a2, $a3, 0x10
  .L800C9A84:
  /* 045464 800C9A84 0C03B6E9 */       jal func_ovl2_800EDBA4
  /* 045468 800C9A88 AFA7008C */        sw $a3, 0x8c($sp)
  /* 04546C 800C9A8C 8FA7008C */        lw $a3, 0x8c($sp)
  /* 045470 800C9A90 C4E20050 */      lwc1 $f2, 0x50($a3)
  /* 045474 800C9A94 C4EE0054 */      lwc1 $f14, 0x54($a3)
  /* 045478 800C9A98 C4E00058 */      lwc1 $f0, 0x58($a3)
  /* 04547C 800C9A9C 46021102 */     mul.s $f4, $f2, $f2
  /* 045480 800C9AA0 00000000 */       nop 
  /* 045484 800C9AA4 460E7182 */     mul.s $f6, $f14, $f14
  /* 045488 800C9AA8 46062200 */     add.s $f8, $f4, $f6
  /* 04548C 800C9AAC 46000282 */     mul.s $f10, $f0, $f0
  /* 045490 800C9AB0 0C00CD44 */       jal sqrtf
  /* 045494 800C9AB4 46085300 */     add.s $f12, $f10, $f8
  /* 045498 800C9AB8 44808000 */      mtc1 $zero, $f16
  /* 04549C 800C9ABC 8FA7008C */        lw $a3, 0x8c($sp)
  /* 0454A0 800C9AC0 46000506 */     mov.s $f20, $f0
  /* 0454A4 800C9AC4 46100032 */    c.eq.s $f0, $f16
  /* 0454A8 800C9AC8 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0454AC 800C9ACC 24E20050 */     addiu $v0, $a3, 0x50
  /* 0454B0 800C9AD0 45030005 */     bc1tl .L800C9AE8
  /* 0454B4 800C9AD4 C4440000 */      lwc1 $f4, ($v0)
  /* 0454B8 800C9AD8 44819000 */      mtc1 $at, $f18 # 1.0 to cop1
  /* 0454BC 800C9ADC 00000000 */       nop 
  /* 0454C0 800C9AE0 46009503 */     div.s $f20, $f18, $f0
  /* 0454C4 800C9AE4 C4440000 */      lwc1 $f4, ($v0)
  .L800C9AE8:
  /* 0454C8 800C9AE8 46142182 */     mul.s $f6, $f4, $f20
  /* 0454CC 800C9AEC E6060000 */      swc1 $f6, ($s0)
  /* 0454D0 800C9AF0 C44A0004 */      lwc1 $f10, 4($v0)
  /* 0454D4 800C9AF4 46145202 */     mul.s $f8, $f10, $f20
  /* 0454D8 800C9AF8 E6080004 */      swc1 $f8, 4($s0)
  /* 0454DC 800C9AFC C4500008 */      lwc1 $f16, 8($v0)
  /* 0454E0 800C9B00 46148482 */     mul.s $f18, $f16, $f20
  /* 0454E4 800C9B04 E6120008 */      swc1 $f18, 8($s0)
  /* 0454E8 800C9B08 C4400010 */      lwc1 $f0, 0x10($v0)
  /* 0454EC 800C9B0C C4420014 */      lwc1 $f2, 0x14($v0)
  /* 0454F0 800C9B10 C44E0018 */      lwc1 $f14, 0x18($v0)
  /* 0454F4 800C9B14 46000102 */     mul.s $f4, $f0, $f0
  /* 0454F8 800C9B18 AFA20038 */        sw $v0, 0x38($sp)
  /* 0454FC 800C9B1C 46021182 */     mul.s $f6, $f2, $f2
  /* 045500 800C9B20 46062280 */     add.s $f10, $f4, $f6
  /* 045504 800C9B24 460E7202 */     mul.s $f8, $f14, $f14
  /* 045508 800C9B28 0C00CD44 */       jal sqrtf
  /* 04550C 800C9B2C 460A4300 */     add.s $f12, $f8, $f10
  /* 045510 800C9B30 44808000 */      mtc1 $zero, $f16
  /* 045514 800C9B34 8FA20038 */        lw $v0, 0x38($sp)
  /* 045518 800C9B38 46000506 */     mov.s $f20, $f0
  /* 04551C 800C9B3C 46100032 */    c.eq.s $f0, $f16
  /* 045520 800C9B40 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 045524 800C9B44 45030005 */     bc1tl .L800C9B5C
  /* 045528 800C9B48 C4440010 */      lwc1 $f4, 0x10($v0)
  /* 04552C 800C9B4C 44819000 */      mtc1 $at, $f18 # 1.0 to cop1
  /* 045530 800C9B50 00000000 */       nop 
  /* 045534 800C9B54 46009503 */     div.s $f20, $f18, $f0
  /* 045538 800C9B58 C4440010 */      lwc1 $f4, 0x10($v0)
  .L800C9B5C:
  /* 04553C 800C9B5C 46142182 */     mul.s $f6, $f4, $f20
  /* 045540 800C9B60 E6060010 */      swc1 $f6, 0x10($s0)
  /* 045544 800C9B64 C4480014 */      lwc1 $f8, 0x14($v0)
  /* 045548 800C9B68 46144282 */     mul.s $f10, $f8, $f20
  /* 04554C 800C9B6C E60A0014 */      swc1 $f10, 0x14($s0)
  /* 045550 800C9B70 C4500018 */      lwc1 $f16, 0x18($v0)
  /* 045554 800C9B74 46148482 */     mul.s $f18, $f16, $f20
  /* 045558 800C9B78 E6120018 */      swc1 $f18, 0x18($s0)
  /* 04555C 800C9B7C C4400020 */      lwc1 $f0, 0x20($v0)
  /* 045560 800C9B80 C4420024 */      lwc1 $f2, 0x24($v0)
  /* 045564 800C9B84 C44E0028 */      lwc1 $f14, 0x28($v0)
  /* 045568 800C9B88 46000102 */     mul.s $f4, $f0, $f0
  /* 04556C 800C9B8C AFA20038 */        sw $v0, 0x38($sp)
  /* 045570 800C9B90 46021182 */     mul.s $f6, $f2, $f2
  /* 045574 800C9B94 46062200 */     add.s $f8, $f4, $f6
  /* 045578 800C9B98 460E7282 */     mul.s $f10, $f14, $f14
  /* 04557C 800C9B9C 0C00CD44 */       jal sqrtf
  /* 045580 800C9BA0 46085300 */     add.s $f12, $f10, $f8
  /* 045584 800C9BA4 44808000 */      mtc1 $zero, $f16
  /* 045588 800C9BA8 8FA20038 */        lw $v0, 0x38($sp)
  /* 04558C 800C9BAC 46000506 */     mov.s $f20, $f0
  /* 045590 800C9BB0 46100032 */    c.eq.s $f0, $f16
  /* 045594 800C9BB4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 045598 800C9BB8 45030005 */     bc1tl .L800C9BD0
  /* 04559C 800C9BBC C4440020 */      lwc1 $f4, 0x20($v0)
  /* 0455A0 800C9BC0 44819000 */      mtc1 $at, $f18 # 1.0 to cop1
  /* 0455A4 800C9BC4 00000000 */       nop 
  /* 0455A8 800C9BC8 46009503 */     div.s $f20, $f18, $f0
  /* 0455AC 800C9BCC C4440020 */      lwc1 $f4, 0x20($v0)
  .L800C9BD0:
  /* 0455B0 800C9BD0 46142182 */     mul.s $f6, $f4, $f20
  /* 0455B4 800C9BD4 E6060020 */      swc1 $f6, 0x20($s0)
  /* 0455B8 800C9BD8 C44A0024 */      lwc1 $f10, 0x24($v0)
  /* 0455BC 800C9BDC 46145202 */     mul.s $f8, $f10, $f20
  /* 0455C0 800C9BE0 E6080024 */      swc1 $f8, 0x24($s0)
  /* 0455C4 800C9BE4 C4500028 */      lwc1 $f16, 0x28($v0)
  /* 0455C8 800C9BE8 46148482 */     mul.s $f18, $f16, $f20
  /* 0455CC 800C9BEC E6120028 */      swc1 $f18, 0x28($s0)
  /* 0455D0 800C9BF0 C4440030 */      lwc1 $f4, 0x30($v0)
  /* 0455D4 800C9BF4 E6040030 */      swc1 $f4, 0x30($s0)
  /* 0455D8 800C9BF8 C4460034 */      lwc1 $f6, 0x34($v0)
  /* 0455DC 800C9BFC E6060034 */      swc1 $f6, 0x34($s0)
  /* 0455E0 800C9C00 C44A0038 */      lwc1 $f10, 0x38($v0)
  /* 0455E4 800C9C04 100000C5 */         b .L800C9F1C
  /* 0455E8 800C9C08 E60A0038 */      swc1 $f10, 0x38($s0)
  .L800C9C0C:
  /* 0455EC 800C9C0C AFA2007C */        sw $v0, 0x7c($sp)
  /* 0455F0 800C9C10 8FA40094 */        lw $a0, 0x94($sp)
  /* 0455F4 800C9C14 AFA60034 */        sw $a2, 0x34($sp)
  /* 0455F8 800C9C18 0C03B379 */       jal func_ovl2_800ECDE4
  /* 0455FC 800C9C1C AFA7008C */        sw $a3, 0x8c($sp)
  /* 045600 800C9C20 8FA7008C */        lw $a3, 0x8c($sp)
  /* 045604 800C9C24 C4E20010 */      lwc1 $f2, 0x10($a3)
  /* 045608 800C9C28 C4EE0014 */      lwc1 $f14, 0x14($a3)
  /* 04560C 800C9C2C C4E00018 */      lwc1 $f0, 0x18($a3)
  /* 045610 800C9C30 46021202 */     mul.s $f8, $f2, $f2
  /* 045614 800C9C34 00000000 */       nop 
  /* 045618 800C9C38 460E7402 */     mul.s $f16, $f14, $f14
  /* 04561C 800C9C3C 46104480 */     add.s $f18, $f8, $f16
  /* 045620 800C9C40 46000102 */     mul.s $f4, $f0, $f0
  /* 045624 800C9C44 0C00CD44 */       jal sqrtf
  /* 045628 800C9C48 46122300 */     add.s $f12, $f4, $f18
  /* 04562C 800C9C4C 44803000 */      mtc1 $zero, $f6
  /* 045630 800C9C50 8FA60034 */        lw $a2, 0x34($sp)
  /* 045634 800C9C54 46000506 */     mov.s $f20, $f0
  /* 045638 800C9C58 46060032 */    c.eq.s $f0, $f6
  /* 04563C 800C9C5C 00000000 */       nop 
  /* 045640 800C9C60 45010004 */      bc1t .L800C9C74
  /* 045644 800C9C64 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 045648 800C9C68 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 04564C 800C9C6C 00000000 */       nop 
  /* 045650 800C9C70 46005503 */     div.s $f20, $f10, $f0
  .L800C9C74:
  /* 045654 800C9C74 C4C80000 */      lwc1 $f8, ($a2)
  /* 045658 800C9C78 46144402 */     mul.s $f16, $f8, $f20
  /* 04565C 800C9C7C E7B0003C */      swc1 $f16, 0x3c($sp)
  /* 045660 800C9C80 C4C40004 */      lwc1 $f4, 4($a2)
  /* 045664 800C9C84 46142482 */     mul.s $f18, $f4, $f20
  /* 045668 800C9C88 E7B20040 */      swc1 $f18, 0x40($sp)
  /* 04566C 800C9C8C C4C60008 */      lwc1 $f6, 8($a2)
  /* 045670 800C9C90 46143282 */     mul.s $f10, $f6, $f20
  /* 045674 800C9C94 E7AA0044 */      swc1 $f10, 0x44($sp)
  /* 045678 800C9C98 C4C00010 */      lwc1 $f0, 0x10($a2)
  /* 04567C 800C9C9C C4C20014 */      lwc1 $f2, 0x14($a2)
  /* 045680 800C9CA0 C4CE0018 */      lwc1 $f14, 0x18($a2)
  /* 045684 800C9CA4 46000202 */     mul.s $f8, $f0, $f0
  /* 045688 800C9CA8 AFA60034 */        sw $a2, 0x34($sp)
  /* 04568C 800C9CAC 46021402 */     mul.s $f16, $f2, $f2
  /* 045690 800C9CB0 46104100 */     add.s $f4, $f8, $f16
  /* 045694 800C9CB4 460E7482 */     mul.s $f18, $f14, $f14
  /* 045698 800C9CB8 0C00CD44 */       jal sqrtf
  /* 04569C 800C9CBC 46049300 */     add.s $f12, $f18, $f4
  /* 0456A0 800C9CC0 44803000 */      mtc1 $zero, $f6
  /* 0456A4 800C9CC4 8FA60034 */        lw $a2, 0x34($sp)
  /* 0456A8 800C9CC8 46000506 */     mov.s $f20, $f0
  /* 0456AC 800C9CCC 46060032 */    c.eq.s $f0, $f6
  /* 0456B0 800C9CD0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0456B4 800C9CD4 45030005 */     bc1tl .L800C9CEC
  /* 0456B8 800C9CD8 C4C80010 */      lwc1 $f8, 0x10($a2)
  /* 0456BC 800C9CDC 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 0456C0 800C9CE0 00000000 */       nop 
  /* 0456C4 800C9CE4 46005503 */     div.s $f20, $f10, $f0
  /* 0456C8 800C9CE8 C4C80010 */      lwc1 $f8, 0x10($a2)
  .L800C9CEC:
  /* 0456CC 800C9CEC 46144402 */     mul.s $f16, $f8, $f20
  /* 0456D0 800C9CF0 E7B0004C */      swc1 $f16, 0x4c($sp)
  /* 0456D4 800C9CF4 C4D20014 */      lwc1 $f18, 0x14($a2)
  /* 0456D8 800C9CF8 46149102 */     mul.s $f4, $f18, $f20
  /* 0456DC 800C9CFC E7A40050 */      swc1 $f4, 0x50($sp)
  /* 0456E0 800C9D00 C4C60018 */      lwc1 $f6, 0x18($a2)
  /* 0456E4 800C9D04 46143282 */     mul.s $f10, $f6, $f20
  /* 0456E8 800C9D08 E7AA0054 */      swc1 $f10, 0x54($sp)
  /* 0456EC 800C9D0C C4C00020 */      lwc1 $f0, 0x20($a2)
  /* 0456F0 800C9D10 C4C20024 */      lwc1 $f2, 0x24($a2)
  /* 0456F4 800C9D14 C4CE0028 */      lwc1 $f14, 0x28($a2)
  /* 0456F8 800C9D18 46000202 */     mul.s $f8, $f0, $f0
  /* 0456FC 800C9D1C AFA60034 */        sw $a2, 0x34($sp)
  /* 045700 800C9D20 46021402 */     mul.s $f16, $f2, $f2
  /* 045704 800C9D24 46104480 */     add.s $f18, $f8, $f16
  /* 045708 800C9D28 460E7102 */     mul.s $f4, $f14, $f14
  /* 04570C 800C9D2C 0C00CD44 */       jal sqrtf
  /* 045710 800C9D30 46122300 */     add.s $f12, $f4, $f18
  /* 045714 800C9D34 44803000 */      mtc1 $zero, $f6
  /* 045718 800C9D38 8FA60034 */        lw $a2, 0x34($sp)
  /* 04571C 800C9D3C 46000506 */     mov.s $f20, $f0
  /* 045720 800C9D40 46060032 */    c.eq.s $f0, $f6
  /* 045724 800C9D44 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 045728 800C9D48 45030005 */     bc1tl .L800C9D60
  /* 04572C 800C9D4C C4C80020 */      lwc1 $f8, 0x20($a2)
  /* 045730 800C9D50 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 045734 800C9D54 00000000 */       nop 
  /* 045738 800C9D58 46005503 */     div.s $f20, $f10, $f0
  /* 04573C 800C9D5C C4C80020 */      lwc1 $f8, 0x20($a2)
  .L800C9D60:
  /* 045740 800C9D60 8FA4007C */        lw $a0, 0x7c($sp)
  /* 045744 800C9D64 46144402 */     mul.s $f16, $f8, $f20
  /* 045748 800C9D68 E7B0005C */      swc1 $f16, 0x5c($sp)
  /* 04574C 800C9D6C C4C40024 */      lwc1 $f4, 0x24($a2)
  /* 045750 800C9D70 46142482 */     mul.s $f18, $f4, $f20
  /* 045754 800C9D74 E7B20060 */      swc1 $f18, 0x60($sp)
  /* 045758 800C9D78 C4C60028 */      lwc1 $f6, 0x28($a2)
  /* 04575C 800C9D7C 46143282 */     mul.s $f10, $f6, $f20
  /* 045760 800C9D80 E7AA0064 */      swc1 $f10, 0x64($sp)
  /* 045764 800C9D84 C4C80030 */      lwc1 $f8, 0x30($a2)
  /* 045768 800C9D88 E7A8006C */      swc1 $f8, 0x6c($sp)
  /* 04576C 800C9D8C C4D00034 */      lwc1 $f16, 0x34($a2)
  /* 045770 800C9D90 E7B00070 */      swc1 $f16, 0x70($sp)
  /* 045774 800C9D94 C4C40038 */      lwc1 $f4, 0x38($a2)
  /* 045778 800C9D98 0C03B6E9 */       jal func_ovl2_800EDBA4
  /* 04577C 800C9D9C E7A40074 */      swc1 $f4, 0x74($sp)
  /* 045780 800C9DA0 8FA9007C */        lw $t1, 0x7c($sp)
  /* 045784 800C9DA4 8D250084 */        lw $a1, 0x84($t1)
  /* 045788 800C9DA8 C4A00050 */      lwc1 $f0, 0x50($a1)
  /* 04578C 800C9DAC C4A20054 */      lwc1 $f2, 0x54($a1)
  /* 045790 800C9DB0 C4AE0058 */      lwc1 $f14, 0x58($a1)
  /* 045794 800C9DB4 46000482 */     mul.s $f18, $f0, $f0
  /* 045798 800C9DB8 24A50050 */     addiu $a1, $a1, 0x50
  /* 04579C 800C9DBC AFA50084 */        sw $a1, 0x84($sp)
  /* 0457A0 800C9DC0 46021182 */     mul.s $f6, $f2, $f2
  /* 0457A4 800C9DC4 46069280 */     add.s $f10, $f18, $f6
  /* 0457A8 800C9DC8 460E7202 */     mul.s $f8, $f14, $f14
  /* 0457AC 800C9DCC 0C00CD44 */       jal sqrtf
  /* 0457B0 800C9DD0 460A4300 */     add.s $f12, $f8, $f10
  /* 0457B4 800C9DD4 44808000 */      mtc1 $zero, $f16
  /* 0457B8 800C9DD8 8FA50084 */        lw $a1, 0x84($sp)
  /* 0457BC 800C9DDC 46000506 */     mov.s $f20, $f0
  /* 0457C0 800C9DE0 46100032 */    c.eq.s $f0, $f16
  /* 0457C4 800C9DE4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0457C8 800C9DE8 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 0457CC 800C9DEC 45010004 */      bc1t .L800C9E00
  /* 0457D0 800C9DF0 00000000 */       nop 
  /* 0457D4 800C9DF4 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 0457D8 800C9DF8 00000000 */       nop 
  /* 0457DC 800C9DFC 46002503 */     div.s $f20, $f4, $f0
  .L800C9E00:
  /* 0457E0 800C9E00 46149182 */     mul.s $f6, $f18, $f20
  /* 0457E4 800C9E04 C7A8004C */      lwc1 $f8, 0x4c($sp)
  /* 0457E8 800C9E08 C7B0005C */      lwc1 $f16, 0x5c($sp)
  /* 0457EC 800C9E0C 46144282 */     mul.s $f10, $f8, $f20
  /* 0457F0 800C9E10 00000000 */       nop 
  /* 0457F4 800C9E14 46148102 */     mul.s $f4, $f16, $f20
  /* 0457F8 800C9E18 E7A6003C */      swc1 $f6, 0x3c($sp)
  /* 0457FC 800C9E1C E7AA004C */      swc1 $f10, 0x4c($sp)
  /* 045800 800C9E20 E7A4005C */      swc1 $f4, 0x5c($sp)
  /* 045804 800C9E24 C4A20010 */      lwc1 $f2, 0x10($a1)
  /* 045808 800C9E28 C4AE0014 */      lwc1 $f14, 0x14($a1)
  /* 04580C 800C9E2C C4A00018 */      lwc1 $f0, 0x18($a1)
  /* 045810 800C9E30 46021482 */     mul.s $f18, $f2, $f2
  /* 045814 800C9E34 AFA50084 */        sw $a1, 0x84($sp)
  /* 045818 800C9E38 460E7182 */     mul.s $f6, $f14, $f14
  /* 04581C 800C9E3C 46069200 */     add.s $f8, $f18, $f6
  /* 045820 800C9E40 46000282 */     mul.s $f10, $f0, $f0
  /* 045824 800C9E44 0C00CD44 */       jal sqrtf
  /* 045828 800C9E48 46085300 */     add.s $f12, $f10, $f8
  /* 04582C 800C9E4C 44808000 */      mtc1 $zero, $f16
  /* 045830 800C9E50 8FA50084 */        lw $a1, 0x84($sp)
  /* 045834 800C9E54 46000506 */     mov.s $f20, $f0
  /* 045838 800C9E58 46100032 */    c.eq.s $f0, $f16
  /* 04583C 800C9E5C 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 045840 800C9E60 C7B20040 */      lwc1 $f18, 0x40($sp)
  /* 045844 800C9E64 45010004 */      bc1t .L800C9E78
  /* 045848 800C9E68 00000000 */       nop 
  /* 04584C 800C9E6C 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 045850 800C9E70 00000000 */       nop 
  /* 045854 800C9E74 46002503 */     div.s $f20, $f4, $f0
  .L800C9E78:
  /* 045858 800C9E78 46149182 */     mul.s $f6, $f18, $f20
  /* 04585C 800C9E7C C7AA0050 */      lwc1 $f10, 0x50($sp)
  /* 045860 800C9E80 C7B00060 */      lwc1 $f16, 0x60($sp)
  /* 045864 800C9E84 46145202 */     mul.s $f8, $f10, $f20
  /* 045868 800C9E88 00000000 */       nop 
  /* 04586C 800C9E8C 46148102 */     mul.s $f4, $f16, $f20
  /* 045870 800C9E90 E7A60040 */      swc1 $f6, 0x40($sp)
  /* 045874 800C9E94 E7A80050 */      swc1 $f8, 0x50($sp)
  /* 045878 800C9E98 E7A40060 */      swc1 $f4, 0x60($sp)
  /* 04587C 800C9E9C C4A20020 */      lwc1 $f2, 0x20($a1)
  /* 045880 800C9EA0 C4AE0024 */      lwc1 $f14, 0x24($a1)
  /* 045884 800C9EA4 C4A00028 */      lwc1 $f0, 0x28($a1)
  /* 045888 800C9EA8 46021482 */     mul.s $f18, $f2, $f2
  /* 04588C 800C9EAC AFA50084 */        sw $a1, 0x84($sp)
  /* 045890 800C9EB0 460E7182 */     mul.s $f6, $f14, $f14
  /* 045894 800C9EB4 46069280 */     add.s $f10, $f18, $f6
  /* 045898 800C9EB8 46000202 */     mul.s $f8, $f0, $f0
  /* 04589C 800C9EBC 0C00CD44 */       jal sqrtf
  /* 0458A0 800C9EC0 460A4300 */     add.s $f12, $f8, $f10
  /* 0458A4 800C9EC4 44808000 */      mtc1 $zero, $f16
  /* 0458A8 800C9EC8 8FA50084 */        lw $a1, 0x84($sp)
  /* 0458AC 800C9ECC 46000506 */     mov.s $f20, $f0
  /* 0458B0 800C9ED0 46100032 */    c.eq.s $f0, $f16
  /* 0458B4 800C9ED4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0458B8 800C9ED8 C7B20044 */      lwc1 $f18, 0x44($sp)
  /* 0458BC 800C9EDC 45010004 */      bc1t .L800C9EF0
  /* 0458C0 800C9EE0 00000000 */       nop 
  /* 0458C4 800C9EE4 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 0458C8 800C9EE8 00000000 */       nop 
  /* 0458CC 800C9EEC 46002503 */     div.s $f20, $f4, $f0
  .L800C9EF0:
  /* 0458D0 800C9EF0 46149182 */     mul.s $f6, $f18, $f20
  /* 0458D4 800C9EF4 C7A80054 */      lwc1 $f8, 0x54($sp)
  /* 0458D8 800C9EF8 C7B00064 */      lwc1 $f16, 0x64($sp)
  /* 0458DC 800C9EFC 02002025 */        or $a0, $s0, $zero
  /* 0458E0 800C9F00 46144282 */     mul.s $f10, $f8, $f20
  /* 0458E4 800C9F04 27A6003C */     addiu $a2, $sp, 0x3c
  /* 0458E8 800C9F08 46148102 */     mul.s $f4, $f16, $f20
  /* 0458EC 800C9F0C E7A60044 */      swc1 $f6, 0x44($sp)
  /* 0458F0 800C9F10 E7AA0054 */      swc1 $f10, 0x54($sp)
  /* 0458F4 800C9F14 0C03B524 */       jal func_ovl2_800ED490
  /* 0458F8 800C9F18 E7A40064 */      swc1 $f4, 0x64($sp)
  .L800C9F1C:
  /* 0458FC 800C9F1C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 045900 800C9F20 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 045904 800C9F24 8FB00020 */        lw $s0, 0x20($sp)
  /* 045908 800C9F28 03E00008 */        jr $ra
  /* 04590C 800C9F2C 27BD0090 */     addiu $sp, $sp, 0x90

  glabel jtgt_ovl0_800C9F30
  /* 045910 800C9F30 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 045914 800C9F34 AFBF0014 */        sw $ra, 0x14($sp)
  /* 045918 800C9F38 AFA40058 */        sw $a0, 0x58($sp)
  /* 04591C 800C9F3C AFA5005C */        sw $a1, 0x5c($sp)
  /* 045920 800C9F40 AFA60060 */        sw $a2, 0x60($sp)
  /* 045924 800C9F44 8CA50084 */        lw $a1, 0x84($a1)
  /* 045928 800C9F48 0C03268E */       jal func_ovl0_800C9A38
  /* 04592C 800C9F4C 27A40018 */     addiu $a0, $sp, 0x18
  /* 045930 800C9F50 27A40018 */     addiu $a0, $sp, 0x18
  /* 045934 800C9F54 0C0067A8 */       jal hal_mtx_f2l_fixed_w
  /* 045938 800C9F58 8FA50058 */        lw $a1, 0x58($sp)
  /* 04593C 800C9F5C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 045940 800C9F60 27BD0058 */     addiu $sp, $sp, 0x58
  /* 045944 800C9F64 00001025 */        or $v0, $zero, $zero
  /* 045948 800C9F68 03E00008 */        jr $ra
  /* 04594C 800C9F6C 00000000 */       nop 

  glabel jtgt_ovl0_800C9F70
  /* 045950 800C9F70 27BDFFA0 */     addiu $sp, $sp, -0x60
  /* 045954 800C9F74 AFBF0014 */        sw $ra, 0x14($sp)
  /* 045958 800C9F78 AFA40060 */        sw $a0, 0x60($sp)
  /* 04595C 800C9F7C AFA50064 */        sw $a1, 0x64($sp)
  /* 045960 800C9F80 AFA60068 */        sw $a2, 0x68($sp)
  /* 045964 800C9F84 8CA50084 */        lw $a1, 0x84($a1)
  /* 045968 800C9F88 27A40018 */     addiu $a0, $sp, 0x18
  /* 04596C 800C9F8C 8CAE0004 */        lw $t6, 4($a1)
  /* 045970 800C9F90 8DC20084 */        lw $v0, 0x84($t6)
  /* 045974 800C9F94 0C03268E */       jal func_ovl0_800C9A38
  /* 045978 800C9F98 AFA20058 */        sw $v0, 0x58($sp)
  /* 04597C 800C9F9C 8FA20058 */        lw $v0, 0x58($sp)
  /* 045980 800C9FA0 3C038013 */       lui $v1, %hi(D_ovl2_8012B930)
  /* 045984 800C9FA4 2463B930 */     addiu $v1, $v1, %lo(D_ovl2_8012B930)
  /* 045988 800C9FA8 944F0276 */       lhu $t7, 0x276($v0)
  /* 04598C 800C9FAC 27A40018 */     addiu $a0, $sp, 0x18
  /* 045990 800C9FB0 11E00015 */      beqz $t7, .L800CA008
  /* 045994 800C9FB4 00000000 */       nop 
  /* 045998 800C9FB8 90580274 */       lbu $t8, 0x274($v0)
  /* 04599C 800C9FBC 90490272 */       lbu $t1, 0x272($v0)
  /* 0459A0 800C9FC0 C7A60048 */      lwc1 $f6, 0x48($sp)
  /* 0459A4 800C9FC4 0018C940 */       sll $t9, $t8, 5
  /* 0459A8 800C9FC8 00794021 */      addu $t0, $v1, $t9
  /* 0459AC 800C9FCC 000950C0 */       sll $t2, $t1, 3
  /* 0459B0 800C9FD0 010A5821 */      addu $t3, $t0, $t2
  /* 0459B4 800C9FD4 C5640000 */      lwc1 $f4, ($t3)
  /* 0459B8 800C9FD8 C7B0004C */      lwc1 $f16, 0x4c($sp)
  /* 0459BC 800C9FDC 46043200 */     add.s $f8, $f6, $f4
  /* 0459C0 800C9FE0 E7A80048 */      swc1 $f8, 0x48($sp)
  /* 0459C4 800C9FE4 904C0274 */       lbu $t4, 0x274($v0)
  /* 0459C8 800C9FE8 904F0272 */       lbu $t7, 0x272($v0)
  /* 0459CC 800C9FEC 000C6940 */       sll $t5, $t4, 5
  /* 0459D0 800C9FF0 006D7021 */      addu $t6, $v1, $t5
  /* 0459D4 800C9FF4 000FC0C0 */       sll $t8, $t7, 3
  /* 0459D8 800C9FF8 01D8C821 */      addu $t9, $t6, $t8
  /* 0459DC 800C9FFC C72A0004 */      lwc1 $f10, 4($t9)
  /* 0459E0 800CA000 460A8480 */     add.s $f18, $f16, $f10
  /* 0459E4 800CA004 E7B2004C */      swc1 $f18, 0x4c($sp)
  .L800CA008:
  /* 0459E8 800CA008 0C0067A8 */       jal hal_mtx_f2l_fixed_w
  /* 0459EC 800CA00C 8FA50060 */        lw $a1, 0x60($sp)
  /* 0459F0 800CA010 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0459F4 800CA014 27BD0060 */     addiu $sp, $sp, 0x60
  /* 0459F8 800CA018 00001025 */        or $v0, $zero, $zero
  /* 0459FC 800CA01C 03E00008 */        jr $ra
  /* 045A00 800CA020 00000000 */       nop 

  glabel jtgt_ovl0_800CA024
  /* 045A04 800CA024 AFA60008 */        sw $a2, 8($sp)
  /* 045A08 800CA028 3C014780 */       lui $at, (0x47800000 >> 16) # 65536.0
  /* 045A0C 800CA02C 44810000 */      mtc1 $at, $f0 # 65536.0 to cop1
  /* 045A10 800CA030 C4A40040 */      lwc1 $f4, 0x40($a1)
  /* 045A14 800CA034 3C07FFFF */       lui $a3, 0xffff
  /* 045A18 800CA038 AC800004 */        sw $zero, 4($a0)
  /* 045A1C 800CA03C 46002182 */     mul.s $f6, $f4, $f0
  /* 045A20 800CA040 AC800024 */        sw $zero, 0x24($a0)
  /* 045A24 800CA044 00001025 */        or $v0, $zero, $zero
  /* 045A28 800CA048 4600320D */ trunc.w.s $f8, $f6
  /* 045A2C 800CA04C 44034000 */      mfc1 $v1, $f8
  /* 045A30 800CA050 00000000 */       nop 
  /* 045A34 800CA054 0003C400 */       sll $t8, $v1, 0x10
  /* 045A38 800CA058 0307C824 */       and $t9, $t8, $a3
  /* 045A3C 800CA05C 00677824 */       and $t7, $v1, $a3
  /* 045A40 800CA060 AC8F0000 */        sw $t7, ($a0)
  /* 045A44 800CA064 AC990020 */        sw $t9, 0x20($a0)
  /* 045A48 800CA068 C4AA0044 */      lwc1 $f10, 0x44($a1)
  /* 045A4C 800CA06C AC80000C */        sw $zero, 0xc($a0)
  /* 045A50 800CA070 AC80002C */        sw $zero, 0x2c($a0)
  /* 045A54 800CA074 46005402 */     mul.s $f16, $f10, $f0
  /* 045A58 800CA078 AC800010 */        sw $zero, 0x10($a0)
  /* 045A5C 800CA07C AC800030 */        sw $zero, 0x30($a0)
  /* 045A60 800CA080 4600848D */ trunc.w.s $f18, $f16
  /* 045A64 800CA084 44069000 */      mfc1 $a2, $f18
  /* 045A68 800CA088 00000000 */       nop 
  /* 045A6C 800CA08C 00064C03 */       sra $t1, $a2, 0x10
  /* 045A70 800CA090 312AFFFF */      andi $t2, $t1, 0xffff
  /* 045A74 800CA094 30CBFFFF */      andi $t3, $a2, 0xffff
  /* 045A78 800CA098 AC8A0008 */        sw $t2, 8($a0)
  /* 045A7C 800CA09C AC8B0028 */        sw $t3, 0x28($a0)
  /* 045A80 800CA0A0 C4A40048 */      lwc1 $f4, 0x48($a1)
  /* 045A84 800CA0A4 46002182 */     mul.s $f6, $f4, $f0
  /* 045A88 800CA0A8 4600320D */ trunc.w.s $f8, $f6
  /* 045A8C 800CA0AC 44034000 */      mfc1 $v1, $f8
  /* 045A90 800CA0B0 00000000 */       nop 
  /* 045A94 800CA0B4 00037400 */       sll $t6, $v1, 0x10
  /* 045A98 800CA0B8 01C77824 */       and $t7, $t6, $a3
  /* 045A9C 800CA0BC 00676824 */       and $t5, $v1, $a3
  /* 045AA0 800CA0C0 AC8D0014 */        sw $t5, 0x14($a0)
  /* 045AA4 800CA0C4 AC8F0034 */        sw $t7, 0x34($a0)
  /* 045AA8 800CA0C8 C4AA001C */      lwc1 $f10, 0x1c($a1)
  /* 045AAC 800CA0CC C4A40020 */      lwc1 $f4, 0x20($a1)
  /* 045AB0 800CA0D0 46005402 */     mul.s $f16, $f10, $f0
  /* 045AB4 800CA0D4 00000000 */       nop 
  /* 045AB8 800CA0D8 46002182 */     mul.s $f6, $f4, $f0
  /* 045ABC 800CA0DC 4600848D */ trunc.w.s $f18, $f16
  /* 045AC0 800CA0E0 4600320D */ trunc.w.s $f8, $f6
  /* 045AC4 800CA0E4 44039000 */      mfc1 $v1, $f18
  /* 045AC8 800CA0E8 44064000 */      mfc1 $a2, $f8
  /* 045ACC 800CA0EC 00036400 */       sll $t4, $v1, 0x10
  /* 045AD0 800CA0F0 01876824 */       and $t5, $t4, $a3
  /* 045AD4 800CA0F4 00064C03 */       sra $t1, $a2, 0x10
  /* 045AD8 800CA0F8 312AFFFF */      andi $t2, $t1, 0xffff
  /* 045ADC 800CA0FC 00674024 */       and $t0, $v1, $a3
  /* 045AE0 800CA100 30CEFFFF */      andi $t6, $a2, 0xffff
  /* 045AE4 800CA104 010A5825 */        or $t3, $t0, $t2
  /* 045AE8 800CA108 01AE7825 */        or $t7, $t5, $t6
  /* 045AEC 800CA10C AC8B0018 */        sw $t3, 0x18($a0)
  /* 045AF0 800CA110 AC8F0038 */        sw $t7, 0x38($a0)
  /* 045AF4 800CA114 C4AA0024 */      lwc1 $f10, 0x24($a1)
  /* 045AF8 800CA118 46005402 */     mul.s $f16, $f10, $f0
  /* 045AFC 800CA11C 4600848D */ trunc.w.s $f18, $f16
  /* 045B00 800CA120 44039000 */      mfc1 $v1, $f18
  /* 045B04 800CA124 00000000 */       nop 
  /* 045B08 800CA128 0067C824 */       and $t9, $v1, $a3
  /* 045B0C 800CA12C 00034400 */       sll $t0, $v1, 0x10
  /* 045B10 800CA130 37290001 */       ori $t1, $t9, 1
  /* 045B14 800CA134 01075024 */       and $t2, $t0, $a3
  /* 045B18 800CA138 AC89001C */        sw $t1, 0x1c($a0)
  /* 045B1C 800CA13C 03E00008 */        jr $ra
  /* 045B20 800CA140 AC8A003C */        sw $t2, 0x3c($a0)

  glabel jtgt_ovl0_800CA144
  /* 045B24 800CA144 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 045B28 800CA148 AFB00028 */        sw $s0, 0x28($sp)
  /* 045B2C 800CA14C 00A08025 */        or $s0, $a1, $zero
  /* 045B30 800CA150 AFBF002C */        sw $ra, 0x2c($sp)
  /* 045B34 800CA154 AFA60038 */        sw $a2, 0x38($sp)
  /* 045B38 800CA158 C6040040 */      lwc1 $f4, 0x40($s0)
  /* 045B3C 800CA15C 8E070038 */        lw $a3, 0x38($s0)
  /* 045B40 800CA160 8E060034 */        lw $a2, 0x34($s0)
  /* 045B44 800CA164 8CA50030 */        lw $a1, 0x30($a1)
  /* 045B48 800CA168 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 045B4C 800CA16C C6060044 */      lwc1 $f6, 0x44($s0)
  /* 045B50 800CA170 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 045B54 800CA174 C6080048 */      lwc1 $f8, 0x48($s0)
  /* 045B58 800CA178 0C0320AB */       jal func_ovl0_800C82AC
  /* 045B5C 800CA17C E7A80018 */      swc1 $f8, 0x18($sp)
  /* 045B60 800CA180 8FBF002C */        lw $ra, 0x2c($sp)
  /* 045B64 800CA184 8FB00028 */        lw $s0, 0x28($sp)
  /* 045B68 800CA188 27BD0030 */     addiu $sp, $sp, 0x30
  /* 045B6C 800CA18C 03E00008 */        jr $ra
  /* 045B70 800CA190 00001025 */        or $v0, $zero, $zero

  glabel jtgt_ovl0_800CA194
  /* 045B74 800CA194 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 045B78 800CA198 AFBF001C */        sw $ra, 0x1c($sp)
  /* 045B7C 800CA19C AFB00018 */        sw $s0, 0x18($sp)
  /* 045B80 800CA1A0 AFA5007C */        sw $a1, 0x7c($sp)
  /* 045B84 800CA1A4 AFA60080 */        sw $a2, 0x80($sp)
  /* 045B88 800CA1A8 8CC30000 */        lw $v1, ($a2)
  /* 045B8C 800CA1AC 24890020 */     addiu $t1, $a0, 0x20
  /* 045B90 800CA1B0 C4AC0038 */      lwc1 $f12, 0x38($a1)
  /* 045B94 800CA1B4 00808025 */        or $s0, $a0, $zero
  /* 045B98 800CA1B8 AFA90020 */        sw $t1, 0x20($sp)
  /* 045B9C 800CA1BC 0C00C0FC */       jal __sinf
  /* 045BA0 800CA1C0 AFA30058 */        sw $v1, 0x58($sp)
  /* 045BA4 800CA1C4 8FB8007C */        lw $t8, 0x7c($sp)
  /* 045BA8 800CA1C8 C70C0038 */      lwc1 $f12, 0x38($t8)
  /* 045BAC 800CA1CC 0C00D734 */       jal cosf
  /* 045BB0 800CA1D0 E7A00060 */      swc1 $f0, 0x60($sp)
  /* 045BB4 800CA1D4 3C028004 */       lui $v0, %hi(D_80046FA8)
  /* 045BB8 800CA1D8 24426FA8 */     addiu $v0, $v0, %lo(D_80046FA8)
  /* 045BBC 800CA1DC C7AE0060 */      lwc1 $f14, 0x60($sp)
  /* 045BC0 800CA1E0 C4440010 */      lwc1 $f4, 0x10($v0) # D_80046FA8 + 16
  /* 045BC4 800CA1E4 C4480000 */      lwc1 $f8, ($v0) # D_80046FA8 + 0
  /* 045BC8 800CA1E8 3C014780 */       lui $at, (0x47800000 >> 16) # 65536.0
  /* 045BCC 800CA1EC 460E2182 */     mul.s $f6, $f4, $f14
  /* 045BD0 800CA1F0 44811000 */      mtc1 $at, $f2 # 65536.0 to cop1
  /* 045BD4 800CA1F4 3C06FFFF */       lui $a2, %hi(D_NF_FFFF0004)
  /* 045BD8 800CA1F8 46004282 */     mul.s $f10, $f8, $f0
  /* 045BDC 800CA1FC C4480014 */      lwc1 $f8, 0x14($v0) # D_80046FA8 + 20
  /* 045BE0 800CA200 8FA80020 */        lw $t0, 0x20($sp)
  /* 045BE4 800CA204 8FA30058 */        lw $v1, 0x58($sp)
  /* 045BE8 800CA208 46007307 */     neg.s $f12, $f14
  /* 045BEC 800CA20C 26070014 */     addiu $a3, $s0, 0x14
  /* 045BF0 800CA210 25080014 */     addiu $t0, $t0, 0x14
  /* 045BF4 800CA214 460A3400 */     add.s $f16, $f6, $f10
  /* 045BF8 800CA218 C44A0004 */      lwc1 $f10, 4($v0) # D_80046FA8 + 4
  /* 045BFC 800CA21C 46028482 */     mul.s $f18, $f16, $f2
  /* 045C00 800CA220 00000000 */       nop 
  /* 045C04 800CA224 460E4182 */     mul.s $f6, $f8, $f14
  /* 045C08 800CA228 00000000 */       nop 
  /* 045C0C 800CA22C 46005402 */     mul.s $f16, $f10, $f0
  /* 045C10 800CA230 4600910D */ trunc.w.s $f4, $f18
  /* 045C14 800CA234 46103480 */     add.s $f18, $f6, $f16
  /* 045C18 800CA238 44042000 */      mfc1 $a0, $f4
  /* 045C1C 800CA23C 46029102 */     mul.s $f4, $f18, $f2
  /* 045C20 800CA240 00865824 */       and $t3, $a0, $a2
  /* 045C24 800CA244 00047C00 */       sll $t7, $a0, 0x10
  /* 045C28 800CA248 01E6C024 */       and $t8, $t7, $a2
  /* 045C2C 800CA24C 4600220D */ trunc.w.s $f8, $f4
  /* 045C30 800CA250 44054000 */      mfc1 $a1, $f8
  /* 045C34 800CA254 00000000 */       nop 
  /* 045C38 800CA258 00056403 */       sra $t4, $a1, 0x10
  /* 045C3C 800CA25C 318DFFFF */      andi $t5, $t4, 0xffff
  /* 045C40 800CA260 016D7025 */        or $t6, $t3, $t5
  /* 045C44 800CA264 30B9FFFF */      andi $t9, $a1, 0xffff
  /* 045C48 800CA268 AE0E0000 */        sw $t6, ($s0)
  /* 045C4C 800CA26C 03195025 */        or $t2, $t8, $t9
  /* 045C50 800CA270 AD0AFFEC */        sw $t2, -0x14($t0)
  /* 045C54 800CA274 C44A0018 */      lwc1 $f10, 0x18($v0) # D_80046FA8 + 24
  /* 045C58 800CA278 C4500008 */      lwc1 $f16, 8($v0) # D_80046FA8 + 8
  /* 045C5C 800CA27C 460E5182 */     mul.s $f6, $f10, $f14
  /* 045C60 800CA280 00000000 */       nop 
  /* 045C64 800CA284 46008482 */     mul.s $f18, $f16, $f0
  /* 045C68 800CA288 C450001C */      lwc1 $f16, 0x1c($v0) # D_80046FA8 + 28
  /* 045C6C 800CA28C 46123100 */     add.s $f4, $f6, $f18
  /* 045C70 800CA290 C452000C */      lwc1 $f18, 0xc($v0) # D_80046FA8 + 12
  /* 045C74 800CA294 46022202 */     mul.s $f8, $f4, $f2
  /* 045C78 800CA298 00000000 */       nop 
  /* 045C7C 800CA29C 460E8182 */     mul.s $f6, $f16, $f14
  /* 045C80 800CA2A0 00000000 */       nop 
  /* 045C84 800CA2A4 46009102 */     mul.s $f4, $f18, $f0
  /* 045C88 800CA2A8 4600428D */ trunc.w.s $f10, $f8
  /* 045C8C 800CA2AC 46043200 */     add.s $f8, $f6, $f4
  /* 045C90 800CA2B0 44045000 */      mfc1 $a0, $f10
  /* 045C94 800CA2B4 46024282 */     mul.s $f10, $f8, $f2
  /* 045C98 800CA2B8 00866824 */       and $t5, $a0, $a2
  /* 045C9C 800CA2BC 0004CC00 */       sll $t9, $a0, 0x10
  /* 045CA0 800CA2C0 03265024 */       and $t2, $t9, $a2
  /* 045CA4 800CA2C4 4600540D */ trunc.w.s $f16, $f10
  /* 045CA8 800CA2C8 44058000 */      mfc1 $a1, $f16
  /* 045CAC 800CA2CC 00000000 */       nop 
  /* 045CB0 800CA2D0 00057403 */       sra $t6, $a1, 0x10
  /* 045CB4 800CA2D4 31CFFFFF */      andi $t7, $t6, 0xffff
  /* 045CB8 800CA2D8 01AFC025 */        or $t8, $t5, $t7
  /* 045CBC 800CA2DC 30ACFFFF */      andi $t4, $a1, 0xffff
  /* 045CC0 800CA2E0 AE180004 */        sw $t8, 4($s0)
  /* 045CC4 800CA2E4 014C5825 */        or $t3, $t2, $t4
  /* 045CC8 800CA2E8 AD0BFFF0 */        sw $t3, -0x10($t0)
  /* 045CCC 800CA2EC C4520010 */      lwc1 $f18, 0x10($v0) # D_80046FA8 + 16
  /* 045CD0 800CA2F0 C4440000 */      lwc1 $f4, ($v0) # D_80046FA8 + 0
  /* 045CD4 800CA2F4 46009182 */     mul.s $f6, $f18, $f0
  /* 045CD8 800CA2F8 00000000 */       nop 
  /* 045CDC 800CA2FC 460C2202 */     mul.s $f8, $f4, $f12
  /* 045CE0 800CA300 C4440014 */      lwc1 $f4, 0x14($v0) # D_80046FA8 + 20
  /* 045CE4 800CA304 46083280 */     add.s $f10, $f6, $f8
  /* 045CE8 800CA308 C4480004 */      lwc1 $f8, 4($v0) # D_80046FA8 + 4
  /* 045CEC 800CA30C 46025402 */     mul.s $f16, $f10, $f2
  /* 045CF0 800CA310 00000000 */       nop 
  /* 045CF4 800CA314 46002182 */     mul.s $f6, $f4, $f0
  /* 045CF8 800CA318 00000000 */       nop 
  /* 045CFC 800CA31C 460C4282 */     mul.s $f10, $f8, $f12
  /* 045D00 800CA320 4600848D */ trunc.w.s $f18, $f16
  /* 045D04 800CA324 460A3400 */     add.s $f16, $f6, $f10
  /* 045D08 800CA328 44049000 */      mfc1 $a0, $f18
  /* 045D0C 800CA32C 46028482 */     mul.s $f18, $f16, $f2
  /* 045D10 800CA330 00867824 */       and $t7, $a0, $a2
  /* 045D14 800CA334 00046400 */       sll $t4, $a0, 0x10
  /* 045D18 800CA338 01865824 */       and $t3, $t4, $a2
  /* 045D1C 800CA33C 4600910D */ trunc.w.s $f4, $f18
  /* 045D20 800CA340 44052000 */      mfc1 $a1, $f4
  /* 045D24 800CA344 00000000 */       nop 
  /* 045D28 800CA348 0005C403 */       sra $t8, $a1, 0x10
  /* 045D2C 800CA34C 3319FFFF */      andi $t9, $t8, 0xffff
  /* 045D30 800CA350 01F95025 */        or $t2, $t7, $t9
  /* 045D34 800CA354 30AEFFFF */      andi $t6, $a1, 0xffff
  /* 045D38 800CA358 AE0A0008 */        sw $t2, 8($s0)
  /* 045D3C 800CA35C 016E6825 */        or $t5, $t3, $t6
  /* 045D40 800CA360 AD0DFFF4 */        sw $t5, -0xc($t0)
  /* 045D44 800CA364 C4480018 */      lwc1 $f8, 0x18($v0) # D_80046FA8 + 24
  /* 045D48 800CA368 C44A0008 */      lwc1 $f10, 8($v0) # D_80046FA8 + 8
  /* 045D4C 800CA36C 46004182 */     mul.s $f6, $f8, $f0
  /* 045D50 800CA370 00000000 */       nop 
  /* 045D54 800CA374 460C5402 */     mul.s $f16, $f10, $f12
  /* 045D58 800CA378 C44A001C */      lwc1 $f10, 0x1c($v0) # D_80046FA8 + 28
  /* 045D5C 800CA37C 46103480 */     add.s $f18, $f6, $f16
  /* 045D60 800CA380 C450000C */      lwc1 $f16, 0xc($v0) # D_80046FA8 + 12
  /* 045D64 800CA384 46029102 */     mul.s $f4, $f18, $f2
  /* 045D68 800CA388 00000000 */       nop 
  /* 045D6C 800CA38C 46005182 */     mul.s $f6, $f10, $f0
  /* 045D70 800CA390 00000000 */       nop 
  /* 045D74 800CA394 460C8482 */     mul.s $f18, $f16, $f12
  /* 045D78 800CA398 4600220D */ trunc.w.s $f8, $f4
  /* 045D7C 800CA39C 46123100 */     add.s $f4, $f6, $f18
  /* 045D80 800CA3A0 44044000 */      mfc1 $a0, $f8
  /* 045D84 800CA3A4 46022202 */     mul.s $f8, $f4, $f2
  /* 045D88 800CA3A8 0086C824 */       and $t9, $a0, $a2
  /* 045D8C 800CA3AC 00047400 */       sll $t6, $a0, 0x10
  /* 045D90 800CA3B0 01C66824 */       and $t5, $t6, $a2
  /* 045D94 800CA3B4 4600428D */ trunc.w.s $f10, $f8
  /* 045D98 800CA3B8 44055000 */      mfc1 $a1, $f10
  /* 045D9C 800CA3BC 00000000 */       nop 
  /* 045DA0 800CA3C0 00055403 */       sra $t2, $a1, 0x10
  /* 045DA4 800CA3C4 314CFFFF */      andi $t4, $t2, 0xffff
  /* 045DA8 800CA3C8 032C5825 */        or $t3, $t9, $t4
  /* 045DAC 800CA3CC 30B8FFFF */      andi $t8, $a1, 0xffff
  /* 045DB0 800CA3D0 AE0B000C */        sw $t3, 0xc($s0)
  /* 045DB4 800CA3D4 01B87825 */        or $t7, $t5, $t8
  /* 045DB8 800CA3D8 AD0FFFF8 */        sw $t7, -8($t0)
  /* 045DBC 800CA3DC C4500020 */      lwc1 $f16, 0x20($v0) # D_80046FA8 + 32
  /* 045DC0 800CA3E0 C4440024 */      lwc1 $f4, 0x24($v0) # D_80046FA8 + 36
  /* 045DC4 800CA3E4 46028182 */     mul.s $f6, $f16, $f2
  /* 045DC8 800CA3E8 00000000 */       nop 
  /* 045DCC 800CA3EC 46022202 */     mul.s $f8, $f4, $f2
  /* 045DD0 800CA3F0 4600348D */ trunc.w.s $f18, $f6
  /* 045DD4 800CA3F4 4600428D */ trunc.w.s $f10, $f8
  /* 045DD8 800CA3F8 44049000 */      mfc1 $a0, $f18
  /* 045DDC 800CA3FC 44055000 */      mfc1 $a1, $f10
  /* 045DE0 800CA400 00866024 */       and $t4, $a0, $a2
  /* 045DE4 800CA404 0004C400 */       sll $t8, $a0, 0x10
  /* 045DE8 800CA408 00055C03 */       sra $t3, $a1, 0x10
  /* 045DEC 800CA40C 316EFFFF */      andi $t6, $t3, 0xffff
  /* 045DF0 800CA410 018E6825 */        or $t5, $t4, $t6
  /* 045DF4 800CA414 03067824 */       and $t7, $t8, $a2
  /* 045DF8 800CA418 30AAFFFF */      andi $t2, $a1, 0xffff
  /* 045DFC 800CA41C AE0D0010 */        sw $t5, 0x10($s0)
  /* 045E00 800CA420 01EAC825 */        or $t9, $t7, $t2
  /* 045E04 800CA424 AD19FFFC */        sw $t9, -4($t0)
  /* 045E08 800CA428 C4500028 */      lwc1 $f16, 0x28($v0) # D_80046FA8 + 40
  /* 045E0C 800CA42C C444002C */      lwc1 $f4, 0x2c($v0) # D_80046FA8 + 44
  /* 045E10 800CA430 00601025 */        or $v0, $v1, $zero
  /* 045E14 800CA434 46028182 */     mul.s $f6, $f16, $f2
  /* 045E18 800CA438 00000000 */       nop 
  /* 045E1C 800CA43C 46022202 */     mul.s $f8, $f4, $f2
  /* 045E20 800CA440 4600348D */ trunc.w.s $f18, $f6
  /* 045E24 800CA444 4600428D */ trunc.w.s $f10, $f8
  /* 045E28 800CA448 44049000 */      mfc1 $a0, $f18
  /* 045E2C 800CA44C 44055000 */      mfc1 $a1, $f10
  /* 045E30 800CA450 00867024 */       and $t6, $a0, $a2
  /* 045E34 800CA454 00045400 */       sll $t2, $a0, 0x10
  /* 045E38 800CA458 00056C03 */       sra $t5, $a1, 0x10
  /* 045E3C 800CA45C 31B8FFFF */      andi $t8, $t5, 0xffff
  /* 045E40 800CA460 01D87825 */        or $t7, $t6, $t8
  /* 045E44 800CA464 0146C824 */       and $t9, $t2, $a2
  /* 045E48 800CA468 30ABFFFF */      andi $t3, $a1, 0xffff
  /* 045E4C 800CA46C ACEF0000 */        sw $t7, ($a3)
  /* 045E50 800CA470 032B6025 */        or $t4, $t9, $t3
  /* 045E54 800CA474 3C0DD500 */       lui $t5, (0xD5000001 >> 16) # 3573547009
  /* 045E58 800CA478 AD0C0000 */        sw $t4, ($t0)
  /* 045E5C 800CA47C 35AD0001 */       ori $t5, $t5, (0xD5000001 & 0xFFFF) # 3573547009
  /* 045E60 800CA480 AC4D0000 */        sw $t5, ($v0) # D_80046FA8 + 0
  /* 045E64 800CA484 AC400004 */        sw $zero, 4($v0) # D_80046FA8 + 4
  /* 045E68 800CA488 3C0EDB00 */       lui $t6, (0xDB000010 >> 16) # 3674210320
  /* 045E6C 800CA48C 24640008 */     addiu $a0, $v1, 8
  /* 045E70 800CA490 AC8E0000 */        sw $t6, ($a0)
  /* 045E74 800CA494 8E180000 */        lw $t8, ($s0)
  /* 045E78 800CA498 3C0FDB00 */       lui $t7, (0xDB000004 >> 16) # 3674210308
  /* 045E7C 800CA49C 35EF0004 */       ori $t7, $t7, (0xDB000004 & 0xFFFF) # 3674210308
  /* 045E80 800CA4A0 24850008 */     addiu $a1, $a0, 8
  /* 045E84 800CA4A4 AC980004 */        sw $t8, 4($a0)
  /* 045E88 800CA4A8 ACAF0000 */        sw $t7, ($a1)
  /* 045E8C 800CA4AC 8E0A0004 */        lw $t2, 4($s0)
  /* 045E90 800CA4B0 3C19DB00 */       lui $t9, (0xDB000008 >> 16) # 3674210312
  /* 045E94 800CA4B4 37390008 */       ori $t9, $t9, (0xDB000008 & 0xFFFF) # 3674210312
  /* 045E98 800CA4B8 24A60008 */     addiu $a2, $a1, 8
  /* 045E9C 800CA4BC ACAA0004 */        sw $t2, 4($a1)
  /* 045EA0 800CA4C0 ACD90000 */        sw $t9, %lo(D_NF_FFFF0000)($a2)
  /* 045EA4 800CA4C4 8E0B0008 */        lw $t3, 8($s0)
  /* 045EA8 800CA4C8 24C30008 */     addiu $v1, $a2, 8
  /* 045EAC 800CA4CC 3C0CDB00 */       lui $t4, (0xDB00000C >> 16) # 3674210316
  /* 045EB0 800CA4D0 358C000C */       ori $t4, $t4, (0xDB00000C & 0xFFFF) # 3674210316
  /* 045EB4 800CA4D4 00601025 */        or $v0, $v1, $zero
  /* 045EB8 800CA4D8 ACCB0004 */        sw $t3, %lo(D_NF_FFFF0004)($a2)
  /* 045EBC 800CA4DC AC4C0000 */        sw $t4, ($v0) # D_80046FA8 + 0
  /* 045EC0 800CA4E0 8E0D000C */        lw $t5, 0xc($s0)
  /* 045EC4 800CA4E4 24640008 */     addiu $a0, $v1, 8
  /* 045EC8 800CA4E8 35CE0010 */       ori $t6, $t6, (0xDB000010 & 0xFFFF) # 3674210320
  /* 045ECC 800CA4EC AC4D0004 */        sw $t5, 4($v0) # D_80046FA8 + 4
  /* 045ED0 800CA4F0 AC8E0000 */        sw $t6, ($a0)
  /* 045ED4 800CA4F4 8E180010 */        lw $t8, 0x10($s0)
  /* 045ED8 800CA4F8 3C0FDB00 */       lui $t7, (0xDB000014 >> 16) # 3674210324
  /* 045EDC 800CA4FC 35EF0014 */       ori $t7, $t7, (0xDB000014 & 0xFFFF) # 3674210324
  /* 045EE0 800CA500 24850008 */     addiu $a1, $a0, 8
  /* 045EE4 800CA504 AC980004 */        sw $t8, 4($a0)
  /* 045EE8 800CA508 ACAF0000 */        sw $t7, ($a1)
  /* 045EEC 800CA50C 8E0A0014 */        lw $t2, 0x14($s0)
  /* 045EF0 800CA510 3C19DB00 */       lui $t9, (0xDB000020 >> 16) # 3674210336
  /* 045EF4 800CA514 37390020 */       ori $t9, $t9, (0xDB000020 & 0xFFFF) # 3674210336
  /* 045EF8 800CA518 24A60008 */     addiu $a2, $a1, 8
  /* 045EFC 800CA51C ACAA0004 */        sw $t2, 4($a1)
  /* 045F00 800CA520 ACD90000 */        sw $t9, %lo(D_NF_FFFF0000)($a2)
  /* 045F04 800CA524 8E0B0020 */        lw $t3, 0x20($s0)
  /* 045F08 800CA528 3C0CDB00 */       lui $t4, (0xDB000024 >> 16) # 3674210340
  /* 045F0C 800CA52C 358C0024 */       ori $t4, $t4, (0xDB000024 & 0xFFFF) # 3674210340
  /* 045F10 800CA530 24C20008 */     addiu $v0, $a2, 8
  /* 045F14 800CA534 ACCB0004 */        sw $t3, %lo(D_NF_FFFF0004)($a2)
  /* 045F18 800CA538 AC4C0000 */        sw $t4, ($v0) # D_80046FA8 + 0
  /* 045F1C 800CA53C 8E0D0024 */        lw $t5, 0x24($s0)
  /* 045F20 800CA540 3C0EDB00 */       lui $t6, (0xDB000028 >> 16) # 3674210344
  /* 045F24 800CA544 35CE0028 */       ori $t6, $t6, (0xDB000028 & 0xFFFF) # 3674210344
  /* 045F28 800CA548 24430008 */     addiu $v1, $v0, 8
  /* 045F2C 800CA54C AC4D0004 */        sw $t5, 4($v0) # D_80046FA8 + 4
  /* 045F30 800CA550 AC6E0000 */        sw $t6, ($v1)
  /* 045F34 800CA554 8E180028 */        lw $t8, 0x28($s0)
  /* 045F38 800CA558 3C0FDB00 */       lui $t7, (0xDB00002C >> 16) # 3674210348
  /* 045F3C 800CA55C 35EF002C */       ori $t7, $t7, (0xDB00002C & 0xFFFF) # 3674210348
  /* 045F40 800CA560 24650008 */     addiu $a1, $v1, 8
  /* 045F44 800CA564 AC780004 */        sw $t8, 4($v1)
  /* 045F48 800CA568 ACAF0000 */        sw $t7, ($a1)
  /* 045F4C 800CA56C 8E0A002C */        lw $t2, 0x2c($s0)
  /* 045F50 800CA570 3C19DB00 */       lui $t9, (0xDB000030 >> 16) # 3674210352
  /* 045F54 800CA574 37390030 */       ori $t9, $t9, (0xDB000030 & 0xFFFF) # 3674210352
  /* 045F58 800CA578 24A60008 */     addiu $a2, $a1, 8
  /* 045F5C 800CA57C ACAA0004 */        sw $t2, 4($a1)
  /* 045F60 800CA580 ACD90000 */        sw $t9, %lo(D_NF_FFFF0000)($a2)
  /* 045F64 800CA584 8E0B0030 */        lw $t3, 0x30($s0)
  /* 045F68 800CA588 3C0CDB00 */       lui $t4, (0xDB000034 >> 16) # 3674210356
  /* 045F6C 800CA58C 358C0034 */       ori $t4, $t4, (0xDB000034 & 0xFFFF) # 3674210356
  /* 045F70 800CA590 24C40008 */     addiu $a0, $a2, 8
  /* 045F74 800CA594 ACCB0004 */        sw $t3, %lo(D_NF_FFFF0004)($a2)
  /* 045F78 800CA598 AC8C0000 */        sw $t4, ($a0)
  /* 045F7C 800CA59C 8E0D0034 */        lw $t5, 0x34($s0)
  /* 045F80 800CA5A0 24830008 */     addiu $v1, $a0, 8
  /* 045F84 800CA5A4 24020001 */     addiu $v0, $zero, 1
  /* 045F88 800CA5A8 AC8D0004 */        sw $t5, 4($a0)
  /* 045F8C 800CA5AC 8FAE0080 */        lw $t6, 0x80($sp)
  /* 045F90 800CA5B0 ADC30000 */        sw $v1, ($t6)
  /* 045F94 800CA5B4 8FBF001C */        lw $ra, 0x1c($sp)
  /* 045F98 800CA5B8 8FB00018 */        lw $s0, 0x18($sp)
  /* 045F9C 800CA5BC 27BD0078 */     addiu $sp, $sp, 0x78
  /* 045FA0 800CA5C0 03E00008 */        jr $ra
  /* 045FA4 800CA5C4 00000000 */       nop 

  glabel jtgt_ovl0_800CA5C8
  /* 045FA8 800CA5C8 27BDFF80 */     addiu $sp, $sp, -0x80
  /* 045FAC 800CA5CC AFBF001C */        sw $ra, 0x1c($sp)
  /* 045FB0 800CA5D0 AFB10018 */        sw $s1, 0x18($sp)
  /* 045FB4 800CA5D4 AFB00014 */        sw $s0, 0x14($sp)
  /* 045FB8 800CA5D8 AFA50084 */        sw $a1, 0x84($sp)
  /* 045FBC 800CA5DC AFA60088 */        sw $a2, 0x88($sp)
  /* 045FC0 800CA5E0 8CD00000 */        lw $s0, ($a2)
  /* 045FC4 800CA5E4 24820020 */     addiu $v0, $a0, 0x20
  /* 045FC8 800CA5E8 C4AC0030 */      lwc1 $f12, 0x30($a1)
  /* 045FCC 800CA5EC 00808825 */        or $s1, $a0, $zero
  /* 045FD0 800CA5F0 0C00C0FC */       jal __sinf
  /* 045FD4 800CA5F4 AFA20020 */        sw $v0, 0x20($sp)
  /* 045FD8 800CA5F8 8FB80084 */        lw $t8, 0x84($sp)
  /* 045FDC 800CA5FC C70C0030 */      lwc1 $f12, 0x30($t8)
  /* 045FE0 800CA600 0C00D734 */       jal cosf
  /* 045FE4 800CA604 E7A00068 */      swc1 $f0, 0x68($sp)
  /* 045FE8 800CA608 8FB90084 */        lw $t9, 0x84($sp)
  /* 045FEC 800CA60C C72C0034 */      lwc1 $f12, 0x34($t9)
  /* 045FF0 800CA610 0C00C0FC */       jal __sinf
  /* 045FF4 800CA614 E7A00060 */      swc1 $f0, 0x60($sp)
  /* 045FF8 800CA618 8FAA0084 */        lw $t2, 0x84($sp)
  /* 045FFC 800CA61C C54C0034 */      lwc1 $f12, 0x34($t2)
  /* 046000 800CA620 0C00D734 */       jal cosf
  /* 046004 800CA624 E7A00064 */      swc1 $f0, 0x64($sp)
  /* 046008 800CA628 C7AE0064 */      lwc1 $f14, 0x64($sp)
  /* 04600C 800CA62C 3C028004 */       lui $v0, %hi(D_80046FA8)
  /* 046010 800CA630 24426FA8 */     addiu $v0, $v0, %lo(D_80046FA8)
  /* 046014 800CA634 C4440020 */      lwc1 $f4, 0x20($v0) # D_80046FA8 + 32
  /* 046018 800CA638 46007307 */     neg.s $f12, $f14
  /* 04601C 800CA63C C4480000 */      lwc1 $f8, ($v0) # D_80046FA8 + 0
  /* 046020 800CA640 460C2182 */     mul.s $f6, $f4, $f12
  /* 046024 800CA644 3C014780 */       lui $at, (0x47800000 >> 16) # 65536.0
  /* 046028 800CA648 44811000 */      mtc1 $at, $f2 # 65536.0 to cop1
  /* 04602C 800CA64C 46004282 */     mul.s $f10, $f8, $f0
  /* 046030 800CA650 3C05FFFF */       lui $a1, %hi(D_NF_FFFF0004)
  /* 046034 800CA654 8FA80020 */        lw $t0, 0x20($sp)
  /* 046038 800CA658 C7B00060 */      lwc1 $f16, 0x60($sp)
  /* 04603C 800CA65C C7B20068 */      lwc1 $f18, 0x68($sp)
  /* 046040 800CA660 26270014 */     addiu $a3, $s1, 0x14
  /* 046044 800CA664 25080014 */     addiu $t0, $t0, 0x14
  /* 046048 800CA668 460A3100 */     add.s $f4, $f6, $f10
  /* 04604C 800CA66C C44A0024 */      lwc1 $f10, 0x24($v0) # D_80046FA8 + 36
  /* 046050 800CA670 46022202 */     mul.s $f8, $f4, $f2
  /* 046054 800CA674 4600418D */ trunc.w.s $f6, $f8
  /* 046058 800CA678 460C5102 */     mul.s $f4, $f10, $f12
  /* 04605C 800CA67C C4480004 */      lwc1 $f8, 4($v0) # D_80046FA8 + 4
  /* 046060 800CA680 44033000 */      mfc1 $v1, $f6
  /* 046064 800CA684 46004182 */     mul.s $f6, $f8, $f0
  /* 046068 800CA688 00656824 */       and $t5, $v1, $a1
  /* 04606C 800CA68C 0003CC00 */       sll $t9, $v1, 0x10
  /* 046070 800CA690 03255024 */       and $t2, $t9, $a1
  /* 046074 800CA694 46062280 */     add.s $f10, $f4, $f6
  /* 046078 800CA698 46025202 */     mul.s $f8, $f10, $f2
  /* 04607C 800CA69C 4600410D */ trunc.w.s $f4, $f8
  /* 046080 800CA6A0 44042000 */      mfc1 $a0, $f4
  /* 046084 800CA6A4 00000000 */       nop 
  /* 046088 800CA6A8 00047403 */       sra $t6, $a0, 0x10
  /* 04608C 800CA6AC 31CFFFFF */      andi $t7, $t6, 0xffff
  /* 046090 800CA6B0 01AFC025 */        or $t8, $t5, $t7
  /* 046094 800CA6B4 308BFFFF */      andi $t3, $a0, 0xffff
  /* 046098 800CA6B8 AE380000 */        sw $t8, ($s1)
  /* 04609C 800CA6BC 014B6025 */        or $t4, $t2, $t3
  /* 0460A0 800CA6C0 AD0CFFEC */        sw $t4, -0x14($t0)
  /* 0460A4 800CA6C4 C4460028 */      lwc1 $f6, 0x28($v0) # D_80046FA8 + 40
  /* 0460A8 800CA6C8 C4480008 */      lwc1 $f8, 8($v0) # D_80046FA8 + 8
  /* 0460AC 800CA6CC 460C3282 */     mul.s $f10, $f6, $f12
  /* 0460B0 800CA6D0 00000000 */       nop 
  /* 0460B4 800CA6D4 46004102 */     mul.s $f4, $f8, $f0
  /* 0460B8 800CA6D8 46045180 */     add.s $f6, $f10, $f4
  /* 0460BC 800CA6DC C444002C */      lwc1 $f4, 0x2c($v0) # D_80046FA8 + 44
  /* 0460C0 800CA6E0 46023202 */     mul.s $f8, $f6, $f2
  /* 0460C4 800CA6E4 4600428D */ trunc.w.s $f10, $f8
  /* 0460C8 800CA6E8 460C2182 */     mul.s $f6, $f4, $f12
  /* 0460CC 800CA6EC C448000C */      lwc1 $f8, 0xc($v0) # D_80046FA8 + 12
  /* 0460D0 800CA6F0 46009307 */     neg.s $f12, $f18
  /* 0460D4 800CA6F4 44035000 */      mfc1 $v1, $f10
  /* 0460D8 800CA6F8 46004282 */     mul.s $f10, $f8, $f0
  /* 0460DC 800CA6FC 00657824 */       and $t7, $v1, $a1
  /* 0460E0 800CA700 00035C00 */       sll $t3, $v1, 0x10
  /* 0460E4 800CA704 01656024 */       and $t4, $t3, $a1
  /* 0460E8 800CA708 460A3100 */     add.s $f4, $f6, $f10
  /* 0460EC 800CA70C 46022202 */     mul.s $f8, $f4, $f2
  /* 0460F0 800CA710 4600418D */ trunc.w.s $f6, $f8
  /* 0460F4 800CA714 44043000 */      mfc1 $a0, $f6
  /* 0460F8 800CA718 00000000 */       nop 
  /* 0460FC 800CA71C 0004C403 */       sra $t8, $a0, 0x10
  /* 046100 800CA720 3319FFFF */      andi $t9, $t8, 0xffff
  /* 046104 800CA724 01F95025 */        or $t2, $t7, $t9
  /* 046108 800CA728 308EFFFF */      andi $t6, $a0, 0xffff
  /* 04610C 800CA72C AE2A0004 */        sw $t2, 4($s1)
  /* 046110 800CA730 018E6825 */        or $t5, $t4, $t6
  /* 046114 800CA734 AD0DFFF0 */        sw $t5, -0x10($t0)
  /* 046118 800CA738 C44A0000 */      lwc1 $f10, ($v0) # D_80046FA8 + 0
  /* 04611C 800CA73C C4460010 */      lwc1 $f6, 0x10($v0) # D_80046FA8 + 16
  /* 046120 800CA740 46125102 */     mul.s $f4, $f10, $f18
  /* 046124 800CA744 00000000 */       nop 
  /* 046128 800CA748 460E2202 */     mul.s $f8, $f4, $f14
  /* 04612C 800CA74C 00000000 */       nop 
  /* 046130 800CA750 46103282 */     mul.s $f10, $f6, $f16
  /* 046134 800CA754 C4460020 */      lwc1 $f6, 0x20($v0) # D_80046FA8 + 32
  /* 046138 800CA758 460A4100 */     add.s $f4, $f8, $f10
  /* 04613C 800CA75C 46123202 */     mul.s $f8, $f6, $f18
  /* 046140 800CA760 00000000 */       nop 
  /* 046144 800CA764 46004282 */     mul.s $f10, $f8, $f0
  /* 046148 800CA768 46045180 */     add.s $f6, $f10, $f4
  /* 04614C 800CA76C C4440004 */      lwc1 $f4, 4($v0) # D_80046FA8 + 4
  /* 046150 800CA770 46023202 */     mul.s $f8, $f6, $f2
  /* 046154 800CA774 4600428D */ trunc.w.s $f10, $f8
  /* 046158 800CA778 46122182 */     mul.s $f6, $f4, $f18
  /* 04615C 800CA77C 44035000 */      mfc1 $v1, $f10
  /* 046160 800CA780 C44A0014 */      lwc1 $f10, 0x14($v0) # D_80046FA8 + 20
  /* 046164 800CA784 0065C824 */       and $t9, $v1, $a1
  /* 046168 800CA788 460E3202 */     mul.s $f8, $f6, $f14
  /* 04616C 800CA78C 00037400 */       sll $t6, $v1, 0x10
  /* 046170 800CA790 01C56824 */       and $t5, $t6, $a1
  /* 046174 800CA794 46105102 */     mul.s $f4, $f10, $f16
  /* 046178 800CA798 C44A0024 */      lwc1 $f10, 0x24($v0) # D_80046FA8 + 36
  /* 04617C 800CA79C 46044180 */     add.s $f6, $f8, $f4
  /* 046180 800CA7A0 46125202 */     mul.s $f8, $f10, $f18
  /* 046184 800CA7A4 00000000 */       nop 
  /* 046188 800CA7A8 46004102 */     mul.s $f4, $f8, $f0
  /* 04618C 800CA7AC 46062280 */     add.s $f10, $f4, $f6
  /* 046190 800CA7B0 46025202 */     mul.s $f8, $f10, $f2
  /* 046194 800CA7B4 4600410D */ trunc.w.s $f4, $f8
  /* 046198 800CA7B8 44042000 */      mfc1 $a0, $f4
  /* 04619C 800CA7BC 00000000 */       nop 
  /* 0461A0 800CA7C0 00045403 */       sra $t2, $a0, 0x10
  /* 0461A4 800CA7C4 314BFFFF */      andi $t3, $t2, 0xffff
  /* 0461A8 800CA7C8 032B6025 */        or $t4, $t9, $t3
  /* 0461AC 800CA7CC 3098FFFF */      andi $t8, $a0, 0xffff
  /* 0461B0 800CA7D0 AE2C0008 */        sw $t4, 8($s1)
  /* 0461B4 800CA7D4 01B87825 */        or $t7, $t5, $t8
  /* 0461B8 800CA7D8 AD0FFFF4 */        sw $t7, -0xc($t0)
  /* 0461BC 800CA7DC C4460008 */      lwc1 $f6, 8($v0) # D_80046FA8 + 8
  /* 0461C0 800CA7E0 C4440018 */      lwc1 $f4, 0x18($v0) # D_80046FA8 + 24
  /* 0461C4 800CA7E4 46123282 */     mul.s $f10, $f6, $f18
  /* 0461C8 800CA7E8 00000000 */       nop 
  /* 0461CC 800CA7EC 460E5202 */     mul.s $f8, $f10, $f14
  /* 0461D0 800CA7F0 00000000 */       nop 
  /* 0461D4 800CA7F4 46102182 */     mul.s $f6, $f4, $f16
  /* 0461D8 800CA7F8 C4440028 */      lwc1 $f4, 0x28($v0) # D_80046FA8 + 40
  /* 0461DC 800CA7FC 46064280 */     add.s $f10, $f8, $f6
  /* 0461E0 800CA800 46122202 */     mul.s $f8, $f4, $f18
  /* 0461E4 800CA804 00000000 */       nop 
  /* 0461E8 800CA808 46004182 */     mul.s $f6, $f8, $f0
  /* 0461EC 800CA80C 460A3100 */     add.s $f4, $f6, $f10
  /* 0461F0 800CA810 C44A000C */      lwc1 $f10, 0xc($v0) # D_80046FA8 + 12
  /* 0461F4 800CA814 46022202 */     mul.s $f8, $f4, $f2
  /* 0461F8 800CA818 4600418D */ trunc.w.s $f6, $f8
  /* 0461FC 800CA81C 46125102 */     mul.s $f4, $f10, $f18
  /* 046200 800CA820 44033000 */      mfc1 $v1, $f6
  /* 046204 800CA824 C446001C */      lwc1 $f6, 0x1c($v0) # D_80046FA8 + 28
  /* 046208 800CA828 00655824 */       and $t3, $v1, $a1
  /* 04620C 800CA82C 460E2202 */     mul.s $f8, $f4, $f14
  /* 046210 800CA830 0003C400 */       sll $t8, $v1, 0x10
  /* 046214 800CA834 03057824 */       and $t7, $t8, $a1
  /* 046218 800CA838 46103282 */     mul.s $f10, $f6, $f16
  /* 04621C 800CA83C C446002C */      lwc1 $f6, 0x2c($v0) # D_80046FA8 + 44
  /* 046220 800CA840 460A4100 */     add.s $f4, $f8, $f10
  /* 046224 800CA844 46123202 */     mul.s $f8, $f6, $f18
  /* 046228 800CA848 00000000 */       nop 
  /* 04622C 800CA84C 46004282 */     mul.s $f10, $f8, $f0
  /* 046230 800CA850 46045180 */     add.s $f6, $f10, $f4
  /* 046234 800CA854 46023202 */     mul.s $f8, $f6, $f2
  /* 046238 800CA858 4600428D */ trunc.w.s $f10, $f8
  /* 04623C 800CA85C 44045000 */      mfc1 $a0, $f10
  /* 046240 800CA860 00000000 */       nop 
  /* 046244 800CA864 00046403 */       sra $t4, $a0, 0x10
  /* 046248 800CA868 318EFFFF */      andi $t6, $t4, 0xffff
  /* 04624C 800CA86C 016E6825 */        or $t5, $t3, $t6
  /* 046250 800CA870 308AFFFF */      andi $t2, $a0, 0xffff
  /* 046254 800CA874 AE2D000C */        sw $t5, 0xc($s1)
  /* 046258 800CA878 01EAC825 */        or $t9, $t7, $t2
  /* 04625C 800CA87C AD19FFF8 */        sw $t9, -8($t0)
  /* 046260 800CA880 C4440000 */      lwc1 $f4, ($v0) # D_80046FA8 + 0
  /* 046264 800CA884 C44A0010 */      lwc1 $f10, 0x10($v0) # D_80046FA8 + 16
  /* 046268 800CA888 46102182 */     mul.s $f6, $f4, $f16
  /* 04626C 800CA88C 00000000 */       nop 
  /* 046270 800CA890 460E3202 */     mul.s $f8, $f6, $f14
  /* 046274 800CA894 00000000 */       nop 
  /* 046278 800CA898 460C5102 */     mul.s $f4, $f10, $f12
  /* 04627C 800CA89C C44A0020 */      lwc1 $f10, 0x20($v0) # D_80046FA8 + 32
  /* 046280 800CA8A0 46044180 */     add.s $f6, $f8, $f4
  /* 046284 800CA8A4 46105202 */     mul.s $f8, $f10, $f16
  /* 046288 800CA8A8 00000000 */       nop 
  /* 04628C 800CA8AC 46004102 */     mul.s $f4, $f8, $f0
  /* 046290 800CA8B0 46062280 */     add.s $f10, $f4, $f6
  /* 046294 800CA8B4 C4460004 */      lwc1 $f6, 4($v0) # D_80046FA8 + 4
  /* 046298 800CA8B8 46025202 */     mul.s $f8, $f10, $f2
  /* 04629C 800CA8BC 4600410D */ trunc.w.s $f4, $f8
  /* 0462A0 800CA8C0 46103282 */     mul.s $f10, $f6, $f16
  /* 0462A4 800CA8C4 44032000 */      mfc1 $v1, $f4
  /* 0462A8 800CA8C8 C4440014 */      lwc1 $f4, 0x14($v0) # D_80046FA8 + 20
  /* 0462AC 800CA8CC 00657024 */       and $t6, $v1, $a1
  /* 0462B0 800CA8D0 460E5202 */     mul.s $f8, $f10, $f14
  /* 0462B4 800CA8D4 00035400 */       sll $t2, $v1, 0x10
  /* 0462B8 800CA8D8 0145C824 */       and $t9, $t2, $a1
  /* 0462BC 800CA8DC 460C2182 */     mul.s $f6, $f4, $f12
  /* 0462C0 800CA8E0 C4440024 */      lwc1 $f4, 0x24($v0) # D_80046FA8 + 36
  /* 0462C4 800CA8E4 46064280 */     add.s $f10, $f8, $f6
  /* 0462C8 800CA8E8 46102202 */     mul.s $f8, $f4, $f16
  /* 0462CC 800CA8EC 00000000 */       nop 
  /* 0462D0 800CA8F0 46004182 */     mul.s $f6, $f8, $f0
  /* 0462D4 800CA8F4 460A3100 */     add.s $f4, $f6, $f10
  /* 0462D8 800CA8F8 46022202 */     mul.s $f8, $f4, $f2
  /* 0462DC 800CA8FC 4600418D */ trunc.w.s $f6, $f8
  /* 0462E0 800CA900 44043000 */      mfc1 $a0, $f6
  /* 0462E4 800CA904 00000000 */       nop 
  /* 0462E8 800CA908 00046C03 */       sra $t5, $a0, 0x10
  /* 0462EC 800CA90C 31B8FFFF */      andi $t8, $t5, 0xffff
  /* 0462F0 800CA910 01D87825 */        or $t7, $t6, $t8
  /* 0462F4 800CA914 308CFFFF */      andi $t4, $a0, 0xffff
  /* 0462F8 800CA918 AE2F0010 */        sw $t7, 0x10($s1)
  /* 0462FC 800CA91C 032C5825 */        or $t3, $t9, $t4
  /* 046300 800CA920 AD0BFFFC */        sw $t3, -4($t0)
  /* 046304 800CA924 C44A0008 */      lwc1 $f10, 8($v0) # D_80046FA8 + 8
  /* 046308 800CA928 C4460018 */      lwc1 $f6, 0x18($v0) # D_80046FA8 + 24
  /* 04630C 800CA92C 46105102 */     mul.s $f4, $f10, $f16
  /* 046310 800CA930 00000000 */       nop 
  /* 046314 800CA934 460E2202 */     mul.s $f8, $f4, $f14
  /* 046318 800CA938 00000000 */       nop 
  /* 04631C 800CA93C 460C3282 */     mul.s $f10, $f6, $f12
  /* 046320 800CA940 C4460028 */      lwc1 $f6, 0x28($v0) # D_80046FA8 + 40
  /* 046324 800CA944 460A4100 */     add.s $f4, $f8, $f10
  /* 046328 800CA948 46103202 */     mul.s $f8, $f6, $f16
  /* 04632C 800CA94C 00000000 */       nop 
  /* 046330 800CA950 46004282 */     mul.s $f10, $f8, $f0
  /* 046334 800CA954 46045180 */     add.s $f6, $f10, $f4
  /* 046338 800CA958 C444000C */      lwc1 $f4, 0xc($v0) # D_80046FA8 + 12
  /* 04633C 800CA95C 46023202 */     mul.s $f8, $f6, $f2
  /* 046340 800CA960 4600428D */ trunc.w.s $f10, $f8
  /* 046344 800CA964 46102182 */     mul.s $f6, $f4, $f16
  /* 046348 800CA968 44035000 */      mfc1 $v1, $f10
  /* 04634C 800CA96C C44A001C */      lwc1 $f10, 0x1c($v0) # D_80046FA8 + 28
  /* 046350 800CA970 0065C024 */       and $t8, $v1, $a1
  /* 046354 800CA974 460E3202 */     mul.s $f8, $f6, $f14
  /* 046358 800CA978 00036400 */       sll $t4, $v1, 0x10
  /* 04635C 800CA97C 01855824 */       and $t3, $t4, $a1
  /* 046360 800CA980 460C5102 */     mul.s $f4, $f10, $f12
  /* 046364 800CA984 C44A002C */      lwc1 $f10, 0x2c($v0) # D_80046FA8 + 44
  /* 046368 800CA988 02001025 */        or $v0, $s0, $zero
  /* 04636C 800CA98C 26100008 */     addiu $s0, $s0, 8
  /* 046370 800CA990 02003025 */        or $a2, $s0, $zero
  /* 046374 800CA994 26100008 */     addiu $s0, $s0, 8
  /* 046378 800CA998 46044180 */     add.s $f6, $f8, $f4
  /* 04637C 800CA99C 46105202 */     mul.s $f8, $f10, $f16
  /* 046380 800CA9A0 00000000 */       nop 
  /* 046384 800CA9A4 46004102 */     mul.s $f4, $f8, $f0
  /* 046388 800CA9A8 46062280 */     add.s $f10, $f4, $f6
  /* 04638C 800CA9AC 46025202 */     mul.s $f8, $f10, $f2
  /* 046390 800CA9B0 4600410D */ trunc.w.s $f4, $f8
  /* 046394 800CA9B4 44042000 */      mfc1 $a0, $f4
  /* 046398 800CA9B8 00000000 */       nop 
  /* 04639C 800CA9BC 00047C03 */       sra $t7, $a0, 0x10
  /* 0463A0 800CA9C0 31EAFFFF */      andi $t2, $t7, 0xffff
  /* 0463A4 800CA9C4 030AC825 */        or $t9, $t8, $t2
  /* 0463A8 800CA9C8 308DFFFF */      andi $t5, $a0, 0xffff
  /* 0463AC 800CA9CC ACF90000 */        sw $t9, ($a3)
  /* 0463B0 800CA9D0 016D7025 */        or $t6, $t3, $t5
  /* 0463B4 800CA9D4 3C0FD500 */       lui $t7, (0xD5000001 >> 16) # 3573547009
  /* 0463B8 800CA9D8 AD0E0000 */        sw $t6, ($t0)
  /* 0463BC 800CA9DC 35EF0001 */       ori $t7, $t7, (0xD5000001 & 0xFFFF) # 3573547009
  /* 0463C0 800CA9E0 AC4F0000 */        sw $t7, ($v0) # D_80046FA8 + 0
  /* 0463C4 800CA9E4 AC400004 */        sw $zero, 4($v0) # D_80046FA8 + 4
  /* 0463C8 800CA9E8 3C18DB00 */       lui $t8, (0xDB000010 >> 16) # 3674210320
  /* 0463CC 800CA9EC ACD80000 */        sw $t8, ($a2)
  /* 0463D0 800CA9F0 8E2A0000 */        lw $t2, ($s1)
  /* 0463D4 800CA9F4 3C19DB00 */       lui $t9, (0xDB000004 >> 16) # 3674210308
  /* 0463D8 800CA9F8 37390004 */       ori $t9, $t9, (0xDB000004 & 0xFFFF) # 3674210308
  /* 0463DC 800CA9FC 02003825 */        or $a3, $s0, $zero
  /* 0463E0 800CAA00 ACCA0004 */        sw $t2, 4($a2)
  /* 0463E4 800CAA04 ACF90000 */        sw $t9, ($a3)
  /* 0463E8 800CAA08 8E2C0004 */        lw $t4, 4($s1)
  /* 0463EC 800CAA0C 26100008 */     addiu $s0, $s0, 8
  /* 0463F0 800CAA10 3C0BDB00 */       lui $t3, (0xDB000008 >> 16) # 3674210312
  /* 0463F4 800CAA14 356B0008 */       ori $t3, $t3, (0xDB000008 & 0xFFFF) # 3674210312
  /* 0463F8 800CAA18 02004825 */        or $t1, $s0, $zero
  /* 0463FC 800CAA1C ACEC0004 */        sw $t4, 4($a3)
  /* 046400 800CAA20 AD2B0000 */        sw $t3, ($t1)
  /* 046404 800CAA24 8E2D0008 */        lw $t5, 8($s1)
  /* 046408 800CAA28 26100008 */     addiu $s0, $s0, 8
  /* 04640C 800CAA2C 3C0EDB00 */       lui $t6, (0xDB00000C >> 16) # 3674210316
  /* 046410 800CAA30 35CE000C */       ori $t6, $t6, (0xDB00000C & 0xFFFF) # 3674210316
  /* 046414 800CAA34 02001025 */        or $v0, $s0, $zero
  /* 046418 800CAA38 AD2D0004 */        sw $t5, 4($t1)
  /* 04641C 800CAA3C AC4E0000 */        sw $t6, ($v0) # D_80046FA8 + 0
  /* 046420 800CAA40 8E2F000C */        lw $t7, 0xc($s1)
  /* 046424 800CAA44 26100008 */     addiu $s0, $s0, 8
  /* 046428 800CAA48 02001825 */        or $v1, $s0, $zero
  /* 04642C 800CAA4C 37180010 */       ori $t8, $t8, (0xDB000010 & 0xFFFF) # 3674210320
  /* 046430 800CAA50 AC4F0004 */        sw $t7, 4($v0) # D_80046FA8 + 4
  /* 046434 800CAA54 AC780000 */        sw $t8, ($v1)
  /* 046438 800CAA58 8E2A0010 */        lw $t2, 0x10($s1)
  /* 04643C 800CAA5C 26100008 */     addiu $s0, $s0, 8
  /* 046440 800CAA60 3C19DB00 */       lui $t9, (0xDB000014 >> 16) # 3674210324
  /* 046444 800CAA64 37390014 */       ori $t9, $t9, (0xDB000014 & 0xFFFF) # 3674210324
  /* 046448 800CAA68 02002025 */        or $a0, $s0, $zero
  /* 04644C 800CAA6C AC6A0004 */        sw $t2, 4($v1)
  /* 046450 800CAA70 AC990000 */        sw $t9, ($a0)
  /* 046454 800CAA74 8E2C0014 */        lw $t4, 0x14($s1)
  /* 046458 800CAA78 26100008 */     addiu $s0, $s0, 8
  /* 04645C 800CAA7C 3C0BDB00 */       lui $t3, (0xDB000020 >> 16) # 3674210336
  /* 046460 800CAA80 356B0020 */       ori $t3, $t3, (0xDB000020 & 0xFFFF) # 3674210336
  /* 046464 800CAA84 02002825 */        or $a1, $s0, $zero
  /* 046468 800CAA88 AC8C0004 */        sw $t4, 4($a0)
  /* 04646C 800CAA8C ACAB0000 */        sw $t3, %lo(D_NF_FFFF0000)($a1)
  /* 046470 800CAA90 8E2D0020 */        lw $t5, 0x20($s1)
  /* 046474 800CAA94 26100008 */     addiu $s0, $s0, 8
  /* 046478 800CAA98 3C0EDB00 */       lui $t6, (0xDB000024 >> 16) # 3674210340
  /* 04647C 800CAA9C 35CE0024 */       ori $t6, $t6, (0xDB000024 & 0xFFFF) # 3674210340
  /* 046480 800CAAA0 02001025 */        or $v0, $s0, $zero
  /* 046484 800CAAA4 ACAD0004 */        sw $t5, %lo(D_NF_FFFF0004)($a1)
  /* 046488 800CAAA8 AC4E0000 */        sw $t6, ($v0) # D_80046FA8 + 0
  /* 04648C 800CAAAC 8E2F0024 */        lw $t7, 0x24($s1)
  /* 046490 800CAAB0 26100008 */     addiu $s0, $s0, 8
  /* 046494 800CAAB4 02001825 */        or $v1, $s0, $zero
  /* 046498 800CAAB8 3C18DB00 */       lui $t8, (0xDB000028 >> 16) # 3674210344
  /* 04649C 800CAABC 37180028 */       ori $t8, $t8, (0xDB000028 & 0xFFFF) # 3674210344
  /* 0464A0 800CAAC0 26100008 */     addiu $s0, $s0, 8
  /* 0464A4 800CAAC4 AC4F0004 */        sw $t7, 4($v0) # D_80046FA8 + 4
  /* 0464A8 800CAAC8 AC780000 */        sw $t8, ($v1)
  /* 0464AC 800CAACC 8E2A0028 */        lw $t2, 0x28($s1)
  /* 0464B0 800CAAD0 3C19DB00 */       lui $t9, (0xDB00002C >> 16) # 3674210348
  /* 0464B4 800CAAD4 3739002C */       ori $t9, $t9, (0xDB00002C & 0xFFFF) # 3674210348
  /* 0464B8 800CAAD8 02002025 */        or $a0, $s0, $zero
  /* 0464BC 800CAADC AC6A0004 */        sw $t2, 4($v1)
  /* 0464C0 800CAAE0 AC990000 */        sw $t9, ($a0)
  /* 0464C4 800CAAE4 8E2C002C */        lw $t4, 0x2c($s1)
  /* 0464C8 800CAAE8 26100008 */     addiu $s0, $s0, 8
  /* 0464CC 800CAAEC 3C0BDB00 */       lui $t3, (0xDB000030 >> 16) # 3674210352
  /* 0464D0 800CAAF0 356B0030 */       ori $t3, $t3, (0xDB000030 & 0xFFFF) # 3674210352
  /* 0464D4 800CAAF4 02003025 */        or $a2, $s0, $zero
  /* 0464D8 800CAAF8 AC8C0004 */        sw $t4, 4($a0)
  /* 0464DC 800CAAFC ACCB0000 */        sw $t3, ($a2)
  /* 0464E0 800CAB00 8E2D0030 */        lw $t5, 0x30($s1)
  /* 0464E4 800CAB04 26100008 */     addiu $s0, $s0, 8
  /* 0464E8 800CAB08 3C0EDB00 */       lui $t6, (0xDB000034 >> 16) # 3674210356
  /* 0464EC 800CAB0C 35CE0034 */       ori $t6, $t6, (0xDB000034 & 0xFFFF) # 3674210356
  /* 0464F0 800CAB10 02001825 */        or $v1, $s0, $zero
  /* 0464F4 800CAB14 ACCD0004 */        sw $t5, 4($a2)
  /* 0464F8 800CAB18 AC6E0000 */        sw $t6, ($v1)
  /* 0464FC 800CAB1C 8E2F0034 */        lw $t7, 0x34($s1)
  /* 046500 800CAB20 26100008 */     addiu $s0, $s0, 8
  /* 046504 800CAB24 24020001 */     addiu $v0, $zero, 1
  /* 046508 800CAB28 AC6F0004 */        sw $t7, 4($v1)
  /* 04650C 800CAB2C 8FB80088 */        lw $t8, 0x88($sp)
  /* 046510 800CAB30 AF100000 */        sw $s0, ($t8)
  /* 046514 800CAB34 8FBF001C */        lw $ra, 0x1c($sp)
  /* 046518 800CAB38 8FB10018 */        lw $s1, 0x18($sp)
  /* 04651C 800CAB3C 8FB00014 */        lw $s0, 0x14($sp)
  /* 046520 800CAB40 03E00008 */        jr $ra
  /* 046524 800CAB44 27BD0080 */     addiu $sp, $sp, 0x80

  glabel jtgt_ovl0_800CAB48
  /* 046528 800CAB48 27BDFF60 */     addiu $sp, $sp, -0xa0
  /* 04652C 800CAB4C AFBF0034 */        sw $ra, 0x34($sp)
  /* 046530 800CAB50 AFB20030 */        sw $s2, 0x30($sp)
  /* 046534 800CAB54 AFB1002C */        sw $s1, 0x2c($sp)
  /* 046538 800CAB58 AFB00028 */        sw $s0, 0x28($sp)
  /* 04653C 800CAB5C F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 046540 800CAB60 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 046544 800CAB64 AFA600A8 */        sw $a2, 0xa8($sp)
  /* 046548 800CAB68 00808825 */        or $s1, $a0, $zero
  /* 04654C 800CAB6C 00A09025 */        or $s2, $a1, $zero
  /* 046550 800CAB70 8CD00000 */        lw $s0, ($a2)
  /* 046554 800CAB74 0C00C0FC */       jal __sinf
  /* 046558 800CAB78 C4AC0030 */      lwc1 $f12, 0x30($a1)
  /* 04655C 800CAB7C C64C0030 */      lwc1 $f12, 0x30($s2)
  /* 046560 800CAB80 0C00D734 */       jal cosf
  /* 046564 800CAB84 E7A00088 */      swc1 $f0, 0x88($sp)
  /* 046568 800CAB88 C64C0034 */      lwc1 $f12, 0x34($s2)
  /* 04656C 800CAB8C 0C00C0FC */       jal __sinf
  /* 046570 800CAB90 E7A00080 */      swc1 $f0, 0x80($sp)
  /* 046574 800CAB94 46000506 */     mov.s $f20, $f0
  /* 046578 800CAB98 0C00D734 */       jal cosf
  /* 04657C 800CAB9C C64C0034 */      lwc1 $f12, 0x34($s2)
  /* 046580 800CABA0 3C098004 */       lui $t1, %hi(D_80046FA4)
  /* 046584 800CABA4 25296FA4 */     addiu $t1, $t1, %lo(D_80046FA4)
  /* 046588 800CABA8 C5240000 */      lwc1 $f4, ($t1) # D_80046FA4 + 0
  /* 04658C 800CABAC 3C014780 */       lui $at, (0x47800000 >> 16) # 65536.0
  /* 046590 800CABB0 44811000 */      mtc1 $at, $f2 # 65536.0 to cop1
  /* 046594 800CABB4 E7A40038 */      swc1 $f4, 0x38($sp)
  /* 046598 800CABB8 C7A80038 */      lwc1 $f8, 0x38($sp)
  /* 04659C 800CABBC C6460044 */      lwc1 $f6, 0x44($s2)
  /* 0465A0 800CABC0 C64A0040 */      lwc1 $f10, 0x40($s2)
  /* 0465A4 800CABC4 3C028004 */       lui $v0, %hi(D_80046FA8)
  /* 0465A8 800CABC8 46083582 */     mul.s $f22, $f6, $f8
  /* 0465AC 800CABCC 3C018004 */       lui $at, %hi(D_80046FA4)
  /* 0465B0 800CABD0 24426FA8 */     addiu $v0, $v0, %lo(D_80046FA8)
  /* 0465B4 800CABD4 460A4102 */     mul.s $f4, $f8, $f10
  /* 0465B8 800CABD8 4600A307 */     neg.s $f12, $f20
  /* 0465BC 800CABDC 3C06FFFF */       lui $a2, %hi(D_NF_FFFF0004)
  /* 0465C0 800CABE0 C7B00080 */      lwc1 $f16, 0x80($sp)
  /* 0465C4 800CABE4 C7B20088 */      lwc1 $f18, 0x88($sp)
  /* 0465C8 800CABE8 26270014 */     addiu $a3, $s1, 0x14
  /* 0465CC 800CABEC 26250034 */     addiu $a1, $s1, 0x34
  /* 0465D0 800CABF0 E4246FA4 */      swc1 $f4, %lo(D_80046FA4)($at)
  /* 0465D4 800CABF4 C4460020 */      lwc1 $f6, 0x20($v0) # D_80046FA8 + 32
  /* 0465D8 800CABF8 C44A0000 */      lwc1 $f10, ($v0) # D_80046FA8 + 0
  /* 0465DC 800CABFC C52E0000 */      lwc1 $f14, ($t1) # D_80046FA4 + 0
  /* 0465E0 800CAC00 460C3202 */     mul.s $f8, $f6, $f12
  /* 0465E4 800CAC04 00000000 */       nop 
  /* 0465E8 800CAC08 46005102 */     mul.s $f4, $f10, $f0
  /* 0465EC 800CAC0C 46044180 */     add.s $f6, $f8, $f4
  /* 0465F0 800CAC10 460E3282 */     mul.s $f10, $f6, $f14
  /* 0465F4 800CAC14 C4460024 */      lwc1 $f6, 0x24($v0) # D_80046FA8 + 36
  /* 0465F8 800CAC18 46025202 */     mul.s $f8, $f10, $f2
  /* 0465FC 800CAC1C 4600410D */ trunc.w.s $f4, $f8
  /* 046600 800CAC20 460C3282 */     mul.s $f10, $f6, $f12
  /* 046604 800CAC24 C4480004 */      lwc1 $f8, 4($v0) # D_80046FA8 + 4
  /* 046608 800CAC28 44032000 */      mfc1 $v1, $f4
  /* 04660C 800CAC2C 46004102 */     mul.s $f4, $f8, $f0
  /* 046610 800CAC30 00036C00 */       sll $t5, $v1, 0x10
  /* 046614 800CAC34 01A67024 */       and $t6, $t5, $a2
  /* 046618 800CAC38 0066C824 */       and $t9, $v1, $a2
  /* 04661C 800CAC3C 46045180 */     add.s $f6, $f10, $f4
  /* 046620 800CAC40 460E3202 */     mul.s $f8, $f6, $f14
  /* 046624 800CAC44 00000000 */       nop 
  /* 046628 800CAC48 46024282 */     mul.s $f10, $f8, $f2
  /* 04662C 800CAC4C 4600510D */ trunc.w.s $f4, $f10
  /* 046630 800CAC50 44042000 */      mfc1 $a0, $f4
  /* 046634 800CAC54 00000000 */       nop 
  /* 046638 800CAC58 00045403 */       sra $t2, $a0, 0x10
  /* 04663C 800CAC5C 314BFFFF */      andi $t3, $t2, 0xffff
  /* 046640 800CAC60 308FFFFF */      andi $t7, $a0, 0xffff
  /* 046644 800CAC64 032B6025 */        or $t4, $t9, $t3
  /* 046648 800CAC68 01CFC025 */        or $t8, $t6, $t7
  /* 04664C 800CAC6C AE2C0000 */        sw $t4, ($s1)
  /* 046650 800CAC70 AE380020 */        sw $t8, 0x20($s1)
  /* 046654 800CAC74 C4460028 */      lwc1 $f6, 0x28($v0) # D_80046FA8 + 40
  /* 046658 800CAC78 C44A0008 */      lwc1 $f10, 8($v0) # D_80046FA8 + 8
  /* 04665C 800CAC7C 460C3202 */     mul.s $f8, $f6, $f12
  /* 046660 800CAC80 00000000 */       nop 
  /* 046664 800CAC84 46005102 */     mul.s $f4, $f10, $f0
  /* 046668 800CAC88 46044180 */     add.s $f6, $f8, $f4
  /* 04666C 800CAC8C 460E3282 */     mul.s $f10, $f6, $f14
  /* 046670 800CAC90 C446002C */      lwc1 $f6, 0x2c($v0) # D_80046FA8 + 44
  /* 046674 800CAC94 46025202 */     mul.s $f8, $f10, $f2
  /* 046678 800CAC98 4600410D */ trunc.w.s $f4, $f8
  /* 04667C 800CAC9C 460C3282 */     mul.s $f10, $f6, $f12
  /* 046680 800CACA0 C448000C */      lwc1 $f8, 0xc($v0) # D_80046FA8 + 12
  /* 046684 800CACA4 46009307 */     neg.s $f12, $f18
  /* 046688 800CACA8 44032000 */      mfc1 $v1, $f4
  /* 04668C 800CACAC 46004102 */     mul.s $f4, $f8, $f0
  /* 046690 800CACB0 00037C00 */       sll $t7, $v1, 0x10
  /* 046694 800CACB4 01E6C024 */       and $t8, $t7, $a2
  /* 046698 800CACB8 00665824 */       and $t3, $v1, $a2
  /* 04669C 800CACBC 46045180 */     add.s $f6, $f10, $f4
  /* 0466A0 800CACC0 460E3202 */     mul.s $f8, $f6, $f14
  /* 0466A4 800CACC4 00000000 */       nop 
  /* 0466A8 800CACC8 46024282 */     mul.s $f10, $f8, $f2
  /* 0466AC 800CACCC 4600510D */ trunc.w.s $f4, $f10
  /* 0466B0 800CACD0 44042000 */      mfc1 $a0, $f4
  /* 0466B4 800CACD4 00000000 */       nop 
  /* 0466B8 800CACD8 00046403 */       sra $t4, $a0, 0x10
  /* 0466BC 800CACDC 318DFFFF */      andi $t5, $t4, 0xffff
  /* 0466C0 800CACE0 308AFFFF */      andi $t2, $a0, 0xffff
  /* 0466C4 800CACE4 016D7025 */        or $t6, $t3, $t5
  /* 0466C8 800CACE8 030AC825 */        or $t9, $t8, $t2
  /* 0466CC 800CACEC AE2E0004 */        sw $t6, 4($s1)
  /* 0466D0 800CACF0 AE390024 */        sw $t9, 0x24($s1)
  /* 0466D4 800CACF4 C4460000 */      lwc1 $f6, ($v0) # D_80046FA8 + 0
  /* 0466D8 800CACF8 C4440010 */      lwc1 $f4, 0x10($v0) # D_80046FA8 + 16
  /* 0466DC 800CACFC 46123202 */     mul.s $f8, $f6, $f18
  /* 0466E0 800CAD00 00000000 */       nop 
  /* 0466E4 800CAD04 46144282 */     mul.s $f10, $f8, $f20
  /* 0466E8 800CAD08 00000000 */       nop 
  /* 0466EC 800CAD0C 46102182 */     mul.s $f6, $f4, $f16
  /* 0466F0 800CAD10 C4440020 */      lwc1 $f4, 0x20($v0) # D_80046FA8 + 32
  /* 0466F4 800CAD14 46065200 */     add.s $f8, $f10, $f6
  /* 0466F8 800CAD18 46122282 */     mul.s $f10, $f4, $f18
  /* 0466FC 800CAD1C 00000000 */       nop 
  /* 046700 800CAD20 46005182 */     mul.s $f6, $f10, $f0
  /* 046704 800CAD24 46083100 */     add.s $f4, $f6, $f8
  /* 046708 800CAD28 46162282 */     mul.s $f10, $f4, $f22
  /* 04670C 800CAD2C C4440004 */      lwc1 $f4, 4($v0) # D_80046FA8 + 4
  /* 046710 800CAD30 46025182 */     mul.s $f6, $f10, $f2
  /* 046714 800CAD34 4600320D */ trunc.w.s $f8, $f6
  /* 046718 800CAD38 46122282 */     mul.s $f10, $f4, $f18
  /* 04671C 800CAD3C 44034000 */      mfc1 $v1, $f8
  /* 046720 800CAD40 C4480014 */      lwc1 $f8, 0x14($v0) # D_80046FA8 + 20
  /* 046724 800CAD44 00035400 */       sll $t2, $v1, 0x10
  /* 046728 800CAD48 46145182 */     mul.s $f6, $f10, $f20
  /* 04672C 800CAD4C 0146C824 */       and $t9, $t2, $a2
  /* 046730 800CAD50 00666824 */       and $t5, $v1, $a2
  /* 046734 800CAD54 46104102 */     mul.s $f4, $f8, $f16
  /* 046738 800CAD58 C4480024 */      lwc1 $f8, 0x24($v0) # D_80046FA8 + 36
  /* 04673C 800CAD5C 46043280 */     add.s $f10, $f6, $f4
  /* 046740 800CAD60 46124182 */     mul.s $f6, $f8, $f18
  /* 046744 800CAD64 00000000 */       nop 
  /* 046748 800CAD68 46003102 */     mul.s $f4, $f6, $f0
  /* 04674C 800CAD6C 460A2200 */     add.s $f8, $f4, $f10
  /* 046750 800CAD70 46164182 */     mul.s $f6, $f8, $f22
  /* 046754 800CAD74 00000000 */       nop 
  /* 046758 800CAD78 46023102 */     mul.s $f4, $f6, $f2
  /* 04675C 800CAD7C 4600228D */ trunc.w.s $f10, $f4
  /* 046760 800CAD80 44045000 */      mfc1 $a0, $f10
  /* 046764 800CAD84 00000000 */       nop 
  /* 046768 800CAD88 00047403 */       sra $t6, $a0, 0x10
  /* 04676C 800CAD8C 31CFFFFF */      andi $t7, $t6, 0xffff
  /* 046770 800CAD90 308CFFFF */      andi $t4, $a0, 0xffff
  /* 046774 800CAD94 01AFC025 */        or $t8, $t5, $t7
  /* 046778 800CAD98 032C5825 */        or $t3, $t9, $t4
  /* 04677C 800CAD9C AE380008 */        sw $t8, 8($s1)
  /* 046780 800CADA0 AE2B0028 */        sw $t3, 0x28($s1)
  /* 046784 800CADA4 C4480008 */      lwc1 $f8, 8($v0) # D_80046FA8 + 8
  /* 046788 800CADA8 C44A0018 */      lwc1 $f10, 0x18($v0) # D_80046FA8 + 24
  /* 04678C 800CADAC 46124182 */     mul.s $f6, $f8, $f18
  /* 046790 800CADB0 00000000 */       nop 
  /* 046794 800CADB4 46143102 */     mul.s $f4, $f6, $f20
  /* 046798 800CADB8 00000000 */       nop 
  /* 04679C 800CADBC 46105202 */     mul.s $f8, $f10, $f16
  /* 0467A0 800CADC0 C44A0028 */      lwc1 $f10, 0x28($v0) # D_80046FA8 + 40
  /* 0467A4 800CADC4 46082180 */     add.s $f6, $f4, $f8
  /* 0467A8 800CADC8 46125102 */     mul.s $f4, $f10, $f18
  /* 0467AC 800CADCC 00000000 */       nop 
  /* 0467B0 800CADD0 46002202 */     mul.s $f8, $f4, $f0
  /* 0467B4 800CADD4 46064280 */     add.s $f10, $f8, $f6
  /* 0467B8 800CADD8 46165102 */     mul.s $f4, $f10, $f22
  /* 0467BC 800CADDC C44A000C */      lwc1 $f10, 0xc($v0) # D_80046FA8 + 12
  /* 0467C0 800CADE0 46022202 */     mul.s $f8, $f4, $f2
  /* 0467C4 800CADE4 4600418D */ trunc.w.s $f6, $f8
  /* 0467C8 800CADE8 46125102 */     mul.s $f4, $f10, $f18
  /* 0467CC 800CADEC 44033000 */      mfc1 $v1, $f6
  /* 0467D0 800CADF0 C446001C */      lwc1 $f6, 0x1c($v0) # D_80046FA8 + 28
  /* 0467D4 800CADF4 00036400 */       sll $t4, $v1, 0x10
  /* 0467D8 800CADF8 46142202 */     mul.s $f8, $f4, $f20
  /* 0467DC 800CADFC 01865824 */       and $t3, $t4, $a2
  /* 0467E0 800CAE00 00667824 */       and $t7, $v1, $a2
  /* 0467E4 800CAE04 46103282 */     mul.s $f10, $f6, $f16
  /* 0467E8 800CAE08 C446002C */      lwc1 $f6, 0x2c($v0) # D_80046FA8 + 44
  /* 0467EC 800CAE0C 460A4100 */     add.s $f4, $f8, $f10
  /* 0467F0 800CAE10 46123202 */     mul.s $f8, $f6, $f18
  /* 0467F4 800CAE14 00000000 */       nop 
  /* 0467F8 800CAE18 46004282 */     mul.s $f10, $f8, $f0
  /* 0467FC 800CAE1C 46045180 */     add.s $f6, $f10, $f4
  /* 046800 800CAE20 46163202 */     mul.s $f8, $f6, $f22
  /* 046804 800CAE24 00000000 */       nop 
  /* 046808 800CAE28 46024282 */     mul.s $f10, $f8, $f2
  /* 04680C 800CAE2C 4600510D */ trunc.w.s $f4, $f10
  /* 046810 800CAE30 44042000 */      mfc1 $a0, $f4
  /* 046814 800CAE34 00000000 */       nop 
  /* 046818 800CAE38 0004C403 */       sra $t8, $a0, 0x10
  /* 04681C 800CAE3C 330AFFFF */      andi $t2, $t8, 0xffff
  /* 046820 800CAE40 308EFFFF */      andi $t6, $a0, 0xffff
  /* 046824 800CAE44 01EAC825 */        or $t9, $t7, $t2
  /* 046828 800CAE48 016E6825 */        or $t5, $t3, $t6
  /* 04682C 800CAE4C AE39000C */        sw $t9, 0xc($s1)
  /* 046830 800CAE50 AE2D002C */        sw $t5, 0x2c($s1)
  /* 046834 800CAE54 C4460000 */      lwc1 $f6, ($v0) # D_80046FA8 + 0
  /* 046838 800CAE58 C4440010 */      lwc1 $f4, 0x10($v0) # D_80046FA8 + 16
  /* 04683C 800CAE5C 46103202 */     mul.s $f8, $f6, $f16
  /* 046840 800CAE60 00000000 */       nop 
  /* 046844 800CAE64 46144282 */     mul.s $f10, $f8, $f20
  /* 046848 800CAE68 00000000 */       nop 
  /* 04684C 800CAE6C 460C2182 */     mul.s $f6, $f4, $f12
  /* 046850 800CAE70 C4440020 */      lwc1 $f4, 0x20($v0) # D_80046FA8 + 32
  /* 046854 800CAE74 46065200 */     add.s $f8, $f10, $f6
  /* 046858 800CAE78 46102282 */     mul.s $f10, $f4, $f16
  /* 04685C 800CAE7C 00000000 */       nop 
  /* 046860 800CAE80 46005182 */     mul.s $f6, $f10, $f0
  /* 046864 800CAE84 46083100 */     add.s $f4, $f6, $f8
  /* 046868 800CAE88 460E2282 */     mul.s $f10, $f4, $f14
  /* 04686C 800CAE8C C4440004 */      lwc1 $f4, 4($v0) # D_80046FA8 + 4
  /* 046870 800CAE90 46025182 */     mul.s $f6, $f10, $f2
  /* 046874 800CAE94 4600320D */ trunc.w.s $f8, $f6
  /* 046878 800CAE98 46102282 */     mul.s $f10, $f4, $f16
  /* 04687C 800CAE9C 44034000 */      mfc1 $v1, $f8
  /* 046880 800CAEA0 C4480014 */      lwc1 $f8, 0x14($v0) # D_80046FA8 + 20
  /* 046884 800CAEA4 00037400 */       sll $t6, $v1, 0x10
  /* 046888 800CAEA8 46145182 */     mul.s $f6, $f10, $f20
  /* 04688C 800CAEAC 01C66824 */       and $t5, $t6, $a2
  /* 046890 800CAEB0 00665024 */       and $t2, $v1, $a2
  /* 046894 800CAEB4 460C4102 */     mul.s $f4, $f8, $f12
  /* 046898 800CAEB8 C4480024 */      lwc1 $f8, 0x24($v0) # D_80046FA8 + 36
  /* 04689C 800CAEBC 46043280 */     add.s $f10, $f6, $f4
  /* 0468A0 800CAEC0 46104182 */     mul.s $f6, $f8, $f16
  /* 0468A4 800CAEC4 00000000 */       nop 
  /* 0468A8 800CAEC8 46003102 */     mul.s $f4, $f6, $f0
  /* 0468AC 800CAECC 460A2200 */     add.s $f8, $f4, $f10
  /* 0468B0 800CAED0 460E4182 */     mul.s $f6, $f8, $f14
  /* 0468B4 800CAED4 00000000 */       nop 
  /* 0468B8 800CAED8 46023102 */     mul.s $f4, $f6, $f2
  /* 0468BC 800CAEDC 4600228D */ trunc.w.s $f10, $f4
  /* 0468C0 800CAEE0 44045000 */      mfc1 $a0, $f10
  /* 0468C4 800CAEE4 00000000 */       nop 
  /* 0468C8 800CAEE8 0004CC03 */       sra $t9, $a0, 0x10
  /* 0468CC 800CAEEC 332CFFFF */      andi $t4, $t9, 0xffff
  /* 0468D0 800CAEF0 3098FFFF */      andi $t8, $a0, 0xffff
  /* 0468D4 800CAEF4 014C5825 */        or $t3, $t2, $t4
  /* 0468D8 800CAEF8 01B87825 */        or $t7, $t5, $t8
  /* 0468DC 800CAEFC AE2B0010 */        sw $t3, 0x10($s1)
  /* 0468E0 800CAF00 AE2F0030 */        sw $t7, 0x30($s1)
  /* 0468E4 800CAF04 C4480008 */      lwc1 $f8, 8($v0) # D_80046FA8 + 8
  /* 0468E8 800CAF08 C44A0018 */      lwc1 $f10, 0x18($v0) # D_80046FA8 + 24
  /* 0468EC 800CAF0C 46104182 */     mul.s $f6, $f8, $f16
  /* 0468F0 800CAF10 00000000 */       nop 
  /* 0468F4 800CAF14 46143102 */     mul.s $f4, $f6, $f20
  /* 0468F8 800CAF18 00000000 */       nop 
  /* 0468FC 800CAF1C 460C5202 */     mul.s $f8, $f10, $f12
  /* 046900 800CAF20 C44A0028 */      lwc1 $f10, 0x28($v0) # D_80046FA8 + 40
  /* 046904 800CAF24 46082180 */     add.s $f6, $f4, $f8
  /* 046908 800CAF28 46105102 */     mul.s $f4, $f10, $f16
  /* 04690C 800CAF2C 00000000 */       nop 
  /* 046910 800CAF30 46002202 */     mul.s $f8, $f4, $f0
  /* 046914 800CAF34 46064280 */     add.s $f10, $f8, $f6
  /* 046918 800CAF38 460E5102 */     mul.s $f4, $f10, $f14
  /* 04691C 800CAF3C C44A000C */      lwc1 $f10, 0xc($v0) # D_80046FA8 + 12
  /* 046920 800CAF40 46022202 */     mul.s $f8, $f4, $f2
  /* 046924 800CAF44 4600418D */ trunc.w.s $f6, $f8
  /* 046928 800CAF48 46105102 */     mul.s $f4, $f10, $f16
  /* 04692C 800CAF4C 44033000 */      mfc1 $v1, $f6
  /* 046930 800CAF50 C446001C */      lwc1 $f6, 0x1c($v0) # D_80046FA8 + 28
  /* 046934 800CAF54 00666024 */       and $t4, $v1, $a2
  /* 046938 800CAF58 46142202 */     mul.s $f8, $f4, $f20
  /* 04693C 800CAF5C 0003C400 */       sll $t8, $v1, 0x10
  /* 046940 800CAF60 03067824 */       and $t7, $t8, $a2
  /* 046944 800CAF64 460C3282 */     mul.s $f10, $f6, $f12
  /* 046948 800CAF68 C446002C */      lwc1 $f6, 0x2c($v0) # D_80046FA8 + 44
  /* 04694C 800CAF6C 02001025 */        or $v0, $s0, $zero
  /* 046950 800CAF70 26100008 */     addiu $s0, $s0, 8
  /* 046954 800CAF74 460A4100 */     add.s $f4, $f8, $f10
  /* 046958 800CAF78 46103202 */     mul.s $f8, $f6, $f16
  /* 04695C 800CAF7C 00000000 */       nop 
  /* 046960 800CAF80 46004282 */     mul.s $f10, $f8, $f0
  /* 046964 800CAF84 46045180 */     add.s $f6, $f10, $f4
  /* 046968 800CAF88 460E3202 */     mul.s $f8, $f6, $f14
  /* 04696C 800CAF8C 00000000 */       nop 
  /* 046970 800CAF90 46024282 */     mul.s $f10, $f8, $f2
  /* 046974 800CAF94 4600510D */ trunc.w.s $f4, $f10
  /* 046978 800CAF98 44042000 */      mfc1 $a0, $f4
  /* 04697C 800CAF9C 00000000 */       nop 
  /* 046980 800CAFA0 00045C03 */       sra $t3, $a0, 0x10
  /* 046984 800CAFA4 316EFFFF */      andi $t6, $t3, 0xffff
  /* 046988 800CAFA8 018E6825 */        or $t5, $t4, $t6
  /* 04698C 800CAFAC ACED0000 */        sw $t5, ($a3)
  /* 046990 800CAFB0 3099FFFF */      andi $t9, $a0, 0xffff
  /* 046994 800CAFB4 01F95025 */        or $t2, $t7, $t9
  /* 046998 800CAFB8 ACAA0000 */        sw $t2, ($a1)
  /* 04699C 800CAFBC 3C0BD500 */       lui $t3, (0xD5000001 >> 16) # 3573547009
  /* 0469A0 800CAFC0 356B0001 */       ori $t3, $t3, (0xD5000001 & 0xFFFF) # 3573547009
  /* 0469A4 800CAFC4 AC4B0000 */        sw $t3, ($v0) # D_80046FA8 + 0
  /* 0469A8 800CAFC8 AC400004 */        sw $zero, 4($v0) # D_80046FA8 + 4
  /* 0469AC 800CAFCC 02003825 */        or $a3, $s0, $zero
  /* 0469B0 800CAFD0 3C0CDB00 */       lui $t4, (0xDB000010 >> 16) # 3674210320
  /* 0469B4 800CAFD4 ACEC0000 */        sw $t4, ($a3)
  /* 0469B8 800CAFD8 8E2E0000 */        lw $t6, ($s1)
  /* 0469BC 800CAFDC 26100008 */     addiu $s0, $s0, 8
  /* 0469C0 800CAFE0 3C0DDB00 */       lui $t5, (0xDB000004 >> 16) # 3674210308
  /* 0469C4 800CAFE4 35AD0004 */       ori $t5, $t5, (0xDB000004 & 0xFFFF) # 3674210308
  /* 0469C8 800CAFE8 02004025 */        or $t0, $s0, $zero
  /* 0469CC 800CAFEC ACEE0004 */        sw $t6, 4($a3)
  /* 0469D0 800CAFF0 AD0D0000 */        sw $t5, ($t0)
  /* 0469D4 800CAFF4 8E380004 */        lw $t8, 4($s1)
  /* 0469D8 800CAFF8 26100008 */     addiu $s0, $s0, 8
  /* 0469DC 800CAFFC 3C0FDB00 */       lui $t7, (0xDB000008 >> 16) # 3674210312
  /* 0469E0 800CB000 35EF0008 */       ori $t7, $t7, (0xDB000008 & 0xFFFF) # 3674210312
  /* 0469E4 800CB004 02004825 */        or $t1, $s0, $zero
  /* 0469E8 800CB008 AD180004 */        sw $t8, 4($t0)
  /* 0469EC 800CB00C AD2F0000 */        sw $t7, ($t1) # D_80046FA4 + 0
  /* 0469F0 800CB010 8E390008 */        lw $t9, 8($s1)
  /* 0469F4 800CB014 26100008 */     addiu $s0, $s0, 8
  /* 0469F8 800CB018 3C0ADB00 */       lui $t2, (0xDB00000C >> 16) # 3674210316
  /* 0469FC 800CB01C 354A000C */       ori $t2, $t2, (0xDB00000C & 0xFFFF) # 3674210316
  /* 046A00 800CB020 02001025 */        or $v0, $s0, $zero
  /* 046A04 800CB024 AD390004 */        sw $t9, 4($t1) # D_80046FA4 + 4
  /* 046A08 800CB028 AC4A0000 */        sw $t2, ($v0) # D_80046FA8 + 0
  /* 046A0C 800CB02C 8E2B000C */        lw $t3, 0xc($s1)
  /* 046A10 800CB030 26100008 */     addiu $s0, $s0, 8
  /* 046A14 800CB034 02001825 */        or $v1, $s0, $zero
  /* 046A18 800CB038 358C0010 */       ori $t4, $t4, (0xDB000010 & 0xFFFF) # 3674210320
  /* 046A1C 800CB03C AC4B0004 */        sw $t3, 4($v0) # D_80046FA8 + 4
  /* 046A20 800CB040 AC6C0000 */        sw $t4, ($v1)
  /* 046A24 800CB044 8E2E0010 */        lw $t6, 0x10($s1)
  /* 046A28 800CB048 26100008 */     addiu $s0, $s0, 8
  /* 046A2C 800CB04C 02002025 */        or $a0, $s0, $zero
  /* 046A30 800CB050 AC6E0004 */        sw $t6, 4($v1)
  /* 046A34 800CB054 3C0DDB00 */       lui $t5, (0xDB000014 >> 16) # 3674210324
  /* 046A38 800CB058 35AD0014 */       ori $t5, $t5, (0xDB000014 & 0xFFFF) # 3674210324
  /* 046A3C 800CB05C AC8D0000 */        sw $t5, ($a0)
  /* 046A40 800CB060 8E380014 */        lw $t8, 0x14($s1)
  /* 046A44 800CB064 26100008 */     addiu $s0, $s0, 8
  /* 046A48 800CB068 3C0FDB00 */       lui $t7, (0xDB000020 >> 16) # 3674210336
  /* 046A4C 800CB06C 35EF0020 */       ori $t7, $t7, (0xDB000020 & 0xFFFF) # 3674210336
  /* 046A50 800CB070 02002825 */        or $a1, $s0, $zero
  /* 046A54 800CB074 AC980004 */        sw $t8, 4($a0)
  /* 046A58 800CB078 ACAF0000 */        sw $t7, ($a1)
  /* 046A5C 800CB07C 8E390020 */        lw $t9, 0x20($s1)
  /* 046A60 800CB080 26100008 */     addiu $s0, $s0, 8
  /* 046A64 800CB084 3C0ADB00 */       lui $t2, (0xDB000024 >> 16) # 3674210340
  /* 046A68 800CB088 354A0024 */       ori $t2, $t2, (0xDB000024 & 0xFFFF) # 3674210340
  /* 046A6C 800CB08C 02001025 */        or $v0, $s0, $zero
  /* 046A70 800CB090 ACB90004 */        sw $t9, 4($a1)
  /* 046A74 800CB094 AC4A0000 */        sw $t2, ($v0) # D_80046FA8 + 0
  /* 046A78 800CB098 8E2B0024 */        lw $t3, 0x24($s1)
  /* 046A7C 800CB09C 26100008 */     addiu $s0, $s0, 8
  /* 046A80 800CB0A0 3C0CDB00 */       lui $t4, (0xDB000028 >> 16) # 3674210344
  /* 046A84 800CB0A4 358C0028 */       ori $t4, $t4, (0xDB000028 & 0xFFFF) # 3674210344
  /* 046A88 800CB0A8 02001825 */        or $v1, $s0, $zero
  /* 046A8C 800CB0AC AC4B0004 */        sw $t3, 4($v0) # D_80046FA8 + 4
  /* 046A90 800CB0B0 AC6C0000 */        sw $t4, ($v1)
  /* 046A94 800CB0B4 8E2E0028 */        lw $t6, 0x28($s1)
  /* 046A98 800CB0B8 26100008 */     addiu $s0, $s0, 8
  /* 046A9C 800CB0BC 3C0DDB00 */       lui $t5, (0xDB00002C >> 16) # 3674210348
  /* 046AA0 800CB0C0 35AD002C */       ori $t5, $t5, (0xDB00002C & 0xFFFF) # 3674210348
  /* 046AA4 800CB0C4 02002025 */        or $a0, $s0, $zero
  /* 046AA8 800CB0C8 AC6E0004 */        sw $t6, 4($v1)
  /* 046AAC 800CB0CC AC8D0000 */        sw $t5, ($a0)
  /* 046AB0 800CB0D0 8E38002C */        lw $t8, 0x2c($s1)
  /* 046AB4 800CB0D4 26100008 */     addiu $s0, $s0, 8
  /* 046AB8 800CB0D8 3C0FDB00 */       lui $t7, (0xDB000030 >> 16) # 3674210352
  /* 046ABC 800CB0DC 35EF0030 */       ori $t7, $t7, (0xDB000030 & 0xFFFF) # 3674210352
  /* 046AC0 800CB0E0 02003025 */        or $a2, $s0, $zero
  /* 046AC4 800CB0E4 AC980004 */        sw $t8, 4($a0)
  /* 046AC8 800CB0E8 ACCF0000 */        sw $t7, %lo(D_NF_FFFF0000)($a2)
  /* 046ACC 800CB0EC 8E390030 */        lw $t9, 0x30($s1)
  /* 046AD0 800CB0F0 26100008 */     addiu $s0, $s0, 8
  /* 046AD4 800CB0F4 3C0ADB00 */       lui $t2, (0xDB000034 >> 16) # 3674210356
  /* 046AD8 800CB0F8 354A0034 */       ori $t2, $t2, (0xDB000034 & 0xFFFF) # 3674210356
  /* 046ADC 800CB0FC 02001825 */        or $v1, $s0, $zero
  /* 046AE0 800CB100 ACD90004 */        sw $t9, %lo(D_NF_FFFF0004)($a2)
  /* 046AE4 800CB104 AC6A0000 */        sw $t2, ($v1)
  /* 046AE8 800CB108 8E2B0034 */        lw $t3, 0x34($s1)
  /* 046AEC 800CB10C 26100008 */     addiu $s0, $s0, 8
  /* 046AF0 800CB110 24020001 */     addiu $v0, $zero, 1
  /* 046AF4 800CB114 AC6B0004 */        sw $t3, 4($v1)
  /* 046AF8 800CB118 8FAC00A8 */        lw $t4, 0xa8($sp)
  /* 046AFC 800CB11C AD900000 */        sw $s0, ($t4)
  /* 046B00 800CB120 8FBF0034 */        lw $ra, 0x34($sp)
  /* 046B04 800CB124 8FB20030 */        lw $s2, 0x30($sp)
  /* 046B08 800CB128 8FB1002C */        lw $s1, 0x2c($sp)
  /* 046B0C 800CB12C 8FB00028 */        lw $s0, 0x28($sp)
  /* 046B10 800CB130 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 046B14 800CB134 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 046B18 800CB138 03E00008 */        jr $ra
  /* 046B1C 800CB13C 27BD00A0 */     addiu $sp, $sp, 0xa0

  glabel jtgt_ovl0_800CB140
  /* 046B20 800CB140 27BDFF58 */     addiu $sp, $sp, -0xa8
  /* 046B24 800CB144 AFBF001C */        sw $ra, 0x1c($sp)
  /* 046B28 800CB148 AFB00018 */        sw $s0, 0x18($sp)
  /* 046B2C 800CB14C AFA400A8 */        sw $a0, 0xa8($sp)
  /* 046B30 800CB150 AFA600B0 */        sw $a2, 0xb0($sp)
  /* 046B34 800CB154 8CA40084 */        lw $a0, 0x84($a1)
  /* 046B38 800CB158 0C03B6E9 */       jal func_ovl2_800EDBA4
  /* 046B3C 800CB15C 8C900084 */        lw $s0, 0x84($a0)
  /* 046B40 800CB160 C6020050 */      lwc1 $f2, 0x50($s0)
  /* 046B44 800CB164 C60E0054 */      lwc1 $f14, 0x54($s0)
  /* 046B48 800CB168 C6000058 */      lwc1 $f0, 0x58($s0)
  /* 046B4C 800CB16C 46021102 */     mul.s $f4, $f2, $f2
  /* 046B50 800CB170 00000000 */       nop 
  /* 046B54 800CB174 460E7182 */     mul.s $f6, $f14, $f14
  /* 046B58 800CB178 46062200 */     add.s $f8, $f4, $f6
  /* 046B5C 800CB17C 46000282 */     mul.s $f10, $f0, $f0
  /* 046B60 800CB180 0C00CD44 */       jal sqrtf
  /* 046B64 800CB184 46085300 */     add.s $f12, $f10, $f8
  /* 046B68 800CB188 44806000 */      mtc1 $zero, $f12
  /* 046B6C 800CB18C 46000086 */     mov.s $f2, $f0
  /* 046B70 800CB190 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 046B74 800CB194 460C0032 */    c.eq.s $f0, $f12
  /* 046B78 800CB198 00000000 */       nop 
  /* 046B7C 800CB19C 4502000A */     bc1fl .L800CB1C8
  /* 046B80 800CB1A0 44818000 */      mtc1 $at, $f16 # 1.0 to cop1
  /* 046B84 800CB1A4 3C10800D */       lui $s0, %hi(D_ovl0_800D5E10)
  /* 046B88 800CB1A8 26105E10 */     addiu $s0, $s0, %lo(D_ovl0_800D5E10)
  .L800CB1AC:
  /* 046B8C 800CB1AC 0C008D89 */       jal fatal_printf
  /* 046B90 800CB1B0 02002025 */        or $a0, $s0, $zero
  /* 046B94 800CB1B4 0C028C10 */       jal func_800A3040
  /* 046B98 800CB1B8 00000000 */       nop 
  /* 046B9C 800CB1BC 1000FFFB */         b .L800CB1AC
  /* 046BA0 800CB1C0 00000000 */       nop 
  /* 046BA4 800CB1C4 44818000 */      mtc1 $at, $f16
  .L800CB1C8:
  /* 046BA8 800CB1C8 C6120050 */      lwc1 $f18, 0x50($s0) # D_ovl0_800D5E10 + 80
  /* 046BAC 800CB1CC 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 046BB0 800CB1D0 46028083 */     div.s $f2, $f16, $f2
  /* 046BB4 800CB1D4 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 046BB8 800CB1D8 27A40044 */     addiu $a0, $sp, 0x44
  /* 046BBC 800CB1DC 46029002 */     mul.s $f0, $f18, $f2
  /* 046BC0 800CB1E0 E7A0006C */      swc1 $f0, 0x6c($sp)
  /* 046BC4 800CB1E4 E7A00050 */      swc1 $f0, 0x50($sp)
  /* 046BC8 800CB1E8 C6040054 */      lwc1 $f4, 0x54($s0) # D_ovl0_800D5E10 + 84
  /* 046BCC 800CB1EC 46022002 */     mul.s $f0, $f4, $f2
  /* 046BD0 800CB1F0 E7A00070 */      swc1 $f0, 0x70($sp)
  /* 046BD4 800CB1F4 E7A00054 */      swc1 $f0, 0x54($sp)
  /* 046BD8 800CB1F8 C6060058 */      lwc1 $f6, 0x58($s0) # D_ovl0_800D5E10 + 88
  /* 046BDC 800CB1FC 46023002 */     mul.s $f0, $f6, $f2
  /* 046BE0 800CB200 E7A00074 */      swc1 $f0, 0x74($sp)
  /* 046BE4 800CB204 E7A00058 */      swc1 $f0, 0x58($sp)
  /* 046BE8 800CB208 8DC20074 */        lw $v0, 0x74($t6)
  /* 046BEC 800CB20C 2445003C */     addiu $a1, $v0, 0x3c
  /* 046BF0 800CB210 0C00640B */       jal vec3f_sub
  /* 046BF4 800CB214 24460048 */     addiu $a2, $v0, 0x48
  /* 046BF8 800CB218 27B00044 */     addiu $s0, $sp, 0x44
  /* 046BFC 800CB21C 02002825 */        or $a1, $s0, $zero
  /* 046C00 800CB220 0C031ED6 */       jal func_ovl0_800C7B58
  /* 046C04 800CB224 27A40050 */     addiu $a0, $sp, 0x50
  /* 046C08 800CB228 3C01800D */       lui $at, %hi(D_ovl0_800D5EC0)
  /* 046C0C 800CB22C C42A5EC0 */      lwc1 $f10, %lo(D_ovl0_800D5EC0)($at)
  /* 046C10 800CB230 44806000 */      mtc1 $zero, $f12
  /* 046C14 800CB234 27A40050 */     addiu $a0, $sp, 0x50
  /* 046C18 800CB238 460A003C */    c.lt.s $f0, $f10
  /* 046C1C 800CB23C 02002825 */        or $a1, $s0, $zero
  /* 046C20 800CB240 4502000B */     bc1fl .L800CB270
  /* 046C24 800CB244 E7AC004C */      swc1 $f12, 0x4c($sp)
  /* 046C28 800CB248 0C006660 */       jal vec3f_normalized_cross_product
  /* 046C2C 800CB24C 27A60038 */     addiu $a2, $sp, 0x38
  /* 046C30 800CB250 27A40050 */     addiu $a0, $sp, 0x50
  /* 046C34 800CB254 27A50038 */     addiu $a1, $sp, 0x38
  /* 046C38 800CB258 0C03356B */       jal func_ovl0_800CD5AC
  /* 046C3C 800CB25C 02003025 */        or $a2, $s0, $zero
  /* 046C40 800CB260 44806000 */      mtc1 $zero, $f12
  /* 046C44 800CB264 1000000C */         b .L800CB298
  /* 046C48 800CB268 C7A80038 */      lwc1 $f8, 0x38($sp)
  /* 046C4C 800CB26C E7AC004C */      swc1 $f12, 0x4c($sp)
  .L800CB270:
  /* 046C50 800CB270 E7AC0048 */      swc1 $f12, 0x48($sp)
  /* 046C54 800CB274 E7AC0044 */      swc1 $f12, 0x44($sp)
  /* 046C58 800CB278 8E190000 */        lw $t9, ($s0) # D_ovl0_800D5E10 + 0
  /* 046C5C 800CB27C 27AF0038 */     addiu $t7, $sp, 0x38
  /* 046C60 800CB280 ADF90000 */        sw $t9, ($t7)
  /* 046C64 800CB284 8E180004 */        lw $t8, 4($s0) # D_ovl0_800D5E10 + 4
  /* 046C68 800CB288 ADF80004 */        sw $t8, 4($t7)
  /* 046C6C 800CB28C 8E190008 */        lw $t9, 8($s0) # D_ovl0_800D5E10 + 8
  /* 046C70 800CB290 ADF90008 */        sw $t9, 8($t7)
  /* 046C74 800CB294 C7A80038 */      lwc1 $f8, 0x38($sp)
  .L800CB298:
  /* 046C78 800CB298 C7B0003C */      lwc1 $f16, 0x3c($sp)
  /* 046C7C 800CB29C C7B20040 */      lwc1 $f18, 0x40($sp)
  /* 046C80 800CB2A0 C7A40044 */      lwc1 $f4, 0x44($sp)
  /* 046C84 800CB2A4 C7A60048 */      lwc1 $f6, 0x48($sp)
  /* 046C88 800CB2A8 C7AE004C */      lwc1 $f14, 0x4c($sp)
  /* 046C8C 800CB2AC E7AC0090 */      swc1 $f12, 0x90($sp)
  /* 046C90 800CB2B0 E7AC008C */      swc1 $f12, 0x8c($sp)
  /* 046C94 800CB2B4 27A4005C */     addiu $a0, $sp, 0x5c
  /* 046C98 800CB2B8 8FA500A8 */        lw $a1, 0xa8($sp)
  /* 046C9C 800CB2BC E7AC0094 */      swc1 $f12, 0x94($sp)
  /* 046CA0 800CB2C0 E7A8005C */      swc1 $f8, 0x5c($sp)
  /* 046CA4 800CB2C4 E7B00060 */      swc1 $f16, 0x60($sp)
  /* 046CA8 800CB2C8 E7B20064 */      swc1 $f18, 0x64($sp)
  /* 046CAC 800CB2CC E7A4007C */      swc1 $f4, 0x7c($sp)
  /* 046CB0 800CB2D0 E7A60080 */      swc1 $f6, 0x80($sp)
  /* 046CB4 800CB2D4 0C0067A8 */       jal hal_mtx_f2l_fixed_w
  /* 046CB8 800CB2D8 E7AE0084 */      swc1 $f14, 0x84($sp)
  /* 046CBC 800CB2DC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 046CC0 800CB2E0 8FB00018 */        lw $s0, 0x18($sp)
  /* 046CC4 800CB2E4 27BD00A8 */     addiu $sp, $sp, 0xa8
  /* 046CC8 800CB2E8 03E00008 */        jr $ra
  /* 046CCC 800CB2EC 00001025 */        or $v0, $zero, $zero

  glabel jtgt_ovl0_800CB2F0
  /* 046CD0 800CB2F0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 046CD4 800CB2F4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 046CD8 800CB2F8 AFA40020 */        sw $a0, 0x20($sp)
  /* 046CDC 800CB2FC AFA60028 */        sw $a2, 0x28($sp)
  /* 046CE0 800CB300 8CA40084 */        lw $a0, 0x84($a1)
  /* 046CE4 800CB304 AFA50024 */        sw $a1, 0x24($sp)
  /* 046CE8 800CB308 0C03B6E9 */       jal func_ovl2_800EDBA4
  /* 046CEC 800CB30C AFA40018 */        sw $a0, 0x18($sp)
  /* 046CF0 800CB310 8FA40018 */        lw $a0, 0x18($sp)
  /* 046CF4 800CB314 44802000 */      mtc1 $zero, $f4
  /* 046CF8 800CB318 8FA50024 */        lw $a1, 0x24($sp)
  /* 046CFC 800CB31C 8C8E0084 */        lw $t6, 0x84($a0)
  /* 046D00 800CB320 C5C60058 */      lwc1 $f6, 0x58($t6)
  /* 046D04 800CB324 4606203C */    c.lt.s $f4, $f6
  /* 046D08 800CB328 00000000 */       nop 
  /* 046D0C 800CB32C 45020005 */     bc1fl .L800CB344
  /* 046D10 800CB330 C48A0030 */      lwc1 $f10, 0x30($a0)
  /* 046D14 800CB334 C4880030 */      lwc1 $f8, 0x30($a0)
  /* 046D18 800CB338 10000004 */         b .L800CB34C
  /* 046D1C 800CB33C E4A80038 */      swc1 $f8, 0x38($a1)
  /* 046D20 800CB340 C48A0030 */      lwc1 $f10, 0x30($a0)
  .L800CB344:
  /* 046D24 800CB344 46005407 */     neg.s $f16, $f10
  /* 046D28 800CB348 E4B00038 */      swc1 $f16, 0x38($a1)
  .L800CB34C:
  /* 046D2C 800CB34C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 046D30 800CB350 27BD0020 */     addiu $sp, $sp, 0x20
  /* 046D34 800CB354 24020001 */     addiu $v0, $zero, 1
  /* 046D38 800CB358 03E00008 */        jr $ra
  /* 046D3C 800CB35C 00000000 */       nop 

glabel func_ovl0_800CB360
  /* 046D40 800CB360 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 046D44 800CB364 AFBF001C */        sw $ra, 0x1c($sp)
  /* 046D48 800CB368 AFB00018 */        sw $s0, 0x18($sp)
  /* 046D4C 800CB36C 908E0054 */       lbu $t6, 0x54($a0)
  /* 046D50 800CB370 00803025 */        or $a2, $a0, $zero
  /* 046D54 800CB374 3C018004 */       lui $at, %hi(D_80046FA4)
  /* 046D58 800CB378 31CF0002 */      andi $t7, $t6, 2
  /* 046D5C 800CB37C 15E0003C */      bnez $t7, .L800CB470
  /* 046D60 800CB380 3C048004 */       lui $a0, %hi(D_800465B0 + 4)
  /* 046D64 800CB384 C4246FA4 */      lwc1 $f4, %lo(D_80046FA4)($at)
  /* 046D68 800CB388 248465B4 */     addiu $a0, $a0, %lo(D_800465B0 + 4)
  /* 046D6C 800CB38C 00C02825 */        or $a1, $a2, $zero
  /* 046D70 800CB390 AFA60030 */        sw $a2, 0x30($sp)
  /* 046D74 800CB394 0C00435C */       jal func_80010D70
  /* 046D78 800CB398 E7A40024 */      swc1 $f4, 0x24($sp)
  /* 046D7C 800CB39C 8FA60030 */        lw $a2, 0x30($sp)
  /* 046D80 800CB3A0 00408025 */        or $s0, $v0, $zero
  /* 046D84 800CB3A4 8CD80050 */        lw $t8, 0x50($a2)
  /* 046D88 800CB3A8 53000014 */      beql $t8, $zero, .L800CB3FC
  /* 046D8C 800CB3AC 8CC40010 */        lw $a0, 0x10($a2)
  /* 046D90 800CB3B0 90D90054 */       lbu $t9, 0x54($a2)
  /* 046D94 800CB3B4 3C058004 */       lui $a1, %hi(D_800465B0 + 4)
  /* 046D98 800CB3B8 24A565B4 */     addiu $a1, $a1, %lo(D_800465B0 + 4)
  /* 046D9C 800CB3BC 33280001 */      andi $t0, $t9, 1
  /* 046DA0 800CB3C0 1500000D */      bnez $t0, .L800CB3F8
  /* 046DA4 800CB3C4 00C02025 */        or $a0, $a2, $zero
  /* 046DA8 800CB3C8 0C004B64 */       jal func_80012D90
  /* 046DAC 800CB3CC AFA60030 */        sw $a2, 0x30($sp)
  /* 046DB0 800CB3D0 3C058004 */       lui $a1, %hi(D_800465B0)
  /* 046DB4 800CB3D4 24A565B0 */     addiu $a1, $a1, %lo(D_800465B0)
  /* 046DB8 800CB3D8 8CA30004 */        lw $v1, 4($a1) # D_800465B0 + 4
  /* 046DBC 800CB3DC 8FA60030 */        lw $a2, 0x30($sp)
  /* 046DC0 800CB3E0 3C0ADE00 */       lui $t2, 0xde00
  /* 046DC4 800CB3E4 24690008 */     addiu $t1, $v1, 8
  /* 046DC8 800CB3E8 ACA90004 */        sw $t1, 4($a1) # D_800465B0 + 4
  /* 046DCC 800CB3EC AC6A0000 */        sw $t2, ($v1)
  /* 046DD0 800CB3F0 8CCB0050 */        lw $t3, 0x50($a2)
  /* 046DD4 800CB3F4 AC6B0004 */        sw $t3, 4($v1)
  .L800CB3F8:
  /* 046DD8 800CB3F8 8CC40010 */        lw $a0, 0x10($a2)
  .L800CB3FC:
  /* 046DDC 800CB3FC 3C058004 */       lui $a1, %hi(D_800465B0)
  /* 046DE0 800CB400 24A565B0 */     addiu $a1, $a1, %lo(D_800465B0)
  /* 046DE4 800CB404 10800006 */      beqz $a0, .L800CB420
  /* 046DE8 800CB408 00000000 */       nop 
  /* 046DEC 800CB40C 0C032CD8 */       jal func_ovl0_800CB360
  /* 046DF0 800CB410 AFA60030 */        sw $a2, 0x30($sp)
  /* 046DF4 800CB414 3C058004 */       lui $a1, %hi(D_800465B0)
  /* 046DF8 800CB418 24A565B0 */     addiu $a1, $a1, %lo(D_800465B0)
  /* 046DFC 800CB41C 8FA60030 */        lw $a2, 0x30($sp)
  .L800CB420:
  /* 046E00 800CB420 52000011 */      beql $s0, $zero, .L800CB468
  /* 046E04 800CB424 C7A60024 */      lwc1 $f6, 0x24($sp)
  /* 046E08 800CB428 8CCC0014 */        lw $t4, 0x14($a2)
  /* 046E0C 800CB42C 24010001 */     addiu $at, $zero, 1
  /* 046E10 800CB430 3C0FD838 */       lui $t7, (0xD8380002 >> 16) # 3627548674
  /* 046E14 800CB434 51810005 */      beql $t4, $at, .L800CB44C
  /* 046E18 800CB438 8CA30004 */        lw $v1, 4($a1) # D_800465B0 + 4
  /* 046E1C 800CB43C 8CCD0008 */        lw $t5, 8($a2)
  /* 046E20 800CB440 51A00009 */      beql $t5, $zero, .L800CB468
  /* 046E24 800CB444 C7A60024 */      lwc1 $f6, 0x24($sp)
  /* 046E28 800CB448 8CA30004 */        lw $v1, 4($a1) # D_800465B0 + 4
  .L800CB44C:
  /* 046E2C 800CB44C 35EF0002 */       ori $t7, $t7, (0xD8380002 & 0xFFFF) # 3627548674
  /* 046E30 800CB450 24180040 */     addiu $t8, $zero, 0x40
  /* 046E34 800CB454 246E0008 */     addiu $t6, $v1, 8
  /* 046E38 800CB458 ACAE0004 */        sw $t6, 4($a1) # D_800465B0 + 4
  /* 046E3C 800CB45C AC780004 */        sw $t8, 4($v1)
  /* 046E40 800CB460 AC6F0000 */        sw $t7, ($v1)
  /* 046E44 800CB464 C7A60024 */      lwc1 $f6, 0x24($sp)
  .L800CB468:
  /* 046E48 800CB468 3C018004 */       lui $at, %hi(D_80046FA4)
  /* 046E4C 800CB46C E4266FA4 */      swc1 $f6, %lo(D_80046FA4)($at)
  .L800CB470:
  /* 046E50 800CB470 8CD9000C */        lw $t9, 0xc($a2)
  /* 046E54 800CB474 5720000A */      bnel $t9, $zero, .L800CB4A0
  /* 046E58 800CB478 8FBF001C */        lw $ra, 0x1c($sp)
  /* 046E5C 800CB47C 8CD00008 */        lw $s0, 8($a2)
  /* 046E60 800CB480 52000007 */      beql $s0, $zero, .L800CB4A0
  /* 046E64 800CB484 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CB488:
  /* 046E68 800CB488 0C032CD8 */       jal func_ovl0_800CB360
  /* 046E6C 800CB48C 02002025 */        or $a0, $s0, $zero
  /* 046E70 800CB490 8E100008 */        lw $s0, 8($s0)
  /* 046E74 800CB494 1600FFFC */      bnez $s0, .L800CB488
  /* 046E78 800CB498 00000000 */       nop 
  /* 046E7C 800CB49C 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CB4A0:
  /* 046E80 800CB4A0 8FB00018 */        lw $s0, 0x18($sp)
  /* 046E84 800CB4A4 27BD0030 */     addiu $sp, $sp, 0x30
  /* 046E88 800CB4A8 03E00008 */        jr $ra
  /* 046E8C 800CB4AC 00000000 */       nop 

glabel func_ovl0_800CB4B0
  /* 046E90 800CB4B0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 046E94 800CB4B4 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 046E98 800CB4B8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 046E9C 800CB4BC 3C018004 */       lui $at, %hi(D_80046FA4)
  /* 046EA0 800CB4C0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 046EA4 800CB4C4 E4246FA4 */      swc1 $f4, %lo(D_80046FA4)($at)
  /* 046EA8 800CB4C8 0C032CD8 */       jal func_ovl0_800CB360
  /* 046EAC 800CB4CC 8C840074 */        lw $a0, 0x74($a0)
  /* 046EB0 800CB4D0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 046EB4 800CB4D4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 046EB8 800CB4D8 03E00008 */        jr $ra
  /* 046EBC 800CB4DC 00000000 */       nop 

glabel func_ovl0_800CB4E0
  /* 046EC0 800CB4E0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 046EC4 800CB4E4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 046EC8 800CB4E8 AFB00018 */        sw $s0, 0x18($sp)
  /* 046ECC 800CB4EC 908E0054 */       lbu $t6, 0x54($a0)
  /* 046ED0 800CB4F0 3C108004 */       lui $s0, %hi(D_800465B0)
  /* 046ED4 800CB4F4 00803025 */        or $a2, $a0, $zero
  /* 046ED8 800CB4F8 31CF0002 */      andi $t7, $t6, 2
  /* 046EDC 800CB4FC 15E00032 */      bnez $t7, .L800CB5C8
  /* 046EE0 800CB500 261065B0 */     addiu $s0, $s0, %lo(D_800465B0)
  /* 046EE4 800CB504 02002025 */        or $a0, $s0, $zero
  /* 046EE8 800CB508 00C02825 */        or $a1, $a2, $zero
  /* 046EEC 800CB50C 0C00435C */       jal func_80010D70
  /* 046EF0 800CB510 AFA60028 */        sw $a2, 0x28($sp)
  /* 046EF4 800CB514 8FA60028 */        lw $a2, 0x28($sp)
  /* 046EF8 800CB518 AFA20024 */        sw $v0, 0x24($sp)
  /* 046EFC 800CB51C 8CD80050 */        lw $t8, 0x50($a2)
  /* 046F00 800CB520 53000012 */      beql $t8, $zero, .L800CB56C
  /* 046F04 800CB524 8CC40010 */        lw $a0, 0x10($a2)
  /* 046F08 800CB528 90D90054 */       lbu $t9, 0x54($a2)
  /* 046F0C 800CB52C 00C02025 */        or $a0, $a2, $zero
  /* 046F10 800CB530 02002825 */        or $a1, $s0, $zero
  /* 046F14 800CB534 33280001 */      andi $t0, $t9, 1
  /* 046F18 800CB538 5500000C */      bnel $t0, $zero, .L800CB56C
  /* 046F1C 800CB53C 8CC40010 */        lw $a0, 0x10($a2)
  /* 046F20 800CB540 0C004B64 */       jal func_80012D90
  /* 046F24 800CB544 AFA60028 */        sw $a2, 0x28($sp)
  /* 046F28 800CB548 8E030000 */        lw $v1, ($s0) # D_800465B0 + 0
  /* 046F2C 800CB54C 8FA60028 */        lw $a2, 0x28($sp)
  /* 046F30 800CB550 3C0ADE00 */       lui $t2, 0xde00
  /* 046F34 800CB554 24690008 */     addiu $t1, $v1, 8
  /* 046F38 800CB558 AE090000 */        sw $t1, ($s0) # D_800465B0 + 0
  /* 046F3C 800CB55C AC6A0000 */        sw $t2, ($v1)
  /* 046F40 800CB560 8CCB0050 */        lw $t3, 0x50($a2)
  /* 046F44 800CB564 AC6B0004 */        sw $t3, 4($v1)
  /* 046F48 800CB568 8CC40010 */        lw $a0, 0x10($a2)
  .L800CB56C:
  /* 046F4C 800CB56C 50800005 */      beql $a0, $zero, .L800CB584
  /* 046F50 800CB570 8FAC0024 */        lw $t4, 0x24($sp)
  /* 046F54 800CB574 0C032D38 */       jal func_ovl0_800CB4E0
  /* 046F58 800CB578 AFA60028 */        sw $a2, 0x28($sp)
  /* 046F5C 800CB57C 8FA60028 */        lw $a2, 0x28($sp)
  /* 046F60 800CB580 8FAC0024 */        lw $t4, 0x24($sp)
  .L800CB584:
  /* 046F64 800CB584 51800011 */      beql $t4, $zero, .L800CB5CC
  /* 046F68 800CB588 8CC8000C */        lw $t0, 0xc($a2)
  /* 046F6C 800CB58C 8CCD0014 */        lw $t5, 0x14($a2)
  /* 046F70 800CB590 24010001 */     addiu $at, $zero, 1
  /* 046F74 800CB594 3C18D838 */       lui $t8, (0xD8380002 >> 16) # 3627548674
  /* 046F78 800CB598 51A10005 */      beql $t5, $at, .L800CB5B0
  /* 046F7C 800CB59C 8E030000 */        lw $v1, ($s0) # D_800465B0 + 0
  /* 046F80 800CB5A0 8CCE0008 */        lw $t6, 8($a2)
  /* 046F84 800CB5A4 51C00009 */      beql $t6, $zero, .L800CB5CC
  /* 046F88 800CB5A8 8CC8000C */        lw $t0, 0xc($a2)
  /* 046F8C 800CB5AC 8E030000 */        lw $v1, ($s0) # D_800465B0 + 0
  .L800CB5B0:
  /* 046F90 800CB5B0 37180002 */       ori $t8, $t8, (0xD8380002 & 0xFFFF) # 3627548674
  /* 046F94 800CB5B4 24190040 */     addiu $t9, $zero, 0x40
  /* 046F98 800CB5B8 246F0008 */     addiu $t7, $v1, 8
  /* 046F9C 800CB5BC AE0F0000 */        sw $t7, ($s0) # D_800465B0 + 0
  /* 046FA0 800CB5C0 AC790004 */        sw $t9, 4($v1)
  /* 046FA4 800CB5C4 AC780000 */        sw $t8, ($v1)
  .L800CB5C8:
  /* 046FA8 800CB5C8 8CC8000C */        lw $t0, 0xc($a2)
  .L800CB5CC:
  /* 046FAC 800CB5CC 5500000A */      bnel $t0, $zero, .L800CB5F8
  /* 046FB0 800CB5D0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 046FB4 800CB5D4 8CD00008 */        lw $s0, 8($a2)
  /* 046FB8 800CB5D8 52000007 */      beql $s0, $zero, .L800CB5F8
  /* 046FBC 800CB5DC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CB5E0:
  /* 046FC0 800CB5E0 0C032D38 */       jal func_ovl0_800CB4E0
  /* 046FC4 800CB5E4 02002025 */        or $a0, $s0, $zero
  /* 046FC8 800CB5E8 8E100008 */        lw $s0, 8($s0)
  /* 046FCC 800CB5EC 1600FFFC */      bnez $s0, .L800CB5E0
  /* 046FD0 800CB5F0 00000000 */       nop 
  /* 046FD4 800CB5F4 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CB5F8:
  /* 046FD8 800CB5F8 8FB00018 */        lw $s0, 0x18($sp)
  /* 046FDC 800CB5FC 27BD0028 */     addiu $sp, $sp, 0x28
  /* 046FE0 800CB600 03E00008 */        jr $ra
  /* 046FE4 800CB604 00000000 */       nop 

glabel func_ovl0_800CB608
  /* 046FE8 800CB608 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 046FEC 800CB60C AFBF0014 */        sw $ra, 0x14($sp)
  /* 046FF0 800CB610 8C850004 */        lw $a1, 4($a0)
  /* 046FF4 800CB614 00803025 */        or $a2, $a0, $zero
  /* 046FF8 800CB618 10A00004 */      beqz $a1, .L800CB62C
  /* 046FFC 800CB61C 00A02025 */        or $a0, $a1, $zero
  /* 047000 800CB620 0C032D82 */       jal func_ovl0_800CB608
  /* 047004 800CB624 AFA60018 */        sw $a2, 0x18($sp)
  /* 047008 800CB628 8FA60018 */        lw $a2, 0x18($sp)
  .L800CB62C:
  /* 04700C 800CB62C 0C0026A1 */       jal func_80009A84
  /* 047010 800CB630 00C02025 */        or $a0, $a2, $zero
  /* 047014 800CB634 8FBF0014 */        lw $ra, 0x14($sp)
  /* 047018 800CB638 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04701C 800CB63C 03E00008 */        jr $ra
  /* 047020 800CB640 00000000 */       nop 

glabel func_ovl0_800CB644
  /* 047024 800CB644 27BDFFF8 */     addiu $sp, $sp, -8
  /* 047028 800CB648 3C0E800D */       lui $t6, %hi(D_ovl0_800D5D44)
  /* 04702C 800CB64C AFA40008 */        sw $a0, 8($sp)
  /* 047030 800CB650 25CE5D44 */     addiu $t6, $t6, %lo(D_ovl0_800D5D44)
  /* 047034 800CB654 8DD80000 */        lw $t8, ($t6) # D_ovl0_800D5D44 + 0
  /* 047038 800CB658 27A30004 */     addiu $v1, $sp, 4
  /* 04703C 800CB65C 308400FF */      andi $a0, $a0, 0xff
  /* 047040 800CB660 0064C821 */      addu $t9, $v1, $a0
  /* 047044 800CB664 AC780000 */        sw $t8, ($v1)
  /* 047048 800CB668 93220000 */       lbu $v0, ($t9)
  /* 04704C 800CB66C 03E00008 */        jr $ra
  /* 047050 800CB670 27BD0008 */     addiu $sp, $sp, 8

glabel func_ovl0_800CB674
  /* 047054 800CB674 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 047058 800CB678 AFB20020 */        sw $s2, 0x20($sp)
  /* 04705C 800CB67C AFB1001C */        sw $s1, 0x1c($sp)
  /* 047060 800CB680 AFB00018 */        sw $s0, 0x18($sp)
  /* 047064 800CB684 0086082B */      sltu $at, $a0, $a2
  /* 047068 800CB688 00A08025 */        or $s0, $a1, $zero
  /* 04706C 800CB68C 00808825 */        or $s1, $a0, $zero
  /* 047070 800CB690 00C09025 */        or $s2, $a2, $zero
  /* 047074 800CB694 14200022 */      bnez $at, .L800CB720
  /* 047078 800CB698 AFBF0024 */        sw $ra, 0x24($sp)
  .L800CB69C:
  /* 04707C 800CB69C 92240000 */       lbu $a0, ($s1)
  /* 047080 800CB6A0 30840003 */      andi $a0, $a0, 3
  /* 047084 800CB6A4 0C032D91 */       jal func_ovl0_800CB644
  /* 047088 800CB6A8 308400FF */      andi $a0, $a0, 0xff
  /* 04708C 800CB6AC A2020000 */        sb $v0, ($s0)
  /* 047090 800CB6B0 92240000 */       lbu $a0, ($s1)
  /* 047094 800CB6B4 3084000C */      andi $a0, $a0, 0xc
  /* 047098 800CB6B8 00042083 */       sra $a0, $a0, 2
  /* 04709C 800CB6BC 0C032D91 */       jal func_ovl0_800CB644
  /* 0470A0 800CB6C0 308400FF */      andi $a0, $a0, 0xff
  /* 0470A4 800CB6C4 920E0000 */       lbu $t6, ($s0)
  /* 0470A8 800CB6C8 00027900 */       sll $t7, $v0, 4
  /* 0470AC 800CB6CC 01CFC025 */        or $t8, $t6, $t7
  /* 0470B0 800CB6D0 A2180000 */        sb $t8, ($s0)
  /* 0470B4 800CB6D4 92240000 */       lbu $a0, ($s1)
  /* 0470B8 800CB6D8 30840030 */      andi $a0, $a0, 0x30
  /* 0470BC 800CB6DC 00042103 */       sra $a0, $a0, 4
  /* 0470C0 800CB6E0 0C032D91 */       jal func_ovl0_800CB644
  /* 0470C4 800CB6E4 308400FF */      andi $a0, $a0, 0xff
  /* 0470C8 800CB6E8 A202FFFF */        sb $v0, -1($s0)
  /* 0470CC 800CB6EC 92240000 */       lbu $a0, ($s1)
  /* 0470D0 800CB6F0 308400C0 */      andi $a0, $a0, 0xc0
  /* 0470D4 800CB6F4 00042183 */       sra $a0, $a0, 6
  /* 0470D8 800CB6F8 0C032D91 */       jal func_ovl0_800CB644
  /* 0470DC 800CB6FC 308400FF */      andi $a0, $a0, 0xff
  /* 0470E0 800CB700 9219FFFF */       lbu $t9, -1($s0)
  /* 0470E4 800CB704 2631FFFF */     addiu $s1, $s1, -1
  /* 0470E8 800CB708 00024100 */       sll $t0, $v0, 4
  /* 0470EC 800CB70C 0232082B */      sltu $at, $s1, $s2
  /* 0470F0 800CB710 03284825 */        or $t1, $t9, $t0
  /* 0470F4 800CB714 2610FFFE */     addiu $s0, $s0, -2
  /* 0470F8 800CB718 1020FFE0 */      beqz $at, .L800CB69C
  /* 0470FC 800CB71C A2090001 */        sb $t1, 1($s0)
  .L800CB720:
  /* 047100 800CB720 8FBF0024 */        lw $ra, 0x24($sp)
  /* 047104 800CB724 8FB00018 */        lw $s0, 0x18($sp)
  /* 047108 800CB728 8FB1001C */        lw $s1, 0x1c($sp)
  /* 04710C 800CB72C 8FB20020 */        lw $s2, 0x20($sp)
  /* 047110 800CB730 03E00008 */        jr $ra
  /* 047114 800CB734 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_ovl0_800CB738
  /* 047118 800CB738 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04711C 800CB73C AFBF001C */        sw $ra, 0x1c($sp)
  /* 047120 800CB740 AFB10018 */        sw $s1, 0x18($sp)
  /* 047124 800CB744 AFB00014 */        sw $s0, 0x14($sp)
  /* 047128 800CB748 AFA40020 */        sw $a0, 0x20($sp)
  /* 04712C 800CB74C 84820028 */        lh $v0, 0x28($a0)
  /* 047130 800CB750 8C830034 */        lw $v1, 0x34($a0)
  /* 047134 800CB754 18400018 */      blez $v0, .L800CB7B8
  /* 047138 800CB758 00028900 */       sll $s1, $v0, 4
  /* 04713C 800CB75C 00718021 */      addu $s0, $v1, $s1
  .L800CB760:
  /* 047140 800CB760 8618FFF2 */        lh $t8, -0xe($s0)
  /* 047144 800CB764 860FFFFC */        lh $t7, -4($s0)
  /* 047148 800CB768 8E06FFF8 */        lw $a2, -8($s0)
  /* 04714C 800CB76C 07010003 */      bgez $t8, .L800CB77C
  /* 047150 800CB770 0018C843 */       sra $t9, $t8, 1
  /* 047154 800CB774 27010001 */     addiu $at, $t8, 1
  /* 047158 800CB778 0001C843 */       sra $t9, $at, 1
  .L800CB77C:
  /* 04715C 800CB77C 01F90019 */     multu $t7, $t9
  /* 047160 800CB780 00001012 */      mflo $v0
  /* 047164 800CB784 00C22821 */      addu $a1, $a2, $v0
  /* 047168 800CB788 04410003 */      bgez $v0, .L800CB798
  /* 04716C 800CB78C 00024043 */       sra $t0, $v0, 1
  /* 047170 800CB790 24410001 */     addiu $at, $v0, 1
  /* 047174 800CB794 00014043 */       sra $t0, $at, 1
  .L800CB798:
  /* 047178 800CB798 00C82021 */      addu $a0, $a2, $t0
  /* 04717C 800CB79C 2484FFFF */     addiu $a0, $a0, -1
  /* 047180 800CB7A0 0C032D9D */       jal func_ovl0_800CB674
  /* 047184 800CB7A4 24A5FFFF */     addiu $a1, $a1, -1
  /* 047188 800CB7A8 2631FFF0 */     addiu $s1, $s1, -0x10
  /* 04718C 800CB7AC 2A210010 */      slti $at, $s1, 0x10
  /* 047190 800CB7B0 1020FFEB */      beqz $at, .L800CB760
  /* 047194 800CB7B4 2610FFF0 */     addiu $s0, $s0, -0x10
  .L800CB7B8:
  /* 047198 800CB7B8 8FA90020 */        lw $t1, 0x20($sp)
  /* 04719C 800CB7BC A1200031 */        sb $zero, 0x31($t1)
  /* 0471A0 800CB7C0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0471A4 800CB7C4 8FB10018 */        lw $s1, 0x18($sp)
  /* 0471A8 800CB7C8 8FB00014 */        lw $s0, 0x14($sp)
  /* 0471AC 800CB7CC 03E00008 */        jr $ra
  /* 0471B0 800CB7D0 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_ovl0_800CB7D4
  /* 0471B4 800CB7D4 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 0471B8 800CB7D8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0471BC 800CB7DC AFB10018 */        sw $s1, 0x18($sp)
  /* 0471C0 800CB7E0 AFB00014 */        sw $s0, 0x14($sp)
  /* 0471C4 800CB7E4 AFA40038 */        sw $a0, 0x38($sp)
  /* 0471C8 800CB7E8 AFA60040 */        sw $a2, 0x40($sp)
  /* 0471CC 800CB7EC 8CE80008 */        lw $t0, 8($a3)
  /* 0471D0 800CB7F0 00A08025 */        or $s0, $a1, $zero
  /* 0471D4 800CB7F4 00E08825 */        or $s1, $a3, $zero
  /* 0471D8 800CB7F8 15000008 */      bnez $t0, .L800CB81C
  /* 0471DC 800CB7FC 8FA60054 */        lw $a2, 0x54($sp)
  .L800CB800:
  /* 0471E0 800CB800 3C04800D */       lui $a0, %hi(D_ovl0_800D5E40)
  /* 0471E4 800CB804 0C008D89 */       jal fatal_printf
  /* 0471E8 800CB808 24845E40 */     addiu $a0, $a0, %lo(D_ovl0_800D5E40)
  /* 0471EC 800CB80C 0C028C10 */       jal func_800A3040
  /* 0471F0 800CB810 00000000 */       nop 
  /* 0471F4 800CB814 1000FFFA */         b .L800CB800
  /* 0471F8 800CB818 00000000 */       nop 
  .L800CB81C:
  /* 0471FC 800CB81C 3C04800D */       lui $a0, %hi(D_ovl0_800D62C8)
  /* 047200 800CB820 8C8462C8 */        lw $a0, %lo(D_ovl0_800D62C8)($a0)
  /* 047204 800CB824 8FAE0040 */        lw $t6, 0x40($sp)
  /* 047208 800CB828 8FB80038 */        lw $t8, 0x38($sp)
  /* 04720C 800CB82C 00C4082A */       slt $at, $a2, $a0
  /* 047210 800CB830 54200235 */      bnel $at, $zero, .L800CC108
  /* 047214 800CB834 8FBF001C */        lw $ra, 0x1c($sp)
  /* 047218 800CB838 95C30014 */       lhu $v1, 0x14($t6)
  /* 04721C 800CB83C 8FA70058 */        lw $a3, 0x58($sp)
  /* 047220 800CB840 8FA9005C */        lw $t1, 0x5c($sp)
  /* 047224 800CB844 306F0020 */      andi $t7, $v1, 0x20
  /* 047228 800CB848 11E00002 */      beqz $t7, .L800CB854
  /* 04722C 800CB84C 30790080 */      andi $t9, $v1, 0x80
  /* 047230 800CB850 24C6FFFF */     addiu $a2, $a2, -1
  .L800CB854:
  /* 047234 800CB854 13200005 */      beqz $t9, .L800CB86C
  /* 047238 800CB858 8F020000 */        lw $v0, ($t8)
  /* 04723C 800CB85C 24E70010 */     addiu $a3, $a3, 0x10
  /* 047240 800CB860 25290010 */     addiu $t1, $t1, 0x10
  /* 047244 800CB864 AFA9005C */        sw $t1, 0x5c($sp)
  /* 047248 800CB868 AFA70058 */        sw $a3, 0x58($sp)
  .L800CB86C:
  /* 04724C 800CB86C 3C03800D */       lui $v1, %hi(D_ovl0_800D62C4)
  /* 047250 800CB870 8FA50048 */        lw $a1, 0x48($sp)
  /* 047254 800CB874 8C6362C4 */        lw $v1, %lo(D_ovl0_800D62C4)($v1)
  /* 047258 800CB878 8FA70058 */        lw $a3, 0x58($sp)
  /* 04725C 800CB87C 8FA9005C */        lw $t1, 0x5c($sp)
  /* 047260 800CB880 00A3082A */       slt $at, $a1, $v1
  /* 047264 800CB884 862A0000 */        lh $t2, ($s1)
  /* 047268 800CB888 1020000B */      beqz $at, .L800CB8B8
  /* 04726C 800CB88C 862B000C */        lh $t3, 0xc($s1)
  /* 047270 800CB890 8FB80060 */        lw $t8, 0x60($sp)
  /* 047274 800CB894 00657823 */      subu $t7, $v1, $a1
  /* 047278 800CB898 00037080 */       sll $t6, $v1, 2
  /* 04727C 800CB89C 01F80019 */     multu $t7, $t8
  /* 047280 800CB8A0 AFAE002C */        sw $t6, 0x2c($sp)
  /* 047284 800CB8A4 0000C812 */      mflo $t9
  /* 047288 800CB8A8 00197143 */       sra $t6, $t9, 5
  /* 04728C 800CB8AC 01C77821 */      addu $t7, $t6, $a3
  /* 047290 800CB8B0 10000004 */         b .L800CB8C4
  /* 047294 800CB8B4 AFAF0034 */        sw $t7, 0x34($sp)
  .L800CB8B8:
  /* 047298 800CB8B8 0005C080 */       sll $t8, $a1, 2
  /* 04729C 800CB8BC AFB8002C */        sw $t8, 0x2c($sp)
  /* 0472A0 800CB8C0 AFA70034 */        sw $a3, 0x34($sp)
  .L800CB8C4:
  /* 0472A4 800CB8C4 8FA3004C */        lw $v1, 0x4c($sp)
  /* 0472A8 800CB8C8 0064082A */       slt $at, $v1, $a0
  /* 0472AC 800CB8CC 1020000B */      beqz $at, .L800CB8FC
  /* 0472B0 800CB8D0 00037880 */       sll $t7, $v1, 2
  /* 0472B4 800CB8D4 8FAF0064 */        lw $t7, 0x64($sp)
  /* 0472B8 800CB8D8 00837023 */      subu $t6, $a0, $v1
  /* 0472BC 800CB8DC 0004C880 */       sll $t9, $a0, 2
  /* 0472C0 800CB8E0 01CF0019 */     multu $t6, $t7
  /* 0472C4 800CB8E4 AFB90028 */        sw $t9, 0x28($sp)
  /* 0472C8 800CB8E8 0000C012 */      mflo $t8
  /* 0472CC 800CB8EC 0018C943 */       sra $t9, $t8, 5
  /* 0472D0 800CB8F0 03297021 */      addu $t6, $t9, $t1
  /* 0472D4 800CB8F4 10000003 */         b .L800CB904
  /* 0472D8 800CB8F8 AFAE0030 */        sw $t6, 0x30($sp)
  .L800CB8FC:
  /* 0472DC 800CB8FC AFAF0028 */        sw $t7, 0x28($sp)
  /* 0472E0 800CB900 AFA90030 */        sw $t1, 0x30($sp)
  .L800CB904:
  /* 0472E4 800CB904 3C03800D */       lui $v1, %hi(D_ovl0_800D62BC)
  /* 0472E8 800CB908 8FA40050 */        lw $a0, 0x50($sp)
  /* 0472EC 800CB90C 8C6362BC */        lw $v1, %lo(D_ovl0_800D62BC)($v1)
  /* 0472F0 800CB910 0006C880 */       sll $t9, $a2, 2
  /* 0472F4 800CB914 3C0E800D */       lui $t6, %hi(D_ovl0_800D62B4)
  /* 0472F8 800CB918 0083082A */       slt $at, $a0, $v1
  /* 0472FC 800CB91C 14200003 */      bnez $at, .L800CB92C
  /* 047300 800CB920 0004F880 */       sll $ra, $a0, 2
  /* 047304 800CB924 10000001 */         b .L800CB92C
  /* 047308 800CB928 0003F880 */       sll $ra, $v1, 2
  .L800CB92C:
  /* 04730C 800CB92C 3C03800D */       lui $v1, %hi(D_ovl0_800D62C0)
  /* 047310 800CB930 8C6362C0 */        lw $v1, %lo(D_ovl0_800D62C0)($v1)
  /* 047314 800CB934 00C3082A */       slt $at, $a2, $v1
  /* 047318 800CB938 14200003 */      bnez $at, .L800CB948
  /* 04731C 800CB93C 0003C080 */       sll $t8, $v1, 2
  /* 047320 800CB940 10000002 */         b .L800CB94C
  /* 047324 800CB944 AFB80020 */        sw $t8, 0x20($sp)
  .L800CB948:
  /* 047328 800CB948 AFB90020 */        sw $t9, 0x20($sp)
  .L800CB94C:
  /* 04732C 800CB94C 8DCE62B4 */        lw $t6, %lo(D_ovl0_800D62B4)($t6)
  /* 047330 800CB950 8FAF0040 */        lw $t7, 0x40($sp)
  /* 047334 800CB954 51C801C4 */      beql $t6, $t0, .L800CC068
  /* 047338 800CB958 8FB80020 */        lw $t8, 0x20($sp)
  /* 04733C 800CB95C 91E30031 */       lbu $v1, 0x31($t7)
  /* 047340 800CB960 8FA90040 */        lw $t1, 0x40($sp)
  /* 047344 800CB964 3C01FD00 */       lui $at, 0xfd00
  /* 047348 800CB968 5060000D */      beql $v1, $zero, .L800CB9A0
  /* 04734C 800CB96C 91380030 */       lbu $t8, 0x30($t1)
  /* 047350 800CB970 24010001 */     addiu $at, $zero, 1
  /* 047354 800CB974 10610079 */       beq $v1, $at, .L800CBB5C
  /* 047358 800CB978 8FA90040 */        lw $t1, 0x40($sp)
  /* 04735C 800CB97C 24010002 */     addiu $at, $zero, 2
  /* 047360 800CB980 106100E8 */       beq $v1, $at, .L800CBD24
  /* 047364 800CB984 8FA90040 */        lw $t1, 0x40($sp)
  /* 047368 800CB988 24010003 */     addiu $at, $zero, 3
  /* 04736C 800CB98C 10610155 */       beq $v1, $at, .L800CBEE4
  /* 047370 800CB990 3C0C0700 */       lui $t4, 0x700
  /* 047374 800CB994 100001B1 */         b .L800CC05C
  /* 047378 800CB998 00000000 */       nop 
  /* 04737C 800CB99C 91380030 */       lbu $t8, 0x30($t1)
  .L800CB9A0:
  /* 047380 800CB9A0 3C080010 */       lui $t0, 0x10
  /* 047384 800CB9A4 00401825 */        or $v1, $v0, $zero
  /* 047388 800CB9A8 33190007 */      andi $t9, $t8, 7
  /* 04738C 800CB9AC 00197540 */       sll $t6, $t9, 0x15
  /* 047390 800CB9B0 01C17825 */        or $t7, $t6, $at
  /* 047394 800CB9B4 01E8C025 */        or $t8, $t7, $t0
  /* 047398 800CB9B8 AC780000 */        sw $t8, ($v1)
  /* 04739C 800CB9BC 8E390008 */        lw $t9, 8($s1)
  /* 0473A0 800CB9C0 3C0DF500 */       lui $t5, 0xf500
  /* 0473A4 800CB9C4 24420008 */     addiu $v0, $v0, 8
  /* 0473A8 800CB9C8 AC790004 */        sw $t9, 4($v1)
  /* 0473AC 800CB9CC 912E0030 */       lbu $t6, 0x30($t1)
  /* 0473B0 800CB9D0 00402025 */        or $a0, $v0, $zero
  /* 0473B4 800CB9D4 3C0C0700 */       lui $t4, 0x700
  /* 0473B8 800CB9D8 31CF0007 */      andi $t7, $t6, 7
  /* 0473BC 800CB9DC 000FC540 */       sll $t8, $t7, 0x15
  /* 0473C0 800CB9E0 030DC825 */        or $t9, $t8, $t5
  /* 0473C4 800CB9E4 03287025 */        or $t6, $t9, $t0
  /* 0473C8 800CB9E8 AC8E0000 */        sw $t6, ($a0)
  /* 0473CC 800CB9EC 920F0064 */       lbu $t7, 0x64($s0)
  /* 0473D0 800CB9F0 24420008 */     addiu $v0, $v0, 8
  /* 0473D4 800CB9F4 00402825 */        or $a1, $v0, $zero
  /* 0473D8 800CB9F8 31F80003 */      andi $t8, $t7, 3
  /* 0473DC 800CB9FC 920F0066 */       lbu $t7, 0x66($s0)
  /* 0473E0 800CBA00 0018CC80 */       sll $t9, $t8, 0x12
  /* 0473E4 800CBA04 032C7025 */        or $t6, $t9, $t4
  /* 0473E8 800CBA08 31F8000F */      andi $t8, $t7, 0xf
  /* 0473EC 800CBA0C 0018CB80 */       sll $t9, $t8, 0xe
  /* 0473F0 800CBA10 92180065 */       lbu $t8, 0x65($s0)
  /* 0473F4 800CBA14 01D97825 */        or $t7, $t6, $t9
  /* 0473F8 800CBA18 24420008 */     addiu $v0, $v0, 8
  /* 0473FC 800CBA1C 330E0003 */      andi $t6, $t8, 3
  /* 047400 800CBA20 000ECA00 */       sll $t9, $t6, 8
  /* 047404 800CBA24 920E0067 */       lbu $t6, 0x67($s0)
  /* 047408 800CBA28 01F9C025 */        or $t8, $t7, $t9
  /* 04740C 800CBA2C 00403825 */        or $a3, $v0, $zero
  /* 047410 800CBA30 31CF000F */      andi $t7, $t6, 0xf
  /* 047414 800CBA34 000FC900 */       sll $t9, $t7, 4
  /* 047418 800CBA38 03197025 */        or $t6, $t8, $t9
  /* 04741C 800CBA3C AC8E0004 */        sw $t6, 4($a0)
  /* 047420 800CBA40 3C0FE600 */       lui $t7, 0xe600
  /* 047424 800CBA44 ACAF0000 */        sw $t7, ($a1)
  /* 047428 800CBA48 ACA00004 */        sw $zero, 4($a1)
  /* 04742C 800CBA4C 3C18F300 */       lui $t8, 0xf300
  /* 047430 800CBA50 ACF80000 */        sw $t8, ($a3)
  /* 047434 800CBA54 86390002 */        lh $t9, 2($s1)
  /* 047438 800CBA58 24420008 */     addiu $v0, $v0, 8
  /* 04743C 800CBA5C 240307FF */     addiu $v1, $zero, 0x7ff
  /* 047440 800CBA60 032B0019 */     multu $t9, $t3
  /* 047444 800CBA64 3C19E700 */       lui $t9, 0xe700
  /* 047448 800CBA68 00002012 */      mflo $a0
  /* 04744C 800CBA6C 24840003 */     addiu $a0, $a0, 3
  /* 047450 800CBA70 00042083 */       sra $a0, $a0, 2
  /* 047454 800CBA74 2484FFFF */     addiu $a0, $a0, -1
  /* 047458 800CBA78 288107FF */      slti $at, $a0, 0x7ff
  /* 04745C 800CBA7C 10200003 */      beqz $at, .L800CBA8C
  /* 047460 800CBA80 00000000 */       nop 
  /* 047464 800CBA84 10000001 */         b .L800CBA8C
  /* 047468 800CBA88 00801825 */        or $v1, $a0, $zero
  .L800CBA8C:
  /* 04746C 800CBA8C 306E0FFF */      andi $t6, $v1, 0xfff
  /* 047470 800CBA90 000E7B00 */       sll $t7, $t6, 0xc
  /* 047474 800CBA94 01ECC025 */        or $t8, $t7, $t4
  /* 047478 800CBA98 ACF80004 */        sw $t8, 4($a3)
  /* 04747C 800CBA9C 00402025 */        or $a0, $v0, $zero
  /* 047480 800CBAA0 AC990000 */        sw $t9, ($a0)
  /* 047484 800CBAA4 AC800004 */        sw $zero, 4($a0)
  /* 047488 800CBAA8 912E0030 */       lbu $t6, 0x30($t1)
  /* 04748C 800CBAAC 24420008 */     addiu $v0, $v0, 8
  /* 047490 800CBAB0 00402825 */        or $a1, $v0, $zero
  /* 047494 800CBAB4 31CF0007 */      andi $t7, $t6, 7
  /* 047498 800CBAB8 000FC540 */       sll $t8, $t7, 0x15
  /* 04749C 800CBABC 000A7043 */       sra $t6, $t2, 1
  /* 0474A0 800CBAC0 25CF0007 */     addiu $t7, $t6, 7
  /* 0474A4 800CBAC4 030DC825 */        or $t9, $t8, $t5
  /* 0474A8 800CBAC8 000FC0C3 */       sra $t8, $t7, 3
  /* 0474AC 800CBACC 330E01FF */      andi $t6, $t8, 0x1ff
  /* 0474B0 800CBAD0 000E7A40 */       sll $t7, $t6, 9
  /* 0474B4 800CBAD4 032FC025 */        or $t8, $t9, $t7
  /* 0474B8 800CBAD8 ACB80000 */        sw $t8, ($a1)
  /* 0474BC 800CBADC 920E0064 */       lbu $t6, 0x64($s0)
  /* 0474C0 800CBAE0 92180066 */       lbu $t8, 0x66($s0)
  /* 0474C4 800CBAE4 24420008 */     addiu $v0, $v0, 8
  /* 0474C8 800CBAE8 31D90003 */      andi $t9, $t6, 3
  /* 0474CC 800CBAEC 00197C80 */       sll $t7, $t9, 0x12
  /* 0474D0 800CBAF0 330E000F */      andi $t6, $t8, 0xf
  /* 0474D4 800CBAF4 000ECB80 */       sll $t9, $t6, 0xe
  /* 0474D8 800CBAF8 920E0065 */       lbu $t6, 0x65($s0)
  /* 0474DC 800CBAFC 01F9C025 */        or $t8, $t7, $t9
  /* 0474E0 800CBB00 00403025 */        or $a2, $v0, $zero
  /* 0474E4 800CBB04 31CF0003 */      andi $t7, $t6, 3
  /* 0474E8 800CBB08 000FCA00 */       sll $t9, $t7, 8
  /* 0474EC 800CBB0C 920F0067 */       lbu $t7, 0x67($s0)
  /* 0474F0 800CBB10 03197025 */        or $t6, $t8, $t9
  /* 0474F4 800CBB14 24420008 */     addiu $v0, $v0, 8
  /* 0474F8 800CBB18 31F8000F */      andi $t8, $t7, 0xf
  /* 0474FC 800CBB1C 0018C900 */       sll $t9, $t8, 4
  /* 047500 800CBB20 01D97825 */        or $t7, $t6, $t9
  /* 047504 800CBB24 254EFFFF */     addiu $t6, $t2, -1
  /* 047508 800CBB28 ACAF0004 */        sw $t7, 4($a1)
  /* 04750C 800CBB2C 000EC880 */       sll $t9, $t6, 2
  /* 047510 800CBB30 332F0FFF */      andi $t7, $t9, 0xfff
  /* 047514 800CBB34 3C18F200 */       lui $t8, 0xf200
  /* 047518 800CBB38 ACD80000 */        sw $t8, ($a2)
  /* 04751C 800CBB3C 256EFFFF */     addiu $t6, $t3, -1
  /* 047520 800CBB40 000EC880 */       sll $t9, $t6, 2
  /* 047524 800CBB44 000FC300 */       sll $t8, $t7, 0xc
  /* 047528 800CBB48 332F0FFF */      andi $t7, $t9, 0xfff
  /* 04752C 800CBB4C 030F7025 */        or $t6, $t8, $t7
  /* 047530 800CBB50 ACCE0004 */        sw $t6, 4($a2)
  /* 047534 800CBB54 10000141 */         b .L800CC05C
  /* 047538 800CBB58 8E280008 */        lw $t0, 8($s1)
  .L800CBB5C:
  /* 04753C 800CBB5C 91390030 */       lbu $t9, 0x30($t1)
  /* 047540 800CBB60 3C01FD00 */       lui $at, 0xfd00
  /* 047544 800CBB64 3C080010 */       lui $t0, 0x10
  /* 047548 800CBB68 33380007 */      andi $t8, $t9, 7
  /* 04754C 800CBB6C 00187D40 */       sll $t7, $t8, 0x15
  /* 047550 800CBB70 01E17025 */        or $t6, $t7, $at
  /* 047554 800CBB74 01C8C825 */        or $t9, $t6, $t0
  /* 047558 800CBB78 00401825 */        or $v1, $v0, $zero
  /* 04755C 800CBB7C AC790000 */        sw $t9, ($v1)
  /* 047560 800CBB80 8E380008 */        lw $t8, 8($s1)
  /* 047564 800CBB84 3C0DF500 */       lui $t5, 0xf500
  /* 047568 800CBB88 24420008 */     addiu $v0, $v0, 8
  /* 04756C 800CBB8C AC780004 */        sw $t8, 4($v1)
  /* 047570 800CBB90 912F0030 */       lbu $t7, 0x30($t1)
  /* 047574 800CBB94 00402025 */        or $a0, $v0, $zero
  /* 047578 800CBB98 3C0C0700 */       lui $t4, 0x700
  /* 04757C 800CBB9C 31EE0007 */      andi $t6, $t7, 7
  /* 047580 800CBBA0 000ECD40 */       sll $t9, $t6, 0x15
  /* 047584 800CBBA4 032DC025 */        or $t8, $t9, $t5
  /* 047588 800CBBA8 03087825 */        or $t7, $t8, $t0
  /* 04758C 800CBBAC AC8F0000 */        sw $t7, ($a0)
  /* 047590 800CBBB0 920E0064 */       lbu $t6, 0x64($s0)
  /* 047594 800CBBB4 24420008 */     addiu $v0, $v0, 8
  /* 047598 800CBBB8 00402825 */        or $a1, $v0, $zero
  /* 04759C 800CBBBC 31D90003 */      andi $t9, $t6, 3
  /* 0475A0 800CBBC0 920E0066 */       lbu $t6, 0x66($s0)
  /* 0475A4 800CBBC4 0019C480 */       sll $t8, $t9, 0x12
  /* 0475A8 800CBBC8 030C7825 */        or $t7, $t8, $t4
  /* 0475AC 800CBBCC 31D9000F */      andi $t9, $t6, 0xf
  /* 0475B0 800CBBD0 0019C380 */       sll $t8, $t9, 0xe
  /* 0475B4 800CBBD4 92190065 */       lbu $t9, 0x65($s0)
  /* 0475B8 800CBBD8 01F87025 */        or $t6, $t7, $t8
  /* 0475BC 800CBBDC 24420008 */     addiu $v0, $v0, 8
  /* 0475C0 800CBBE0 332F0003 */      andi $t7, $t9, 3
  /* 0475C4 800CBBE4 000FC200 */       sll $t8, $t7, 8
  /* 0475C8 800CBBE8 920F0067 */       lbu $t7, 0x67($s0)
  /* 0475CC 800CBBEC 01D8C825 */        or $t9, $t6, $t8
  /* 0475D0 800CBBF0 00403825 */        or $a3, $v0, $zero
  /* 0475D4 800CBBF4 31EE000F */      andi $t6, $t7, 0xf
  /* 0475D8 800CBBF8 000EC100 */       sll $t8, $t6, 4
  /* 0475DC 800CBBFC 03387825 */        or $t7, $t9, $t8
  /* 0475E0 800CBC00 AC8F0004 */        sw $t7, 4($a0)
  /* 0475E4 800CBC04 3C0EE600 */       lui $t6, 0xe600
  /* 0475E8 800CBC08 ACAE0000 */        sw $t6, ($a1)
  /* 0475EC 800CBC0C ACA00004 */        sw $zero, 4($a1)
  /* 0475F0 800CBC10 3C19F300 */       lui $t9, 0xf300
  /* 0475F4 800CBC14 ACF90000 */        sw $t9, ($a3)
  /* 0475F8 800CBC18 86380002 */        lh $t8, 2($s1)
  /* 0475FC 800CBC1C 24420008 */     addiu $v0, $v0, 8
  /* 047600 800CBC20 240307FF */     addiu $v1, $zero, 0x7ff
  /* 047604 800CBC24 030B0019 */     multu $t8, $t3
  /* 047608 800CBC28 3C18E700 */       lui $t8, 0xe700
  /* 04760C 800CBC2C 00002012 */      mflo $a0
  /* 047610 800CBC30 24840001 */     addiu $a0, $a0, 1
  /* 047614 800CBC34 00042043 */       sra $a0, $a0, 1
  /* 047618 800CBC38 2484FFFF */     addiu $a0, $a0, -1
  /* 04761C 800CBC3C 288107FF */      slti $at, $a0, 0x7ff
  /* 047620 800CBC40 10200003 */      beqz $at, .L800CBC50
  /* 047624 800CBC44 00000000 */       nop 
  /* 047628 800CBC48 10000001 */         b .L800CBC50
  /* 04762C 800CBC4C 00801825 */        or $v1, $a0, $zero
  .L800CBC50:
  /* 047630 800CBC50 306F0FFF */      andi $t7, $v1, 0xfff
  /* 047634 800CBC54 000F7300 */       sll $t6, $t7, 0xc
  /* 047638 800CBC58 01CCC825 */        or $t9, $t6, $t4
  /* 04763C 800CBC5C ACF90004 */        sw $t9, 4($a3)
  /* 047640 800CBC60 00402025 */        or $a0, $v0, $zero
  /* 047644 800CBC64 AC980000 */        sw $t8, ($a0)
  /* 047648 800CBC68 AC800004 */        sw $zero, 4($a0)
  /* 04764C 800CBC6C 912F0030 */       lbu $t7, 0x30($t1)
  /* 047650 800CBC70 3C010008 */       lui $at, 8
  /* 047654 800CBC74 24420008 */     addiu $v0, $v0, 8
  /* 047658 800CBC78 31EE0007 */      andi $t6, $t7, 7
  /* 04765C 800CBC7C 000ECD40 */       sll $t9, $t6, 0x15
  /* 047660 800CBC80 032DC025 */        or $t8, $t9, $t5
  /* 047664 800CBC84 254E0007 */     addiu $t6, $t2, 7
  /* 047668 800CBC88 000EC8C3 */       sra $t9, $t6, 3
  /* 04766C 800CBC8C 03017825 */        or $t7, $t8, $at
  /* 047670 800CBC90 333801FF */      andi $t8, $t9, 0x1ff
  /* 047674 800CBC94 00187240 */       sll $t6, $t8, 9
  /* 047678 800CBC98 01EEC825 */        or $t9, $t7, $t6
  /* 04767C 800CBC9C 00402825 */        or $a1, $v0, $zero
  /* 047680 800CBCA0 ACB90000 */        sw $t9, ($a1)
  /* 047684 800CBCA4 92180064 */       lbu $t8, 0x64($s0)
  /* 047688 800CBCA8 92190066 */       lbu $t9, 0x66($s0)
  /* 04768C 800CBCAC 24420008 */     addiu $v0, $v0, 8
  /* 047690 800CBCB0 330F0003 */      andi $t7, $t8, 3
  /* 047694 800CBCB4 000F7480 */       sll $t6, $t7, 0x12
  /* 047698 800CBCB8 3338000F */      andi $t8, $t9, 0xf
  /* 04769C 800CBCBC 00187B80 */       sll $t7, $t8, 0xe
  /* 0476A0 800CBCC0 92180065 */       lbu $t8, 0x65($s0)
  /* 0476A4 800CBCC4 01CFC825 */        or $t9, $t6, $t7
  /* 0476A8 800CBCC8 00403025 */        or $a2, $v0, $zero
  /* 0476AC 800CBCCC 330E0003 */      andi $t6, $t8, 3
  /* 0476B0 800CBCD0 000E7A00 */       sll $t7, $t6, 8
  /* 0476B4 800CBCD4 920E0067 */       lbu $t6, 0x67($s0)
  /* 0476B8 800CBCD8 032FC025 */        or $t8, $t9, $t7
  /* 0476BC 800CBCDC 24420008 */     addiu $v0, $v0, 8
  /* 0476C0 800CBCE0 31D9000F */      andi $t9, $t6, 0xf
  /* 0476C4 800CBCE4 00197900 */       sll $t7, $t9, 4
  /* 0476C8 800CBCE8 030F7025 */        or $t6, $t8, $t7
  /* 0476CC 800CBCEC 2558FFFF */     addiu $t8, $t2, -1
  /* 0476D0 800CBCF0 ACAE0004 */        sw $t6, 4($a1)
  /* 0476D4 800CBCF4 00187880 */       sll $t7, $t8, 2
  /* 0476D8 800CBCF8 31EE0FFF */      andi $t6, $t7, 0xfff
  /* 0476DC 800CBCFC 3C19F200 */       lui $t9, 0xf200
  /* 0476E0 800CBD00 ACD90000 */        sw $t9, ($a2)
  /* 0476E4 800CBD04 2578FFFF */     addiu $t8, $t3, -1
  /* 0476E8 800CBD08 00187880 */       sll $t7, $t8, 2
  /* 0476EC 800CBD0C 000ECB00 */       sll $t9, $t6, 0xc
  /* 0476F0 800CBD10 31EE0FFF */      andi $t6, $t7, 0xfff
  /* 0476F4 800CBD14 032EC025 */        or $t8, $t9, $t6
  /* 0476F8 800CBD18 ACD80004 */        sw $t8, 4($a2)
  /* 0476FC 800CBD1C 100000CF */         b .L800CC05C
  /* 047700 800CBD20 8E280008 */        lw $t0, 8($s1)
  .L800CBD24:
  /* 047704 800CBD24 912F0030 */       lbu $t7, 0x30($t1)
  /* 047708 800CBD28 3C01FD00 */       lui $at, 0xfd00
  /* 04770C 800CBD2C 3C080010 */       lui $t0, 0x10
  /* 047710 800CBD30 31F90007 */      andi $t9, $t7, 7
  /* 047714 800CBD34 00197540 */       sll $t6, $t9, 0x15
  /* 047718 800CBD38 01C1C025 */        or $t8, $t6, $at
  /* 04771C 800CBD3C 03087825 */        or $t7, $t8, $t0
  /* 047720 800CBD40 00401825 */        or $v1, $v0, $zero
  /* 047724 800CBD44 AC6F0000 */        sw $t7, ($v1)
  /* 047728 800CBD48 8E390008 */        lw $t9, 8($s1)
  /* 04772C 800CBD4C 3C0DF500 */       lui $t5, 0xf500
  /* 047730 800CBD50 24420008 */     addiu $v0, $v0, 8
  /* 047734 800CBD54 AC790004 */        sw $t9, 4($v1)
  /* 047738 800CBD58 912E0030 */       lbu $t6, 0x30($t1)
  /* 04773C 800CBD5C 00402025 */        or $a0, $v0, $zero
  /* 047740 800CBD60 3C0C0700 */       lui $t4, 0x700
  /* 047744 800CBD64 31D80007 */      andi $t8, $t6, 7
  /* 047748 800CBD68 00187D40 */       sll $t7, $t8, 0x15
  /* 04774C 800CBD6C 01EDC825 */        or $t9, $t7, $t5
  /* 047750 800CBD70 03287025 */        or $t6, $t9, $t0
  /* 047754 800CBD74 AC8E0000 */        sw $t6, ($a0)
  /* 047758 800CBD78 92180064 */       lbu $t8, 0x64($s0)
  /* 04775C 800CBD7C 24420008 */     addiu $v0, $v0, 8
  /* 047760 800CBD80 00402825 */        or $a1, $v0, $zero
  /* 047764 800CBD84 330F0003 */      andi $t7, $t8, 3
  /* 047768 800CBD88 92180066 */       lbu $t8, 0x66($s0)
  /* 04776C 800CBD8C 000FCC80 */       sll $t9, $t7, 0x12
  /* 047770 800CBD90 032C7025 */        or $t6, $t9, $t4
  /* 047774 800CBD94 330F000F */      andi $t7, $t8, 0xf
  /* 047778 800CBD98 000FCB80 */       sll $t9, $t7, 0xe
  /* 04777C 800CBD9C 920F0065 */       lbu $t7, 0x65($s0)
  /* 047780 800CBDA0 01D9C025 */        or $t8, $t6, $t9
  /* 047784 800CBDA4 24420008 */     addiu $v0, $v0, 8
  /* 047788 800CBDA8 31EE0003 */      andi $t6, $t7, 3
  /* 04778C 800CBDAC 000ECA00 */       sll $t9, $t6, 8
  /* 047790 800CBDB0 920E0067 */       lbu $t6, 0x67($s0)
  /* 047794 800CBDB4 03197825 */        or $t7, $t8, $t9
  /* 047798 800CBDB8 00403825 */        or $a3, $v0, $zero
  /* 04779C 800CBDBC 31D8000F */      andi $t8, $t6, 0xf
  /* 0477A0 800CBDC0 0018C900 */       sll $t9, $t8, 4
  /* 0477A4 800CBDC4 01F97025 */        or $t6, $t7, $t9
  /* 0477A8 800CBDC8 AC8E0004 */        sw $t6, 4($a0)
  /* 0477AC 800CBDCC 3C18E600 */       lui $t8, 0xe600
  /* 0477B0 800CBDD0 ACB80000 */        sw $t8, ($a1)
  /* 0477B4 800CBDD4 ACA00004 */        sw $zero, 4($a1)
  /* 0477B8 800CBDD8 3C0FF300 */       lui $t7, 0xf300
  /* 0477BC 800CBDDC ACEF0000 */        sw $t7, ($a3)
  /* 0477C0 800CBDE0 86390002 */        lh $t9, 2($s1)
  /* 0477C4 800CBDE4 24420008 */     addiu $v0, $v0, 8
  /* 0477C8 800CBDE8 240307FF */     addiu $v1, $zero, 0x7ff
  /* 0477CC 800CBDEC 032B0019 */     multu $t9, $t3
  /* 0477D0 800CBDF0 3C19E700 */       lui $t9, 0xe700
  /* 0477D4 800CBDF4 00002012 */      mflo $a0
  /* 0477D8 800CBDF8 2484FFFF */     addiu $a0, $a0, -1
  /* 0477DC 800CBDFC 288107FF */      slti $at, $a0, 0x7ff
  /* 0477E0 800CBE00 10200003 */      beqz $at, .L800CBE10
  /* 0477E4 800CBE04 00000000 */       nop 
  /* 0477E8 800CBE08 10000001 */         b .L800CBE10
  /* 0477EC 800CBE0C 00801825 */        or $v1, $a0, $zero
  .L800CBE10:
  /* 0477F0 800CBE10 306E0FFF */      andi $t6, $v1, 0xfff
  /* 0477F4 800CBE14 000EC300 */       sll $t8, $t6, 0xc
  /* 0477F8 800CBE18 030C7825 */        or $t7, $t8, $t4
  /* 0477FC 800CBE1C ACEF0004 */        sw $t7, 4($a3)
  /* 047800 800CBE20 00402025 */        or $a0, $v0, $zero
  /* 047804 800CBE24 AC990000 */        sw $t9, ($a0)
  /* 047808 800CBE28 AC800004 */        sw $zero, 4($a0)
  /* 04780C 800CBE2C 912E0030 */       lbu $t6, 0x30($t1)
  /* 047810 800CBE30 24420008 */     addiu $v0, $v0, 8
  /* 047814 800CBE34 00402825 */        or $a1, $v0, $zero
  /* 047818 800CBE38 31D80007 */      andi $t8, $t6, 7
  /* 04781C 800CBE3C 00187D40 */       sll $t7, $t8, 0x15
  /* 047820 800CBE40 01EDC825 */        or $t9, $t7, $t5
  /* 047824 800CBE44 000AC040 */       sll $t8, $t2, 1
  /* 047828 800CBE48 270F0007 */     addiu $t7, $t8, 7
  /* 04782C 800CBE4C 03287025 */        or $t6, $t9, $t0
  /* 047830 800CBE50 000FC8C3 */       sra $t9, $t7, 3
  /* 047834 800CBE54 333801FF */      andi $t8, $t9, 0x1ff
  /* 047838 800CBE58 00187A40 */       sll $t7, $t8, 9
  /* 04783C 800CBE5C 01CFC825 */        or $t9, $t6, $t7
  /* 047840 800CBE60 ACB90000 */        sw $t9, ($a1)
  /* 047844 800CBE64 92180064 */       lbu $t8, 0x64($s0)
  /* 047848 800CBE68 92190066 */       lbu $t9, 0x66($s0)
  /* 04784C 800CBE6C 24420008 */     addiu $v0, $v0, 8
  /* 047850 800CBE70 330E0003 */      andi $t6, $t8, 3
  /* 047854 800CBE74 000E7C80 */       sll $t7, $t6, 0x12
  /* 047858 800CBE78 3338000F */      andi $t8, $t9, 0xf
  /* 04785C 800CBE7C 00187380 */       sll $t6, $t8, 0xe
  /* 047860 800CBE80 92180065 */       lbu $t8, 0x65($s0)
  /* 047864 800CBE84 01EEC825 */        or $t9, $t7, $t6
  /* 047868 800CBE88 00403025 */        or $a2, $v0, $zero
  /* 04786C 800CBE8C 330F0003 */      andi $t7, $t8, 3
  /* 047870 800CBE90 000F7200 */       sll $t6, $t7, 8
  /* 047874 800CBE94 920F0067 */       lbu $t7, 0x67($s0)
  /* 047878 800CBE98 032EC025 */        or $t8, $t9, $t6
  /* 04787C 800CBE9C 24420008 */     addiu $v0, $v0, 8
  /* 047880 800CBEA0 31F9000F */      andi $t9, $t7, 0xf
  /* 047884 800CBEA4 00197100 */       sll $t6, $t9, 4
  /* 047888 800CBEA8 030E7825 */        or $t7, $t8, $t6
  /* 04788C 800CBEAC 2558FFFF */     addiu $t8, $t2, -1
  /* 047890 800CBEB0 ACAF0004 */        sw $t7, 4($a1)
  /* 047894 800CBEB4 00187080 */       sll $t6, $t8, 2
  /* 047898 800CBEB8 31CF0FFF */      andi $t7, $t6, 0xfff
  /* 04789C 800CBEBC 3C19F200 */       lui $t9, 0xf200
  /* 0478A0 800CBEC0 ACD90000 */        sw $t9, ($a2)
  /* 0478A4 800CBEC4 2578FFFF */     addiu $t8, $t3, -1
  /* 0478A8 800CBEC8 00187080 */       sll $t6, $t8, 2
  /* 0478AC 800CBECC 000FCB00 */       sll $t9, $t7, 0xc
  /* 0478B0 800CBED0 31CF0FFF */      andi $t7, $t6, 0xfff
  /* 0478B4 800CBED4 032FC025 */        or $t8, $t9, $t7
  /* 0478B8 800CBED8 ACD80004 */        sw $t8, 4($a2)
  /* 0478BC 800CBEDC 1000005F */         b .L800CC05C
  /* 0478C0 800CBEE0 8E280008 */        lw $t0, 8($s1)
  .L800CBEE4:
  /* 0478C4 800CBEE4 00401825 */        or $v1, $v0, $zero
  /* 0478C8 800CBEE8 3C0EFD18 */       lui $t6, 0xfd18
  /* 0478CC 800CBEEC AC6E0000 */        sw $t6, ($v1)
  /* 0478D0 800CBEF0 8E390008 */        lw $t9, 8($s1)
  /* 0478D4 800CBEF4 24420008 */     addiu $v0, $v0, 8
  /* 0478D8 800CBEF8 3C08F518 */       lui $t0, 0xf518
  /* 0478DC 800CBEFC 00402025 */        or $a0, $v0, $zero
  /* 0478E0 800CBF00 AC790004 */        sw $t9, 4($v1)
  /* 0478E4 800CBF04 AC880000 */        sw $t0, ($a0)
  /* 0478E8 800CBF08 920F0064 */       lbu $t7, 0x64($s0)
  /* 0478EC 800CBF0C 24420008 */     addiu $v0, $v0, 8
  /* 0478F0 800CBF10 00402825 */        or $a1, $v0, $zero
  /* 0478F4 800CBF14 31F80003 */      andi $t8, $t7, 3
  /* 0478F8 800CBF18 920F0066 */       lbu $t7, 0x66($s0)
  /* 0478FC 800CBF1C 00187480 */       sll $t6, $t8, 0x12
  /* 047900 800CBF20 01CCC825 */        or $t9, $t6, $t4
  /* 047904 800CBF24 31F8000F */      andi $t8, $t7, 0xf
  /* 047908 800CBF28 00187380 */       sll $t6, $t8, 0xe
  /* 04790C 800CBF2C 92180065 */       lbu $t8, 0x65($s0)
  /* 047910 800CBF30 032E7825 */        or $t7, $t9, $t6
  /* 047914 800CBF34 24420008 */     addiu $v0, $v0, 8
  /* 047918 800CBF38 33190003 */      andi $t9, $t8, 3
  /* 04791C 800CBF3C 00197200 */       sll $t6, $t9, 8
  /* 047920 800CBF40 92190067 */       lbu $t9, 0x67($s0)
  /* 047924 800CBF44 01EEC025 */        or $t8, $t7, $t6
  /* 047928 800CBF48 00403825 */        or $a3, $v0, $zero
  /* 04792C 800CBF4C 332F000F */      andi $t7, $t9, 0xf
  /* 047930 800CBF50 000F7100 */       sll $t6, $t7, 4
  /* 047934 800CBF54 030EC825 */        or $t9, $t8, $t6
  /* 047938 800CBF58 AC990004 */        sw $t9, 4($a0)
  /* 04793C 800CBF5C 3C0FE600 */       lui $t7, 0xe600
  /* 047940 800CBF60 ACAF0000 */        sw $t7, ($a1)
  /* 047944 800CBF64 ACA00004 */        sw $zero, 4($a1)
  /* 047948 800CBF68 3C18F300 */       lui $t8, 0xf300
  /* 04794C 800CBF6C ACF80000 */        sw $t8, ($a3)
  /* 047950 800CBF70 862E0002 */        lh $t6, 2($s1)
  /* 047954 800CBF74 24420008 */     addiu $v0, $v0, 8
  /* 047958 800CBF78 240307FF */     addiu $v1, $zero, 0x7ff
  /* 04795C 800CBF7C 01CB0019 */     multu $t6, $t3
  /* 047960 800CBF80 3C0EE700 */       lui $t6, 0xe700
  /* 047964 800CBF84 00002012 */      mflo $a0
  /* 047968 800CBF88 2484FFFF */     addiu $a0, $a0, -1
  /* 04796C 800CBF8C 288107FF */      slti $at, $a0, 0x7ff
  /* 047970 800CBF90 10200003 */      beqz $at, .L800CBFA0
  /* 047974 800CBF94 00000000 */       nop 
  /* 047978 800CBF98 10000001 */         b .L800CBFA0
  /* 04797C 800CBF9C 00801825 */        or $v1, $a0, $zero
  .L800CBFA0:
  /* 047980 800CBFA0 30790FFF */      andi $t9, $v1, 0xfff
  /* 047984 800CBFA4 00197B00 */       sll $t7, $t9, 0xc
  /* 047988 800CBFA8 01ECC025 */        or $t8, $t7, $t4
  /* 04798C 800CBFAC ACF80004 */        sw $t8, 4($a3)
  /* 047990 800CBFB0 000AC840 */       sll $t9, $t2, 1
  /* 047994 800CBFB4 00402025 */        or $a0, $v0, $zero
  /* 047998 800CBFB8 272F0007 */     addiu $t7, $t9, 7
  /* 04799C 800CBFBC AC8E0000 */        sw $t6, ($a0)
  /* 0479A0 800CBFC0 000FC0C3 */       sra $t8, $t7, 3
  /* 0479A4 800CBFC4 330E01FF */      andi $t6, $t8, 0x1ff
  /* 0479A8 800CBFC8 24420008 */     addiu $v0, $v0, 8
  /* 0479AC 800CBFCC 000ECA40 */       sll $t9, $t6, 9
  /* 0479B0 800CBFD0 AC800004 */        sw $zero, 4($a0)
  /* 0479B4 800CBFD4 03287825 */        or $t7, $t9, $t0
  /* 0479B8 800CBFD8 00402825 */        or $a1, $v0, $zero
  /* 0479BC 800CBFDC ACAF0000 */        sw $t7, ($a1)
  /* 0479C0 800CBFE0 92180064 */       lbu $t8, 0x64($s0)
  /* 0479C4 800CBFE4 920F0066 */       lbu $t7, 0x66($s0)
  /* 0479C8 800CBFE8 24420008 */     addiu $v0, $v0, 8
  /* 0479CC 800CBFEC 330E0003 */      andi $t6, $t8, 3
  /* 0479D0 800CBFF0 000ECC80 */       sll $t9, $t6, 0x12
  /* 0479D4 800CBFF4 31F8000F */      andi $t8, $t7, 0xf
  /* 0479D8 800CBFF8 00187380 */       sll $t6, $t8, 0xe
  /* 0479DC 800CBFFC 92180065 */       lbu $t8, 0x65($s0)
  /* 0479E0 800CC000 032E7825 */        or $t7, $t9, $t6
  /* 0479E4 800CC004 00403025 */        or $a2, $v0, $zero
  /* 0479E8 800CC008 33190003 */      andi $t9, $t8, 3
  /* 0479EC 800CC00C 00197200 */       sll $t6, $t9, 8
  /* 0479F0 800CC010 92190067 */       lbu $t9, 0x67($s0)
  /* 0479F4 800CC014 01EEC025 */        or $t8, $t7, $t6
  /* 0479F8 800CC018 24420008 */     addiu $v0, $v0, 8
  /* 0479FC 800CC01C 332F000F */      andi $t7, $t9, 0xf
  /* 047A00 800CC020 000F7100 */       sll $t6, $t7, 4
  /* 047A04 800CC024 030EC825 */        or $t9, $t8, $t6
  /* 047A08 800CC028 2558FFFF */     addiu $t8, $t2, -1
  /* 047A0C 800CC02C ACB90004 */        sw $t9, 4($a1)
  /* 047A10 800CC030 00187080 */       sll $t6, $t8, 2
  /* 047A14 800CC034 31D90FFF */      andi $t9, $t6, 0xfff
  /* 047A18 800CC038 3C0FF200 */       lui $t7, 0xf200
  /* 047A1C 800CC03C ACCF0000 */        sw $t7, ($a2)
  /* 047A20 800CC040 2578FFFF */     addiu $t8, $t3, -1
  /* 047A24 800CC044 00187080 */       sll $t6, $t8, 2
  /* 047A28 800CC048 00197B00 */       sll $t7, $t9, 0xc
  /* 047A2C 800CC04C 31D90FFF */      andi $t9, $t6, 0xfff
  /* 047A30 800CC050 01F9C025 */        or $t8, $t7, $t9
  /* 047A34 800CC054 ACD80004 */        sw $t8, 4($a2)
  /* 047A38 800CC058 8E280008 */        lw $t0, 8($s1)
  .L800CC05C:
  /* 047A3C 800CC05C 3C01800D */       lui $at, %hi(D_ovl0_800D62B4)
  /* 047A40 800CC060 AC2862B4 */        sw $t0, %lo(D_ovl0_800D62B4)($at)
  /* 047A44 800CC064 8FB80020 */        lw $t8, 0x20($sp)
  .L800CC068:
  /* 047A48 800CC068 33EE0FFF */      andi $t6, $ra, 0xfff
  /* 047A4C 800CC06C 000E7B00 */       sll $t7, $t6, 0xc
  /* 047A50 800CC070 3C01E400 */       lui $at, 0xe400
  /* 047A54 800CC074 01E1C825 */        or $t9, $t7, $at
  /* 047A58 800CC078 330E0FFF */      andi $t6, $t8, 0xfff
  /* 047A5C 800CC07C 032E7825 */        or $t7, $t9, $t6
  /* 047A60 800CC080 AC4F0000 */        sw $t7, ($v0)
  /* 047A64 800CC084 8FB8002C */        lw $t8, 0x2c($sp)
  /* 047A68 800CC088 8FAF0028 */        lw $t7, 0x28($sp)
  /* 047A6C 800CC08C 24440008 */     addiu $a0, $v0, 8
  /* 047A70 800CC090 33190FFF */      andi $t9, $t8, 0xfff
  /* 047A74 800CC094 00197300 */       sll $t6, $t9, 0xc
  /* 047A78 800CC098 31F80FFF */      andi $t8, $t7, 0xfff
  /* 047A7C 800CC09C 01D8C825 */        or $t9, $t6, $t8
  /* 047A80 800CC0A0 AC590004 */        sw $t9, 4($v0)
  /* 047A84 800CC0A4 3C0FE100 */       lui $t7, 0xe100
  /* 047A88 800CC0A8 AC8F0000 */        sw $t7, ($a0)
  /* 047A8C 800CC0AC 8FAF0030 */        lw $t7, 0x30($sp)
  /* 047A90 800CC0B0 8FB80034 */        lw $t8, 0x34($sp)
  /* 047A94 800CC0B4 24850008 */     addiu $a1, $a0, 8
  /* 047A98 800CC0B8 31EEFFFF */      andi $t6, $t7, 0xffff
  /* 047A9C 800CC0BC 0018CC00 */       sll $t9, $t8, 0x10
  /* 047AA0 800CC0C0 032EC025 */        or $t8, $t9, $t6
  /* 047AA4 800CC0C4 AC980004 */        sw $t8, 4($a0)
  /* 047AA8 800CC0C8 3C0FF100 */       lui $t7, 0xf100
  /* 047AAC 800CC0CC ACAF0000 */        sw $t7, ($a1)
  /* 047AB0 800CC0D0 8FAF0064 */        lw $t7, 0x64($sp)
  /* 047AB4 800CC0D4 8FAE0060 */        lw $t6, 0x60($sp)
  /* 047AB8 800CC0D8 24A30008 */     addiu $v1, $a1, 8
  /* 047ABC 800CC0DC 31F9FFFF */      andi $t9, $t7, 0xffff
  /* 047AC0 800CC0E0 000EC400 */       sll $t8, $t6, 0x10
  /* 047AC4 800CC0E4 03197025 */        or $t6, $t8, $t9
  /* 047AC8 800CC0E8 ACAE0004 */        sw $t6, 4($a1)
  /* 047ACC 800CC0EC 3C0FE700 */       lui $t7, 0xe700
  /* 047AD0 800CC0F0 AC6F0000 */        sw $t7, ($v1)
  /* 047AD4 800CC0F4 AC600004 */        sw $zero, 4($v1)
  /* 047AD8 800CC0F8 8FB80038 */        lw $t8, 0x38($sp)
  /* 047ADC 800CC0FC 24620008 */     addiu $v0, $v1, 8
  /* 047AE0 800CC100 AF020000 */        sw $v0, ($t8)
  /* 047AE4 800CC104 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CC108:
  /* 047AE8 800CC108 8FB00014 */        lw $s0, 0x14($sp)
  /* 047AEC 800CC10C 8FB10018 */        lw $s1, 0x18($sp)
  /* 047AF0 800CC110 03E00008 */        jr $ra
  /* 047AF4 800CC114 27BD0038 */     addiu $sp, $sp, 0x38

glabel func_ovl0_800CC118
  /* 047AF8 800CC118 3C08800D */       lui $t0, %hi(D_ovl0_800D62B0)
  /* 047AFC 800CC11C 250862B0 */     addiu $t0, $t0, %lo(D_ovl0_800D62B0)
  /* 047B00 800CC120 95060000 */       lhu $a2, ($t0) # D_ovl0_800D62B0 + 0
  /* 047B04 800CC124 AFA40000 */        sw $a0, ($sp)
  /* 047B08 800CC128 8C820000 */        lw $v0, ($a0)
  /* 047B0C 800CC12C 30CF0800 */      andi $t7, $a2, 0x800
  /* 047B10 800CC130 11E00052 */      beqz $t7, .L800CC27C
  /* 047B14 800CC134 24A30010 */     addiu $v1, $a1, 0x10
  /* 047B18 800CC138 00402025 */        or $a0, $v0, $zero
  /* 047B1C 800CC13C 3C08E700 */       lui $t0, %hi(D_NF_E7000000)
  /* 047B20 800CC140 AC880000 */        sw $t0, ($a0)
  /* 047B24 800CC144 AC800004 */        sw $zero, 4($a0)
  /* 047B28 800CC148 24A30010 */     addiu $v1, $a1, 0x10
  /* 047B2C 800CC14C 94780014 */       lhu $t8, 0x14($v1)
  /* 047B30 800CC150 24420008 */     addiu $v0, $v0, 8
  /* 047B34 800CC154 00402025 */        or $a0, $v0, $zero
  /* 047B38 800CC158 33190020 */      andi $t9, $t8, 0x20
  /* 047B3C 800CC15C 13200009 */      beqz $t9, .L800CC184
  /* 047B40 800CC160 3C0FE300 */       lui $t7, (0xE3000A01 >> 16) # 3808430593
  /* 047B44 800CC164 00402025 */        or $a0, $v0, $zero
  /* 047B48 800CC168 3C0DE300 */       lui $t5, (0xE3000A01 >> 16) # 3808430593
  /* 047B4C 800CC16C 35AD0A01 */       ori $t5, $t5, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047B50 800CC170 3C0E0020 */       lui $t6, 0x20
  /* 047B54 800CC174 AC8E0004 */        sw $t6, 4($a0)
  /* 047B58 800CC178 AC8D0000 */        sw $t5, ($a0)
  /* 047B5C 800CC17C 10000005 */         b .L800CC194
  /* 047B60 800CC180 24420008 */     addiu $v0, $v0, 8
  .L800CC184:
  /* 047B64 800CC184 35EF0A01 */       ori $t7, $t7, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047B68 800CC188 AC8F0000 */        sw $t7, ($a0)
  /* 047B6C 800CC18C 24420008 */     addiu $v0, $v0, 8
  /* 047B70 800CC190 AC800004 */        sw $zero, 4($a0)
  .L800CC194:
  /* 047B74 800CC194 94640014 */       lhu $a0, 0x14($v1)
  /* 047B78 800CC198 3C18E200 */       lui $t8, (0xE200001C >> 16) # 3791650844
  /* 047B7C 800CC19C 3718001C */       ori $t8, $t8, (0xE200001C & 0xFFFF) # 3791650844
  /* 047B80 800CC1A0 30840001 */      andi $a0, $a0, 1
  /* 047B84 800CC1A4 10800007 */      beqz $a0, .L800CC1C4
  /* 047B88 800CC1A8 3C190050 */       lui $t9, (0x504240 >> 16) # 5259840
  /* 047B8C 800CC1AC 00402025 */        or $a0, $v0, $zero
  /* 047B90 800CC1B0 37394240 */       ori $t9, $t9, (0x504240 & 0xFFFF) # 5259840
  /* 047B94 800CC1B4 AC990004 */        sw $t9, 4($a0)
  /* 047B98 800CC1B8 AC980000 */        sw $t8, ($a0)
  /* 047B9C 800CC1BC 10000013 */         b .L800CC20C
  /* 047BA0 800CC1C0 24420008 */     addiu $v0, $v0, 8
  .L800CC1C4:
  /* 047BA4 800CC1C4 1080000A */      beqz $a0, .L800CC1F0
  /* 047BA8 800CC1C8 3C0FE200 */       lui $t7, (0xE200001C >> 16) # 3791650844
  /* 047BAC 800CC1CC 00402025 */        or $a0, $v0, $zero
  /* 047BB0 800CC1D0 3C0DE200 */       lui $t5, (0xE200001C >> 16) # 3791650844
  /* 047BB4 800CC1D4 3C0E0050 */       lui $t6, (0x504340 >> 16) # 5260096
  /* 047BB8 800CC1D8 35CE4340 */       ori $t6, $t6, (0x504340 & 0xFFFF) # 5260096
  /* 047BBC 800CC1DC 35AD001C */       ori $t5, $t5, (0xE200001C & 0xFFFF) # 3791650844
  /* 047BC0 800CC1E0 AC8D0000 */        sw $t5, ($a0)
  /* 047BC4 800CC1E4 AC8E0004 */        sw $t6, 4($a0)
  /* 047BC8 800CC1E8 10000008 */         b .L800CC20C
  /* 047BCC 800CC1EC 24420008 */     addiu $v0, $v0, 8
  .L800CC1F0:
  /* 047BD0 800CC1F0 00402025 */        or $a0, $v0, $zero
  /* 047BD4 800CC1F4 3C180F0A */       lui $t8, (0xF0A4000 >> 16) # 252329984
  /* 047BD8 800CC1F8 37184000 */       ori $t8, $t8, (0xF0A4000 & 0xFFFF) # 252329984
  /* 047BDC 800CC1FC 35EF001C */       ori $t7, $t7, (0xE200001C & 0xFFFF) # 3791650844
  /* 047BE0 800CC200 AC8F0000 */        sw $t7, ($a0)
  /* 047BE4 800CC204 AC980004 */        sw $t8, 4($a0)
  /* 047BE8 800CC208 24420008 */     addiu $v0, $v0, 8
  .L800CC20C:
  /* 047BEC 800CC20C 94790014 */       lhu $t9, 0x14($v1)
  /* 047BF0 800CC210 3C18E300 */       lui $t8, (0xE3001201 >> 16) # 3808432641
  /* 047BF4 800CC214 37181201 */       ori $t8, $t8, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047BF8 800CC218 332D0080 */      andi $t5, $t9, 0x80
  /* 047BFC 800CC21C 11A00009 */      beqz $t5, .L800CC244
  /* 047C00 800CC220 00402025 */        or $a0, $v0, $zero
  /* 047C04 800CC224 00402025 */        or $a0, $v0, $zero
  /* 047C08 800CC228 3C0EE300 */       lui $t6, (0xE3001201 >> 16) # 3808432641
  /* 047C0C 800CC22C 35CE1201 */       ori $t6, $t6, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047C10 800CC230 240F3000 */     addiu $t7, $zero, 0x3000
  /* 047C14 800CC234 AC8F0004 */        sw $t7, 4($a0)
  /* 047C18 800CC238 AC8E0000 */        sw $t6, ($a0)
  /* 047C1C 800CC23C 10000005 */         b .L800CC254
  /* 047C20 800CC240 24420008 */     addiu $v0, $v0, 8
  .L800CC244:
  /* 047C24 800CC244 24192000 */     addiu $t9, $zero, 0x2000
  /* 047C28 800CC248 AC990004 */        sw $t9, 4($a0)
  /* 047C2C 800CC24C 24420008 */     addiu $v0, $v0, 8
  /* 047C30 800CC250 AC980000 */        sw $t8, ($a0)
  .L800CC254:
  /* 047C34 800CC254 906D0030 */       lbu $t5, 0x30($v1)
  /* 047C38 800CC258 24060002 */     addiu $a2, $zero, 2
  /* 047C3C 800CC25C 00402025 */        or $a0, $v0, $zero
  /* 047C40 800CC260 10CD0073 */       beq $a2, $t5, .L800CC430
  /* 047C44 800CC264 3C0EE300 */       lui $t6, (0xE3001001 >> 16) # 3808432129
  /* 047C48 800CC268 35CE1001 */       ori $t6, $t6, (0xE3001001 & 0xFFFF) # 3808432129
  /* 047C4C 800CC26C AC8E0000 */        sw $t6, ($a0)
  /* 047C50 800CC270 24420008 */     addiu $v0, $v0, 8
  /* 047C54 800CC274 1000006E */         b .L800CC430
  /* 047C58 800CC278 AC800004 */        sw $zero, 4($a0)
  .L800CC27C:
  /* 047C5C 800CC27C 30CF0400 */      andi $t7, $a2, 0x400
  /* 047C60 800CC280 51E00006 */      beql $t7, $zero, .L800CC29C
  /* 047C64 800CC284 94640014 */       lhu $a0, 0x14($v1)
  /* 047C68 800CC288 94B80024 */       lhu $t8, 0x24($a1)
  /* 047C6C 800CC28C 3C01800D */       lui $at, %hi(D_ovl0_800D62B0)
  /* 047C70 800CC290 0300C827 */       not $t9, $t8
  /* 047C74 800CC294 A43962B0 */        sh $t9, %lo(D_ovl0_800D62B0)($at)
  /* 047C78 800CC298 94640014 */       lhu $a0, 0x14($v1)
  .L800CC29C:
  /* 047C7C 800CC29C 3C01800D */       lui $at, %hi(D_ovl0_800D62B0)
  /* 047C80 800CC2A0 308D0400 */      andi $t5, $a0, 0x400
  /* 047C84 800CC2A4 11A00003 */      beqz $t5, .L800CC2B4
  /* 047C88 800CC2A8 00803825 */        or $a3, $a0, $zero
  /* 047C8C 800CC2AC A42462B0 */        sh $a0, %lo(D_ovl0_800D62B0)($at)
  /* 047C90 800CC2B0 94670014 */       lhu $a3, 0x14($v1)
  .L800CC2B4:
  /* 047C94 800CC2B4 95060000 */       lhu $a2, %lo(D_NF_E7000000)($t0)
  /* 047C98 800CC2B8 30EE0020 */      andi $t6, $a3, 0x20
  /* 047C9C 800CC2BC 10C7005C */       beq $a2, $a3, .L800CC430
  /* 047CA0 800CC2C0 00000000 */       nop 
  /* 047CA4 800CC2C4 11C0000E */      beqz $t6, .L800CC300
  /* 047CA8 800CC2C8 30CD0020 */      andi $t5, $a2, 0x20
  /* 047CAC 800CC2CC 30CF0020 */      andi $t7, $a2, 0x20
  /* 047CB0 800CC2D0 15E00015 */      bnez $t7, .L800CC328
  /* 047CB4 800CC2D4 00402025 */        or $a0, $v0, $zero
  /* 047CB8 800CC2D8 3C18E300 */       lui $t8, (0xE3000A01 >> 16) # 3808430593
  /* 047CBC 800CC2DC 37180A01 */       ori $t8, $t8, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047CC0 800CC2E0 3C190020 */       lui $t9, 0x20
  /* 047CC4 800CC2E4 AC990004 */        sw $t9, 4($a0)
  /* 047CC8 800CC2E8 AC980000 */        sw $t8, ($a0)
  /* 047CCC 800CC2EC 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047CD0 800CC2F0 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047CD4 800CC2F4 94670014 */       lhu $a3, 0x14($v1)
  /* 047CD8 800CC2F8 1000000B */         b .L800CC328
  /* 047CDC 800CC2FC 24420008 */     addiu $v0, $v0, 8
  .L800CC300:
  /* 047CE0 800CC300 11A00009 */      beqz $t5, .L800CC328
  /* 047CE4 800CC304 00402025 */        or $a0, $v0, $zero
  /* 047CE8 800CC308 3C0EE300 */       lui $t6, (0xE3000A01 >> 16) # 3808430593
  /* 047CEC 800CC30C 35CE0A01 */       ori $t6, $t6, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047CF0 800CC310 AC8E0000 */        sw $t6, ($a0)
  /* 047CF4 800CC314 AC800004 */        sw $zero, 4($a0)
  /* 047CF8 800CC318 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047CFC 800CC31C 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047D00 800CC320 94670014 */       lhu $a3, 0x14($v1)
  /* 047D04 800CC324 24420008 */     addiu $v0, $v0, 8
  .L800CC328:
  /* 047D08 800CC328 30EF0001 */      andi $t7, $a3, 1
  /* 047D0C 800CC32C 11E0000F */      beqz $t7, .L800CC36C
  /* 047D10 800CC330 30EE1000 */      andi $t6, $a3, 0x1000
  /* 047D14 800CC334 30D80001 */      andi $t8, $a2, 1
  /* 047D18 800CC338 17000028 */      bnez $t8, .L800CC3DC
  /* 047D1C 800CC33C 00402025 */        or $a0, $v0, $zero
  /* 047D20 800CC340 3C19E200 */       lui $t9, (0xE200001C >> 16) # 3791650844
  /* 047D24 800CC344 3C0D0050 */       lui $t5, (0x504240 >> 16) # 5259840
  /* 047D28 800CC348 35AD4240 */       ori $t5, $t5, (0x504240 & 0xFFFF) # 5259840
  /* 047D2C 800CC34C 3739001C */       ori $t9, $t9, (0xE200001C & 0xFFFF) # 3791650844
  /* 047D30 800CC350 AC990000 */        sw $t9, ($a0)
  /* 047D34 800CC354 AC8D0004 */        sw $t5, 4($a0)
  /* 047D38 800CC358 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047D3C 800CC35C 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047D40 800CC360 94670014 */       lhu $a3, 0x14($v1)
  /* 047D44 800CC364 1000001D */         b .L800CC3DC
  /* 047D48 800CC368 24420008 */     addiu $v0, $v0, 8
  .L800CC36C:
  /* 047D4C 800CC36C 11C0000F */      beqz $t6, .L800CC3AC
  /* 047D50 800CC370 30CD1001 */      andi $t5, $a2, 0x1001
  /* 047D54 800CC374 30CF1000 */      andi $t7, $a2, 0x1000
  /* 047D58 800CC378 15E00018 */      bnez $t7, .L800CC3DC
  /* 047D5C 800CC37C 00402025 */        or $a0, $v0, $zero
  /* 047D60 800CC380 3C18E200 */       lui $t8, (0xE200001C >> 16) # 3791650844
  /* 047D64 800CC384 3C190050 */       lui $t9, (0x504340 >> 16) # 5260096
  /* 047D68 800CC388 37394340 */       ori $t9, $t9, (0x504340 & 0xFFFF) # 5260096
  /* 047D6C 800CC38C 3718001C */       ori $t8, $t8, (0xE200001C & 0xFFFF) # 3791650844
  /* 047D70 800CC390 AC980000 */        sw $t8, ($a0)
  /* 047D74 800CC394 AC990004 */        sw $t9, 4($a0)
  /* 047D78 800CC398 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047D7C 800CC39C 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047D80 800CC3A0 94670014 */       lhu $a3, 0x14($v1)
  /* 047D84 800CC3A4 1000000D */         b .L800CC3DC
  /* 047D88 800CC3A8 24420008 */     addiu $v0, $v0, 8
  .L800CC3AC:
  /* 047D8C 800CC3AC 11A0000B */      beqz $t5, .L800CC3DC
  /* 047D90 800CC3B0 00402025 */        or $a0, $v0, $zero
  /* 047D94 800CC3B4 3C0EE200 */       lui $t6, (0xE200001C >> 16) # 3791650844
  /* 047D98 800CC3B8 3C0F0F0A */       lui $t7, (0xF0A4000 >> 16) # 252329984
  /* 047D9C 800CC3BC 35EF4000 */       ori $t7, $t7, (0xF0A4000 & 0xFFFF) # 252329984
  /* 047DA0 800CC3C0 35CE001C */       ori $t6, $t6, (0xE200001C & 0xFFFF) # 3791650844
  /* 047DA4 800CC3C4 AC8E0000 */        sw $t6, ($a0)
  /* 047DA8 800CC3C8 AC8F0004 */        sw $t7, 4($a0)
  /* 047DAC 800CC3CC 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047DB0 800CC3D0 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047DB4 800CC3D4 94670014 */       lhu $a3, 0x14($v1)
  /* 047DB8 800CC3D8 24420008 */     addiu $v0, $v0, 8
  .L800CC3DC:
  /* 047DBC 800CC3DC 30F80080 */      andi $t8, $a3, 0x80
  /* 047DC0 800CC3E0 1300000B */      beqz $t8, .L800CC410
  /* 047DC4 800CC3E4 30CF0080 */      andi $t7, $a2, 0x80
  /* 047DC8 800CC3E8 30D90080 */      andi $t9, $a2, 0x80
  /* 047DCC 800CC3EC 17200010 */      bnez $t9, .L800CC430
  /* 047DD0 800CC3F0 00402025 */        or $a0, $v0, $zero
  /* 047DD4 800CC3F4 3C0DE300 */       lui $t5, (0xE3001201 >> 16) # 3808432641
  /* 047DD8 800CC3F8 35AD1201 */       ori $t5, $t5, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047DDC 800CC3FC 240E3000 */     addiu $t6, $zero, 0x3000
  /* 047DE0 800CC400 AC8E0004 */        sw $t6, 4($a0)
  /* 047DE4 800CC404 AC8D0000 */        sw $t5, ($a0)
  /* 047DE8 800CC408 10000009 */         b .L800CC430
  /* 047DEC 800CC40C 24420008 */     addiu $v0, $v0, 8
  .L800CC410:
  /* 047DF0 800CC410 11E00007 */      beqz $t7, .L800CC430
  /* 047DF4 800CC414 00402025 */        or $a0, $v0, $zero
  /* 047DF8 800CC418 3C18E300 */       lui $t8, (0xE3001201 >> 16) # 3808432641
  /* 047DFC 800CC41C 37181201 */       ori $t8, $t8, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047E00 800CC420 24192000 */     addiu $t9, $zero, 0x2000
  /* 047E04 800CC424 AC990004 */        sw $t9, 4($a0)
  /* 047E08 800CC428 AC980000 */        sw $t8, ($a0)
  /* 047E0C 800CC42C 24420008 */     addiu $v0, $v0, 8
  .L800CC430:
  /* 047E10 800CC430 3C07800D */       lui $a3, %hi(D_ovl0_800D62B2)
  /* 047E14 800CC434 24E762B2 */     addiu $a3, $a3, %lo(D_ovl0_800D62B2)
  /* 047E18 800CC438 94ED0000 */       lhu $t5, ($a3) # D_ovl0_800D62B2 + 0
  /* 047E1C 800CC43C 90690030 */       lbu $t1, 0x30($v1)
  /* 047E20 800CC440 24060002 */     addiu $a2, $zero, 2
  /* 047E24 800CC444 3C08E700 */       lui $t0, %hi(D_NF_E7000004)
  /* 047E28 800CC448 11A9008C */       beq $t5, $t1, .L800CC67C
  /* 047E2C 800CC44C 00000000 */       nop 
  /* 047E30 800CC450 11260044 */       beq $t1, $a2, .L800CC564
  /* 047E34 800CC454 3C040700 */       lui $a0, %hi(D_NF_07000004)
  /* 047E38 800CC458 24010003 */     addiu $at, $zero, 3
  /* 047E3C 800CC45C 1121001B */       beq $t1, $at, .L800CC4CC
  /* 047E40 800CC460 00402025 */        or $a0, $v0, $zero
  /* 047E44 800CC464 24010004 */     addiu $at, $zero, 4
  /* 047E48 800CC468 15210070 */       bne $t1, $at, .L800CC62C
  /* 047E4C 800CC46C 00402025 */        or $a0, $v0, $zero
  /* 047E50 800CC470 3C0EFA00 */       lui $t6, 0xfa00
  /* 047E54 800CC474 AC8E0000 */        sw $t6, %lo(D_NF_07000000)($a0)
  /* 047E58 800CC478 906E0019 */       lbu $t6, 0x19($v1)
  /* 047E5C 800CC47C 90780018 */       lbu $t8, 0x18($v1)
  /* 047E60 800CC480 24420008 */     addiu $v0, $v0, 8
  /* 047E64 800CC484 000E7C00 */       sll $t7, $t6, 0x10
  /* 047E68 800CC488 906E001A */       lbu $t6, 0x1a($v1)
  /* 047E6C 800CC48C 0018CE00 */       sll $t9, $t8, 0x18
  /* 047E70 800CC490 032FC025 */        or $t8, $t9, $t7
  /* 047E74 800CC494 000ECA00 */       sll $t9, $t6, 8
  /* 047E78 800CC498 906E001B */       lbu $t6, 0x1b($v1)
  /* 047E7C 800CC49C 03197825 */        or $t7, $t8, $t9
  /* 047E80 800CC4A0 3C19FCFF */       lui $t9, (0xFCFFFFFF >> 16) # 4244635647
  /* 047E84 800CC4A4 00402825 */        or $a1, $v0, $zero
  /* 047E88 800CC4A8 3C0DFFFD */       lui $t5, (0xFFFDF2F9 >> 16) # 4294832889
  /* 047E8C 800CC4AC 01EEC025 */        or $t8, $t7, $t6
  /* 047E90 800CC4B0 AC980004 */        sw $t8, %lo(D_NF_07000004)($a0)
  /* 047E94 800CC4B4 35ADF2F9 */       ori $t5, $t5, (0xFFFDF2F9 & 0xFFFF) # 4294832889
  /* 047E98 800CC4B8 3739FFFF */       ori $t9, $t9, (0xFCFFFFFF & 0xFFFF) # 4244635647
  /* 047E9C 800CC4BC ACB90000 */        sw $t9, ($a1)
  /* 047EA0 800CC4C0 ACAD0004 */        sw $t5, 4($a1)
  /* 047EA4 800CC4C4 10000061 */         b .L800CC64C
  /* 047EA8 800CC4C8 24420008 */     addiu $v0, $v0, 8
  .L800CC4CC:
  /* 047EAC 800CC4CC 3C0FFA00 */       lui $t7, 0xfa00
  /* 047EB0 800CC4D0 AC8F0000 */        sw $t7, %lo(D_NF_07000000)($a0)
  /* 047EB4 800CC4D4 906F0019 */       lbu $t7, 0x19($v1)
  /* 047EB8 800CC4D8 90780018 */       lbu $t8, 0x18($v1)
  /* 047EBC 800CC4DC 24420008 */     addiu $v0, $v0, 8
  /* 047EC0 800CC4E0 000F7400 */       sll $t6, $t7, 0x10
  /* 047EC4 800CC4E4 906F001A */       lbu $t7, 0x1a($v1)
  /* 047EC8 800CC4E8 0018CE00 */       sll $t9, $t8, 0x18
  /* 047ECC 800CC4EC 032EC025 */        or $t8, $t9, $t6
  /* 047ED0 800CC4F0 000FCA00 */       sll $t9, $t7, 8
  /* 047ED4 800CC4F4 906F001B */       lbu $t7, 0x1b($v1)
  /* 047ED8 800CC4F8 03197025 */        or $t6, $t8, $t9
  /* 047EDC 800CC4FC 3C19FB00 */       lui $t9, 0xfb00
  /* 047EE0 800CC500 01CFC025 */        or $t8, $t6, $t7
  /* 047EE4 800CC504 AC980004 */        sw $t8, %lo(D_NF_07000004)($a0)
  /* 047EE8 800CC508 00404025 */        or $t0, $v0, $zero
  /* 047EEC 800CC50C AD190000 */        sw $t9, %lo(D_NF_E7000000)($t0)
  /* 047EF0 800CC510 90B90061 */       lbu $t9, 0x61($a1)
  /* 047EF4 800CC514 90AE0060 */       lbu $t6, 0x60($a1)
  /* 047EF8 800CC518 24420008 */     addiu $v0, $v0, 8
  /* 047EFC 800CC51C 00196C00 */       sll $t5, $t9, 0x10
  /* 047F00 800CC520 90B90062 */       lbu $t9, 0x62($a1)
  /* 047F04 800CC524 000E7E00 */       sll $t7, $t6, 0x18
  /* 047F08 800CC528 01ED7025 */        or $t6, $t7, $t5
  /* 047F0C 800CC52C 00197A00 */       sll $t7, $t9, 8
  /* 047F10 800CC530 90B90063 */       lbu $t9, 0x63($a1)
  /* 047F14 800CC534 01CF6825 */        or $t5, $t6, $t7
  /* 047F18 800CC538 3C0FFC30 */       lui $t7, (0xFC309661 >> 16) # 4231042657
  /* 047F1C 800CC53C 00404825 */        or $t1, $v0, $zero
  /* 047F20 800CC540 3C18552E */       lui $t8, (0x552EFF7F >> 16) # 1429143423
  /* 047F24 800CC544 01B97025 */        or $t6, $t5, $t9
  /* 047F28 800CC548 AD0E0004 */        sw $t6, %lo(D_NF_E7000004)($t0)
  /* 047F2C 800CC54C 3718FF7F */       ori $t8, $t8, (0x552EFF7F & 0xFFFF) # 1429143423
  /* 047F30 800CC550 35EF9661 */       ori $t7, $t7, (0xFC309661 & 0xFFFF) # 4231042657
  /* 047F34 800CC554 AD2F0000 */        sw $t7, ($t1)
  /* 047F38 800CC558 AD380004 */        sw $t8, 4($t1)
  /* 047F3C 800CC55C 1000003B */         b .L800CC64C
  /* 047F40 800CC560 24420008 */     addiu $v0, $v0, 8
  .L800CC564:
  /* 047F44 800CC564 00402825 */        or $a1, $v0, $zero
  /* 047F48 800CC568 3C0DE300 */       lui $t5, (0xE3001001 >> 16) # 3808432129
  /* 047F4C 800CC56C 35AD1001 */       ori $t5, $t5, (0xE3001001 & 0xFFFF) # 3808432129
  /* 047F50 800CC570 24420008 */     addiu $v0, $v0, 8
  /* 047F54 800CC574 34198000 */       ori $t9, $zero, 0x8000
  /* 047F58 800CC578 ACB90004 */        sw $t9, 4($a1)
  /* 047F5C 800CC57C ACAD0000 */        sw $t5, ($a1)
  /* 047F60 800CC580 00404825 */        or $t1, $v0, $zero
  /* 047F64 800CC584 3C0EFD10 */       lui $t6, 0xfd10
  /* 047F68 800CC588 AD2E0000 */        sw $t6, ($t1)
  /* 047F6C 800CC58C 8C6F0020 */        lw $t7, 0x20($v1)
  /* 047F70 800CC590 24420008 */     addiu $v0, $v0, 8
  /* 047F74 800CC594 00405025 */        or $t2, $v0, $zero
  /* 047F78 800CC598 AD2F0004 */        sw $t7, 4($t1)
  /* 047F7C 800CC59C 3C18E800 */       lui $t8, 0xe800
  /* 047F80 800CC5A0 AD580000 */        sw $t8, ($t2)
  /* 047F84 800CC5A4 AD400004 */        sw $zero, 4($t2)
  /* 047F88 800CC5A8 846D001C */        lh $t5, 0x1c($v1)
  /* 047F8C 800CC5AC 24420008 */     addiu $v0, $v0, 8
  /* 047F90 800CC5B0 00405825 */        or $t3, $v0, $zero
  /* 047F94 800CC5B4 25B90100 */     addiu $t9, $t5, 0x100
  /* 047F98 800CC5B8 332E01FF */      andi $t6, $t9, 0x1ff
  /* 047F9C 800CC5BC 24420008 */     addiu $v0, $v0, 8
  /* 047FA0 800CC5C0 3C01F500 */       lui $at, 0xf500
  /* 047FA4 800CC5C4 01C17825 */        or $t7, $t6, $at
  /* 047FA8 800CC5C8 00406025 */        or $t4, $v0, $zero
  /* 047FAC 800CC5CC AD6F0000 */        sw $t7, ($t3)
  /* 047FB0 800CC5D0 AD640004 */        sw $a0, 4($t3)
  /* 047FB4 800CC5D4 24420008 */     addiu $v0, $v0, 8
  /* 047FB8 800CC5D8 3C05E600 */       lui $a1, %hi(D_NF_E6000063)
  /* 047FBC 800CC5DC AD850000 */        sw $a1, ($t4)
  /* 047FC0 800CC5E0 00404825 */        or $t1, $v0, $zero
  /* 047FC4 800CC5E4 AD800004 */        sw $zero, 4($t4)
  /* 047FC8 800CC5E8 3C18F000 */       lui $t8, 0xf000
  /* 047FCC 800CC5EC AD380000 */        sw $t8, ($t1)
  /* 047FD0 800CC5F0 846D001E */        lh $t5, 0x1e($v1)
  /* 047FD4 800CC5F4 24420008 */     addiu $v0, $v0, 8
  /* 047FD8 800CC5F8 00405025 */        or $t2, $v0, $zero
  /* 047FDC 800CC5FC 25B9FFFF */     addiu $t9, $t5, -1
  /* 047FE0 800CC600 332E03FF */      andi $t6, $t9, 0x3ff
  /* 047FE4 800CC604 000E7B80 */       sll $t7, $t6, 0xe
  /* 047FE8 800CC608 01E4C025 */        or $t8, $t7, $a0
  /* 047FEC 800CC60C AD380004 */        sw $t8, 4($t1)
  /* 047FF0 800CC610 24420008 */     addiu $v0, $v0, 8
  /* 047FF4 800CC614 00405825 */        or $t3, $v0, $zero
  /* 047FF8 800CC618 AD400004 */        sw $zero, 4($t2)
  /* 047FFC 800CC61C AD480000 */        sw $t0, ($t2)
  /* 048000 800CC620 AD600004 */        sw $zero, 4($t3)
  /* 048004 800CC624 AD650000 */        sw $a1, ($t3)
  /* 048008 800CC628 24420008 */     addiu $v0, $v0, 8
  .L800CC62C:
  /* 04800C 800CC62C 00402025 */        or $a0, $v0, $zero
  /* 048010 800CC630 3C0DFCFF */       lui $t5, (0xFCFFFFFF >> 16) # 4244635647
  /* 048014 800CC634 3C19FFFC */       lui $t9, (0xFFFCF279 >> 16) # 4294767225
  /* 048018 800CC638 3739F279 */       ori $t9, $t9, (0xFFFCF279 & 0xFFFF) # 4294767225
  /* 04801C 800CC63C 35ADFFFF */       ori $t5, $t5, (0xFCFFFFFF & 0xFFFF) # 4244635647
  /* 048020 800CC640 AC8D0000 */        sw $t5, %lo(D_NF_07000000)($a0)
  /* 048024 800CC644 AC990004 */        sw $t9, %lo(D_NF_07000004)($a0)
  /* 048028 800CC648 24420008 */     addiu $v0, $v0, 8
  .L800CC64C:
  /* 04802C 800CC64C 906E0030 */       lbu $t6, 0x30($v1)
  /* 048030 800CC650 50CE006F */      beql $a2, $t6, .L800CC810
  /* 048034 800CC654 8FAF0000 */        lw $t7, ($sp)
  /* 048038 800CC658 94EF0000 */       lhu $t7, ($a3) # D_ovl0_800D62B2 + 0
  /* 04803C 800CC65C 3C18E300 */       lui $t8, (0xE3001001 >> 16) # 3808432129
  /* 048040 800CC660 37181001 */       ori $t8, $t8, (0xE3001001 & 0xFFFF) # 3808432129
  /* 048044 800CC664 14CF0069 */       bne $a2, $t7, .L800CC80C
  /* 048048 800CC668 00401825 */        or $v1, $v0, $zero
  /* 04804C 800CC66C 24420008 */     addiu $v0, $v0, 8
  /* 048050 800CC670 AC780000 */        sw $t8, ($v1)
  /* 048054 800CC674 10000065 */         b .L800CC80C
  /* 048058 800CC678 AC600004 */        sw $zero, 4($v1)
  .L800CC67C:
  /* 04805C 800CC67C 11260034 */       beq $t1, $a2, .L800CC750
  /* 048060 800CC680 3C0F800D */       lui $t7, 0x800d
  /* 048064 800CC684 24010003 */     addiu $at, $zero, 3
  /* 048068 800CC688 11210013 */       beq $t1, $at, .L800CC6D8
  /* 04806C 800CC68C 00402025 */        or $a0, $v0, $zero
  /* 048070 800CC690 24010004 */     addiu $at, $zero, 4
  /* 048074 800CC694 1521005D */       bne $t1, $at, .L800CC80C
  /* 048078 800CC698 00402025 */        or $a0, $v0, $zero
  /* 04807C 800CC69C 3C0DFA00 */       lui $t5, 0xfa00
  /* 048080 800CC6A0 AC8D0000 */        sw $t5, %lo(D_NF_07000000)($a0)
  /* 048084 800CC6A4 906D0019 */       lbu $t5, 0x19($v1)
  /* 048088 800CC6A8 906E0018 */       lbu $t6, 0x18($v1)
  /* 04808C 800CC6AC 24420008 */     addiu $v0, $v0, 8
  /* 048090 800CC6B0 000DCC00 */       sll $t9, $t5, 0x10
  /* 048094 800CC6B4 906D001A */       lbu $t5, 0x1a($v1)
  /* 048098 800CC6B8 000E7E00 */       sll $t7, $t6, 0x18
  /* 04809C 800CC6BC 01F97025 */        or $t6, $t7, $t9
  /* 0480A0 800CC6C0 000D7A00 */       sll $t7, $t5, 8
  /* 0480A4 800CC6C4 906D001B */       lbu $t5, 0x1b($v1)
  /* 0480A8 800CC6C8 01CFC825 */        or $t9, $t6, $t7
  /* 0480AC 800CC6CC 032D7025 */        or $t6, $t9, $t5
  /* 0480B0 800CC6D0 1000004E */         b .L800CC80C
  /* 0480B4 800CC6D4 AC8E0004 */        sw $t6, %lo(D_NF_07000004)($a0)
  .L800CC6D8:
  /* 0480B8 800CC6D8 3C0FFA00 */       lui $t7, 0xfa00
  /* 0480BC 800CC6DC AC8F0000 */        sw $t7, %lo(D_NF_07000000)($a0)
  /* 0480C0 800CC6E0 906F0019 */       lbu $t7, 0x19($v1)
  /* 0480C4 800CC6E4 90790018 */       lbu $t9, 0x18($v1)
  /* 0480C8 800CC6E8 24420008 */     addiu $v0, $v0, 8
  /* 0480CC 800CC6EC 000FC400 */       sll $t8, $t7, 0x10
  /* 0480D0 800CC6F0 906F001A */       lbu $t7, 0x1a($v1)
  /* 0480D4 800CC6F4 00196E00 */       sll $t5, $t9, 0x18
  /* 0480D8 800CC6F8 01B8C825 */        or $t9, $t5, $t8
  /* 0480DC 800CC6FC 000F6A00 */       sll $t5, $t7, 8
  /* 0480E0 800CC700 906F001B */       lbu $t7, 0x1b($v1)
  /* 0480E4 800CC704 032DC025 */        or $t8, $t9, $t5
  /* 0480E8 800CC708 3C0DFB00 */       lui $t5, 0xfb00
  /* 0480EC 800CC70C 030FC825 */        or $t9, $t8, $t7
  /* 0480F0 800CC710 AC990004 */        sw $t9, %lo(D_NF_07000004)($a0)
  /* 0480F4 800CC714 00403025 */        or $a2, $v0, $zero
  /* 0480F8 800CC718 ACCD0000 */        sw $t5, ($a2)
  /* 0480FC 800CC71C 90AD0061 */       lbu $t5, %lo(D_NF_E6000061)($a1)
  /* 048100 800CC720 90B80060 */       lbu $t8, %lo(D_NF_E6000060)($a1)
  /* 048104 800CC724 24420008 */     addiu $v0, $v0, 8
  /* 048108 800CC728 000D7400 */       sll $t6, $t5, 0x10
  /* 04810C 800CC72C 90AD0062 */       lbu $t5, %lo(D_NF_E6000062)($a1)
  /* 048110 800CC730 00187E00 */       sll $t7, $t8, 0x18
  /* 048114 800CC734 01EEC025 */        or $t8, $t7, $t6
  /* 048118 800CC738 000D7A00 */       sll $t7, $t5, 8
  /* 04811C 800CC73C 90AD0063 */       lbu $t5, %lo(D_NF_E6000063)($a1)
  /* 048120 800CC740 030F7025 */        or $t6, $t8, $t7
  /* 048124 800CC744 01CDC025 */        or $t8, $t6, $t5
  /* 048128 800CC748 10000030 */         b .L800CC80C
  /* 04812C 800CC74C ACD80004 */        sw $t8, 4($a2)
  .L800CC750:
  /* 048130 800CC750 8DEF62B8 */        lw $t7, 0x62b8($t7)
  /* 048134 800CC754 8C790020 */        lw $t9, 0x20($v1)
  /* 048138 800CC758 3C040700 */       lui $a0, 0x700
  /* 04813C 800CC75C 3C05E600 */       lui $a1, 0xe600
  /* 048140 800CC760 11F9002A */       beq $t7, $t9, .L800CC80C
  /* 048144 800CC764 00403025 */        or $a2, $v0, $zero
  /* 048148 800CC768 3C0EFD10 */       lui $t6, 0xfd10
  /* 04814C 800CC76C ACCE0000 */        sw $t6, ($a2)
  /* 048150 800CC770 8C6D0020 */        lw $t5, 0x20($v1)
  /* 048154 800CC774 24420008 */     addiu $v0, $v0, 8
  /* 048158 800CC778 00403825 */        or $a3, $v0, $zero
  /* 04815C 800CC77C ACCD0004 */        sw $t5, 4($a2)
  /* 048160 800CC780 3C18E800 */       lui $t8, 0xe800
  /* 048164 800CC784 ACF80000 */        sw $t8, ($a3) # D_ovl0_800D62B2 + 0
  /* 048168 800CC788 ACE00004 */        sw $zero, 4($a3) # D_ovl0_800D62B2 + 4
  /* 04816C 800CC78C 846F001C */        lh $t7, 0x1c($v1)
  /* 048170 800CC790 24420008 */     addiu $v0, $v0, 8
  /* 048174 800CC794 00404825 */        or $t1, $v0, $zero
  /* 048178 800CC798 25F90100 */     addiu $t9, $t7, 0x100
  /* 04817C 800CC79C 332E01FF */      andi $t6, $t9, 0x1ff
  /* 048180 800CC7A0 24420008 */     addiu $v0, $v0, 8
  /* 048184 800CC7A4 3C01F500 */       lui $at, 0xf500
  /* 048188 800CC7A8 01C16825 */        or $t5, $t6, $at
  /* 04818C 800CC7AC 00405025 */        or $t2, $v0, $zero
  /* 048190 800CC7B0 AD2D0000 */        sw $t5, ($t1)
  /* 048194 800CC7B4 AD240004 */        sw $a0, 4($t1)
  /* 048198 800CC7B8 24420008 */     addiu $v0, $v0, 8
  /* 04819C 800CC7BC 00405825 */        or $t3, $v0, $zero
  /* 0481A0 800CC7C0 AD400004 */        sw $zero, 4($t2)
  /* 0481A4 800CC7C4 AD450000 */        sw $a1, ($t2)
  /* 0481A8 800CC7C8 3C18F000 */       lui $t8, 0xf000
  /* 0481AC 800CC7CC AD780000 */        sw $t8, ($t3)
  /* 0481B0 800CC7D0 846F001E */        lh $t7, 0x1e($v1)
  /* 0481B4 800CC7D4 24420008 */     addiu $v0, $v0, 8
  /* 0481B8 800CC7D8 00403025 */        or $a2, $v0, $zero
  /* 0481BC 800CC7DC 25F9FFFF */     addiu $t9, $t7, -1
  /* 0481C0 800CC7E0 332E03FF */      andi $t6, $t9, 0x3ff
  /* 0481C4 800CC7E4 000E6B80 */       sll $t5, $t6, 0xe
  /* 0481C8 800CC7E8 01A4C025 */        or $t8, $t5, $a0
  /* 0481CC 800CC7EC AD780004 */        sw $t8, 4($t3)
  /* 0481D0 800CC7F0 24420008 */     addiu $v0, $v0, 8
  /* 0481D4 800CC7F4 00403825 */        or $a3, $v0, $zero
  /* 0481D8 800CC7F8 ACC00004 */        sw $zero, 4($a2)
  /* 0481DC 800CC7FC ACC80000 */        sw $t0, ($a2)
  /* 0481E0 800CC800 ACE00004 */        sw $zero, 4($a3) # D_ovl0_800D62B2 + 4
  /* 0481E4 800CC804 ACE50000 */        sw $a1, ($a3) # D_ovl0_800D62B2 + 0
  /* 0481E8 800CC808 24420008 */     addiu $v0, $v0, 8
  .L800CC80C:
  /* 0481EC 800CC80C 8FAF0000 */        lw $t7, ($sp)
  .L800CC810:
  /* 0481F0 800CC810 03E00008 */        jr $ra
  /* 0481F4 800CC814 ADE20000 */        sw $v0, ($t7)

glabel func_ovl0_800CC818
  /* 0481F8 800CC818 27BDFF20 */     addiu $sp, $sp, -0xe0
  /* 0481FC 800CC81C AFB60070 */        sw $s6, 0x70($sp)
  /* 048200 800CC820 24B60010 */     addiu $s6, $a1, 0x10
  /* 048204 800CC824 AFBF007C */        sw $ra, 0x7c($sp)
  /* 048208 800CC828 AFBE0078 */        sw $fp, 0x78($sp)
  /* 04820C 800CC82C AFB70074 */        sw $s7, 0x74($sp)
  /* 048210 800CC830 AFB5006C */        sw $s5, 0x6c($sp)
  /* 048214 800CC834 AFB40068 */        sw $s4, 0x68($sp)
  /* 048218 800CC838 AFB30064 */        sw $s3, 0x64($sp)
  /* 04821C 800CC83C AFB20060 */        sw $s2, 0x60($sp)
  /* 048220 800CC840 AFB1005C */        sw $s1, 0x5c($sp)
  /* 048224 800CC844 AFB00058 */        sw $s0, 0x58($sp)
  /* 048228 800CC848 F7BA0050 */      sdc1 $f26, 0x50($sp)
  /* 04822C 800CC84C F7B80048 */      sdc1 $f24, 0x48($sp)
  /* 048230 800CC850 F7B60040 */      sdc1 $f22, 0x40($sp)
  /* 048234 800CC854 F7B40038 */      sdc1 $f20, 0x38($sp)
  /* 048238 800CC858 3C01800D */       lui $at, %hi(D_ovl0_800D5EC4)
  /* 04823C 800CC85C AFB600DC */        sw $s6, 0xdc($sp)
  /* 048240 800CC860 C4205EC4 */      lwc1 $f0, %lo(D_ovl0_800D5EC4)($at)
  /* 048244 800CC864 C4A40018 */      lwc1 $f4, 0x18($a1)
  /* 048248 800CC868 00A0B825 */        or $s7, $a1, $zero
  /* 04824C 800CC86C 4600203C */    c.lt.s $f4, $f0
  /* 048250 800CC870 00000000 */       nop 
  /* 048254 800CC874 4503017E */     bc1tl .L800CCE70
  /* 048258 800CC878 8FBF007C */        lw $ra, 0x7c($sp)
  /* 04825C 800CC87C C6D4000C */      lwc1 $f20, 0xc($s6)
  /* 048260 800CC880 4600A03C */    c.lt.s $f20, $f0
  /* 048264 800CC884 00000000 */       nop 
  /* 048268 800CC888 45030179 */     bc1tl .L800CCE70
  /* 04826C 800CC88C 8FBF007C */        lw $ra, 0x7c($sp)
  /* 048270 800CC890 8ED20034 */        lw $s2, 0x34($s6)
  /* 048274 800CC894 3C0A800D */       lui $t2, %hi(D_ovl0_800D62BC)
  /* 048278 800CC898 52400175 */      beql $s2, $zero, .L800CCE70
  /* 04827C 800CC89C 8FBF007C */        lw $ra, 0x7c($sp)
  /* 048280 800CC8A0 44800000 */      mtc1 $zero, $f0
  /* 048284 800CC8A4 C4B20058 */      lwc1 $f18, 0x58($a1)
  /* 048288 800CC8A8 3C01800D */       lui $at, %hi(D_ovl0_800D5EC8)
  /* 04828C 800CC8AC 3C0B800D */       lui $t3, %hi(D_ovl0_800D62C0)
  /* 048290 800CC8B0 4600903C */    c.lt.s $f18, $f0
  /* 048294 800CC8B4 00000000 */       nop 
  /* 048298 800CC8B8 45020008 */     bc1fl .L800CC8DC
  /* 04829C 800CC8BC 4600928D */ trunc.w.s $f10, $f18
  /* 0482A0 800CC8C0 C4365EC8 */      lwc1 $f22, %lo(D_ovl0_800D5EC8)($at)
  /* 0482A4 800CC8C4 46169181 */     sub.s $f6, $f18, $f22
  /* 0482A8 800CC8C8 4600320D */ trunc.w.s $f8, $f6
  /* 0482AC 800CC8CC 441E4000 */      mfc1 $fp, $f8
  /* 0482B0 800CC8D0 10000007 */         b .L800CC8F0
  /* 0482B4 800CC8D4 C6F0005C */      lwc1 $f16, 0x5c($s7)
  /* 0482B8 800CC8D8 4600928D */ trunc.w.s $f10, $f18
  .L800CC8DC:
  /* 0482BC 800CC8DC 3C01800D */       lui $at, %hi(D_ovl0_800D5ECC)
  /* 0482C0 800CC8E0 C4365ECC */      lwc1 $f22, %lo(D_ovl0_800D5ECC)($at)
  /* 0482C4 800CC8E4 441E5000 */      mfc1 $fp, $f10
  /* 0482C8 800CC8E8 00000000 */       nop 
  /* 0482CC 800CC8EC C6F0005C */      lwc1 $f16, 0x5c($s7)
  .L800CC8F0:
  /* 0482D0 800CC8F0 4600803C */    c.lt.s $f16, $f0
  /* 0482D4 800CC8F4 00000000 */       nop 
  /* 0482D8 800CC8F8 45020007 */     bc1fl .L800CC918
  /* 0482DC 800CC8FC 4600820D */ trunc.w.s $f8, $f16
  /* 0482E0 800CC900 46168101 */     sub.s $f4, $f16, $f22
  /* 0482E4 800CC904 4600218D */ trunc.w.s $f6, $f4
  /* 0482E8 800CC908 44033000 */      mfc1 $v1, $f6
  /* 0482EC 800CC90C 10000004 */         b .L800CC920
  /* 0482F0 800CC910 00000000 */       nop 
  /* 0482F4 800CC914 4600820D */ trunc.w.s $f8, $f16
  .L800CC918:
  /* 0482F8 800CC918 44034000 */      mfc1 $v1, $f8
  /* 0482FC 800CC91C 00000000 */       nop 
  .L800CC920:
  /* 048300 800CC920 8D4A62BC */        lw $t2, %lo(D_ovl0_800D62BC)($t2)
  /* 048304 800CC924 03CA082A */       slt $at, $fp, $t2
  /* 048308 800CC928 50200151 */      beql $at, $zero, .L800CCE70
  /* 04830C 800CC92C 8FBF007C */        lw $ra, 0x7c($sp)
  /* 048310 800CC930 8D6B62C0 */        lw $t3, %lo(D_ovl0_800D62C0)($t3)
  /* 048314 800CC934 006B082A */       slt $at, $v1, $t3
  /* 048318 800CC938 5020014D */      beql $at, $zero, .L800CCE70
  /* 04831C 800CC93C 8FBF007C */        lw $ra, 0x7c($sp)
  /* 048320 800CC940 92EC0065 */       lbu $t4, 0x65($s7)
  /* 048324 800CC944 24050002 */     addiu $a1, $zero, 2
  /* 048328 800CC948 54AC0004 */      bnel $a1, $t4, .L800CC95C
  /* 04832C 800CC94C 96E20068 */       lhu $v0, 0x68($s7)
  /* 048330 800CC950 10000002 */         b .L800CC95C
  /* 048334 800CC954 86C20004 */        lh $v0, 4($s6)
  /* 048338 800CC958 96E20068 */       lhu $v0, 0x68($s7)
  .L800CC95C:
  /* 04833C 800CC95C 92ED0064 */       lbu $t5, 0x64($s7)
  /* 048340 800CC960 54AD0005 */      bnel $a1, $t5, .L800CC978
  /* 048344 800CC964 96EF006A */       lhu $t7, 0x6a($s7)
  /* 048348 800CC968 86CE002C */        lh $t6, 0x2c($s6)
  /* 04834C 800CC96C 10000003 */         b .L800CC97C
  /* 048350 800CC970 AFAE00C8 */        sw $t6, 0xc8($sp)
  /* 048354 800CC974 96EF006A */       lhu $t7, 0x6a($s7)
  .L800CC978:
  /* 048358 800CC978 AFAF00C8 */        sw $t7, 0xc8($sp)
  .L800CC97C:
  /* 04835C 800CC97C 96D80014 */       lhu $t8, 0x14($s6)
  /* 048360 800CC980 33190020 */      andi $t9, $t8, 0x20
  /* 048364 800CC984 53200044 */      beql $t9, $zero, .L800CCA98
  /* 048368 800CC988 44825000 */      mtc1 $v0, $f10
  /* 04836C 800CC98C 44825000 */      mtc1 $v0, $f10
  /* 048370 800CC990 3C0B800D */       lui $t3, %hi(D_ovl0_800D62C4)
  /* 048374 800CC994 8D6B62C4 */        lw $t3, %lo(D_ovl0_800D62C4)($t3)
  /* 048378 800CC998 46805120 */   cvt.s.w $f4, $f10
  /* 04837C 800CC99C 00608025 */        or $s0, $v1, $zero
  /* 048380 800CC9A0 46049180 */     add.s $f6, $f18, $f4
  /* 048384 800CC9A4 4600320D */ trunc.w.s $f8, $f6
  /* 048388 800CC9A8 44134000 */      mfc1 $s3, $f8
  /* 04838C 800CC9AC 00000000 */       nop 
  /* 048390 800CC9B0 026B082A */       slt $at, $s3, $t3
  /* 048394 800CC9B4 5420012E */      bnel $at, $zero, .L800CCE70
  /* 048398 800CC9B8 8FBF007C */        lw $ra, 0x7c($sp)
  /* 04839C 800CC9BC 86C20028 */        lh $v0, 0x28($s6)
  /* 0483A0 800CC9C0 24010001 */     addiu $at, $zero, 1
  /* 0483A4 800CC9C4 2673FFFF */     addiu $s3, $s3, -1
  /* 0483A8 800CC9C8 14410012 */       bne $v0, $at, .L800CCA14
  /* 0483AC 800CC9CC 02E02825 */        or $a1, $s7, $zero
  /* 0483B0 800CC9D0 8FAC00C8 */        lw $t4, 0xc8($sp)
  /* 0483B4 800CC9D4 240E1000 */     addiu $t6, $zero, 0x1000
  /* 0483B8 800CC9D8 240F0400 */     addiu $t7, $zero, 0x400
  /* 0483BC 800CC9DC 006C6821 */      addu $t5, $v1, $t4
  /* 0483C0 800CC9E0 AFAD001C */        sw $t5, 0x1c($sp)
  /* 0483C4 800CC9E4 AFAF002C */        sw $t7, 0x2c($sp)
  /* 0483C8 800CC9E8 AFAE0028 */        sw $t6, 0x28($sp)
  /* 0483CC 800CC9EC 02C03025 */        or $a2, $s6, $zero
  /* 0483D0 800CC9F0 02403825 */        or $a3, $s2, $zero
  /* 0483D4 800CC9F4 AFBE0010 */        sw $fp, 0x10($sp)
  /* 0483D8 800CC9F8 AFA30014 */        sw $v1, 0x14($sp)
  /* 0483DC 800CC9FC AFB30018 */        sw $s3, 0x18($sp)
  /* 0483E0 800CCA00 AFA00020 */        sw $zero, 0x20($sp)
  /* 0483E4 800CCA04 0C032DF5 */       jal func_ovl0_800CB7D4
  /* 0483E8 800CCA08 AFA00024 */        sw $zero, 0x24($sp)
  /* 0483EC 800CCA0C 10000118 */         b .L800CCE70
  /* 0483F0 800CCA10 8FBF007C */        lw $ra, 0x7c($sp)
  .L800CCA14:
  /* 0483F4 800CCA14 18400115 */      blez $v0, .L800CCE6C
  /* 0483F8 800CCA18 00001825 */        or $v1, $zero, $zero
  /* 0483FC 800CCA1C AFA400E0 */        sw $a0, 0xe0($sp)
  /* 048400 800CCA20 8FB800C8 */        lw $t8, 0xc8($sp)
  .L800CCA24:
  /* 048404 800CCA24 24191000 */     addiu $t9, $zero, 0x1000
  /* 048408 800CCA28 240A0400 */     addiu $t2, $zero, 0x400
  /* 04840C 800CCA2C 02188821 */      addu $s1, $s0, $t8
  /* 048410 800CCA30 8FA400E0 */        lw $a0, 0xe0($sp)
  /* 048414 800CCA34 AFB1001C */        sw $s1, 0x1c($sp)
  /* 048418 800CCA38 AFAA002C */        sw $t2, 0x2c($sp)
  /* 04841C 800CCA3C AFB90028 */        sw $t9, 0x28($sp)
  /* 048420 800CCA40 02E02825 */        or $a1, $s7, $zero
  /* 048424 800CCA44 02C03025 */        or $a2, $s6, $zero
  /* 048428 800CCA48 02403825 */        or $a3, $s2, $zero
  /* 04842C 800CCA4C AFBE0010 */        sw $fp, 0x10($sp)
  /* 048430 800CCA50 AFB00014 */        sw $s0, 0x14($sp)
  /* 048434 800CCA54 AFB30018 */        sw $s3, 0x18($sp)
  /* 048438 800CCA58 AFA00020 */        sw $zero, 0x20($sp)
  /* 04843C 800CCA5C AFA00024 */        sw $zero, 0x24($sp)
  /* 048440 800CCA60 0C032DF5 */       jal func_ovl0_800CB7D4
  /* 048444 800CCA64 AFA300B0 */        sw $v1, 0xb0($sp)
  /* 048448 800CCA68 8FAB00DC */        lw $t3, 0xdc($sp)
  /* 04844C 800CCA6C 8FA300B0 */        lw $v1, 0xb0($sp)
  /* 048450 800CCA70 26520010 */     addiu $s2, $s2, 0x10
  /* 048454 800CCA74 856C0028 */        lh $t4, 0x28($t3)
  /* 048458 800CCA78 24630001 */     addiu $v1, $v1, 1
  /* 04845C 800CCA7C 02208025 */        or $s0, $s1, $zero
  /* 048460 800CCA80 006C082A */       slt $at, $v1, $t4
  /* 048464 800CCA84 5420FFE7 */      bnel $at, $zero, .L800CCA24
  /* 048468 800CCA88 8FB800C8 */        lw $t8, 0xc8($sp)
  /* 04846C 800CCA8C 100000F8 */         b .L800CCE70
  /* 048470 800CCA90 8FBF007C */        lw $ra, 0x7c($sp)
  /* 048474 800CCA94 44825000 */      mtc1 $v0, $f10
  .L800CCA98:
  /* 048478 800CCA98 C6C20008 */      lwc1 $f2, 8($s6)
  /* 04847C 800CCA9C 3C0E800D */       lui $t6, %hi(D_ovl0_800D62C4)
  /* 048480 800CCAA0 46805120 */   cvt.s.w $f4, $f10
  /* 048484 800CCAA4 8DCE62C4 */        lw $t6, %lo(D_ovl0_800D62C4)($t6)
  /* 048488 800CCAA8 46022182 */     mul.s $f6, $f4, $f2
  /* 04848C 800CCAAC 46069200 */     add.s $f8, $f18, $f6
  /* 048490 800CCAB0 46164280 */     add.s $f10, $f8, $f22
  /* 048494 800CCAB4 4600510D */ trunc.w.s $f4, $f10
  /* 048498 800CCAB8 44152000 */      mfc1 $s5, $f4
  /* 04849C 800CCABC 00000000 */       nop 
  /* 0484A0 800CCAC0 02AE082A */       slt $at, $s5, $t6
  /* 0484A4 800CCAC4 542000EA */      bnel $at, $zero, .L800CCE70
  /* 0484A8 800CCAC8 8FBF007C */        lw $ra, 0x7c($sp)
  /* 0484AC 800CCACC 449E3000 */      mtc1 $fp, $f6
  /* 0484B0 800CCAD0 44835000 */      mtc1 $v1, $f10
  /* 0484B4 800CCAD4 86CF0028 */        lh $t7, 0x28($s6)
  /* 0484B8 800CCAD8 46803220 */   cvt.s.w $f8, $f6
  /* 0484BC 800CCADC 24010001 */     addiu $at, $zero, 1
  /* 0484C0 800CCAE0 4600A006 */     mov.s $f0, $f20
  /* 0484C4 800CCAE4 8FB800C8 */        lw $t8, 0xc8($sp)
  /* 0484C8 800CCAE8 46805120 */   cvt.s.w $f4, $f10
  /* 0484CC 800CCAEC 46089301 */     sub.s $f12, $f18, $f8
  /* 0484D0 800CCAF0 15E1003F */       bne $t7, $at, .L800CCBF0
  /* 0484D4 800CCAF4 46048381 */     sub.s $f14, $f16, $f4
  /* 0484D8 800CCAF8 44983000 */      mtc1 $t8, $f6
  /* 0484DC 800CCAFC 3C014480 */       lui $at, (0x44800000 >> 16) # 1024.0
  /* 0484E0 800CCB00 44819000 */      mtc1 $at, $f18 # 1024.0 to cop1
  /* 0484E4 800CCB04 46803220 */   cvt.s.w $f8, $f6
  /* 0484E8 800CCB08 3C013F00 */       lui $at, (0x3F000000 >> 16) # 0.5
  /* 0484EC 800CCB0C 4481A000 */      mtc1 $at, $f20 # 0.5 to cop1
  /* 0484F0 800CCB10 3C014180 */       lui $at, (0x41800000 >> 16) # 16.0
  /* 0484F4 800CCB14 4481B000 */      mtc1 $at, $f22 # 16.0 to cop1
  /* 0484F8 800CCB18 3C014200 */       lui $at, (0x42000000 >> 16) # 32.0
  /* 0484FC 800CCB1C 46004282 */     mul.s $f10, $f8, $f0
  /* 048500 800CCB20 4481C000 */      mtc1 $at, $f24 # 32.0 to cop1
  /* 048504 800CCB24 3C01800D */       lui $at, %hi(D_ovl0_800D5ED0)
  /* 048508 800CCB28 C4265ED0 */      lwc1 $f6, %lo(D_ovl0_800D5ED0)($at)
  /* 04850C 800CCB2C 02E02825 */        or $a1, $s7, $zero
  /* 048510 800CCB30 02C03025 */        or $a2, $s6, $zero
  /* 048514 800CCB34 02403825 */        or $a3, $s2, $zero
  /* 048518 800CCB38 460A8100 */     add.s $f4, $f16, $f10
  /* 04851C 800CCB3C AFBE0010 */        sw $fp, 0x10($sp)
  /* 048520 800CCB40 AFA30014 */        sw $v1, 0x14($sp)
  /* 048524 800CCB44 AFB50018 */        sw $s5, 0x18($sp)
  /* 048528 800CCB48 46062200 */     add.s $f8, $f4, $f6
  /* 04852C 800CCB4C 46029103 */     div.s $f4, $f18, $f2
  /* 048530 800CCB50 4600428D */ trunc.w.s $f10, $f8
  /* 048534 800CCB54 44105000 */      mfc1 $s0, $f10
  /* 048538 800CCB58 00000000 */       nop 
  /* 04853C 800CCB5C AFB0001C */        sw $s0, 0x1c($sp)
  /* 048540 800CCB60 46142180 */     add.s $f6, $f4, $f20
  /* 048544 800CCB64 4600320D */ trunc.w.s $f8, $f6
  /* 048548 800CCB68 44114000 */      mfc1 $s1, $f8
  /* 04854C 800CCB6C 00000000 */       nop 
  /* 048550 800CCB70 44915000 */      mtc1 $s1, $f10
  /* 048554 800CCB74 AFB10028 */        sw $s1, 0x28($sp)
  /* 048558 800CCB78 46805120 */   cvt.s.w $f4, $f10
  /* 04855C 800CCB7C 460C2182 */     mul.s $f6, $f4, $f12
  /* 048560 800CCB80 46163200 */     add.s $f8, $f6, $f22
  /* 048564 800CCB84 46009183 */     div.s $f6, $f18, $f0
  /* 048568 800CCB88 46184283 */     div.s $f10, $f8, $f24
  /* 04856C 800CCB8C 46143200 */     add.s $f8, $f6, $f20
  /* 048570 800CCB90 4600510D */ trunc.w.s $f4, $f10
  /* 048574 800CCB94 4600428D */ trunc.w.s $f10, $f8
  /* 048578 800CCB98 440C2000 */      mfc1 $t4, $f4
  /* 04857C 800CCB9C 44135000 */      mfc1 $s3, $f10
  /* 048580 800CCBA0 000C6823 */      negu $t5, $t4
  /* 048584 800CCBA4 000D7400 */       sll $t6, $t5, 0x10
  /* 048588 800CCBA8 44932000 */      mtc1 $s3, $f4
  /* 04858C 800CCBAC 000E7C03 */       sra $t7, $t6, 0x10
  /* 048590 800CCBB0 AFAF0020 */        sw $t7, 0x20($sp)
  /* 048594 800CCBB4 468021A0 */   cvt.s.w $f6, $f4
  /* 048598 800CCBB8 AFB3002C */        sw $s3, 0x2c($sp)
  /* 04859C 800CCBBC 460E3202 */     mul.s $f8, $f6, $f14
  /* 0485A0 800CCBC0 46164280 */     add.s $f10, $f8, $f22
  /* 0485A4 800CCBC4 46185103 */     div.s $f4, $f10, $f24
  /* 0485A8 800CCBC8 4600218D */ trunc.w.s $f6, $f4
  /* 0485AC 800CCBCC 440A3000 */      mfc1 $t2, $f6
  /* 0485B0 800CCBD0 00000000 */       nop 
  /* 0485B4 800CCBD4 000A5823 */      negu $t3, $t2
  /* 0485B8 800CCBD8 000B6400 */       sll $t4, $t3, 0x10
  /* 0485BC 800CCBDC 000C6C03 */       sra $t5, $t4, 0x10
  /* 0485C0 800CCBE0 0C032DF5 */       jal func_ovl0_800CB7D4
  /* 0485C4 800CCBE4 AFAD0024 */        sw $t5, 0x24($sp)
  /* 0485C8 800CCBE8 100000A1 */         b .L800CCE70
  /* 0485CC 800CCBEC 8FBF007C */        lw $ra, 0x7c($sp)
  .L800CCBF0:
  /* 0485D0 800CCBF0 AFA400E0 */        sw $a0, 0xe0($sp)
  /* 0485D4 800CCBF4 86CE002E */        lh $t6, 0x2e($s6)
  /* 0485D8 800CCBF8 3C014480 */       lui $at, (0x44800000 >> 16) # 1024.0
  /* 0485DC 800CCBFC 44819000 */      mtc1 $at, $f18 # 1024.0 to cop1
  /* 0485E0 800CCC00 448E4000 */      mtc1 $t6, $f8
  /* 0485E4 800CCC04 8FAF00C8 */        lw $t7, 0xc8($sp)
  /* 0485E8 800CCC08 3C013F00 */       lui $at, (0x3F000000 >> 16) # 0.5
  /* 0485EC 800CCC0C 468042A0 */   cvt.s.w $f10, $f8
  /* 0485F0 800CCC10 448F2000 */      mtc1 $t7, $f4
  /* 0485F4 800CCC14 E7A00090 */      swc1 $f0, 0x90($sp)
  /* 0485F8 800CCC18 AFB50018 */        sw $s5, 0x18($sp)
  /* 0485FC 800CCC1C AFA30014 */        sw $v1, 0x14($sp)
  /* 048600 800CCC20 468021A0 */   cvt.s.w $f6, $f4
  /* 048604 800CCC24 46005602 */     mul.s $f24, $f10, $f0
  /* 048608 800CCC28 44812000 */      mtc1 $at, $f4 # 0.5 to cop1
  /* 04860C 800CCC2C 3C014180 */       lui $at, (0x41800000 >> 16) # 16.0
  /* 048610 800CCC30 AFBE0010 */        sw $fp, 0x10($sp)
  /* 048614 800CCC34 02E02825 */        or $a1, $s7, $zero
  /* 048618 800CCC38 46003582 */     mul.s $f22, $f6, $f0
  /* 04861C 800CCC3C 02C03025 */        or $a2, $s6, $zero
  /* 048620 800CCC40 02403825 */        or $a3, $s2, $zero
  /* 048624 800CCC44 46029283 */     div.s $f10, $f18, $f2
  /* 048628 800CCC48 46168500 */     add.s $f20, $f16, $f22
  /* 04862C 800CCC4C 4600A20D */ trunc.w.s $f8, $f20
  /* 048630 800CCC50 44104000 */      mfc1 $s0, $f8
  /* 048634 800CCC54 00000000 */       nop 
  /* 048638 800CCC58 AFB0001C */        sw $s0, 0x1c($sp)
  /* 04863C 800CCC5C 46045180 */     add.s $f6, $f10, $f4
  /* 048640 800CCC60 4600320D */ trunc.w.s $f8, $f6
  /* 048644 800CCC64 44114000 */      mfc1 $s1, $f8
  /* 048648 800CCC68 44814000 */      mtc1 $at, $f8 # 16.0 to cop1
  /* 04864C 800CCC6C 3C014200 */       lui $at, (0x42000000 >> 16) # 32.0
  /* 048650 800CCC70 44915000 */      mtc1 $s1, $f10
  /* 048654 800CCC74 AFB10028 */        sw $s1, 0x28($sp)
  /* 048658 800CCC78 46805120 */   cvt.s.w $f4, $f10
  /* 04865C 800CCC7C 460C2182 */     mul.s $f6, $f4, $f12
  /* 048660 800CCC80 44812000 */      mtc1 $at, $f4 # 32.0 to cop1
  /* 048664 800CCC84 3C013F00 */       lui $at, (0x3F000000 >> 16) # 0.5
  /* 048668 800CCC88 46083280 */     add.s $f10, $f6, $f8
  /* 04866C 800CCC8C 46045183 */     div.s $f6, $f10, $f4
  /* 048670 800CCC90 44812000 */      mtc1 $at, $f4 # 0.5 to cop1
  /* 048674 800CCC94 3C014180 */       lui $at, (0x41800000 >> 16) # 16.0
  /* 048678 800CCC98 46009283 */     div.s $f10, $f18, $f0
  /* 04867C 800CCC9C 4600320D */ trunc.w.s $f8, $f6
  /* 048680 800CCCA0 44144000 */      mfc1 $s4, $f8
  /* 048684 800CCCA4 00000000 */       nop 
  /* 048688 800CCCA8 0014A023 */      negu $s4, $s4
  /* 04868C 800CCCAC 0014A400 */       sll $s4, $s4, 0x10
  /* 048690 800CCCB0 0014A403 */       sra $s4, $s4, 0x10
  /* 048694 800CCCB4 AFB40020 */        sw $s4, 0x20($sp)
  /* 048698 800CCCB8 46045180 */     add.s $f6, $f10, $f4
  /* 04869C 800CCCBC 4600320D */ trunc.w.s $f8, $f6
  /* 0486A0 800CCCC0 44813000 */      mtc1 $at, $f6 # 16.0 to cop1
  /* 0486A4 800CCCC4 3C014200 */       lui $at, (0x42000000 >> 16) # 32.0
  /* 0486A8 800CCCC8 44134000 */      mfc1 $s3, $f8
  /* 0486AC 800CCCCC 00000000 */       nop 
  /* 0486B0 800CCCD0 44935000 */      mtc1 $s3, $f10
  /* 0486B4 800CCCD4 AFB3002C */        sw $s3, 0x2c($sp)
  /* 0486B8 800CCCD8 468056A0 */   cvt.s.w $f26, $f10
  /* 0486BC 800CCCDC 44815000 */      mtc1 $at, $f10 # 32.0 to cop1
  /* 0486C0 800CCCE0 460ED102 */     mul.s $f4, $f26, $f14
  /* 0486C4 800CCCE4 46062200 */     add.s $f8, $f4, $f6
  /* 0486C8 800CCCE8 460A4103 */     div.s $f4, $f8, $f10
  /* 0486CC 800CCCEC 4600218D */ trunc.w.s $f6, $f4
  /* 0486D0 800CCCF0 440D3000 */      mfc1 $t5, $f6
  /* 0486D4 800CCCF4 00000000 */       nop 
  /* 0486D8 800CCCF8 000D7023 */      negu $t6, $t5
  /* 0486DC 800CCCFC 000E7C00 */       sll $t7, $t6, 0x10
  /* 0486E0 800CCD00 000FC403 */       sra $t8, $t7, 0x10
  /* 0486E4 800CCD04 0C032DF5 */       jal func_ovl0_800CB7D4
  /* 0486E8 800CCD08 AFB80024 */        sw $t8, 0x24($sp)
  /* 0486EC 800CCD0C 86D90028 */        lh $t9, 0x28($s6)
  /* 0486F0 800CCD10 26520010 */     addiu $s2, $s2, 0x10
  /* 0486F4 800CCD14 24030001 */     addiu $v1, $zero, 1
  /* 0486F8 800CCD18 272AFFFF */     addiu $t2, $t9, -1
  /* 0486FC 800CCD1C 29410002 */      slti $at, $t2, 2
  /* 048700 800CCD20 5420002C */      bnel $at, $zero, .L800CCDD4
  /* 048704 800CCD24 44903000 */      mtc1 $s0, $f6
  /* 048708 800CCD28 44904000 */      mtc1 $s0, $f8
  .L800CCD2C:
  /* 04870C 800CCD2C 02004825 */        or $t1, $s0, $zero
  /* 048710 800CCD30 AFA90014 */        sw $t1, 0x14($sp)
  /* 048714 800CCD34 468042A0 */   cvt.s.w $f10, $f8
  /* 048718 800CCD38 8FA400E0 */        lw $a0, 0xe0($sp)
  /* 04871C 800CCD3C 02E02825 */        or $a1, $s7, $zero
  /* 048720 800CCD40 02C03025 */        or $a2, $s6, $zero
  /* 048724 800CCD44 02403825 */        or $a3, $s2, $zero
  /* 048728 800CCD48 AFBE0010 */        sw $fp, 0x10($sp)
  /* 04872C 800CCD4C 460AA101 */     sub.s $f4, $f20, $f10
  /* 048730 800CCD50 AFB50018 */        sw $s5, 0x18($sp)
  /* 048734 800CCD54 AFB40020 */        sw $s4, 0x20($sp)
  /* 048738 800CCD58 4618A280 */     add.s $f10, $f20, $f24
  /* 04873C 800CCD5C 4604D182 */     mul.s $f6, $f26, $f4
  /* 048740 800CCD60 AFB10028 */        sw $s1, 0x28($sp)
  /* 048744 800CCD64 AFB3002C */        sw $s3, 0x2c($sp)
  /* 048748 800CCD68 AFA30080 */        sw $v1, 0x80($sp)
  /* 04874C 800CCD6C 4600510D */ trunc.w.s $f4, $f10
  /* 048750 800CCD70 4600320D */ trunc.w.s $f8, $f6
  /* 048754 800CCD74 44102000 */      mfc1 $s0, $f4
  /* 048758 800CCD78 44084000 */      mfc1 $t0, $f8
  /* 04875C 800CCD7C AFB0001C */        sw $s0, 0x1c($sp)
  /* 048760 800CCD80 25080010 */     addiu $t0, $t0, 0x10
  /* 048764 800CCD84 05010002 */      bgez $t0, .L800CCD90
  /* 048768 800CCD88 01000821 */      addu $at, $t0, $zero
  /* 04876C 800CCD8C 2501001F */     addiu $at, $t0, 0x1f
  .L800CCD90:
  /* 048770 800CCD90 00014143 */       sra $t0, $at, 5
  /* 048774 800CCD94 00084023 */      negu $t0, $t0
  /* 048778 800CCD98 00086C00 */       sll $t5, $t0, 0x10
  /* 04877C 800CCD9C 000D7403 */       sra $t6, $t5, 0x10
  /* 048780 800CCDA0 0C032DF5 */       jal func_ovl0_800CB7D4
  /* 048784 800CCDA4 AFAE0024 */        sw $t6, 0x24($sp)
  /* 048788 800CCDA8 8FAF00DC */        lw $t7, 0xdc($sp)
  /* 04878C 800CCDAC 8FA30080 */        lw $v1, 0x80($sp)
  /* 048790 800CCDB0 26520010 */     addiu $s2, $s2, 0x10
  /* 048794 800CCDB4 85F80028 */        lh $t8, 0x28($t7)
  /* 048798 800CCDB8 24630001 */     addiu $v1, $v1, 1
  /* 04879C 800CCDBC 4616A500 */     add.s $f20, $f20, $f22
  /* 0487A0 800CCDC0 2719FFFF */     addiu $t9, $t8, -1
  /* 0487A4 800CCDC4 0079082A */       slt $at, $v1, $t9
  /* 0487A8 800CCDC8 5420FFD8 */      bnel $at, $zero, .L800CCD2C
  /* 0487AC 800CCDCC 44904000 */      mtc1 $s0, $f8
  /* 0487B0 800CCDD0 44903000 */      mtc1 $s0, $f6
  .L800CCDD4:
  /* 0487B4 800CCDD4 864B000C */        lh $t3, 0xc($s2)
  /* 0487B8 800CCDD8 02004825 */        or $t1, $s0, $zero
  /* 0487BC 800CCDDC 46803220 */   cvt.s.w $f8, $f6
  /* 0487C0 800CCDE0 AFA90014 */        sw $t1, 0x14($sp)
  /* 0487C4 800CCDE4 AFB3002C */        sw $s3, 0x2c($sp)
  /* 0487C8 800CCDE8 AFB10028 */        sw $s1, 0x28($sp)
  /* 0487CC 800CCDEC AFB40020 */        sw $s4, 0x20($sp)
  /* 0487D0 800CCDF0 AFB50018 */        sw $s5, 0x18($sp)
  /* 0487D4 800CCDF4 4608A281 */     sub.s $f10, $f20, $f8
  /* 0487D8 800CCDF8 448B4000 */      mtc1 $t3, $f8
  /* 0487DC 800CCDFC AFBE0010 */        sw $fp, 0x10($sp)
  /* 0487E0 800CCE00 8FA400E0 */        lw $a0, 0xe0($sp)
  /* 0487E4 800CCE04 460AD102 */     mul.s $f4, $f26, $f10
  /* 0487E8 800CCE08 02E02825 */        or $a1, $s7, $zero
  /* 0487EC 800CCE0C 02C03025 */        or $a2, $s6, $zero
  /* 0487F0 800CCE10 02403825 */        or $a3, $s2, $zero
  /* 0487F4 800CCE14 468042A0 */   cvt.s.w $f10, $f8
  /* 0487F8 800CCE18 4600218D */ trunc.w.s $f6, $f4
  /* 0487FC 800CCE1C C7A40090 */      lwc1 $f4, 0x90($sp)
  /* 048800 800CCE20 44083000 */      mfc1 $t0, $f6
  /* 048804 800CCE24 46045182 */     mul.s $f6, $f10, $f4
  /* 048808 800CCE28 25080010 */     addiu $t0, $t0, 0x10
  /* 04880C 800CCE2C 05010002 */      bgez $t0, .L800CCE38
  /* 048810 800CCE30 01000821 */      addu $at, $t0, $zero
  /* 048814 800CCE34 2501001F */     addiu $at, $t0, 0x1f
  .L800CCE38:
  /* 048818 800CCE38 00014143 */       sra $t0, $at, 5
  /* 04881C 800CCE3C 46143200 */     add.s $f8, $f6, $f20
  /* 048820 800CCE40 3C01800D */       lui $at, %hi(D_ovl0_800D5ED4)
  /* 048824 800CCE44 C42A5ED4 */      lwc1 $f10, %lo(D_ovl0_800D5ED4)($at)
  /* 048828 800CCE48 00084023 */      negu $t0, $t0
  /* 04882C 800CCE4C 00086C00 */       sll $t5, $t0, 0x10
  /* 048830 800CCE50 460A4100 */     add.s $f4, $f8, $f10
  /* 048834 800CCE54 000D7403 */       sra $t6, $t5, 0x10
  /* 048838 800CCE58 AFAE0024 */        sw $t6, 0x24($sp)
  /* 04883C 800CCE5C 4600218D */ trunc.w.s $f6, $f4
  /* 048840 800CCE60 44103000 */      mfc1 $s0, $f6
  /* 048844 800CCE64 0C032DF5 */       jal func_ovl0_800CB7D4
  /* 048848 800CCE68 AFB0001C */        sw $s0, 0x1c($sp)
  .L800CCE6C:
  /* 04884C 800CCE6C 8FBF007C */        lw $ra, 0x7c($sp)
  .L800CCE70:
  /* 048850 800CCE70 D7B40038 */      ldc1 $f20, 0x38($sp)
  /* 048854 800CCE74 D7B60040 */      ldc1 $f22, 0x40($sp)
  /* 048858 800CCE78 D7B80048 */      ldc1 $f24, 0x48($sp)
  /* 04885C 800CCE7C D7BA0050 */      ldc1 $f26, 0x50($sp)
  /* 048860 800CCE80 8FB00058 */        lw $s0, 0x58($sp)
  /* 048864 800CCE84 8FB1005C */        lw $s1, 0x5c($sp)
  /* 048868 800CCE88 8FB20060 */        lw $s2, 0x60($sp)
  /* 04886C 800CCE8C 8FB30064 */        lw $s3, 0x64($sp)
  /* 048870 800CCE90 8FB40068 */        lw $s4, 0x68($sp)
  /* 048874 800CCE94 8FB5006C */        lw $s5, 0x6c($sp)
  /* 048878 800CCE98 8FB60070 */        lw $s6, 0x70($sp)
  /* 04887C 800CCE9C 8FB70074 */        lw $s7, 0x74($sp)
  /* 048880 800CCEA0 8FBE0078 */        lw $fp, 0x78($sp)
  /* 048884 800CCEA4 03E00008 */        jr $ra
  /* 048888 800CCEA8 27BD00E0 */     addiu $sp, $sp, 0xe0

glabel func_ovl0_800CCEAC
  /* 04888C 800CCEAC 240E0800 */     addiu $t6, $zero, 0x800
  /* 048890 800CCEB0 3C01800D */       lui $at, %hi(D_ovl0_800D62B0)
  /* 048894 800CCEB4 A42E62B0 */        sh $t6, %lo(D_ovl0_800D62B0)($at)
  /* 048898 800CCEB8 3C01800D */       lui $at, %hi(D_ovl0_800D62B2)
  /* 04889C 800CCEBC 340FFFFF */       ori $t7, $zero, 0xffff
  /* 0488A0 800CCEC0 A42F62B2 */        sh $t7, %lo(D_ovl0_800D62B2)($at)
  /* 0488A4 800CCEC4 3C01800D */       lui $at, %hi(D_ovl0_800D62B4)
  /* 0488A8 800CCEC8 AC2062B4 */        sw $zero, %lo(D_ovl0_800D62B4)($at)
  /* 0488AC 800CCECC 3C01800D */       lui $at, %hi(D_ovl0_800D62B8)
  /* 0488B0 800CCED0 03E00008 */        jr $ra
  /* 0488B4 800CCED4 AC2062B8 */        sw $zero, %lo(D_ovl0_800D62B8)($at)

glabel func_ovl0_800CCED8
  /* 0488B8 800CCED8 948E0014 */       lhu $t6, 0x14($a0)
  /* 0488BC 800CCEDC 3C01800D */       lui $at, %hi(D_ovl0_800D62B0)
  /* 0488C0 800CCEE0 A42E62B0 */        sh $t6, %lo(D_ovl0_800D62B0)($at)
  /* 0488C4 800CCEE4 908F0030 */       lbu $t7, 0x30($a0)
  /* 0488C8 800CCEE8 3C01800D */       lui $at, %hi(D_ovl0_800D62B2)
  /* 0488CC 800CCEEC A42F62B2 */        sh $t7, %lo(D_ovl0_800D62B2)($at)
  /* 0488D0 800CCEF0 8C980020 */        lw $t8, 0x20($a0)
  /* 0488D4 800CCEF4 3C01800D */       lui $at, %hi(D_ovl0_800D62B8)
  /* 0488D8 800CCEF8 03E00008 */        jr $ra
  /* 0488DC 800CCEFC AC3862B8 */        sw $t8, %lo(D_ovl0_800D62B8)($at)

glabel func_ovl0_800CCF00
  /* 0488E0 800CCF00 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0488E4 800CCF04 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0488E8 800CCF08 AFB10018 */        sw $s1, 0x18($sp)
  /* 0488EC 800CCF0C AFB00014 */        sw $s0, 0x14($sp)
  /* 0488F0 800CCF10 8C900074 */        lw $s0, 0x74($a0)
  /* 0488F4 800CCF14 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 0488F8 800CCF18 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 0488FC 800CCF1C 52000011 */      beql $s0, $zero, .L800CCF64
  /* 048900 800CCF20 8FBF001C */        lw $ra, 0x1c($sp)
  /* 048904 800CCF24 960E0024 */       lhu $t6, 0x24($s0)
  .L800CCF28:
  /* 048908 800CCF28 02202025 */        or $a0, $s1, $zero
  /* 04890C 800CCF2C 31CF0004 */      andi $t7, $t6, 4
  /* 048910 800CCF30 55E00009 */      bnel $t7, $zero, .L800CCF58
  /* 048914 800CCF34 8E100008 */        lw $s0, 8($s0)
  /* 048918 800CCF38 0C033046 */       jal func_ovl0_800CC118
  /* 04891C 800CCF3C 02002825 */        or $a1, $s0, $zero
  /* 048920 800CCF40 02202025 */        or $a0, $s1, $zero
  /* 048924 800CCF44 0C033206 */       jal func_ovl0_800CC818
  /* 048928 800CCF48 02002825 */        or $a1, $s0, $zero
  /* 04892C 800CCF4C 0C0333B6 */       jal func_ovl0_800CCED8
  /* 048930 800CCF50 26040010 */     addiu $a0, $s0, 0x10
  /* 048934 800CCF54 8E100008 */        lw $s0, 8($s0)
  .L800CCF58:
  /* 048938 800CCF58 5600FFF3 */      bnel $s0, $zero, .L800CCF28
  /* 04893C 800CCF5C 960E0024 */       lhu $t6, 0x24($s0)
  /* 048940 800CCF60 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CCF64:
  /* 048944 800CCF64 8FB00014 */        lw $s0, 0x14($sp)
  /* 048948 800CCF68 8FB10018 */        lw $s1, 0x18($sp)
  /* 04894C 800CCF6C 03E00008 */        jr $ra
  /* 048950 800CCF70 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_ovl0_800CCF74
  /* 048954 800CCF74 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 048958 800CCF78 AFBF001C */        sw $ra, 0x1c($sp)
  /* 04895C 800CCF7C AFB10018 */        sw $s1, 0x18($sp)
  /* 048960 800CCF80 AFB00014 */        sw $s0, 0x14($sp)
  /* 048964 800CCF84 8C900074 */        lw $s0, 0x74($a0)
  /* 048968 800CCF88 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 04896C 800CCF8C 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 048970 800CCF90 5200000E */      beql $s0, $zero, .L800CCFCC
  /* 048974 800CCF94 8FBF001C */        lw $ra, 0x1c($sp)
  /* 048978 800CCF98 960E0024 */       lhu $t6, 0x24($s0)
  .L800CCF9C:
  /* 04897C 800CCF9C 02202025 */        or $a0, $s1, $zero
  /* 048980 800CCFA0 31CF0004 */      andi $t7, $t6, 4
  /* 048984 800CCFA4 55E00006 */      bnel $t7, $zero, .L800CCFC0
  /* 048988 800CCFA8 8E100008 */        lw $s0, 8($s0)
  /* 04898C 800CCFAC 0C033206 */       jal func_ovl0_800CC818
  /* 048990 800CCFB0 02002825 */        or $a1, $s0, $zero
  /* 048994 800CCFB4 0C0333AB */       jal func_ovl0_800CCEAC
  /* 048998 800CCFB8 00000000 */       nop 
  /* 04899C 800CCFBC 8E100008 */        lw $s0, 8($s0)
  .L800CCFC0:
  /* 0489A0 800CCFC0 5600FFF6 */      bnel $s0, $zero, .L800CCF9C
  /* 0489A4 800CCFC4 960E0024 */       lhu $t6, 0x24($s0)
  /* 0489A8 800CCFC8 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CCFCC:
  /* 0489AC 800CCFCC 8FB00014 */        lw $s0, 0x14($sp)
  /* 0489B0 800CCFD0 8FB10018 */        lw $s1, 0x18($sp)
  /* 0489B4 800CCFD4 03E00008 */        jr $ra
  /* 0489B8 800CCFD8 27BD0020 */     addiu $sp, $sp, 0x20

# draw 2d data image?
glabel func_ovl0_800CCFDC
  /* 0489BC 800CCFDC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0489C0 800CCFE0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0489C4 800CCFE4 AFA40018 */        sw $a0, 0x18($sp)
  /* 0489C8 800CCFE8 90AE0031 */       lbu $t6, 0x31($a1)
  /* 0489CC 800CCFEC 24010004 */     addiu $at, $zero, 4
  /* 0489D0 800CCFF0 00A02025 */        or $a0, $a1, $zero
  /* 0489D4 800CCFF4 15C10004 */       bne $t6, $at, .L800CD008
  /* 0489D8 800CCFF8 00000000 */       nop 
  /* 0489DC 800CCFFC 0C032DCE */       jal func_ovl0_800CB738
  /* 0489E0 800CD000 AFA5001C */        sw $a1, 0x1c($sp)
  /* 0489E4 800CD004 8FA5001C */        lw $a1, 0x1c($sp)
  .L800CD008:
  /* 0489E8 800CD008 0C002585 */       jal func_80009614
  /* 0489EC 800CD00C 8FA40018 */        lw $a0, 0x18($sp)
  /* 0489F0 800CD010 44800000 */      mtc1 $zero, $f0
  /* 0489F4 800CD014 24190002 */     addiu $t9, $zero, 2
  /* 0489F8 800CD018 A0400063 */        sb $zero, 0x63($v0)
  /* 0489FC 800CD01C A0400062 */        sb $zero, 0x62($v0)
  /* 048A00 800CD020 A0400061 */        sb $zero, 0x61($v0)
  /* 048A04 800CD024 A0400060 */        sb $zero, 0x60($v0)
  /* 048A08 800CD028 A0400067 */        sb $zero, 0x67($v0)
  /* 048A0C 800CD02C A0400066 */        sb $zero, 0x66($v0)
  /* 048A10 800CD030 A0590065 */        sb $t9, 0x65($v0)
  /* 048A14 800CD034 A0590064 */        sb $t9, 0x64($v0)
  /* 048A18 800CD038 E440005C */      swc1 $f0, 0x5c($v0)
  /* 048A1C 800CD03C E4400058 */      swc1 $f0, 0x58($v0)
  /* 048A20 800CD040 8FBF0014 */        lw $ra, 0x14($sp)
  /* 048A24 800CD044 27BD0018 */     addiu $sp, $sp, 0x18
  /* 048A28 800CD048 03E00008 */        jr $ra
  /* 048A2C 800CD04C 00000000 */       nop 

glabel func_ovl0_800CD050
  /* 048A30 800CD050 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 048A34 800CD054 AFBF0024 */        sw $ra, 0x24($sp)
  /* 048A38 800CD058 AFB00020 */        sw $s0, 0x20($sp)
  /* 048A3C 800CD05C 0C00265A */       jal func_80009968
  /* 048A40 800CD060 30C600FF */      andi $a2, $a2, 0xff
  /* 048A44 800CD064 14400003 */      bnez $v0, .L800CD074
  /* 048A48 800CD068 00408025 */        or $s0, $v0, $zero
  /* 048A4C 800CD06C 10000013 */         b .L800CD0BC
  /* 048A50 800CD070 00001025 */        or $v0, $zero, $zero
  .L800CD074:
  /* 048A54 800CD074 8FAE0044 */        lw $t6, 0x44($sp)
  /* 048A58 800CD078 02002025 */        or $a0, $s0, $zero
  /* 048A5C 800CD07C 8FA50038 */        lw $a1, 0x38($sp)
  /* 048A60 800CD080 93A6003F */       lbu $a2, 0x3f($sp)
  /* 048A64 800CD084 8FA70040 */        lw $a3, 0x40($sp)
  /* 048A68 800CD088 0C00277D */       jal func_80009DF4
  /* 048A6C 800CD08C AFAE0010 */        sw $t6, 0x10($sp)
  /* 048A70 800CD090 02002025 */        or $a0, $s0, $zero
  /* 048A74 800CD094 0C0333F7 */       jal func_ovl0_800CCFDC
  /* 048A78 800CD098 8FA50048 */        lw $a1, 0x48($sp)
  /* 048A7C 800CD09C 8FA50050 */        lw $a1, 0x50($sp)
  /* 048A80 800CD0A0 02002025 */        or $a0, $s0, $zero
  /* 048A84 800CD0A4 93A6004F */       lbu $a2, 0x4f($sp)
  /* 048A88 800CD0A8 50A00004 */      beql $a1, $zero, .L800CD0BC
  /* 048A8C 800CD0AC 02001025 */        or $v0, $s0, $zero
  /* 048A90 800CD0B0 0C002062 */       jal func_80008188
  /* 048A94 800CD0B4 8FA70054 */        lw $a3, 0x54($sp)
  /* 048A98 800CD0B8 02001025 */        or $v0, $s0, $zero
  .L800CD0BC:
  /* 048A9C 800CD0BC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 048AA0 800CD0C0 8FB00020 */        lw $s0, 0x20($sp)
  /* 048AA4 800CD0C4 27BD0028 */     addiu $sp, $sp, 0x28
  /* 048AA8 800CD0C8 03E00008 */        jr $ra
  /* 048AAC 800CD0CC 00000000 */       nop 

glabel func_ovl0_800CD0D0
  /* 048AB0 800CD0D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 048AB4 800CD0D4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 048AB8 800CD0D8 AFA40020 */        sw $a0, 0x20($sp)
  /* 048ABC 800CD0DC 8C820000 */        lw $v0, ($a0)
  /* 048AC0 800CD0E0 0C0333AB */       jal func_ovl0_800CCEAC
  /* 048AC4 800CD0E4 AFA2001C */        sw $v0, 0x1c($sp)
  /* 048AC8 800CD0E8 8FA3001C */        lw $v1, 0x1c($sp)
  /* 048ACC 800CD0EC 3C0FE700 */       lui $t7, 0xe700
  /* 048AD0 800CD0F0 3C18E300 */       lui $t8, (0xE3000A01 >> 16) # 3808430593
  /* 048AD4 800CD0F4 24640008 */     addiu $a0, $v1, 8
  /* 048AD8 800CD0F8 AC6F0000 */        sw $t7, ($v1)
  /* 048ADC 800CD0FC AC600004 */        sw $zero, 4($v1)
  /* 048AE0 800CD100 24850008 */     addiu $a1, $a0, 8
  /* 048AE4 800CD104 37180A01 */       ori $t8, $t8, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 048AE8 800CD108 AC980000 */        sw $t8, ($a0)
  /* 048AEC 800CD10C AC800004 */        sw $zero, 4($a0)
  /* 048AF0 800CD110 24A60008 */     addiu $a2, $a1, 8
  /* 048AF4 800CD114 3C19F900 */       lui $t9, 0xf900
  /* 048AF8 800CD118 24080008 */     addiu $t0, $zero, 8
  /* 048AFC 800CD11C ACA80004 */        sw $t0, 4($a1)
  /* 048B00 800CD120 ACB90000 */        sw $t9, ($a1)
  /* 048B04 800CD124 3C09E200 */       lui $t1, (0xE2001E01 >> 16) # 3791658497
  /* 048B08 800CD128 35291E01 */       ori $t1, $t1, (0xE2001E01 & 0xFFFF) # 3791658497
  /* 048B0C 800CD12C 24C70008 */     addiu $a3, $a2, 8
  /* 048B10 800CD130 240A0001 */     addiu $t2, $zero, 1
  /* 048B14 800CD134 ACCA0004 */        sw $t2, 4($a2)
  /* 048B18 800CD138 ACC90000 */        sw $t1, ($a2)
  /* 048B1C 800CD13C 3C0BE300 */       lui $t3, (0xE3000C00 >> 16) # 3808431104
  /* 048B20 800CD140 356B0C00 */       ori $t3, $t3, (0xE3000C00 & 0xFFFF) # 3808431104
  /* 048B24 800CD144 ACEB0000 */        sw $t3, ($a3)
  /* 048B28 800CD148 ACE00004 */        sw $zero, 4($a3)
  /* 048B2C 800CD14C 24E20008 */     addiu $v0, $a3, 8
  /* 048B30 800CD150 3C0CE300 */       lui $t4, (0xE3001201 >> 16) # 3808432641
  /* 048B34 800CD154 358C1201 */       ori $t4, $t4, (0xE3001201 & 0xFFFF) # 3808432641
  /* 048B38 800CD158 24440008 */     addiu $a0, $v0, 8
  /* 048B3C 800CD15C 240D2000 */     addiu $t5, $zero, 0x2000
  /* 048B40 800CD160 AC4D0004 */        sw $t5, 4($v0)
  /* 048B44 800CD164 AC4C0000 */        sw $t4, ($v0)
  /* 048B48 800CD168 3C0EE300 */       lui $t6, (0xE3001402 >> 16) # 3808433154
  /* 048B4C 800CD16C 35CE1402 */       ori $t6, $t6, (0xE3001402 & 0xFFFF) # 3808433154
  /* 048B50 800CD170 24850008 */     addiu $a1, $a0, 8
  /* 048B54 800CD174 240F0C00 */     addiu $t7, $zero, 0xc00
  /* 048B58 800CD178 AC8F0004 */        sw $t7, 4($a0)
  /* 048B5C 800CD17C AC8E0000 */        sw $t6, ($a0)
  /* 048B60 800CD180 3C18E300 */       lui $t8, (0xE3000D01 >> 16) # 3808431361
  /* 048B64 800CD184 37180D01 */       ori $t8, $t8, (0xE3000D01 & 0xFFFF) # 3808431361
  /* 048B68 800CD188 24A60008 */     addiu $a2, $a1, 8
  /* 048B6C 800CD18C ACB80000 */        sw $t8, ($a1)
  /* 048B70 800CD190 ACA00004 */        sw $zero, 4($a1)
  /* 048B74 800CD194 3C19E300 */       lui $t9, (0xE3000F00 >> 16) # 3808431872
  /* 048B78 800CD198 37390F00 */       ori $t9, $t9, (0xE3000F00 & 0xFFFF) # 3808431872
  /* 048B7C 800CD19C 24C70008 */     addiu $a3, $a2, 8
  /* 048B80 800CD1A0 ACD90000 */        sw $t9, ($a2)
  /* 048B84 800CD1A4 ACC00004 */        sw $zero, 4($a2)
  /* 048B88 800CD1A8 3C08E300 */       lui $t0, (0xE3001001 >> 16) # 3808432129
  /* 048B8C 800CD1AC 35081001 */       ori $t0, $t0, (0xE3001001 & 0xFFFF) # 3808432129
  /* 048B90 800CD1B0 ACE80000 */        sw $t0, ($a3)
  /* 048B94 800CD1B4 ACE00004 */        sw $zero, 4($a3)
  /* 048B98 800CD1B8 24E30008 */     addiu $v1, $a3, 8
  /* 048B9C 800CD1BC 3C09E200 */       lui $t1, (0xE200001C >> 16) # 3791650844
  /* 048BA0 800CD1C0 3C0A0F0A */       lui $t2, (0xF0A4000 >> 16) # 252329984
  /* 048BA4 800CD1C4 354A4000 */       ori $t2, $t2, (0xF0A4000 & 0xFFFF) # 252329984
  /* 048BA8 800CD1C8 3529001C */       ori $t1, $t1, (0xE200001C & 0xFFFF) # 3791650844
  /* 048BAC 800CD1CC AC690000 */        sw $t1, ($v1)
  /* 048BB0 800CD1D0 AC6A0004 */        sw $t2, 4($v1)
  /* 048BB4 800CD1D4 8FAB0020 */        lw $t3, 0x20($sp)
  /* 048BB8 800CD1D8 24620008 */     addiu $v0, $v1, 8
  /* 048BBC 800CD1DC AD620000 */        sw $v0, ($t3)
  /* 048BC0 800CD1E0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 048BC4 800CD1E4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 048BC8 800CD1E8 03E00008 */        jr $ra
  /* 048BCC 800CD1EC 00000000 */       nop 

glabel func_ovl0_800CD1F0
  /* 048BD0 800CD1F0 3C01800D */       lui $at, %hi(D_ovl0_800D62C4)
  /* 048BD4 800CD1F4 AC2462C4 */        sw $a0, %lo(D_ovl0_800D62C4)($at)
  /* 048BD8 800CD1F8 3C01800D */       lui $at, %hi(D_ovl0_800D62C8)
  /* 048BDC 800CD1FC AC2662C8 */        sw $a2, %lo(D_ovl0_800D62C8)($at)
  /* 048BE0 800CD200 3C01800D */       lui $at, %hi(D_ovl0_800D62BC)
  /* 048BE4 800CD204 AC2562BC */        sw $a1, %lo(D_ovl0_800D62BC)($at)
  /* 048BE8 800CD208 3C01800D */       lui $at, %hi(D_ovl0_800D62C0)
  /* 048BEC 800CD20C 03E00008 */        jr $ra
  /* 048BF0 800CD210 AC2762C0 */        sw $a3, %lo(D_ovl0_800D62C0)($at)

glabel func_ovl0_800CD214
  /* 048BF4 800CD214 8C820000 */        lw $v0, ($a0)
  /* 048BF8 800CD218 3C0EFCFF */       lui $t6, (0xFCFFFFFF >> 16) # 4244635647
  /* 048BFC 800CD21C 3C0FFFFE */       lui $t7, (0xFFFE793C >> 16) # 4294867260
  /* 048C00 800CD220 00401825 */        or $v1, $v0, $zero
  /* 048C04 800CD224 24420008 */     addiu $v0, $v0, 8
  /* 048C08 800CD228 35EF793C */       ori $t7, $t7, (0xFFFE793C & 0xFFFF) # 4294867260
  /* 048C0C 800CD22C 35CEFFFF */       ori $t6, $t6, (0xFCFFFFFF & 0xFFFF) # 4244635647
  /* 048C10 800CD230 00402825 */        or $a1, $v0, $zero
  /* 048C14 800CD234 AC6E0000 */        sw $t6, ($v1)
  /* 048C18 800CD238 AC6F0004 */        sw $t7, 4($v1)
  /* 048C1C 800CD23C 3C18E200 */       lui $t8, (0xE2001E01 >> 16) # 3791658497
  /* 048C20 800CD240 37181E01 */       ori $t8, $t8, (0xE2001E01 & 0xFFFF) # 3791658497
  /* 048C24 800CD244 24420008 */     addiu $v0, $v0, 8
  /* 048C28 800CD248 ACB80000 */        sw $t8, ($a1)
  /* 048C2C 800CD24C ACA00004 */        sw $zero, 4($a1)
  /* 048C30 800CD250 00403025 */        or $a2, $v0, $zero
  /* 048C34 800CD254 3C19E300 */       lui $t9, (0xE3000C00 >> 16) # 3808431104
  /* 048C38 800CD258 37390C00 */       ori $t9, $t9, (0xE3000C00 & 0xFFFF) # 3808431104
  /* 048C3C 800CD25C 3C080008 */       lui $t0, 8
  /* 048C40 800CD260 ACC80004 */        sw $t0, 4($a2)
  /* 048C44 800CD264 ACD90000 */        sw $t9, ($a2)
  /* 048C48 800CD268 3C09800D */       lui $t1, %hi(D_ovl0_800D62B0)
  /* 048C4C 800CD26C 952962B0 */       lhu $t1, %lo(D_ovl0_800D62B0)($t1)
  /* 048C50 800CD270 24420008 */     addiu $v0, $v0, 8
  /* 048C54 800CD274 00401825 */        or $v1, $v0, $zero
  /* 048C58 800CD278 312A0001 */      andi $t2, $t1, 1
  /* 048C5C 800CD27C 11400008 */      beqz $t2, .L800CD2A0
  /* 048C60 800CD280 3C0D800D */       lui $t5, %hi(D_ovl0_800D62B2)
  /* 048C64 800CD284 3C0BE200 */       lui $t3, (0xE200001C >> 16) # 3791650844
  /* 048C68 800CD288 3C0C0F0A */       lui $t4, (0xF0A4000 >> 16) # 252329984
  /* 048C6C 800CD28C 358C4000 */       ori $t4, $t4, (0xF0A4000 & 0xFFFF) # 252329984
  /* 048C70 800CD290 356B001C */       ori $t3, $t3, (0xE200001C & 0xFFFF) # 3791650844
  /* 048C74 800CD294 AC6B0000 */        sw $t3, ($v1)
  /* 048C78 800CD298 AC6C0004 */        sw $t4, 4($v1)
  /* 048C7C 800CD29C 24420008 */     addiu $v0, $v0, 8
  .L800CD2A0:
  /* 048C80 800CD2A0 95AD62B2 */       lhu $t5, %lo(D_ovl0_800D62B2)($t5)
  /* 048C84 800CD2A4 24010002 */     addiu $at, $zero, 2
  /* 048C88 800CD2A8 00401825 */        or $v1, $v0, $zero
  /* 048C8C 800CD2AC 15A10005 */       bne $t5, $at, .L800CD2C4
  /* 048C90 800CD2B0 3C0EE300 */       lui $t6, (0xE3001001 >> 16) # 3808432129
  /* 048C94 800CD2B4 35CE1001 */       ori $t6, $t6, (0xE3001001 & 0xFFFF) # 3808432129
  /* 048C98 800CD2B8 AC6E0000 */        sw $t6, ($v1)
  /* 048C9C 800CD2BC 24420008 */     addiu $v0, $v0, 8
  /* 048CA0 800CD2C0 AC600004 */        sw $zero, 4($v1)
  .L800CD2C4:
  /* 048CA4 800CD2C4 03E00008 */        jr $ra
  /* 048CA8 800CD2C8 AC820000 */        sw $v0, ($a0)

glabel func_ovl0_800CD2CC
  /* 048CAC 800CD2CC 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 048CB0 800CD2D0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 048CB4 800CD2D4 AFA40030 */        sw $a0, 0x30($sp)
  /* 048CB8 800CD2D8 8C880074 */        lw $t0, 0x74($a0)
  /* 048CBC 800CD2DC 3C098004 */       lui $t1, %hi(gCurrScreenWidth)
  /* 048CC0 800CD2E0 8D296678 */        lw $t1, %lo(gCurrScreenWidth)($t1)
  /* 048CC4 800CD2E4 85020010 */        lh $v0, 0x10($t0)
  /* 048CC8 800CD2E8 85030008 */        lh $v1, 8($t0)
  /* 048CCC 800CD2EC 85050012 */        lh $a1, 0x12($t0)
  /* 048CD0 800CD2F0 8506000A */        lh $a2, 0xa($t0)
  /* 048CD4 800CD2F4 241F000A */     addiu $ra, $zero, 0xa
  /* 048CD8 800CD2F8 00807025 */        or $t6, $a0, $zero
  /* 048CDC 800CD2FC 04410002 */      bgez $v0, .L800CD308
  /* 048CE0 800CD300 00400821 */      addu $at, $v0, $zero
  /* 048CE4 800CD304 24410003 */     addiu $at, $v0, 3
  .L800CD308:
  /* 048CE8 800CD308 00011083 */       sra $v0, $at, 2
  /* 048CEC 800CD30C 04610002 */      bgez $v1, .L800CD318
  /* 048CF0 800CD310 00600821 */      addu $at, $v1, $zero
  /* 048CF4 800CD314 24610003 */     addiu $at, $v1, 3
  .L800CD318:
  /* 048CF8 800CD318 00011883 */       sra $v1, $at, 2
  /* 048CFC 800CD31C 00435023 */      subu $t2, $v0, $v1
  /* 048D00 800CD320 04A10002 */      bgez $a1, .L800CD32C
  /* 048D04 800CD324 00A00821 */      addu $at, $a1, $zero
  /* 048D08 800CD328 24A10003 */     addiu $at, $a1, 3
  .L800CD32C:
  /* 048D0C 800CD32C 00012883 */       sra $a1, $at, 2
  /* 048D10 800CD330 04C10002 */      bgez $a2, .L800CD33C
  /* 048D14 800CD334 00C00821 */      addu $at, $a2, $zero
  /* 048D18 800CD338 24C10003 */     addiu $at, $a2, 3
  .L800CD33C:
  /* 048D1C 800CD33C 00013083 */       sra $a2, $at, 2
  /* 048D20 800CD340 24010140 */     addiu $at, $zero, 0x140
  /* 048D24 800CD344 0121001A */       div $zero, $t1, $at
  /* 048D28 800CD348 00007812 */      mflo $t7
  /* 048D2C 800CD34C 00626021 */      addu $t4, $v1, $v0
  /* 048D30 800CD350 00A65823 */      subu $t3, $a1, $a2
  /* 048D34 800CD354 01FF0019 */     multu $t7, $ra
  /* 048D38 800CD358 00C56821 */      addu $t5, $a2, $a1
  /* 048D3C 800CD35C 3C038004 */       lui $v1, %hi(gCurrScreenHeight)
  /* 048D40 800CD360 00003812 */      mflo $a3
  /* 048D44 800CD364 0147082A */       slt $at, $t2, $a3
  /* 048D48 800CD368 10200002 */      beqz $at, .L800CD374
  /* 048D4C 800CD36C 01272023 */      subu $a0, $t1, $a3
  /* 048D50 800CD370 00E05025 */        or $t2, $a3, $zero
  .L800CD374:
  /* 048D54 800CD374 8C63667C */        lw $v1, %lo(gCurrScreenHeight)($v1)
  /* 048D58 800CD378 240100F0 */     addiu $at, $zero, 0xf0
  /* 048D5C 800CD37C 0061001A */       div $zero, $v1, $at
  /* 048D60 800CD380 0000C012 */      mflo $t8
  /* 048D64 800CD384 00000000 */       nop 
  /* 048D68 800CD388 00000000 */       nop 
  /* 048D6C 800CD38C 031F0019 */     multu $t8, $ra
  /* 048D70 800CD390 00001012 */      mflo $v0
  /* 048D74 800CD394 0162082A */       slt $at, $t3, $v0
  /* 048D78 800CD398 50200003 */      beql $at, $zero, .L800CD3A8
  /* 048D7C 800CD39C 008C082A */       slt $at, $a0, $t4
  /* 048D80 800CD3A0 00405825 */        or $t3, $v0, $zero
  /* 048D84 800CD3A4 008C082A */       slt $at, $a0, $t4
  .L800CD3A8:
  /* 048D88 800CD3A8 50200003 */      beql $at, $zero, .L800CD3B8
  /* 048D8C 800CD3AC 00622023 */      subu $a0, $v1, $v0
  /* 048D90 800CD3B0 00806025 */        or $t4, $a0, $zero
  /* 048D94 800CD3B4 00622023 */      subu $a0, $v1, $v0
  .L800CD3B8:
  /* 048D98 800CD3B8 008D082A */       slt $at, $a0, $t5
  /* 048D9C 800CD3BC 10200002 */      beqz $at, .L800CD3C8
  /* 048DA0 800CD3C0 00000000 */       nop 
  /* 048DA4 800CD3C4 00806825 */        or $t5, $a0, $zero
  .L800CD3C8:
  /* 048DA8 800CD3C8 3C048004 */       lui $a0, %hi(D_800465B0)
  /* 048DAC 800CD3CC 248465B0 */     addiu $a0, $a0, %lo(D_800465B0)
  /* 048DB0 800CD3D0 AFA8002C */        sw $t0, 0x2c($sp)
  /* 048DB4 800CD3D4 AFAA0024 */        sw $t2, 0x24($sp)
  /* 048DB8 800CD3D8 AFAB0020 */        sw $t3, 0x20($sp)
  /* 048DBC 800CD3DC AFAC001C */        sw $t4, 0x1c($sp)
  /* 048DC0 800CD3E0 0C033434 */       jal func_ovl0_800CD0D0
  /* 048DC4 800CD3E4 AFAD0018 */        sw $t5, 0x18($sp)
  /* 048DC8 800CD3E8 8FA40024 */        lw $a0, 0x24($sp)
  /* 048DCC 800CD3EC 8FA5001C */        lw $a1, 0x1c($sp)
  /* 048DD0 800CD3F0 8FA60020 */        lw $a2, 0x20($sp)
  /* 048DD4 800CD3F4 0C03347C */       jal func_ovl0_800CD1F0
  /* 048DD8 800CD3F8 8FA70018 */        lw $a3, 0x18($sp)
  /* 048DDC 800CD3FC 8FA8002C */        lw $t0, 0x2c($sp)
  /* 048DE0 800CD400 00002825 */        or $a1, $zero, $zero
  /* 048DE4 800CD404 8D190080 */        lw $t9, 0x80($t0)
  /* 048DE8 800CD408 332E0008 */      andi $t6, $t9, 8
  /* 048DEC 800CD40C 11C00003 */      beqz $t6, .L800CD41C
  /* 048DF0 800CD410 00000000 */       nop 
  /* 048DF4 800CD414 10000001 */         b .L800CD41C
  /* 048DF8 800CD418 24050001 */     addiu $a1, $zero, 1
  .L800CD41C:
  /* 048DFC 800CD41C 0C005EE0 */       jal func_80017B80
  /* 048E00 800CD420 8FA40030 */        lw $a0, 0x30($sp)
  /* 048E04 800CD424 3C048004 */       lui $a0, %hi(D_800465B0)
  /* 048E08 800CD428 0C033485 */       jal func_ovl0_800CD214
  /* 048E0C 800CD42C 248465B0 */     addiu $a0, $a0, %lo(D_800465B0)
  /* 048E10 800CD430 8FBF0014 */        lw $ra, 0x14($sp)
  /* 048E14 800CD434 27BD0030 */     addiu $sp, $sp, 0x30
  /* 048E18 800CD438 03E00008 */        jr $ra
  /* 048E1C 800CD43C 00000000 */       nop 

glabel func_ovl0_800CD440
  /* 048E20 800CD440 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 048E24 800CD444 AFBF0014 */        sw $ra, 0x14($sp)
  /* 048E28 800CD448 AFA5001C */        sw $a1, 0x1c($sp)
  /* 048E2C 800CD44C AFA60020 */        sw $a2, 0x20($sp)
  /* 048E30 800CD450 30C600FF */      andi $a2, $a2, 0xff
  /* 048E34 800CD454 30A500FF */      andi $a1, $a1, 0xff
  /* 048E38 800CD458 0C00233C */       jal func_80008CF0
  /* 048E3C 800CD45C AFA40018 */        sw $a0, 0x18($sp)
  /* 048E40 800CD460 3C0E8004 */       lui $t6, %hi(D_8003B894)
  /* 048E44 800CD464 25CEB894 */     addiu $t6, $t6, %lo(D_8003B894)
  /* 048E48 800CD468 8FA40018 */        lw $a0, 0x18($sp)
  /* 048E4C 800CD46C 8DD80000 */        lw $t8, ($t6) # D_8003B894 + 0
  /* 048E50 800CD470 AC980018 */        sw $t8, 0x18($a0)
  /* 048E54 800CD474 8DCF0004 */        lw $t7, 4($t6) # D_8003B894 + 4
  /* 048E58 800CD478 AC8F001C */        sw $t7, 0x1c($a0)
  /* 048E5C 800CD47C 8DD80008 */        lw $t8, 8($t6) # D_8003B894 + 8
  /* 048E60 800CD480 AC980020 */        sw $t8, 0x20($a0)
  /* 048E64 800CD484 8DCF000C */        lw $t7, 0xc($t6) # D_8003B894 + 12
  /* 048E68 800CD488 AC8F0024 */        sw $t7, 0x24($a0)
  /* 048E6C 800CD48C 8DD80010 */        lw $t8, 0x10($t6) # D_8003B894 + 16
  /* 048E70 800CD490 AC980028 */        sw $t8, 0x28($a0)
  /* 048E74 800CD494 8DCF0014 */        lw $t7, 0x14($t6) # D_8003B894 + 20
  /* 048E78 800CD498 AC8F002C */        sw $t7, 0x2c($a0)
  /* 048E7C 800CD49C 8DD80018 */        lw $t8, 0x18($t6) # D_8003B894 + 24
  /* 048E80 800CD4A0 AC980030 */        sw $t8, 0x30($a0)
  /* 048E84 800CD4A4 8DCF001C */        lw $t7, 0x1c($t6) # D_8003B894 + 28
  /* 048E88 800CD4A8 AC820018 */        sw $v0, 0x18($a0)
  /* 048E8C 800CD4AC AC8F0034 */        sw $t7, 0x34($a0)
  /* 048E90 800CD4B0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 048E94 800CD4B4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 048E98 800CD4B8 03E00008 */        jr $ra
  /* 048E9C 800CD4BC 00000000 */       nop 

  /* 048EA0 800CD4C0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 048EA4 800CD4C4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 048EA8 800CD4C8 AFA5001C */        sw $a1, 0x1c($sp)
  /* 048EAC 800CD4CC AFA60020 */        sw $a2, 0x20($sp)
  /* 048EB0 800CD4D0 30C600FF */      andi $a2, $a2, 0xff
  /* 048EB4 800CD4D4 30A500FF */      andi $a1, $a1, 0xff
  /* 048EB8 800CD4D8 0C00233C */       jal func_80008CF0
  /* 048EBC 800CD4DC AFA40018 */        sw $a0, 0x18($sp)
  /* 048EC0 800CD4E0 3C0E8004 */       lui $t6, %hi(D_8003B878)
  /* 048EC4 800CD4E4 25CEB878 */     addiu $t6, $t6, %lo(D_8003B878)
  /* 048EC8 800CD4E8 8FA40018 */        lw $a0, 0x18($sp)
  /* 048ECC 800CD4EC 8DD80000 */        lw $t8, ($t6) # D_8003B878 + 0
  /* 048ED0 800CD4F0 AC980018 */        sw $t8, 0x18($a0)
  /* 048ED4 800CD4F4 8DCF0004 */        lw $t7, 4($t6) # D_8003B878 + 4
  /* 048ED8 800CD4F8 AC8F001C */        sw $t7, 0x1c($a0)
  /* 048EDC 800CD4FC 8DD80008 */        lw $t8, 8($t6) # D_8003B878 + 8
  /* 048EE0 800CD500 AC980020 */        sw $t8, 0x20($a0)
  /* 048EE4 800CD504 8DCF000C */        lw $t7, 0xc($t6) # D_8003B878 + 12
  /* 048EE8 800CD508 AC8F0024 */        sw $t7, 0x24($a0)
  /* 048EEC 800CD50C 8DD80010 */        lw $t8, 0x10($t6) # D_8003B878 + 16
  /* 048EF0 800CD510 AC980028 */        sw $t8, 0x28($a0)
  /* 048EF4 800CD514 8DCF0014 */        lw $t7, 0x14($t6) # D_8003B878 + 20
  /* 048EF8 800CD518 AC8F002C */        sw $t7, 0x2c($a0)
  /* 048EFC 800CD51C 8DD80018 */        lw $t8, 0x18($t6) # D_8003B878 + 24
  /* 048F00 800CD520 AC820018 */        sw $v0, 0x18($a0)
  /* 048F04 800CD524 AC980030 */        sw $t8, 0x30($a0)
  /* 048F08 800CD528 8FBF0014 */        lw $ra, 0x14($sp)
  /* 048F0C 800CD52C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 048F10 800CD530 03E00008 */        jr $ra
  /* 048F14 800CD534 00000000 */       nop 

glabel func_ovl0_800CD538
  /* 048F18 800CD538 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 048F1C 800CD53C AFBF0014 */        sw $ra, 0x14($sp)
  /* 048F20 800CD540 AFA5001C */        sw $a1, 0x1c($sp)
  /* 048F24 800CD544 AFA60020 */        sw $a2, 0x20($sp)
  /* 048F28 800CD548 30C600FF */      andi $a2, $a2, 0xff
  /* 048F2C 800CD54C 30A500FF */      andi $a1, $a1, 0xff
  /* 048F30 800CD550 0C00233C */       jal func_80008CF0
  /* 048F34 800CD554 AFA40018 */        sw $a0, 0x18($sp)
  /* 048F38 800CD558 8FA40018 */        lw $a0, 0x18($sp)
  /* 048F3C 800CD55C 3C0E8004 */       lui $t6, %hi(D_8003B8B4)
  /* 048F40 800CD560 25CEB8B4 */     addiu $t6, $t6, %lo(D_8003B8B4)
  /* 048F44 800CD564 25C80024 */     addiu $t0, $t6, 0x24
  /* 048F48 800CD568 0080C825 */        or $t9, $a0, $zero
  .L800CD56C:
  /* 048F4C 800CD56C 8DD80000 */        lw $t8, ($t6) # D_8003B8B4 + 0
  /* 048F50 800CD570 25CE000C */     addiu $t6, $t6, 0xc
  /* 048F54 800CD574 2739000C */     addiu $t9, $t9, 0xc
  /* 048F58 800CD578 AF38002C */        sw $t8, 0x2c($t9)
  /* 048F5C 800CD57C 8DCFFFF8 */        lw $t7, -8($t6) # D_8003B8B4 + -8
  /* 048F60 800CD580 AF2F0030 */        sw $t7, 0x30($t9)
  /* 048F64 800CD584 8DD8FFFC */        lw $t8, -4($t6) # D_8003B8B4 + -4
  /* 048F68 800CD588 15C8FFF8 */       bne $t6, $t0, .L800CD56C
  /* 048F6C 800CD58C AF380034 */        sw $t8, 0x34($t9)
  /* 048F70 800CD590 8DD80000 */        lw $t8, ($t6) # D_8003B8B4 + 0
  /* 048F74 800CD594 AF380038 */        sw $t8, 0x38($t9)
  /* 048F78 800CD598 AC820038 */        sw $v0, 0x38($a0)
  /* 048F7C 800CD59C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 048F80 800CD5A0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 048F84 800CD5A4 03E00008 */        jr $ra
  /* 048F88 800CD5A8 00000000 */       nop 

glabel func_ovl0_800CD5AC
  /* 048F8C 800CD5AC C4840004 */      lwc1 $f4, 4($a0)
  /* 048F90 800CD5B0 C4A60008 */      lwc1 $f6, 8($a1)
  /* 048F94 800CD5B4 C48A0008 */      lwc1 $f10, 8($a0)
  /* 048F98 800CD5B8 C4B00004 */      lwc1 $f16, 4($a1)
  /* 048F9C 800CD5BC 46062202 */     mul.s $f8, $f4, $f6
  /* 048FA0 800CD5C0 00000000 */       nop 
  /* 048FA4 800CD5C4 46105482 */     mul.s $f18, $f10, $f16
  /* 048FA8 800CD5C8 46124101 */     sub.s $f4, $f8, $f18
  /* 048FAC 800CD5CC E4C40000 */      swc1 $f4, ($a2)
  /* 048FB0 800CD5D0 C4AA0000 */      lwc1 $f10, ($a1)
  /* 048FB4 800CD5D4 C4860008 */      lwc1 $f6, 8($a0)
  /* 048FB8 800CD5D8 C4880000 */      lwc1 $f8, ($a0)
  /* 048FBC 800CD5DC C4B20008 */      lwc1 $f18, 8($a1)
  /* 048FC0 800CD5E0 460A3402 */     mul.s $f16, $f6, $f10
  /* 048FC4 800CD5E4 00000000 */       nop 
  /* 048FC8 800CD5E8 46124102 */     mul.s $f4, $f8, $f18
  /* 048FCC 800CD5EC 46048181 */     sub.s $f6, $f16, $f4
  /* 048FD0 800CD5F0 E4C60004 */      swc1 $f6, 4($a2)
  /* 048FD4 800CD5F4 C4A80004 */      lwc1 $f8, 4($a1)
  /* 048FD8 800CD5F8 C48A0000 */      lwc1 $f10, ($a0)
  /* 048FDC 800CD5FC C4A40000 */      lwc1 $f4, ($a1)
  /* 048FE0 800CD600 C4900004 */      lwc1 $f16, 4($a0)
  /* 048FE4 800CD604 46085482 */     mul.s $f18, $f10, $f8
  /* 048FE8 800CD608 00000000 */       nop 
  /* 048FEC 800CD60C 46048182 */     mul.s $f6, $f16, $f4
  /* 048FF0 800CD610 46069281 */     sub.s $f10, $f18, $f6
  /* 048FF4 800CD614 03E00008 */        jr $ra
  /* 048FF8 800CD618 E4CA0008 */      swc1 $f10, 8($a2)

  /* 048FFC 800CD61C 00000000 */       nop 
