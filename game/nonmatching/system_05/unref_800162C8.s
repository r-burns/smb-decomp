.section .text
glabel unref_800162C8
  /* 016EC8 800162C8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 016ECC 800162CC AFBF001C */        sw $ra, 0x1c($sp)
  /* 016ED0 800162D0 AFB10018 */        sw $s1, 0x18($sp)
  /* 016ED4 800162D4 AFB00014 */        sw $s0, 0x14($sp)
  /* 016ED8 800162D8 8C900074 */        lw $s0, 0x74($a0)
  /* 016EDC 800162DC 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 016EE0 800162E0 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 016EE4 800162E4 52000010 */      beql $s0, $zero, .L80016328
  /* 016EE8 800162E8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 016EEC 800162EC 960E0024 */       lhu $t6, 0x24($s0)
  .L800162F0:
  /* 016EF0 800162F0 31CF0004 */      andi $t7, $t6, 4
  /* 016EF4 800162F4 55E00009 */      bnel $t7, $zero, .L8001631C
  /* 016EF8 800162F8 8E100008 */        lw $s0, 8($s0)
  /* 016EFC 800162FC 8E380000 */        lw $t8, ($s1) # D_800465B0 + 0
  /* 016F00 80016300 26040010 */     addiu $a0, $s0, 0x10
  /* 016F04 80016304 0C009440 */       jal spDraw
  /* 016F08 80016308 AE18004C */        sw $t8, 0x4c($s0)
  /* 016F0C 8001630C 8E19004C */        lw $t9, 0x4c($s0)
  /* 016F10 80016310 2728FFF8 */     addiu $t0, $t9, -8
  /* 016F14 80016314 AE280000 */        sw $t0, ($s1) # D_800465B0 + 0
  /* 016F18 80016318 8E100008 */        lw $s0, 8($s0)
  .L8001631C:
  /* 016F1C 8001631C 5600FFF4 */      bnel $s0, $zero, .L800162F0
  /* 016F20 80016320 960E0024 */       lhu $t6, 0x24($s0)
  /* 016F24 80016324 8FBF001C */        lw $ra, 0x1c($sp)
  .L80016328:
  /* 016F28 80016328 8FB00014 */        lw $s0, 0x14($sp)
  /* 016F2C 8001632C 8FB10018 */        lw $s1, 0x18($sp)
  /* 016F30 80016330 03E00008 */        jr $ra
  /* 016F34 80016334 27BD0020 */     addiu $sp, $sp, 0x20

