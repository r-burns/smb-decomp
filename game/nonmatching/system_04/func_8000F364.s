.section .late_rodata

glabel D_8003DFDC
  /* 3DBDC 03EBDC 8003DFDC */  .word L8000F3B4
  /* 3DBE0 03EBE0 8003DFE0 */  .word L8000F408
  /* 3DBE4 03EBE4 8003DFE4 */  .word L8000F408
  /* 3DBE8 03EBE8 8003DFE8 */  .word L8000F408
  /* 3DBEC 03EBEC 8003DFEC */  .word L8000F408
  /* 3DBF0 03EBF0 8003DFF0 */  .word L8000F408
  /* 3DBF4 03EBF4 8003DFF4 */  .word L8000F408
  /* 3DBF8 03EBF8 8003DFF8 */  .word L8000F408
  /* 3DBFC 03EBFC 8003DFFC */  .word L8000F3BC
  /* 3DC00 03EC00 8003E000 */  .word L8000F3C4
  /* 3DC04 03EC04 8003E004 */  .word L8000F3D0
  /* 3DC08 03EC08 8003E008 */  .word L8000F3E0
  /* 3DC0C 03EC0C 8003E00C */  .word L8000F3E8
  /* 3DC10 03EC10 8003E010 */  .word L8000F3F4
  /* 3DC14 03EC14 8003E014 */  .word L8000F404

