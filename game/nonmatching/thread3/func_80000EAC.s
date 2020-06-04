glabel func_80000EAC
  /* 001AAC 80000EAC 3C048004 */       lui $a0, %hi(D_80044EE8)
  /* 001AB0 80000EB0 3C0E8004 */       lui $t6, %hi(D_80044F38)
  /* 001AB4 80000EB4 24844EE8 */     addiu $a0, $a0, %lo(D_80044EE8)
  /* 001AB8 80000EB8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 001ABC 80000EBC 25CE4F38 */     addiu $t6, $t6, %lo(D_80044F38)
  /* 001AC0 80000EC0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 001AC4 80000EC4 25C80048 */     addiu $t0, $t6, 0x48
  /* 001AC8 80000EC8 0080C825 */        or $t9, $a0, $zero
  .L80000ECC:
  /* 001ACC 80000ECC 8DD80000 */        lw $t8, ($t6) # D_80044F38 + 0
  /* 001AD0 80000ED0 25CE000C */     addiu $t6, $t6, 0xc
  /* 001AD4 80000ED4 2739000C */     addiu $t9, $t9, 0xc
  /* 001AD8 80000ED8 AF38FFF4 */        sw $t8, -0xc($t9)
  /* 001ADC 80000EDC 8DCFFFF8 */        lw $t7, -8($t6) # D_80044F38 + -8
  /* 001AE0 80000EE0 AF2FFFF8 */        sw $t7, -8($t9)
  /* 001AE4 80000EE4 8DD8FFFC */        lw $t8, -4($t6) # D_80044F38 + -4
  /* 001AE8 80000EE8 15C8FFF8 */       bne $t6, $t0, .L80000ECC
  /* 001AEC 80000EEC AF38FFFC */        sw $t8, -4($t9)
  /* 001AF0 80000EF0 8DD80000 */        lw $t8, ($t6) # D_80044F38 + 0
  /* 001AF4 80000EF4 AF380000 */        sw $t8, ($t9)
  /* 001AF8 80000EF8 8DCF0004 */        lw $t7, 4($t6) # D_80044F38 + 4
  /* 001AFC 80000EFC 0C00CAEC */       jal osViSetMode
  /* 001B00 80000F00 AF2F0004 */        sw $t7, 4($t9)
  /* 001B04 80000F04 3C048004 */       lui $a0, %hi(D_80044FBC)
  /* 001B08 80000F08 8C844FBC */        lw $a0, %lo(D_80044FBC)($a0)
  /* 001B0C 80000F0C 00042100 */       sll $a0, $a0, 4
  /* 001B10 80000F10 000427C2 */       srl $a0, $a0, 0x1f
  /* 001B14 80000F14 0C00CA18 */       jal osViBlack
  /* 001B18 80000F18 308400FF */      andi $a0, $a0, 0xff
  /* 001B1C 80000F1C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 001B20 80000F20 3C018004 */       lui $at, %hi(D_80044F88)
  /* 001B24 80000F24 AC204F88 */        sw $zero, %lo(D_80044F88)($at)
  /* 001B28 80000F28 03E00008 */        jr $ra
  /* 001B2C 80000F2C 27BD0018 */     addiu $sp, $sp, 0x18

