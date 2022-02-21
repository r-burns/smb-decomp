.section .text
glabel unref_ovl0_800D3C54
  /* 04F634 800D3C54 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 04F638 800D3C58 AFBF0024 */        sw $ra, 0x24($sp)
  /* 04F63C 800D3C5C AFB20020 */        sw $s2, 0x20($sp)
  /* 04F640 800D3C60 AFB1001C */        sw $s1, 0x1c($sp)
  /* 04F644 800D3C64 AFB00018 */        sw $s0, 0x18($sp)
  /* 04F648 800D3C68 908E000F */       lbu $t6, 0xf($a0)
  /* 04F64C 800D3C6C 24010001 */     addiu $at, $zero, 1
  /* 04F650 800D3C70 55C10016 */      bnel $t6, $at, .L800D3CCC
  /* 04F654 800D3C74 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04F658 800D3C78 8C910074 */        lw $s1, 0x74($a0)
  /* 04F65C 800D3C7C 3C12800D */       lui $s2, %hi(D_ovl0_800D639C)
  /* 04F660 800D3C80 2652639C */     addiu $s2, $s2, %lo(D_ovl0_800D639C)
  /* 04F664 800D3C84 52200011 */      beql $s1, $zero, .L800D3CCC
  /* 04F668 800D3C88 8FBF0024 */        lw $ra, 0x24($sp)
  .L800D3C8C:
  /* 04F66C 800D3C8C 8E440000 */        lw $a0, ($s2) # D_ovl0_800D639C + 0
  /* 04F670 800D3C90 10800009 */      beqz $a0, .L800D3CB8
  /* 04F674 800D3C94 00000000 */       nop 
  .L800D3C98:
  /* 04F678 800D3C98 8C8F0048 */        lw $t7, 0x48($a0)
  /* 04F67C 800D3C9C 8C900000 */        lw $s0, ($a0)
  /* 04F680 800D3CA0 162F0003 */       bne $s1, $t7, .L800D3CB0
  /* 04F684 800D3CA4 00000000 */       nop 
  /* 04F688 800D3CA8 0C034E21 */       jal func_ovl0_800D3884
  /* 04F68C 800D3CAC 00000000 */       nop 
  .L800D3CB0:
  /* 04F690 800D3CB0 1600FFF9 */      bnez $s0, .L800D3C98
  /* 04F694 800D3CB4 02002025 */        or $a0, $s0, $zero
  .L800D3CB8:
  /* 04F698 800D3CB8 0C002EA8 */       jal func_8000BAA0
  /* 04F69C 800D3CBC 02202025 */        or $a0, $s1, $zero
  /* 04F6A0 800D3CC0 1440FFF2 */      bnez $v0, .L800D3C8C
  /* 04F6A4 800D3CC4 00408825 */        or $s1, $v0, $zero
  /* 04F6A8 800D3CC8 8FBF0024 */        lw $ra, 0x24($sp)
  .L800D3CCC:
  /* 04F6AC 800D3CCC 8FB00018 */        lw $s0, 0x18($sp)
  /* 04F6B0 800D3CD0 8FB1001C */        lw $s1, 0x1c($sp)
  /* 04F6B4 800D3CD4 8FB20020 */        lw $s2, 0x20($sp)
  /* 04F6B8 800D3CD8 03E00008 */        jr $ra
  /* 04F6BC 800D3CDC 27BD0028 */     addiu $sp, $sp, 0x28

