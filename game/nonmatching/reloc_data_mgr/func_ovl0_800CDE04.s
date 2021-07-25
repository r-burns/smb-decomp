.section .text
glabel func_ovl0_800CDE04
  /* 0497E4 800CDE04 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 0497E8 800CDE08 AFB20020 */        sw $s2, 0x20($sp)
  /* 0497EC 800CDE0C AFB1001C */        sw $s1, 0x1c($sp)
  /* 0497F0 800CDE10 AFB00018 */        sw $s0, 0x18($sp)
  /* 0497F4 800CDE14 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 0497F8 800CDE18 00A08025 */        or $s0, $a1, $zero
  /* 0497FC 800CDE1C 00808825 */        or $s1, $a0, $zero
  /* 049800 800CDE20 00C09025 */        or $s2, $a2, $zero
  /* 049804 800CDE24 AFBF0024 */        sw $ra, 0x24($sp)
  /* 049808 800CDE28 AFA70034 */        sw $a3, 0x34($sp)
  /* 04980C 800CDE2C 10A00008 */      beqz $a1, .L800CDE50
  /* 049810 800CDE30 AC276348 */        sw $a3, %lo(D_ovl0_800D6348)($at)
  .L800CDE34:
  /* 049814 800CDE34 0C033703 */       jal func_ovl0_800CDC0C
  /* 049818 800CDE38 8E240000 */        lw $a0, ($s1)
  /* 04981C 800CDE3C 2610FFFF */     addiu $s0, $s0, -1
  /* 049820 800CDE40 AE420000 */        sw $v0, ($s2)
  /* 049824 800CDE44 26310004 */     addiu $s1, $s1, 4
  /* 049828 800CDE48 1600FFFA */      bnez $s0, .L800CDE34
  /* 04982C 800CDE4C 26520004 */     addiu $s2, $s2, 4
  .L800CDE50:
  /* 049830 800CDE50 8FBF0024 */        lw $ra, 0x24($sp)
  /* 049834 800CDE54 3C0F800D */       lui $t7, %hi(D_ovl0_800D6348)
  /* 049838 800CDE58 8DEF6348 */        lw $t7, %lo(D_ovl0_800D6348)($t7)
  /* 04983C 800CDE5C 8FB80034 */        lw $t8, 0x34($sp)
  /* 049840 800CDE60 8FB00018 */        lw $s0, 0x18($sp)
  /* 049844 800CDE64 8FB1001C */        lw $s1, 0x1c($sp)
  /* 049848 800CDE68 8FB20020 */        lw $s2, 0x20($sp)
  /* 04984C 800CDE6C 27BD0028 */     addiu $sp, $sp, 0x28
  /* 049850 800CDE70 03E00008 */        jr $ra
  /* 049854 800CDE74 01F81023 */      subu $v0, $t7, $t8

  /* 049858 800CDE78 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 04985C 800CDE7C 3C03800D */       lui $v1, %hi(D_ovl0_800D62F0)
  /* 049860 800CDE80 8C6362F0 */        lw $v1, %lo(D_ovl0_800D62F0)($v1)
  /* 049864 800CDE84 AFB20020 */        sw $s2, 0x20($sp)
  /* 049868 800CDE88 AFB1001C */        sw $s1, 0x1c($sp)
  /* 04986C 800CDE8C AFB00018 */        sw $s0, 0x18($sp)
  /* 049870 800CDE90 00A08025 */        or $s0, $a1, $zero
  /* 049874 800CDE94 00808825 */        or $s1, $a0, $zero
  /* 049878 800CDE98 00C09025 */        or $s2, $a2, $zero
  /* 04987C 800CDE9C AFBF0024 */        sw $ra, 0x24($sp)
  /* 049880 800CDEA0 10A0000A */      beqz $a1, .L800CDECC
  /* 049884 800CDEA4 AFA30028 */        sw $v1, 0x28($sp)
  .L800CDEA8:
  /* 049888 800CDEA8 0C03372B */       jal func_ovl0_800CDCAC
  /* 04988C 800CDEAC 8E240000 */        lw $a0, ($s1)
  /* 049890 800CDEB0 2610FFFF */     addiu $s0, $s0, -1
  /* 049894 800CDEB4 AE420000 */        sw $v0, ($s2)
  /* 049898 800CDEB8 26310004 */     addiu $s1, $s1, 4
  /* 04989C 800CDEBC 1600FFFA */      bnez $s0, .L800CDEA8
  /* 0498A0 800CDEC0 26520004 */     addiu $s2, $s2, 4
  /* 0498A4 800CDEC4 3C03800D */       lui $v1, %hi(D_ovl0_800D62F0)
  /* 0498A8 800CDEC8 8C6362F0 */        lw $v1, %lo(D_ovl0_800D62F0)($v1)
  .L800CDECC:
  /* 0498AC 800CDECC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 0498B0 800CDED0 8FAE0028 */        lw $t6, 0x28($sp)
  /* 0498B4 800CDED4 8FB00018 */        lw $s0, 0x18($sp)
  /* 0498B8 800CDED8 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0498BC 800CDEDC 8FB20020 */        lw $s2, 0x20($sp)
  /* 0498C0 800CDEE0 27BD0030 */     addiu $sp, $sp, 0x30
  /* 0498C4 800CDEE4 03E00008 */        jr $ra
  /* 0498C8 800CDEE8 006E1023 */      subu $v0, $v1, $t6

