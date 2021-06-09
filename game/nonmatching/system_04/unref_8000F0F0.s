.section .text
glabel unref_8000F0F0
  /* 00FCF0 8000F0F0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00FCF4 8000F0F4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FCF8 8000F0F8 0C0024FD */       jal func_800093F4
  /* 00FCFC 8000F0FC 00000000 */       nop 
  /* 00FD00 8000F100 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00FD04 8000F104 0C003C16 */       jal func_8000F058
  /* 00FD08 8000F108 00402025 */        or $a0, $v0, $zero
  /* 00FD0C 8000F10C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FD10 8000F110 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00FD14 8000F114 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00FD18 8000F118 03E00008 */        jr $ra
  /* 00FD1C 8000F11C 00000000 */       nop 

