.section .text
glabel unref_8000F0C0
  /* 00FCC0 8000F0C0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00FCC4 8000F0C4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FCC8 8000F0C8 0C0024E0 */       jal func_80009380
  /* 00FCCC 8000F0CC 00000000 */       nop 
  /* 00FCD0 8000F0D0 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00FCD4 8000F0D4 0C003C16 */       jal func_8000F058
  /* 00FCD8 8000F0D8 00402025 */        or $a0, $v0, $zero
  /* 00FCDC 8000F0DC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FCE0 8000F0E0 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00FCE4 8000F0E4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00FCE8 8000F0E8 03E00008 */        jr $ra
  /* 00FCEC 8000F0EC 00000000 */       nop 

