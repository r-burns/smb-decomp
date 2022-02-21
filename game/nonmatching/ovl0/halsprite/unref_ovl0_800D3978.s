.section .text
glabel unref_ovl0_800D3978
  /* 04F358 800D3978 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04F35C 800D397C AFB00014 */        sw $s0, 0x14($sp)
  /* 04F360 800D3980 3C10800D */       lui $s0, %hi(D_ovl0_800D639C)
  /* 04F364 800D3984 8E10639C */        lw $s0, %lo(D_ovl0_800D639C)($s0)
  /* 04F368 800D3988 AFBF001C */        sw $ra, 0x1c($sp)
  /* 04F36C 800D398C AFB10018 */        sw $s1, 0x18($sp)
  /* 04F370 800D3990 52000007 */      beql $s0, $zero, .L800D39B0
  /* 04F374 800D3994 8FBF001C */        lw $ra, 0x1c($sp)
  .L800D3998:
  /* 04F378 800D3998 8E110000 */        lw $s1, ($s0)
  /* 04F37C 800D399C 0C034E21 */       jal func_ovl0_800D3884
  /* 04F380 800D39A0 02002025 */        or $a0, $s0, $zero
  /* 04F384 800D39A4 1620FFFC */      bnez $s1, .L800D3998
  /* 04F388 800D39A8 02208025 */        or $s0, $s1, $zero
  /* 04F38C 800D39AC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800D39B0:
  /* 04F390 800D39B0 8FB00014 */        lw $s0, 0x14($sp)
  /* 04F394 800D39B4 8FB10018 */        lw $s1, 0x18($sp)
  /* 04F398 800D39B8 03E00008 */        jr $ra
  /* 04F39C 800D39BC 27BD0020 */     addiu $sp, $sp, 0x20

