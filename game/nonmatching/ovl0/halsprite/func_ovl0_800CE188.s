.section .text
glabel func_ovl0_800CE188
  /* 049B68 800CE188 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049B6C 800CE18C AFBF0014 */        sw $ra, 0x14($sp)
  /* 049B70 800CE190 8C8200B4 */        lw $v0, 0xb4($a0)
  /* 049B74 800CE194 10400004 */      beqz $v0, .L800CE1A8
  /* 049B78 800CE198 00000000 */       nop 
  /* 049B7C 800CE19C 0040F809 */      jalr $v0
  /* 049B80 800CE1A0 AFA40018 */        sw $a0, 0x18($sp)
  /* 049B84 800CE1A4 8FA40018 */        lw $a0, 0x18($sp)
  .L800CE1A8:
  /* 049B88 800CE1A8 3C02800D */       lui $v0, %hi(D_ovl0_800D6454)
  /* 049B8C 800CE1AC 24426454 */     addiu $v0, $v0, %lo(D_ovl0_800D6454)
  /* 049B90 800CE1B0 8C4E0000 */        lw $t6, ($v0) # D_ovl0_800D6454 + 0
  /* 049B94 800CE1B4 3C03800D */       lui $v1, %hi(D_ovl0_800D644C)
  /* 049B98 800CE1B8 2463644C */     addiu $v1, $v1, %lo(D_ovl0_800D644C)
  /* 049B9C 800CE1BC AC8E0000 */        sw $t6, ($a0)
  /* 049BA0 800CE1C0 946F0000 */       lhu $t7, ($v1) # D_ovl0_800D644C + 0
  /* 049BA4 800CE1C4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049BA8 800CE1C8 AC440000 */        sw $a0, ($v0) # D_ovl0_800D6454 + 0
  /* 049BAC 800CE1CC 25F8FFFF */     addiu $t8, $t7, -1
  /* 049BB0 800CE1D0 A4780000 */        sh $t8, ($v1) # D_ovl0_800D644C + 0
  /* 049BB4 800CE1D4 03E00008 */        jr $ra
  /* 049BB8 800CE1D8 27BD0018 */     addiu $sp, $sp, 0x18

