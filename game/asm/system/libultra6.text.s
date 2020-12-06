.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Likely start of new file
glabel osDpSetNextBuffer
  /* 039930 80038D30 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 039934 80038D34 AFBF001C */        sw $ra, 0x1c($sp)
  /* 039938 80038D38 AFA40028 */        sw $a0, 0x28($sp)
  /* 03993C 80038D3C AFA60030 */        sw $a2, 0x30($sp)
  /* 039940 80038D40 AFA70034 */        sw $a3, 0x34($sp)
  /* 039944 80038D44 0C00E378 */       jal __osDpDeviceBusy
  /* 039948 80038D48 AFB00018 */        sw $s0, 0x18($sp)
  /* 03994C 80038D4C 10400003 */      beqz $v0, .L80038D5C
  /* 039950 80038D50 00000000 */       nop 
  /* 039954 80038D54 1000001B */         b .L80038DC4
  /* 039958 80038D58 2402FFFF */     addiu $v0, $zero, -1
  .L80038D5C:
  /* 03995C 80038D5C 240E0001 */     addiu $t6, $zero, 1
  /* 039960 80038D60 3C0FA410 */       lui $t7, %hi(DPC_STATUS_REG)
  /* 039964 80038D64 ADEE000C */        sw $t6, %lo(DPC_STATUS_REG)($t7)
  .L80038D68:
  /* 039968 80038D68 3C18A410 */       lui $t8, %hi(DPC_STATUS_REG)
  /* 03996C 80038D6C 8F10000C */        lw $s0, %lo(DPC_STATUS_REG)($t8)
  /* 039970 80038D70 32190001 */      andi $t9, $s0, 1
  /* 039974 80038D74 1720FFFC */      bnez $t9, .L80038D68
  /* 039978 80038D78 00000000 */       nop 
  /* 03997C 80038D7C 0C00C854 */       jal osVirtualToPhysical
  /* 039980 80038D80 8FA40028 */        lw $a0, 0x28($sp)
  /* 039984 80038D84 3C08A410 */       lui $t0, %hi(DPC_START_REG)
  /* 039988 80038D88 AD020000 */        sw $v0, %lo(DPC_START_REG)($t0)
  /* 03998C 80038D8C 0C00C854 */       jal osVirtualToPhysical
  /* 039990 80038D90 8FA40028 */        lw $a0, 0x28($sp)
  /* 039994 80038D94 8FAD0034 */        lw $t5, 0x34($sp)
  /* 039998 80038D98 00405825 */        or $t3, $v0, $zero
  /* 03999C 80038D9C 8FAC0030 */        lw $t4, 0x30($sp)
  /* 0399A0 80038DA0 016D7821 */      addu $t7, $t3, $t5
  /* 0399A4 80038DA4 240A0000 */     addiu $t2, $zero, 0
  /* 0399A8 80038DA8 01ED082B */      sltu $at, $t7, $t5
  /* 0399AC 80038DAC 002A7021 */      addu $t6, $at, $t2
  /* 0399B0 80038DB0 01E04825 */        or $t1, $t7, $zero
  /* 0399B4 80038DB4 3C18A410 */       lui $t8, %hi(DPC_END_REG)
  /* 0399B8 80038DB8 AF090004 */        sw $t1, %lo(DPC_END_REG)($t8)
  /* 0399BC 80038DBC 00001025 */        or $v0, $zero, $zero
  /* 0399C0 80038DC0 01CC7021 */      addu $t6, $t6, $t4
  .L80038DC4:
  /* 0399C4 80038DC4 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0399C8 80038DC8 8FB00018 */        lw $s0, 0x18($sp)
  /* 0399CC 80038DCC 27BD0028 */     addiu $sp, $sp, 0x28
  /* 0399D0 80038DD0 03E00008 */        jr $ra
  /* 0399D4 80038DD4 00000000 */       nop 

  /* 0399D8 80038DD8 00000000 */       nop 
  /* 0399DC 80038DDC 00000000 */       nop 

# Likely start of new file
glabel __osDpDeviceBusy
  /* 0399E0 80038DE0 3C0EA410 */       lui $t6, %hi(DPC_STATUS_REG)
  /* 0399E4 80038DE4 8DC4000C */        lw $a0, %lo(DPC_STATUS_REG)($t6)
  /* 0399E8 80038DE8 27BDFFF8 */     addiu $sp, $sp, -8
  /* 0399EC 80038DEC 308F0100 */      andi $t7, $a0, 0x100
  /* 0399F0 80038DF0 11E00003 */      beqz $t7, .L80038E00
  /* 0399F4 80038DF4 00000000 */       nop 
  /* 0399F8 80038DF8 10000002 */         b .L80038E04
  /* 0399FC 80038DFC 24020001 */     addiu $v0, $zero, 1
  .L80038E00:
  /* 039A00 80038E00 00001025 */        or $v0, $zero, $zero
  .L80038E04:
  /* 039A04 80038E04 03E00008 */        jr $ra
  /* 039A08 80038E08 27BD0008 */     addiu $sp, $sp, 8

  /* 039A0C 80038E0C 00000000 */       nop 

# Likely start of new file
glabel __osSpSetStatus
  /* 039A10 80038E10 3C0EA404 */       lui $t6, %hi(SP_STATUS_REG)
  /* 039A14 80038E14 03E00008 */        jr $ra
  /* 039A18 80038E18 ADC40010 */        sw $a0, %lo(SP_STATUS_REG)($t6)

  /* 039A1C 80038E1C 00000000 */       nop 

# Likely start of new file
glabel __osSpGetStatus
  /* 039A20 80038E20 3C0EA404 */       lui $t6, %hi(SP_STATUS_REG)
  /* 039A24 80038E24 03E00008 */        jr $ra
  /* 039A28 80038E28 8DC20010 */        lw $v0, %lo(SP_STATUS_REG)($t6)

  /* 039A2C 80038E2C 00000000 */       nop 

# Likely start of new file
  /* 039A30 80038E30 00000000 */       nop 
  /* 039A34 80038E34 00000000 */       nop 
  /* 039A38 80038E38 00000000 */       nop 
  /* 039A3C 80038E3C 00000000 */       nop 

