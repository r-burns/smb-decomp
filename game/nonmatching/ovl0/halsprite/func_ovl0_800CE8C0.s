.section .text
glabel func_ovl0_800CE8C0
  /* 04A2A0 800CE8C0 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 04A2A4 800CE8C4 30820007 */      andi $v0, $a0, 7
  /* 04A2A8 800CE8C8 44866000 */      mtc1 $a2, $f12
  /* 04A2AC 800CE8CC 44877000 */      mtc1 $a3, $f14
  /* 04A2B0 800CE8D0 28410008 */      slti $at, $v0, 8
  /* 04A2B4 800CE8D4 AFBF004C */        sw $ra, 0x4c($sp)
  /* 04A2B8 800CE8D8 AFA40058 */        sw $a0, 0x58($sp)
  /* 04A2BC 800CE8DC 14200003 */      bnez $at, .L800CE8EC
  /* 04A2C0 800CE8E0 AFA5005C */        sw $a1, 0x5c($sp)
  /* 04A2C4 800CE8E4 1000003C */         b .L800CE9D8
  /* 04A2C8 800CE8E8 00001025 */        or $v0, $zero, $zero
  .L800CE8EC:
  /* 04A2CC 800CE8EC 00021880 */       sll $v1, $v0, 2
  /* 04A2D0 800CE8F0 3C0F800D */       lui $t7, %hi(D_ovl0_800D63C0)
  /* 04A2D4 800CE8F4 01E37821 */      addu $t7, $t7, $v1
  /* 04A2D8 800CE8F8 8DEF63C0 */        lw $t7, %lo(D_ovl0_800D63C0)($t7)
  /* 04A2DC 800CE8FC 8FAE005C */        lw $t6, 0x5c($sp)
  /* 04A2E0 800CE900 3C18800D */       lui $t8, %hi(D_ovl0_800D6400)
  /* 04A2E4 800CE904 0303C021 */      addu $t8, $t8, $v1
  /* 04A2E8 800CE908 01CF082A */       slt $at, $t6, $t7
  /* 04A2EC 800CE90C 14200003 */      bnez $at, .L800CE91C
  /* 04A2F0 800CE910 8FB9005C */        lw $t9, 0x5c($sp)
  /* 04A2F4 800CE914 10000030 */         b .L800CE9D8
  /* 04A2F8 800CE918 00001025 */        or $v0, $zero, $zero
  .L800CE91C:
  /* 04A2FC 800CE91C 8F186400 */        lw $t8, %lo(D_ovl0_800D6400)($t8)
  /* 04A300 800CE920 00194080 */       sll $t0, $t9, 2
  /* 04A304 800CE924 C7A40068 */      lwc1 $f4, 0x68($sp)
  /* 04A308 800CE928 03084821 */      addu $t1, $t8, $t0
  /* 04A30C 800CE92C 8D220000 */        lw $v0, ($t1)
  /* 04A310 800CE930 C7A6006C */      lwc1 $f6, 0x6c($sp)
  /* 04A314 800CE934 C7A80070 */      lwc1 $f8, 0x70($sp)
  /* 04A318 800CE938 94470002 */       lhu $a3, 2($v0)
  /* 04A31C 800CE93C 8C460008 */        lw $a2, 8($v0)
  /* 04A320 800CE940 244A0030 */     addiu $t2, $v0, 0x30
  /* 04A324 800CE944 AFAA0010 */        sw $t2, 0x10($sp)
  /* 04A328 800CE948 944B0006 */       lhu $t3, 6($v0)
  /* 04A32C 800CE94C C7AA0074 */      lwc1 $f10, 0x74($sp)
  /* 04A330 800CE950 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 04A334 800CE954 E7AC0018 */      swc1 $f12, 0x18($sp)
  /* 04A338 800CE958 E7A40020 */      swc1 $f4, 0x20($sp)
  /* 04A33C 800CE95C E7A60024 */      swc1 $f6, 0x24($sp)
  /* 04A340 800CE960 E7A80028 */      swc1 $f8, 0x28($sp)
  /* 04A344 800CE964 AFAB0014 */        sw $t3, 0x14($sp)
  /* 04A348 800CE968 E7AA002C */      swc1 $f10, 0x2c($sp)
  /* 04A34C 800CE96C C450002C */      lwc1 $f16, 0x2c($v0)
  /* 04A350 800CE970 3C0C800D */       lui $t4, %hi(D_ovl0_800D6420)
  /* 04A354 800CE974 01836021 */      addu $t4, $t4, $v1
  /* 04A358 800CE978 E7B00030 */      swc1 $f16, 0x30($sp)
  /* 04A35C 800CE97C C452000C */      lwc1 $f18, 0xc($v0)
  /* 04A360 800CE980 8D8C6420 */        lw $t4, %lo(D_ovl0_800D6420)($t4)
  /* 04A364 800CE984 00076880 */       sll $t5, $a3, 2
  /* 04A368 800CE988 E7B20034 */      swc1 $f18, 0x34($sp)
  /* 04A36C 800CE98C C4440010 */      lwc1 $f4, 0x10($v0)
  /* 04A370 800CE990 018D7021 */      addu $t6, $t4, $t5
  /* 04A374 800CE994 00002025 */        or $a0, $zero, $zero
  /* 04A378 800CE998 E7A40038 */      swc1 $f4, 0x38($sp)
  /* 04A37C 800CE99C 8DCF0000 */        lw $t7, ($t6)
  /* 04A380 800CE9A0 8FA50058 */        lw $a1, 0x58($sp)
  /* 04A384 800CE9A4 8DF90014 */        lw $t9, 0x14($t7)
  /* 04A388 800CE9A8 AFA00040 */        sw $zero, 0x40($sp)
  /* 04A38C 800CE9AC 0C033939 */       jal func_ovl0_800CE4E4
  /* 04A390 800CE9B0 AFB9003C */        sw $t9, 0x3c($sp)
  /* 04A394 800CE9B4 10400007 */      beqz $v0, .L800CE9D4
  /* 04A398 800CE9B8 00402025 */        or $a0, $v0, $zero
  /* 04A39C 800CE9BC 8FA60058 */        lw $a2, 0x58($sp)
  /* 04A3A0 800CE9C0 00002825 */        or $a1, $zero, $zero
  /* 04A3A4 800CE9C4 AFA20054 */        sw $v0, 0x54($sp)
  /* 04A3A8 800CE9C8 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A3AC 800CE9CC 000630C3 */       sra $a2, $a2, 3
  /* 04A3B0 800CE9D0 8FA40054 */        lw $a0, 0x54($sp)
  .L800CE9D4:
  /* 04A3B4 800CE9D4 00801025 */        or $v0, $a0, $zero
  .L800CE9D8:
  /* 04A3B8 800CE9D8 8FBF004C */        lw $ra, 0x4c($sp)
  /* 04A3BC 800CE9DC 27BD0058 */     addiu $sp, $sp, 0x58
  /* 04A3C0 800CE9E0 03E00008 */        jr $ra
  /* 04A3C4 800CE9E4 00000000 */       nop 

