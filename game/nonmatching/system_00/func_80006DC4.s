.section .text
glabel func_80006DC4
  /* 0079C4 80006DC4 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* 0079C8 80006DC8 3C028004 */       lui $v0, %hi(D_80046688)
  /* 0079CC 80006DCC 24426688 */     addiu $v0, $v0, %lo(D_80046688)
  /* 0079D0 80006DD0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0079D4 80006DD4 240E0005 */     addiu $t6, $zero, 5
  /* 0079D8 80006DD8 240F0064 */     addiu $t7, $zero, 0x64
  /* 0079DC 80006DDC AC440000 */        sw $a0, ($v0) # D_80046688 + 0
  /* 0079E0 80006DE0 00801825 */        or $v1, $a0, $zero
  /* 0079E4 80006DE4 AFAE0018 */        sw $t6, 0x18($sp)
  /* 0079E8 80006DE8 AFAF001C */        sw $t7, 0x1c($sp)
  /* 0079EC 80006DEC AC450004 */        sw $a1, 4($v0) # D_80046688 + 4
  /* 0079F0 80006DF0 AC460008 */        sw $a2, 8($v0) # D_80046688 + 8
  /* 0079F4 80006DF4 AFA3003C */        sw $v1, 0x3c($sp)
  /* 0079F8 80006DF8 27A40018 */     addiu $a0, $sp, 0x18
  /* 0079FC 80006DFC AFA50040 */        sw $a1, 0x40($sp)
  /* 007A00 80006E00 0C00025C */       jal func_80000970
  /* 007A04 80006E04 AFA60044 */        sw $a2, 0x44($sp)
  /* 007A08 80006E08 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007A0C 80006E0C 27BD0048 */     addiu $sp, $sp, 0x48
  /* 007A10 80006E10 03E00008 */        jr $ra
  /* 007A14 80006E14 00000000 */       nop 