# Likely start of new file
glabel osCreateViManager
  /* 039A40 80038E40 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 039A44 80038E44 AFB00020 */        sw $s0, 0x20($sp)
  /* 039A48 80038E48 3C108004 */       lui $s0, %hi(D_8003D620)
  /* 039A4C 80038E4C 2610D620 */     addiu $s0, $s0, %lo(D_8003D620)
  /* 039A50 80038E50 8E0E0000 */        lw $t6, ($s0) # D_8003D620 + 0
  /* 039A54 80038E54 AFBF0024 */        sw $ra, 0x24($sp)
  /* 039A58 80038E58 AFA40030 */        sw $a0, 0x30($sp)
  /* 039A5C 80038E5C 55C00054 */      bnel $t6, $zero, .L80038FB0
  /* 039A60 80038E60 8FBF0024 */        lw $ra, 0x24($sp)
  /* 039A64 80038E64 0C00D378 */       jal __osTimerServicesInit
  /* 039A68 80038E68 00000000 */       nop 
  /* 039A6C 80038E6C 3C018004 */       lui $at, %hi(D_8003D63C)
  /* 039A70 80038E70 3C04800A */       lui $a0, %hi(D_800A1900)
  /* 039A74 80038E74 3C05800A */       lui $a1, %hi(D_800A1918)
  /* 039A78 80038E78 AC20D63C */        sw $zero, %lo(D_8003D63C)($at)
  /* 039A7C 80038E7C 24A51918 */     addiu $a1, $a1, %lo(D_800A1918)
  /* 039A80 80038E80 24841900 */     addiu $a0, $a0, %lo(D_800A1900)
  /* 039A84 80038E84 0C00D120 */       jal osCreateMesgQueue
  /* 039A88 80038E88 24060005 */     addiu $a2, $zero, 5
  /* 039A8C 80038E8C 3C06800A */       lui $a2, %hi(D_800A1930)
  /* 039A90 80038E90 3C07800A */       lui $a3, %hi(D_800A1948)
  /* 039A94 80038E94 24E71948 */     addiu $a3, $a3, %lo(D_800A1948)
  /* 039A98 80038E98 24C61930 */     addiu $a2, $a2, %lo(D_800A1930)
  /* 039A9C 80038E9C 240F000D */     addiu $t7, $zero, 0xd
  /* 039AA0 80038EA0 2418000E */     addiu $t8, $zero, 0xe
  /* 039AA4 80038EA4 3C05800A */       lui $a1, %hi(D_800A1900)
  /* 039AA8 80038EA8 A4CF0000 */        sh $t7, ($a2) # D_800A1930 + 0
  /* 039AAC 80038EAC A0C00002 */        sb $zero, 2($a2) # D_800A1930 + 2
  /* 039AB0 80038EB0 ACC00004 */        sw $zero, 4($a2) # D_800A1930 + 4
  /* 039AB4 80038EB4 A4F80000 */        sh $t8, ($a3) # D_800A1948 + 0
  /* 039AB8 80038EB8 A0E00002 */        sb $zero, 2($a3) # D_800A1948 + 2
  /* 039ABC 80038EBC ACE00004 */        sw $zero, 4($a3) # D_800A1948 + 4
  /* 039AC0 80038EC0 24A51900 */     addiu $a1, $a1, %lo(D_800A1900)
  /* 039AC4 80038EC4 0C00CD28 */       jal osSetEventMesg
  /* 039AC8 80038EC8 24040007 */     addiu $a0, $zero, 7
  /* 039ACC 80038ECC 3C07800A */       lui $a3, 0x800a
  /* 039AD0 80038ED0 3C05800A */       lui $a1, %hi(D_800A1900)
  /* 039AD4 80038ED4 24E61948 */     addiu $a2, $a3, 0x1948
  /* 039AD8 80038ED8 24A51900 */     addiu $a1, $a1, %lo(D_800A1900)
  /* 039ADC 80038EDC 0C00CD28 */       jal osSetEventMesg
  /* 039AE0 80038EE0 24040003 */     addiu $a0, $zero, 3
  /* 039AE4 80038EE4 2419FFFF */     addiu $t9, $zero, -1
  /* 039AE8 80038EE8 AFB90028 */        sw $t9, 0x28($sp)
  /* 039AEC 80038EEC 0C00D21C */       jal osGetThreadPri
  /* 039AF0 80038EF0 00002025 */        or $a0, $zero, $zero
  /* 039AF4 80038EF4 8FA80030 */        lw $t0, 0x30($sp)
  /* 039AF8 80038EF8 00002025 */        or $a0, $zero, $zero
  /* 039AFC 80038EFC 0048082A */       slt $at, $v0, $t0
  /* 039B00 80038F00 10200003 */      beqz $at, .L80038F10
  /* 039B04 80038F04 01002825 */        or $a1, $t0, $zero
  /* 039B08 80038F08 0C00D1E4 */       jal osSetThreadPri
  /* 039B0C 80038F0C AFA20028 */        sw $v0, 0x28($sp)
  .L80038F10:
  /* 039B10 80038F10 0C00D608 */       jal __osDisableInt
  /* 039B14 80038F14 00000000 */       nop 
  /* 039B18 80038F18 8FAB0030 */        lw $t3, 0x30($sp)
  /* 039B1C 80038F1C 3C03800A */       lui $v1, %hi(D_800A1900)
  /* 039B20 80038F20 3C04800A */       lui $a0, %hi(D_800A0750)
  /* 039B24 80038F24 3C0A800A */       lui $t2, %hi(D_800A1900)
  /* 039B28 80038F28 24840750 */     addiu $a0, $a0, %lo(D_800A0750)
  /* 039B2C 80038F2C 24631900 */     addiu $v1, $v1, %lo(D_800A1900)
  /* 039B30 80038F30 24090001 */     addiu $t1, $zero, 1
  /* 039B34 80038F34 254A1900 */     addiu $t2, $t2, %lo(D_800A1900)
  /* 039B38 80038F38 3C068004 */       lui $a2, %hi(func_80038FC0)
  /* 039B3C 80038F3C AFA2002C */        sw $v0, 0x2c($sp)
  /* 039B40 80038F40 AE090000 */        sw $t1, ($s0) # D_8003D620 + 0
  /* 039B44 80038F44 AE040004 */        sw $a0, 4($s0) # D_8003D620 + 4
  /* 039B48 80038F48 AE030008 */        sw $v1, 8($s0) # D_8003D620 + 8
  /* 039B4C 80038F4C AE03000C */        sw $v1, 0xc($s0) # D_8003D620 + 12
  /* 039B50 80038F50 AE000010 */        sw $zero, 0x10($s0) # D_8003D620 + 16
  /* 039B54 80038F54 AE000014 */        sw $zero, 0x14($s0) # D_8003D620 + 20
  /* 039B58 80038F58 AE000018 */        sw $zero, 0x18($s0) # D_8003D620 + 24
  /* 039B5C 80038F5C 24C68FC0 */     addiu $a2, $a2, %lo(func_80038FC0)
  /* 039B60 80038F60 AFAA0010 */        sw $t2, 0x10($sp)
  /* 039B64 80038F64 00002825 */        or $a1, $zero, $zero
  /* 039B68 80038F68 02003825 */        or $a3, $s0, $zero
  /* 039B6C 80038F6C 0C00C788 */       jal osCreateThread
  /* 039B70 80038F70 AFAB0014 */        sw $t3, 0x14($sp)
  /* 039B74 80038F74 0C00D618 */       jal __osViInit
  /* 039B78 80038F78 00000000 */       nop 
  /* 039B7C 80038F7C 3C04800A */       lui $a0, %hi(D_800A0750)
  /* 039B80 80038F80 0C00E464 */       jal osStartThread
  /* 039B84 80038F84 24840750 */     addiu $a0, $a0, %lo(D_800A0750)
  /* 039B88 80038F88 0C00D610 */       jal __osRestoreInt
  /* 039B8C 80038F8C 8FA4002C */        lw $a0, 0x2c($sp)
  /* 039B90 80038F90 8FAC0028 */        lw $t4, 0x28($sp)
  /* 039B94 80038F94 2401FFFF */     addiu $at, $zero, -1
  /* 039B98 80038F98 00002025 */        or $a0, $zero, $zero
  /* 039B9C 80038F9C 51810004 */      beql $t4, $at, .L80038FB0
  /* 039BA0 80038FA0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 039BA4 80038FA4 0C00D1E4 */       jal osSetThreadPri
  /* 039BA8 80038FA8 01802825 */        or $a1, $t4, $zero
  /* 039BAC 80038FAC 8FBF0024 */        lw $ra, 0x24($sp)
  .L80038FB0:
  /* 039BB0 80038FB0 8FB00020 */        lw $s0, 0x20($sp)
  /* 039BB4 80038FB4 27BD0030 */     addiu $sp, $sp, 0x30
  /* 039BB8 80038FB8 03E00008 */        jr $ra
  /* 039BBC 80038FBC 00000000 */       nop 