.section .text
glabel func_8000F364
  /* 00FF64 8000F364 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00FF68 8000F368 AFA5002C */        sw $a1, 0x2c($sp)
  /* 00FF6C 8000F36C 30A500FF */      andi $a1, $a1, 0xff
  /* 00FF70 8000F370 24AEFFEE */     addiu $t6, $a1, -0x12
  /* 00FF74 8000F374 AFA60030 */        sw $a2, 0x30($sp)
  /* 00FF78 8000F378 AFA70034 */        sw $a3, 0x34($sp)
  /* 00FF7C 8000F37C 2DC1000F */     sltiu $at, $t6, 0xf
  /* 00FF80 8000F380 30E700FF */      andi $a3, $a3, 0xff
  /* 00FF84 8000F384 30C600FF */      andi $a2, $a2, 0xff
  /* 00FF88 8000F388 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FF8C 8000F38C 00004025 */        or $t0, $zero, $zero
  /* 00FF90 8000F390 00004825 */        or $t1, $zero, $zero
  /* 00FF94 8000F394 1020001C */      beqz $at, L8000F408
  /* 00FF98 8000F398 00001825 */        or $v1, $zero, $zero
  /* 00FF9C 8000F39C 000E7080 */       sll $t6, $t6, 2
  /* 00FFA0 8000F3A0 3C018004 */       lui $at, %hi(D_8003DFDC)
  /* 00FFA4 8000F3A4 002E0821 */      addu $at, $at, $t6
  /* 00FFA8 8000F3A8 8C2EDFDC */        lw $t6, %lo(D_8003DFDC)($at)
  /* 00FFAC 8000F3AC 01C00008 */        jr $t6
  /* 00FFB0 8000F3B0 00000000 */       nop 
  glabel L8000F3B4
  /* 00FFB4 8000F3B4 10000014 */         b L8000F408
  /* 00FFB8 8000F3B8 24080001 */     addiu $t0, $zero, 1
  glabel L8000F3BC
  /* 00FFBC 8000F3BC 10000012 */         b L8000F408
  /* 00FFC0 8000F3C0 24030001 */     addiu $v1, $zero, 1
  glabel L8000F3C4
  /* 00FFC4 8000F3C4 24030001 */     addiu $v1, $zero, 1
  /* 00FFC8 8000F3C8 1000000F */         b L8000F408
  /* 00FFCC 8000F3CC 24080001 */     addiu $t0, $zero, 1
  glabel L8000F3D0
  /* 00FFD0 8000F3D0 24090001 */     addiu $t1, $zero, 1
  /* 00FFD4 8000F3D4 24030001 */     addiu $v1, $zero, 1
  /* 00FFD8 8000F3D8 1000000B */         b L8000F408
  /* 00FFDC 8000F3DC 24080001 */     addiu $t0, $zero, 1
  glabel L8000F3E0
  /* 00FFE0 8000F3E0 10000009 */         b L8000F408
  /* 00FFE4 8000F3E4 24030002 */     addiu $v1, $zero, 2
  glabel L8000F3E8
  /* 00FFE8 8000F3E8 24030002 */     addiu $v1, $zero, 2
  /* 00FFEC 8000F3EC 10000006 */         b L8000F408
  /* 00FFF0 8000F3F0 24080001 */     addiu $t0, $zero, 1
  glabel L8000F3F4
  /* 00FFF4 8000F3F4 24030002 */     addiu $v1, $zero, 2
  /* 00FFF8 8000F3F8 24090001 */     addiu $t1, $zero, 1
  /* 00FFFC 8000F3FC 10000002 */         b L8000F408
  /* 010000 8000F400 24080001 */     addiu $t0, $zero, 1
  glabel L8000F404
  /* 010004 8000F404 24090001 */     addiu $t1, $zero, 1
  glabel L8000F408
  /* 010008 8000F408 2401001A */     addiu $at, $zero, 0x1a
  /* 01000C 8000F40C 10C10008 */       beq $a2, $at, .L8000F430
  /* 010010 8000F410 24050012 */     addiu $a1, $zero, 0x12
  /* 010014 8000F414 2401001D */     addiu $at, $zero, 0x1d
  /* 010018 8000F418 10C10007 */       beq $a2, $at, .L8000F438
  /* 01001C 8000F41C 24010020 */     addiu $at, $zero, 0x20
  /* 010020 8000F420 50C10008 */      beql $a2, $at, .L8000F444
  /* 010024 8000F424 24090001 */     addiu $t1, $zero, 1
  /* 010028 8000F428 10000007 */         b .L8000F448
  /* 01002C 8000F42C 24010020 */     addiu $at, $zero, 0x20
  .L8000F430:
  /* 010030 8000F430 10000004 */         b .L8000F444
  /* 010034 8000F434 24030001 */     addiu $v1, $zero, 1
  .L8000F438:
  /* 010038 8000F438 10000002 */         b .L8000F444
  /* 01003C 8000F43C 24030002 */     addiu $v1, $zero, 2
  /* 010040 8000F440 24090001 */     addiu $t1, $zero, 1
  .L8000F444:
  /* 010044 8000F444 24010020 */     addiu $at, $zero, 0x20
  .L8000F448:
  /* 010048 8000F448 14E10002 */       bne $a3, $at, .L8000F454
  /* 01004C 8000F44C 00003025 */        or $a2, $zero, $zero
  /* 010050 8000F450 24090001 */     addiu $t1, $zero, 1
  .L8000F454:
  /* 010054 8000F454 51000009 */      beql $t0, $zero, .L8000F47C
  /* 010058 8000F458 8FA20038 */        lw $v0, 0x38($sp)
  /* 01005C 8000F45C AFA3001C */        sw $v1, 0x1c($sp)
  /* 010060 8000F460 AFA40028 */        sw $a0, 0x28($sp)
  /* 010064 8000F464 0C002330 */       jal func_80008CC0
  /* 010068 8000F468 AFA90020 */        sw $t1, 0x20($sp)
  /* 01006C 8000F46C 8FA3001C */        lw $v1, 0x1c($sp)
  /* 010070 8000F470 8FA40028 */        lw $a0, 0x28($sp)
  /* 010074 8000F474 8FA90020 */        lw $t1, 0x20($sp)
  /* 010078 8000F478 8FA20038 */        lw $v0, 0x38($sp)
  .L8000F47C:
  /* 01007C 8000F47C 24010001 */     addiu $at, $zero, 1
  /* 010080 8000F480 304F4000 */      andi $t7, $v0, 0x4000
  /* 010084 8000F484 11E0000C */      beqz $t7, .L8000F4B8
  /* 010088 8000F488 30582000 */      andi $t8, $v0, 0x2000
  /* 01008C 8000F48C 14610006 */       bne $v1, $at, .L8000F4A8
  /* 010090 8000F490 2405002D */     addiu $a1, $zero, 0x2d
  /* 010094 8000F494 2405002E */     addiu $a1, $zero, 0x2e
  /* 010098 8000F498 0C002330 */       jal func_80008CC0
  /* 01009C 8000F49C 00003025 */        or $a2, $zero, $zero
  /* 0100A0 8000F4A0 10000038 */         b .L8000F584
  /* 0100A4 8000F4A4 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4A8:
  /* 0100A8 8000F4A8 0C002330 */       jal func_80008CC0
  /* 0100AC 8000F4AC 00003025 */        or $a2, $zero, $zero
  /* 0100B0 8000F4B0 10000034 */         b .L8000F584
  /* 0100B4 8000F4B4 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4B8:
  /* 0100B8 8000F4B8 1300000D */      beqz $t8, .L8000F4F0
  /* 0100BC 8000F4BC 30591000 */      andi $t9, $v0, 0x1000
  /* 0100C0 8000F4C0 24010001 */     addiu $at, $zero, 1
  /* 0100C4 8000F4C4 14610006 */       bne $v1, $at, .L8000F4E0
  /* 0100C8 8000F4C8 2405002F */     addiu $a1, $zero, 0x2f
  /* 0100CC 8000F4CC 24050030 */     addiu $a1, $zero, 0x30
  /* 0100D0 8000F4D0 0C002330 */       jal func_80008CC0
  /* 0100D4 8000F4D4 00003025 */        or $a2, $zero, $zero
  /* 0100D8 8000F4D8 1000002A */         b .L8000F584
  /* 0100DC 8000F4DC 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4E0:
  /* 0100E0 8000F4E0 0C002330 */       jal func_80008CC0
  /* 0100E4 8000F4E4 00003025 */        or $a2, $zero, $zero
  /* 0100E8 8000F4E8 10000026 */         b .L8000F584
  /* 0100EC 8000F4EC 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4F0:
  /* 0100F0 8000F4F0 1320000C */      beqz $t9, .L8000F524
  /* 0100F4 8000F4F4 24010001 */     addiu $at, $zero, 1
  /* 0100F8 8000F4F8 14610006 */       bne $v1, $at, .L8000F514
  /* 0100FC 8000F4FC 24050031 */     addiu $a1, $zero, 0x31
  /* 010100 8000F500 24050032 */     addiu $a1, $zero, 0x32
  /* 010104 8000F504 0C002330 */       jal func_80008CC0
  /* 010108 8000F508 00003025 */        or $a2, $zero, $zero
  /* 01010C 8000F50C 1000001D */         b .L8000F584
  /* 010110 8000F510 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F514:
  /* 010114 8000F514 0C002330 */       jal func_80008CC0
  /* 010118 8000F518 00003025 */        or $a2, $zero, $zero
  /* 01011C 8000F51C 10000019 */         b .L8000F584
  /* 010120 8000F520 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F524:
  /* 010124 8000F524 1120000D */      beqz $t1, .L8000F55C
  /* 010128 8000F528 24010001 */     addiu $at, $zero, 1
  /* 01012C 8000F52C 24010001 */     addiu $at, $zero, 1
  /* 010130 8000F530 14610006 */       bne $v1, $at, .L8000F54C
  /* 010134 8000F534 2405002B */     addiu $a1, $zero, 0x2b
  /* 010138 8000F538 2405002C */     addiu $a1, $zero, 0x2c
  /* 01013C 8000F53C 0C002330 */       jal func_80008CC0
  /* 010140 8000F540 00003025 */        or $a2, $zero, $zero
  /* 010144 8000F544 1000000F */         b .L8000F584
  /* 010148 8000F548 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F54C:
  /* 01014C 8000F54C 0C002330 */       jal func_80008CC0
  /* 010150 8000F550 00003025 */        or $a2, $zero, $zero
  /* 010154 8000F554 1000000B */         b .L8000F584
  /* 010158 8000F558 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F55C:
  /* 01015C 8000F55C 14610006 */       bne $v1, $at, .L8000F578
  /* 010160 8000F560 24050029 */     addiu $a1, $zero, 0x29
  /* 010164 8000F564 2405002A */     addiu $a1, $zero, 0x2a
  /* 010168 8000F568 0C002330 */       jal func_80008CC0
  /* 01016C 8000F56C 00003025 */        or $a2, $zero, $zero
  /* 010170 8000F570 10000004 */         b .L8000F584
  /* 010174 8000F574 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F578:
  /* 010178 8000F578 0C002330 */       jal func_80008CC0
  /* 01017C 8000F57C 00003025 */        or $a2, $zero, $zero
  /* 010180 8000F580 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F584:
  /* 010184 8000F584 27BD0028 */     addiu $sp, $sp, 0x28
  /* 010188 8000F588 03E00008 */        jr $ra
  /* 01018C 8000F58C 00000000 */       nop 

