.section .text
glabel func_ovl0_800CE418
  /* 049DF8 800CE418 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049DFC 800CE41C AFB10018 */        sw $s1, 0x18($sp)
  /* 049E00 800CE420 3C11800D */       lui $s1, %hi(D_ovl0_800D6350)
  /* 049E04 800CE424 26316350 */     addiu $s1, $s1, %lo(D_ovl0_800D6350)
  /* 049E08 800CE428 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 049E0C 800CE42C 3C03800D */       lui $v1, %hi(D_ovl0_800D6398)
  /* 049E10 800CE430 AFBF001C */        sw $ra, 0x1c($sp)
  /* 049E14 800CE434 AFB00014 */        sw $s0, 0x14($sp)
  /* 049E18 800CE438 AE200000 */        sw $zero, ($s1) # D_ovl0_800D6350 + 0
  /* 049E1C 800CE43C 24636398 */     addiu $v1, $v1, %lo(D_ovl0_800D6398)
  /* 049E20 800CE440 24426358 */     addiu $v0, $v0, %lo(D_ovl0_800D6358)
  .L800CE444:
  /* 049E24 800CE444 24420004 */     addiu $v0, $v0, 4
  /* 049E28 800CE448 0043082B */      sltu $at, $v0, $v1
  /* 049E2C 800CE44C 1420FFFD */      bnez $at, .L800CE444
  /* 049E30 800CE450 AC40FFFC */        sw $zero, -4($v0) # D_ovl0_800D6358 + -4
  /* 049E34 800CE454 2490FFFF */     addiu $s0, $a0, -1
  /* 049E38 800CE458 0600000D */      bltz $s0, .L800CE490
  .L800CE45C:
  /* 049E3C 800CE45C 24040060 */     addiu $a0, $zero, 0x60
  /* 049E40 800CE460 0C001260 */       jal hal_alloc
  /* 049E44 800CE464 24050004 */     addiu $a1, $zero, 4
  /* 049E48 800CE468 54400004 */      bnel $v0, $zero, .L800CE47C
  /* 049E4C 800CE46C 8E2E0000 */        lw $t6, ($s1) # D_ovl0_800D6350 + 0
  /* 049E50 800CE470 10000017 */         b .L800CE4D0
  /* 049E54 800CE474 00001025 */        or $v0, $zero, $zero
  /* 049E58 800CE478 8E2E0000 */        lw $t6, ($s1) # D_ovl0_800D6350 + 0
  .L800CE47C:
  /* 049E5C 800CE47C 2610FFFF */     addiu $s0, $s0, -1
  /* 049E60 800CE480 3C01800D */       lui $at, %hi(D_ovl0_800D6350)
  /* 049E64 800CE484 AC4E0000 */        sw $t6, ($v0)
  /* 049E68 800CE488 0601FFF4 */      bgez $s0, .L800CE45C
  /* 049E6C 800CE48C AC226350 */        sw $v0, %lo(D_ovl0_800D6350)($at)
  .L800CE490:
  /* 049E70 800CE490 3C01800D */       lui $at, %hi(D_ovl0_800D6448)
  /* 049E74 800CE494 A4206448 */        sh $zero, %lo(D_ovl0_800D6448)($at)
  /* 049E78 800CE498 3C01800D */       lui $at, %hi(D_ovl0_800D644E)
  /* 049E7C 800CE49C A420644E */        sh $zero, %lo(D_ovl0_800D644E)($at)
  /* 049E80 800CE4A0 0C002C66 */       jal find_gobj_with_id
  /* 049E84 800CE4A4 2404FFFA */     addiu $a0, $zero, -6
  /* 049E88 800CE4A8 10400003 */      beqz $v0, .L800CE4B8
  /* 049E8C 800CE4AC 00000000 */       nop 
  /* 049E90 800CE4B0 10000007 */         b .L800CE4D0
  /* 049E94 800CE4B4 00001025 */        or $v0, $zero, $zero
  .L800CE4B8:
  /* 049E98 800CE4B8 3C05800D */       lui $a1, %hi(func_ovl0_800D0C74)
  /* 049E9C 800CE4BC 24A50C74 */     addiu $a1, $a1, %lo(func_ovl0_800D0C74)
  /* 049EA0 800CE4C0 2404FFFA */     addiu $a0, $zero, -6
  /* 049EA4 800CE4C4 00003025 */        or $a2, $zero, $zero
  /* 049EA8 800CE4C8 0C00265A */       jal func_80009968
  /* 049EAC 800CE4CC 3C078000 */       lui $a3, 0x8000
  .L800CE4D0:
  /* 049EB0 800CE4D0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 049EB4 800CE4D4 8FB00014 */        lw $s0, 0x14($sp)
  /* 049EB8 800CE4D8 8FB10018 */        lw $s1, 0x18($sp)
  /* 049EBC 800CE4DC 03E00008 */        jr $ra
  /* 049EC0 800CE4E0 27BD0020 */     addiu $sp, $sp, 0x20