glabel func_80038FC0
  /* 039BC0 80038FC0 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 039BC4 80038FC4 AFBF0034 */        sw $ra, 0x34($sp)
  /* 039BC8 80038FC8 AFB70030 */        sw $s7, 0x30($sp)
  /* 039BCC 80038FCC 0080B825 */        or $s7, $a0, $zero
  /* 039BD0 80038FD0 AFB6002C */        sw $s6, 0x2c($sp)
  /* 039BD4 80038FD4 AFB50028 */        sw $s5, 0x28($sp)
  /* 039BD8 80038FD8 AFB40024 */        sw $s4, 0x24($sp)
  /* 039BDC 80038FDC AFB30020 */        sw $s3, 0x20($sp)
  /* 039BE0 80038FE0 AFB2001C */        sw $s2, 0x1c($sp)
  /* 039BE4 80038FE4 AFB10018 */        sw $s1, 0x18($sp)
  /* 039BE8 80038FE8 AFB00014 */        sw $s0, 0x14($sp)
  /* 039BEC 80038FEC 0C00E454 */       jal func_80039150
  /* 039BF0 80038FF0 AFA00044 */        sw $zero, 0x44($sp)
  /* 039BF4 80038FF4 94430002 */       lhu $v1, 2($v0)
  /* 039BF8 80038FF8 3C01800A */       lui $at, %hi(D_800A1960)
  /* 039BFC 80038FFC 2416000E */     addiu $s6, $zero, 0xe
  /* 039C00 80039000 14600004 */      bnez $v1, .L80039014
  /* 039C04 80039004 A4231960 */        sh $v1, %lo(D_800A1960)($at)
  /* 039C08 80039008 24030001 */     addiu $v1, $zero, 1
  /* 039C0C 8003900C 3C01800A */       lui $at, %hi(D_800A1960)
  /* 039C10 80039010 A4231960 */        sh $v1, %lo(D_800A1960)($at)
  .L80039014:
  /* 039C14 80039014 3C13800A */       lui $s3, %hi(D_800A057C)
  /* 039C18 80039018 3C12800A */       lui $s2, %hi(D_800A0578)
  /* 039C1C 8003901C 3C11800A */       lui $s1, %hi(D_800A0570)
  /* 039C20 80039020 26310570 */     addiu $s1, $s1, %lo(D_800A0570)
  /* 039C24 80039024 26520578 */     addiu $s2, $s2, %lo(D_800A0578)
  /* 039C28 80039028 2673057C */     addiu $s3, $s3, %lo(D_800A057C)
  /* 039C2C 8003902C 2415000D */     addiu $s5, $zero, 0xd
  /* 039C30 80039030 27B40044 */     addiu $s4, $sp, 0x44
  .L80039034:
  /* 039C34 80039034 8EE4000C */        lw $a0, 0xc($s7)
  .L80039038:
  /* 039C38 80039038 02802825 */        or $a1, $s4, $zero
  /* 039C3C 8003903C 0C00C084 */       jal osRecvMesg
  /* 039C40 80039040 24060001 */     addiu $a2, $zero, 1
  /* 039C44 80039044 8FAE0044 */        lw $t6, 0x44($sp)
  /* 039C48 80039048 95C30000 */       lhu $v1, ($t6)
  /* 039C4C 8003904C 10750005 */       beq $v1, $s5, .L80039064
  /* 039C50 80039050 00000000 */       nop 
  /* 039C54 80039054 1076002A */       beq $v1, $s6, .L80039100
  /* 039C58 80039058 00000000 */       nop 
  /* 039C5C 8003905C 1000FFF6 */         b .L80039038
  /* 039C60 80039060 8EE4000C */        lw $a0, 0xc($s7)
  .L80039064:
  /* 039C64 80039064 0C00D668 */       jal __osViSwapContext
  /* 039C68 80039068 00000000 */       nop 
  /* 039C6C 8003906C 3C03800A */       lui $v1, %hi(D_800A1960)
  /* 039C70 80039070 94631960 */       lhu $v1, %lo(D_800A1960)($v1)
  /* 039C74 80039074 3C01800A */       lui $at, %hi(D_800A1960)
  /* 039C78 80039078 2463FFFF */     addiu $v1, $v1, -1
  /* 039C7C 8003907C 306FFFFF */      andi $t7, $v1, 0xffff
  /* 039C80 80039080 15E0000E */      bnez $t7, .L800390BC
  /* 039C84 80039084 A42F1960 */        sh $t7, %lo(D_800A1960)($at)
  /* 039C88 80039088 0C00E454 */       jal func_80039150
  /* 039C8C 8003908C 00000000 */       nop 
  /* 039C90 80039090 8C580010 */        lw $t8, 0x10($v0)
  /* 039C94 80039094 00408025 */        or $s0, $v0, $zero
  /* 039C98 80039098 00003025 */        or $a2, $zero, $zero
  /* 039C9C 8003909C 53000005 */      beql $t8, $zero, .L800390B4
  /* 039CA0 800390A0 96030002 */       lhu $v1, 2($s0)
  /* 039CA4 800390A4 8C440010 */        lw $a0, 0x10($v0)
  /* 039CA8 800390A8 0C00C000 */       jal osSendMesg
  /* 039CAC 800390AC 8C450014 */        lw $a1, 0x14($v0)
  /* 039CB0 800390B0 96030002 */       lhu $v1, 2($s0)
  .L800390B4:
  /* 039CB4 800390B4 3C01800A */       lui $at, %hi(D_800A1960)
  /* 039CB8 800390B8 A4231960 */        sh $v1, %lo(D_800A1960)($at)
  .L800390BC:
  /* 039CBC 800390BC 8E790000 */        lw $t9, ($s3) # D_800A057C + 0
  /* 039CC0 800390C0 8E500000 */        lw $s0, ($s2) # D_800A0578 + 0
  /* 039CC4 800390C4 27280001 */     addiu $t0, $t9, 1
  /* 039CC8 800390C8 0C00CD24 */       jal osGetCount
  /* 039CCC 800390CC AE680000 */        sw $t0, ($s3) # D_800A057C + 0
  /* 039CD0 800390D0 8E2D0004 */        lw $t5, 4($s1) # D_800A0570 + 4
  /* 039CD4 800390D4 00508023 */      subu $s0, $v0, $s0
  /* 039CD8 800390D8 8E2C0000 */        lw $t4, ($s1) # D_800A0570 + 0
  /* 039CDC 800390DC 020D7821 */      addu $t7, $s0, $t5
  /* 039CE0 800390E0 240A0000 */     addiu $t2, $zero, 0
  /* 039CE4 800390E4 01ED082B */      sltu $at, $t7, $t5
  /* 039CE8 800390E8 002A7021 */      addu $t6, $at, $t2
  /* 039CEC 800390EC 01CC7021 */      addu $t6, $t6, $t4
  /* 039CF0 800390F0 AE420000 */        sw $v0, ($s2) # D_800A0578 + 0
  /* 039CF4 800390F4 AE2E0000 */        sw $t6, ($s1) # D_800A0570 + 0
  /* 039CF8 800390F8 1000FFCE */         b .L80039034
  /* 039CFC 800390FC AE2F0004 */        sw $t7, 4($s1) # D_800A0570 + 4
  .L80039100:
  /* 039D00 80039100 0C00D39B */       jal func_80034E6C
  /* 039D04 80039104 00000000 */       nop 
  /* 039D08 80039108 1000FFCB */         b .L80039038
  /* 039D0C 8003910C 8EE4000C */        lw $a0, 0xc($s7)
  /* 039D10 80039110 00000000 */       nop 
  /* 039D14 80039114 00000000 */       nop 
  /* 039D18 80039118 00000000 */       nop 
  /* 039D1C 8003911C 00000000 */       nop 
