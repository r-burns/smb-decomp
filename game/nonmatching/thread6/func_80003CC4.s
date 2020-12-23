.section .text
glabel func_80003CC4
  /* 0048C4 80003CC4 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 0048C8 80003CC8 AFB60030 */        sw $s6, 0x30($sp)
  /* 0048CC 80003CCC 3C168004 */       lui $s6, %hi(sInitQueue)
  /* 0048D0 80003CD0 26D650F0 */     addiu $s6, $s6, %lo(sInitQueue)
  /* 0048D4 80003CD4 AFBF0034 */        sw $ra, 0x34($sp)
  /* 0048D8 80003CD8 AFB5002C */        sw $s5, 0x2c($sp)
  /* 0048DC 80003CDC AFB40028 */        sw $s4, 0x28($sp)
  /* 0048E0 80003CE0 AFB30024 */        sw $s3, 0x24($sp)
  /* 0048E4 80003CE4 AFB20020 */        sw $s2, 0x20($sp)
  /* 0048E8 80003CE8 AFB1001C */        sw $s1, 0x1c($sp)
  /* 0048EC 80003CEC AFB00018 */        sw $s0, 0x18($sp)
  /* 0048F0 80003CF0 0C00CD50 */       jal osContStartQuery
  /* 0048F4 80003CF4 02C02025 */        or $a0, $s6, $zero
  /* 0048F8 80003CF8 02C02025 */        or $a0, $s6, $zero
  /* 0048FC 80003CFC 00002825 */        or $a1, $zero, $zero
  /* 004900 80003D00 0C00C084 */       jal osRecvMesg
  /* 004904 80003D04 24060001 */     addiu $a2, $zero, 1
  /* 004908 80003D08 3C048004 */       lui $a0, %hi(sContStatus)
  /* 00490C 80003D0C 0C00CD71 */       jal osContGetQuery
  /* 004910 80003D10 24845178 */     addiu $a0, $a0, %lo(sContStatus)
  /* 004914 80003D14 3C108004 */       lui $s0, %hi(sContStatus)
  /* 004918 80003D18 3C118004 */       lui $s1, %hi(D_800451A8)
  /* 00491C 80003D1C 3C138004 */       lui $s3, %hi(sMotorPfs)
  /* 004920 80003D20 267352C8 */     addiu $s3, $s3, %lo(sMotorPfs)
  /* 004924 80003D24 263151A8 */     addiu $s1, $s1, %lo(D_800451A8)
  /* 004928 80003D28 26105178 */     addiu $s0, $s0, %lo(sContStatus)
  /* 00492C 80003D2C 00009025 */        or $s2, $zero, $zero
  /* 004930 80003D30 24150004 */     addiu $s5, $zero, 4
  /* 004934 80003D34 24140068 */     addiu $s4, $zero, 0x68
  .L80003D38:
  /* 004938 80003D38 92020003 */       lbu $v0, 3($s0) # sContStatus + 3
  /* 00493C 80003D3C 54400015 */      bnel $v0, $zero, .L80003D94
  /* 004940 80003D40 920A0002 */       lbu $t2, 2($s0) # sContStatus + 2

  /* 004944 80003D44 920E0002 */       lbu $t6, 2($s0) # sContStatus + 2
  /* 004948 80003D48 31CF0001 */      andi $t7, $t6, 1
  /* 00494C 80003D4C 51E00011 */      beql $t7, $zero, .L80003D94
  /* 004950 80003D50 920A0002 */       lbu $t2, 2($s0) # sContStatus + 2

  /* 004954 80003D54 9238001D */       lbu $t8, 0x1d($s1) # D_800451A8 + 29
  /* 004958 80003D58 33190001 */      andi $t9, $t8, 1
  /* 00495C 80003D5C 13200004 */      beqz $t9, .L80003D70
  /* 004960 80003D60 00000000 */       nop 
  /* 004964 80003D64 9228001C */       lbu $t0, 0x1c($s1) # D_800451A8 + 28
  /* 004968 80003D68 5100000A */      beql $t0, $zero, .L80003D94
  /* 00496C 80003D6C 920A0002 */       lbu $t2, 2($s0) # sContStatus + 2
  .L80003D70:
  /* 004970 80003D70 02540019 */     multu $s2, $s4
  /* 004974 80003D74 02C02025 */        or $a0, $s6, $zero
  /* 004978 80003D78 02403025 */        or $a2, $s2, $zero
  /* 00497C 80003D7C 00004812 */      mflo $t1
  /* 004980 80003D80 02692821 */      addu $a1, $s3, $t1
  /* 004984 80003D84 0C00C631 */       jal osMotorInit
  /* 004988 80003D88 00000000 */       nop 
  /* 00498C 80003D8C 92020003 */       lbu $v0, 3($s0) # sContStatus + 3
  /* 004990 80003D90 920A0002 */       lbu $t2, 2($s0) # sContStatus + 2
  .L80003D94:
  /* 004994 80003D94 26520001 */     addiu $s2, $s2, 1
  /* 004998 80003D98 26100004 */     addiu $s0, $s0, 4
  /* 00499C 80003D9C 26310020 */     addiu $s1, $s1, 0x20
  /* 0049A0 80003DA0 A222FFFC */        sb $v0, -4($s1) # D_800451A8 + -4
  /* 0049A4 80003DA4 1655FFE4 */       bne $s2, $s5, .L80003D38
  /* 0049A8 80003DA8 A22AFFFD */        sb $t2, -3($s1) # D_800451A8 + -3
  /* 0049AC 80003DAC 8FBF0034 */        lw $ra, 0x34($sp)
  /* 0049B0 80003DB0 8FB00018 */        lw $s0, 0x18($sp)
  /* 0049B4 80003DB4 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0049B8 80003DB8 8FB20020 */        lw $s2, 0x20($sp)
  /* 0049BC 80003DBC 8FB30024 */        lw $s3, 0x24($sp)
  /* 0049C0 80003DC0 8FB40028 */        lw $s4, 0x28($sp)
  /* 0049C4 80003DC4 8FB5002C */        lw $s5, 0x2c($sp)
  /* 0049C8 80003DC8 8FB60030 */        lw $s6, 0x30($sp)
  /* 0049CC 80003DCC 03E00008 */        jr $ra
  /* 0049D0 80003DD0 27BD0038 */     addiu $sp, $sp, 0x38