# Maybe start of new file
  /* 039D20 80039120 8FBF0034 */        lw $ra, 0x34($sp)
  /* 039D24 80039124 8FB00014 */        lw $s0, 0x14($sp)
  /* 039D28 80039128 8FB10018 */        lw $s1, 0x18($sp)
  /* 039D2C 8003912C 8FB2001C */        lw $s2, 0x1c($sp)
  /* 039D30 80039130 8FB30020 */        lw $s3, 0x20($sp)
  /* 039D34 80039134 8FB40024 */        lw $s4, 0x24($sp)
  /* 039D38 80039138 8FB50028 */        lw $s5, 0x28($sp)
  /* 039D3C 8003913C 8FB6002C */        lw $s6, 0x2c($sp)
  /* 039D40 80039140 8FB70030 */        lw $s7, 0x30($sp)
  /* 039D44 80039144 03E00008 */        jr $ra
  /* 039D48 80039148 27BD0050 */     addiu $sp, $sp, 0x50

  /* 039D4C 8003914C 00000000 */       nop 

# Likely start of new file
glabel func_80039150
  /* 039D50 80039150 3C028004 */       lui $v0, %hi(D_8003D5B0)
  /* 039D54 80039154 03E00008 */        jr $ra
  /* 039D58 80039158 8C42D5B0 */        lw $v0, %lo(D_8003D5B0)($v0)

  /* 039D5C 8003915C 00000000 */       nop 

# Likely start of new file
glabel osWritebackDCacheAll
  /* 039D60 80039160 3C088000 */       lui $t0, %hi(D_NF_80000010)
  /* 039D64 80039164 240A2000 */     addiu $t2, $zero, 0x2000
  /* 039D68 80039168 010A4821 */      addu $t1, $t0, $t2
  /* 039D6C 8003916C 2529FFF0 */     addiu $t1, $t1, -0x10
  .L80039170:
  /* 039D70 80039170 BD010000 */     cache 1, ($t0)
  /* 039D74 80039174 0109082B */      sltu $at, $t0, $t1
  /* 039D78 80039178 1420FFFD */      bnez $at, .L80039170
  /* 039D7C 8003917C 25080010 */     addiu $t0, $t0, %lo(D_NF_80000010)
  /* 039D80 80039180 03E00008 */        jr $ra
  /* 039D84 80039184 00000000 */       nop 

  /* 039D88 80039188 00000000 */       nop 
  /* 039D8C 8003918C 00000000 */       nop 

# Likely start of new file
glabel osStartThread
  /* 039D90 80039190 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 039D94 80039194 AFBF001C */        sw $ra, 0x1c($sp)
  /* 039D98 80039198 AFA40028 */        sw $a0, 0x28($sp)
  /* 039D9C 8003919C AFB10018 */        sw $s1, 0x18($sp)
  /* 039DA0 800391A0 0C00D608 */       jal __osDisableInt
  /* 039DA4 800391A4 AFB00014 */        sw $s0, 0x14($sp)
  /* 039DA8 800391A8 8FAE0028 */        lw $t6, 0x28($sp)
  /* 039DAC 800391AC 24010001 */     addiu $at, $zero, 1
  /* 039DB0 800391B0 00408025 */        or $s0, $v0, $zero
  /* 039DB4 800391B4 95D10010 */       lhu $s1, 0x10($t6)
  /* 039DB8 800391B8 1221000C */       beq $s1, $at, .L800391EC
  /* 039DBC 800391BC 24010008 */     addiu $at, $zero, 8
  /* 039DC0 800391C0 1621002A */       bne $s1, $at, .L8003926C
  /* 039DC4 800391C4 00000000 */       nop 
  /* 039DC8 800391C8 8FB80028 */        lw $t8, 0x28($sp)
  /* 039DCC 800391CC 240F0002 */     addiu $t7, $zero, 2
  /* 039DD0 800391D0 3C048004 */       lui $a0, %hi(__osRunQueue)
  /* 039DD4 800391D4 A70F0010 */        sh $t7, 0x10($t8)
  /* 039DD8 800391D8 8FA50028 */        lw $a1, 0x28($sp)
  /* 039DDC 800391DC 0C00C4E3 */       jal __osEnqueueThread
  /* 039DE0 800391E0 2484D3B8 */     addiu $a0, $a0, %lo(__osRunQueue)
  /* 039DE4 800391E4 10000021 */         b .L8003926C
  /* 039DE8 800391E8 00000000 */       nop 
  .L800391EC:
  /* 039DEC 800391EC 8FB90028 */        lw $t9, 0x28($sp)
  /* 039DF0 800391F0 8F280008 */        lw $t0, 8($t9)
  /* 039DF4 800391F4 11000005 */      beqz $t0, .L8003920C
  /* 039DF8 800391F8 00000000 */       nop 
  /* 039DFC 800391FC 3C098004 */       lui $t1, %hi(__osRunQueue)
  /* 039E00 80039200 2529D3B8 */     addiu $t1, $t1, %lo(__osRunQueue)
  /* 039E04 80039204 1509000A */       bne $t0, $t1, .L80039230
  /* 039E08 80039208 00000000 */       nop 
  .L8003920C:
  /* 039E0C 8003920C 8FAB0028 */        lw $t3, 0x28($sp)
  /* 039E10 80039210 240A0002 */     addiu $t2, $zero, 2
  /* 039E14 80039214 3C048004 */       lui $a0, %hi(__osRunQueue)
  /* 039E18 80039218 A56A0010 */        sh $t2, 0x10($t3)
  /* 039E1C 8003921C 8FA50028 */        lw $a1, 0x28($sp)
  /* 039E20 80039220 0C00C4E3 */       jal __osEnqueueThread
  /* 039E24 80039224 2484D3B8 */     addiu $a0, $a0, %lo(__osRunQueue)
  /* 039E28 80039228 10000010 */         b .L8003926C
  /* 039E2C 8003922C 00000000 */       nop 
  .L80039230:
  /* 039E30 80039230 8FAD0028 */        lw $t5, 0x28($sp)
  /* 039E34 80039234 240C0008 */     addiu $t4, $zero, 8
  /* 039E38 80039238 A5AC0010 */        sh $t4, 0x10($t5)
  /* 039E3C 8003923C 8FAE0028 */        lw $t6, 0x28($sp)
  /* 039E40 80039240 8DC40008 */        lw $a0, 8($t6)
  /* 039E44 80039244 0C00C4E3 */       jal __osEnqueueThread
  /* 039E48 80039248 01C02825 */        or $a1, $t6, $zero
  /* 039E4C 8003924C 8FAF0028 */        lw $t7, 0x28($sp)
  /* 039E50 80039250 0C00C4F5 */       jal __osPopThread
  /* 039E54 80039254 8DE40008 */        lw $a0, 8($t7)
  /* 039E58 80039258 00408825 */        or $s1, $v0, $zero
  /* 039E5C 8003925C 3C048004 */       lui $a0, %hi(__osRunQueue)
  /* 039E60 80039260 2484D3B8 */     addiu $a0, $a0, %lo(__osRunQueue)
  /* 039E64 80039264 0C00C4E3 */       jal __osEnqueueThread
  /* 039E68 80039268 02202825 */        or $a1, $s1, $zero
  .L8003926C:
  /* 039E6C 8003926C 3C188004 */       lui $t8, %hi(__osRunningThread)
  /* 039E70 80039270 8F18D3C0 */        lw $t8, %lo(__osRunningThread)($t8)
  /* 039E74 80039274 17000005 */      bnez $t8, .L8003928C
  /* 039E78 80039278 00000000 */       nop 
  /* 039E7C 8003927C 0C00C4F9 */       jal __osDispatchThread
  /* 039E80 80039280 00000000 */       nop 
  /* 039E84 80039284 1000000F */         b .L800392C4
  /* 039E88 80039288 00000000 */       nop 
  .L8003928C:
  /* 039E8C 8003928C 3C198004 */       lui $t9, %hi(__osRunningThread)
  /* 039E90 80039290 3C098004 */       lui $t1, %hi(__osRunQueue)
  /* 039E94 80039294 8D29D3B8 */        lw $t1, %lo(__osRunQueue)($t1)
  /* 039E98 80039298 8F39D3C0 */        lw $t9, %lo(__osRunningThread)($t9)
  /* 039E9C 8003929C 8D2A0004 */        lw $t2, 4($t1)
  /* 039EA0 800392A0 8F280004 */        lw $t0, 4($t9)
  /* 039EA4 800392A4 010A082A */       slt $at, $t0, $t2
  /* 039EA8 800392A8 10200006 */      beqz $at, .L800392C4
  /* 039EAC 800392AC 00000000 */       nop 
  /* 039EB0 800392B0 240B0002 */     addiu $t3, $zero, 2
  /* 039EB4 800392B4 3C048004 */       lui $a0, %hi(__osRunQueue)
  /* 039EB8 800392B8 A72B0010 */        sh $t3, 0x10($t9)
  /* 039EBC 800392BC 0C00C4A3 */       jal __osEnqueueAndYield
  /* 039EC0 800392C0 2484D3B8 */     addiu $a0, $a0, %lo(__osRunQueue)
  .L800392C4:
  /* 039EC4 800392C4 0C00D610 */       jal __osRestoreInt
  /* 039EC8 800392C8 02002025 */        or $a0, $s0, $zero
  /* 039ECC 800392CC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 039ED0 800392D0 8FB00014 */        lw $s0, 0x14($sp)
  /* 039ED4 800392D4 8FB10018 */        lw $s1, 0x18($sp)
  /* 039ED8 800392D8 03E00008 */        jr $ra
  /* 039EDC 800392DC 27BD0028 */     addiu $sp, $sp, 0x28

glabel osViSetYScale
  /* 039EE0 800392E0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 039EE4 800392E4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 039EE8 800392E8 E7AC0028 */      swc1 $f12, 0x28($sp)
  /* 039EEC 800392EC 0C00D608 */       jal __osDisableInt
  /* 039EF0 800392F0 AFB00018 */        sw $s0, 0x18($sp)
  /* 039EF4 800392F4 3C0E8004 */       lui $t6, %hi(D_8003D5B4)
  /* 039EF8 800392F8 8DCED5B4 */        lw $t6, %lo(D_8003D5B4)($t6)
  /* 039EFC 800392FC C7A40028 */      lwc1 $f4, 0x28($sp)
  /* 039F00 80039300 3C0F8004 */       lui $t7, %hi(D_8003D5B4)
  /* 039F04 80039304 00408025 */        or $s0, $v0, $zero
  /* 039F08 80039308 E5C40024 */      swc1 $f4, 0x24($t6)
  /* 039F0C 8003930C 8DEFD5B4 */        lw $t7, %lo(D_8003D5B4)($t7)
  /* 039F10 80039310 02002025 */        or $a0, $s0, $zero
  /* 039F14 80039314 95F80000 */       lhu $t8, ($t7)
  /* 039F18 80039318 37190004 */       ori $t9, $t8, 4
  /* 039F1C 8003931C 0C00D610 */       jal __osRestoreInt
  /* 039F20 80039320 A5F90000 */        sh $t9, ($t7)
  /* 039F24 80039324 8FBF001C */        lw $ra, 0x1c($sp)
  /* 039F28 80039328 8FB00018 */        lw $s0, 0x18($sp)
  /* 039F2C 8003932C 27BD0028 */     addiu $sp, $sp, 0x28
  /* 039F30 80039330 03E00008 */        jr $ra
  /* 039F34 80039334 00000000 */       nop 

  /* 039F38 80039338 00000000 */       nop 
  /* 039F3C 8003933C 00000000 */       nop 

# Likely start of new file
glabel __d_to_ll
  /* 039F40 80039340 46206109 */ trunc.l.d $f4, $f12
  /* 039F44 80039344 44222000 */     dmfc1 $v0, $f4
  /* 039F48 80039348 00000000 */       nop 
  /* 039F4C 8003934C 0002183C */    dsll32 $v1, $v0, 0
  /* 039F50 80039350 0003183F */    dsra32 $v1, $v1, 0
  /* 039F54 80039354 03E00008 */        jr $ra
  /* 039F58 80039358 0002103F */    dsra32 $v0, $v0, 0

glabel __f_to_ll
  /* 039F5C 8003935C 46006109 */ trunc.l.s $f4, $f12
  /* 039F60 80039360 44222000 */     dmfc1 $v0, $f4
  /* 039F64 80039364 00000000 */       nop 
  /* 039F68 80039368 0002183C */    dsll32 $v1, $v0, 0
  /* 039F6C 8003936C 0003183F */    dsra32 $v1, $v1, 0
  /* 039F70 80039370 03E00008 */        jr $ra
  /* 039F74 80039374 0002103F */    dsra32 $v0, $v0, 0

glabel __d_to_ull
  /* 039F78 80039378 444EF800 */      cfc1 $t6, $31
  /* 039F7C 8003937C 24020001 */     addiu $v0, $zero, 1
  /* 039F80 80039380 44C2F800 */      ctc1 $v0, $31
  /* 039F84 80039384 00000000 */       nop 
  /* 039F88 80039388 46206125 */   cvt.l.d $f4, $f12
  /* 039F8C 8003938C 4442F800 */      cfc1 $v0, $31
  /* 039F90 80039390 00000000 */       nop 
  /* 039F94 80039394 30410004 */      andi $at, $v0, 4
  /* 039F98 80039398 30420078 */      andi $v0, $v0, 0x78
  /* 039F9C 8003939C 10400015 */      beqz $v0, .L800393F4
  /* 039FA0 800393A0 3C0143E0 */       lui $at, (0x43E00000 >> 16) # 448.0
  /* 039FA4 800393A4 44812800 */      mtc1 $at, $f5 # 448.0 to cop1
  /* 039FA8 800393A8 44802000 */      mtc1 $zero, $f4
  /* 039FAC 800393AC 24020001 */     addiu $v0, $zero, 1
  /* 039FB0 800393B0 46246101 */     sub.d $f4, $f12, $f4
  /* 039FB4 800393B4 44C2F800 */      ctc1 $v0, $31
  /* 039FB8 800393B8 00000000 */       nop 
  /* 039FBC 800393BC 46202125 */   cvt.l.d $f4, $f4
  /* 039FC0 800393C0 4442F800 */      cfc1 $v0, $31
  /* 039FC4 800393C4 00000000 */       nop 
  /* 039FC8 800393C8 30410004 */      andi $at, $v0, 4
  /* 039FCC 800393CC 30420078 */      andi $v0, $v0, 0x78
  /* 039FD0 800393D0 14400006 */      bnez $v0, .L800393EC
  /* 039FD4 800393D4 00000000 */       nop 
  /* 039FD8 800393D8 3C0F8004 */       lui $t7, %hi(D_8003F3F0)
  /* 039FDC 800393DC DDEFF3F0 */        ld $t7, %lo(D_8003F3F0)($t7)
  /* 039FE0 800393E0 44222000 */     dmfc1 $v0, $f4
  /* 039FE4 800393E4 10000007 */         b .L80039404
  /* 039FE8 800393E8 004F1025 */        or $v0, $v0, $t7
  .L800393EC:
  /* 039FEC 800393EC 10000005 */         b .L80039404
  /* 039FF0 800393F0 2402FFFF */     addiu $v0, $zero, -1
  .L800393F4:
  /* 039FF4 800393F4 44222000 */     dmfc1 $v0, $f4
  /* 039FF8 800393F8 00000000 */       nop 
  /* 039FFC 800393FC 0440FFFB */      bltz $v0, .L800393EC
  /* 03A000 80039400 00000000 */       nop 
  .L80039404:
  /* 03A004 80039404 44CEF800 */      ctc1 $t6, $31
  /* 03A008 80039408 0002183C */    dsll32 $v1, $v0, 0
  /* 03A00C 8003940C 0003183F */    dsra32 $v1, $v1, 0
  /* 03A010 80039410 03E00008 */        jr $ra
  /* 03A014 80039414 0002103F */    dsra32 $v0, $v0, 0

glabel __f_to_ull
  /* 03A018 80039418 444EF800 */      cfc1 $t6, $31
  /* 03A01C 8003941C 24020001 */     addiu $v0, $zero, 1
  /* 03A020 80039420 44C2F800 */      ctc1 $v0, $31
  /* 03A024 80039424 00000000 */       nop 
  /* 03A028 80039428 46006125 */   cvt.l.s $f4, $f12
  /* 03A02C 8003942C 4442F800 */      cfc1 $v0, $31
  /* 03A030 80039430 00000000 */       nop 
  /* 03A034 80039434 30410004 */      andi $at, $v0, 4
  /* 03A038 80039438 30420078 */      andi $v0, $v0, 0x78
  /* 03A03C 8003943C 10400014 */      beqz $v0, .L80039490
  /* 03A040 80039440 3C015F00 */       lui $at, (0x5F000000 >> 16) # 9.223372e18
  /* 03A044 80039444 44812000 */      mtc1 $at, $f4 # 9.223372e18 to cop1
  /* 03A048 80039448 24020001 */     addiu $v0, $zero, 1
  /* 03A04C 8003944C 46046101 */     sub.s $f4, $f12, $f4
  /* 03A050 80039450 44C2F800 */      ctc1 $v0, $31
  /* 03A054 80039454 00000000 */       nop 
  /* 03A058 80039458 46002125 */   cvt.l.s $f4, $f4
  /* 03A05C 8003945C 4442F800 */      cfc1 $v0, $31
  /* 03A060 80039460 00000000 */       nop 
  /* 03A064 80039464 30410004 */      andi $at, $v0, 4
  /* 03A068 80039468 30420078 */      andi $v0, $v0, 0x78
  /* 03A06C 8003946C 14400006 */      bnez $v0, .L80039488
  /* 03A070 80039470 00000000 */       nop 
  /* 03A074 80039474 3C0F8004 */       lui $t7, %hi(D_8003F3F8)
  /* 03A078 80039478 DDEFF3F8 */        ld $t7, %lo(D_8003F3F8)($t7)
  /* 03A07C 8003947C 44222000 */     dmfc1 $v0, $f4
  /* 03A080 80039480 10000007 */         b .L800394A0
  /* 03A084 80039484 004F1025 */        or $v0, $v0, $t7
  .L80039488:
  /* 03A088 80039488 10000005 */         b .L800394A0
  /* 03A08C 8003948C 2402FFFF */     addiu $v0, $zero, -1
  .L80039490:
  /* 03A090 80039490 44222000 */     dmfc1 $v0, $f4
  /* 03A094 80039494 00000000 */       nop 
  /* 03A098 80039498 0440FFFB */      bltz $v0, .L80039488
  /* 03A09C 8003949C 00000000 */       nop 
  .L800394A0:
  /* 03A0A0 800394A0 44CEF800 */      ctc1 $t6, $31
  /* 03A0A4 800394A4 0002183C */    dsll32 $v1, $v0, 0
  /* 03A0A8 800394A8 0003183F */    dsra32 $v1, $v1, 0
  /* 03A0AC 800394AC 03E00008 */        jr $ra
  /* 03A0B0 800394B0 0002103F */    dsra32 $v0, $v0, 0

glabel __ll_to_d
  /* 03A0B4 800394B4 AFA40000 */        sw $a0, ($sp)
  /* 03A0B8 800394B8 AFA50004 */        sw $a1, 4($sp)
  /* 03A0BC 800394BC DFAE0000 */        ld $t6, ($sp)
  /* 03A0C0 800394C0 44AE2000 */     dmtc1 $t6, $f4
  /* 03A0C4 800394C4 03E00008 */        jr $ra
  /* 03A0C8 800394C8 46A02021 */   cvt.d.l $f0, $f4

glabel __ll_to_f
  /* 03A0CC 800394CC AFA40000 */        sw $a0, ($sp)
  /* 03A0D0 800394D0 AFA50004 */        sw $a1, 4($sp)
  /* 03A0D4 800394D4 DFAE0000 */        ld $t6, ($sp)
  /* 03A0D8 800394D8 44AE2000 */     dmtc1 $t6, $f4
  /* 03A0DC 800394DC 03E00008 */        jr $ra
  /* 03A0E0 800394E0 46A02020 */   cvt.s.l $f0, $f4

glabel __ull_to_d
  /* 03A0E4 800394E4 AFA40000 */        sw $a0, ($sp)
  /* 03A0E8 800394E8 AFA50004 */        sw $a1, 4($sp)
  /* 03A0EC 800394EC DFAE0000 */        ld $t6, ($sp)
  /* 03A0F0 800394F0 44AE2000 */     dmtc1 $t6, $f4
  /* 03A0F4 800394F4 05C10006 */      bgez $t6, .L80039510
  /* 03A0F8 800394F8 46A02021 */   cvt.d.l $f0, $f4
  /* 03A0FC 800394FC 3C0141F0 */       lui $at, (0x41F00000 >> 16) # 30.0
  /* 03A100 80039500 44813800 */      mtc1 $at, $f7 # 30.0 to cop1
  /* 03A104 80039504 44803000 */      mtc1 $zero, $f6
  /* 03A108 80039508 00000000 */       nop 
  /* 03A10C 8003950C 46260000 */     add.d $f0, $f0, $f6
  .L80039510:
  /* 03A110 80039510 03E00008 */        jr $ra
  /* 03A114 80039514 00000000 */       nop 

glabel __ull_to_f
  /* 03A118 80039518 AFA40000 */        sw $a0, ($sp)
  /* 03A11C 8003951C AFA50004 */        sw $a1, 4($sp)
  /* 03A120 80039520 DFAE0000 */        ld $t6, ($sp)
  /* 03A124 80039524 44AE2000 */     dmtc1 $t6, $f4
  /* 03A128 80039528 05C10005 */      bgez $t6, .L80039540
  /* 03A12C 8003952C 46A02020 */   cvt.s.l $f0, $f4
  /* 03A130 80039530 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 03A134 80039534 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 03A138 80039538 00000000 */       nop 
  /* 03A13C 8003953C 46060000 */     add.s $f0, $f0, $f6
  .L80039540:
  /* 03A140 80039540 03E00008 */        jr $ra
  /* 03A144 80039544 00000000 */       nop 

  /* 03A148 80039548 00000000 */       nop 
  /* 03A14C 8003954C 00000000 */       nop 

# Likely start of new file
glabel osAiSetNextBuffer
  /* 03A150 80039550 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 03A154 80039554 3C0F8004 */       lui $t7, %hi(D_8003D640)
  /* 03A158 80039558 91EFD640 */       lbu $t7, %lo(D_8003D640)($t7)
  /* 03A15C 8003955C AFA40020 */        sw $a0, 0x20($sp)
  /* 03A160 80039560 8FAE0020 */        lw $t6, 0x20($sp)
  /* 03A164 80039564 AFBF0014 */        sw $ra, 0x14($sp)
  /* 03A168 80039568 AFA50024 */        sw $a1, 0x24($sp)
  /* 03A16C 8003956C 11E00003 */      beqz $t7, .L8003957C
  /* 03A170 80039570 AFAE001C */        sw $t6, 0x1c($sp)
  /* 03A174 80039574 25D8E000 */     addiu $t8, $t6, -0x2000
  /* 03A178 80039578 AFB8001C */        sw $t8, 0x1c($sp)
  .L8003957C:
  /* 03A17C 8003957C 8FB90020 */        lw $t9, 0x20($sp)
  /* 03A180 80039580 8FA80024 */        lw $t0, 0x24($sp)
  /* 03A184 80039584 03284821 */      addu $t1, $t9, $t0
  /* 03A188 80039588 312A1FFF */      andi $t2, $t1, 0x1fff
  /* 03A18C 8003958C 15400005 */      bnez $t2, .L800395A4
  /* 03A190 80039590 00000000 */       nop 
  /* 03A194 80039594 240B0001 */     addiu $t3, $zero, 1
  /* 03A198 80039598 3C018004 */       lui $at, %hi(D_8003D640)
  /* 03A19C 8003959C 10000003 */         b .L800395AC
  /* 03A1A0 800395A0 A02BD640 */        sb $t3, %lo(D_8003D640)($at)
  .L800395A4:
  /* 03A1A4 800395A4 3C018004 */       lui $at, %hi(D_8003D640)
  /* 03A1A8 800395A8 A020D640 */        sb $zero, %lo(D_8003D640)($at)
  .L800395AC:
  /* 03A1AC 800395AC 0C00E580 */       jal __osAiDeviceBusy
  /* 03A1B0 800395B0 00000000 */       nop 
  /* 03A1B4 800395B4 10400003 */      beqz $v0, .L800395C4
  /* 03A1B8 800395B8 00000000 */       nop 
  /* 03A1BC 800395BC 10000009 */         b .L800395E4
  /* 03A1C0 800395C0 2402FFFF */     addiu $v0, $zero, -1
  .L800395C4:
  /* 03A1C4 800395C4 0C00C854 */       jal osVirtualToPhysical
  /* 03A1C8 800395C8 8FA4001C */        lw $a0, 0x1c($sp)
  /* 03A1CC 800395CC 3C0CA450 */       lui $t4, %hi(AI_DRAM_ADDR_REG)
  /* 03A1D0 800395D0 AD820000 */        sw $v0, %lo(AI_DRAM_ADDR_REG)($t4)
  /* 03A1D4 800395D4 8FAD0024 */        lw $t5, 0x24($sp)
  /* 03A1D8 800395D8 3C0FA450 */       lui $t7, %hi(AI_LEN_REG)
  /* 03A1DC 800395DC 00001025 */        or $v0, $zero, $zero
  /* 03A1E0 800395E0 ADED0004 */        sw $t5, %lo(AI_LEN_REG)($t7)
  .L800395E4:
  /* 03A1E4 800395E4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 03A1E8 800395E8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 03A1EC 800395EC 03E00008 */        jr $ra
  /* 03A1F0 800395F0 00000000 */       nop 

  /* 03A1F4 800395F4 00000000 */       nop 
  /* 03A1F8 800395F8 00000000 */       nop 
  /* 03A1FC 800395FC 00000000 */       nop 

# Likely start of new file
glabel __osAiDeviceBusy
  /* 03A200 80039600 3C0EA450 */       lui $t6, %hi(AI_STATUS_REG)
  /* 03A204 80039604 8DC4000C */        lw $a0, %lo(AI_STATUS_REG)($t6)
  /* 03A208 80039608 3C018000 */       lui $at, 0x8000
  /* 03A20C 8003960C 27BDFFF8 */     addiu $sp, $sp, -8
  /* 03A210 80039610 00817824 */       and $t7, $a0, $at
  /* 03A214 80039614 11E00003 */      beqz $t7, .L80039624
  /* 03A218 80039618 00000000 */       nop 
  /* 03A21C 8003961C 10000002 */         b .L80039628
  /* 03A220 80039620 24020001 */     addiu $v0, $zero, 1
  .L80039624:
  /* 03A224 80039624 00001025 */        or $v0, $zero, $zero
  .L80039628:
  /* 03A228 80039628 03E00008 */        jr $ra
  /* 03A22C 8003962C 27BD0008 */     addiu $sp, $sp, 8

glabel osViGetCurrentFramebuffer
  /* 03A230 80039630 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 03A234 80039634 AFBF001C */        sw $ra, 0x1c($sp)
  /* 03A238 80039638 0C00D608 */       jal __osDisableInt
  /* 03A23C 8003963C AFB00018 */        sw $s0, 0x18($sp)
  /* 03A240 80039640 3C0E8004 */       lui $t6, %hi(D_8003D5B0)
  /* 03A244 80039644 8DCED5B0 */        lw $t6, %lo(D_8003D5B0)($t6)
  /* 03A248 80039648 00408025 */        or $s0, $v0, $zero
  /* 03A24C 8003964C 02002025 */        or $a0, $s0, $zero
  /* 03A250 80039650 8DCF0004 */        lw $t7, 4($t6)
  /* 03A254 80039654 0C00D610 */       jal __osRestoreInt
  /* 03A258 80039658 AFAF0020 */        sw $t7, 0x20($sp)
  /* 03A25C 8003965C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 03A260 80039660 8FA20020 */        lw $v0, 0x20($sp)
  /* 03A264 80039664 8FB00018 */        lw $s0, 0x18($sp)
  /* 03A268 80039668 03E00008 */        jr $ra
  /* 03A26C 8003966C 27BD0028 */     addiu $sp, $sp, 0x28

glabel __osSpSetPc
  /* 03A270 80039670 3C0EA404 */       lui $t6, %hi(SP_STATUS_REG)
  /* 03A274 80039674 8DC50010 */        lw $a1, %lo(SP_STATUS_REG)($t6)
  /* 03A278 80039678 27BDFFF8 */     addiu $sp, $sp, -8
  /* 03A27C 8003967C 30AF0001 */      andi $t7, $a1, 1
  /* 03A280 80039680 15E00003 */      bnez $t7, .L80039690
  /* 03A284 80039684 00000000 */       nop 
  /* 03A288 80039688 10000004 */         b .L8003969C
  /* 03A28C 8003968C 2402FFFF */     addiu $v0, $zero, -1
  .L80039690:
  /* 03A290 80039690 3C18A408 */       lui $t8, %hi(SP_PC)
  /* 03A294 80039694 AF040000 */        sw $a0, %lo(SP_PC)($t8)
  /* 03A298 80039698 00001025 */        or $v0, $zero, $zero
  .L8003969C:
  /* 03A29C 8003969C 03E00008 */        jr $ra
  /* 03A2A0 800396A0 27BD0008 */     addiu $sp, $sp, 8

  /* 03A2A4 800396A4 00000000 */       nop 
  /* 03A2A8 800396A8 00000000 */       nop 
  /* 03A2AC 800396AC 00000000 */       nop 

# Likely start of new file
glabel __osSetWatchLo
  /* 03A2B0 800396B0 40849000 */      mtc0 $a0, $18
  /* 03A2B4 800396B4 00000000 */       nop 
  /* 03A2B8 800396B8 03E00008 */        jr $ra
  /* 03A2BC 800396BC 00000000 */       nop 
