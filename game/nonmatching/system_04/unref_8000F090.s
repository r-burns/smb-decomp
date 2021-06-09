.section .text
glabel unref_8000F090
  /* 00FC90 8000F090 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00FC94 8000F094 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FC98 8000F098 0C0024B4 */       jal func_800092D0
  /* 00FC9C 8000F09C 00000000 */       nop 
  /* 00FCA0 8000F0A0 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00FCA4 8000F0A4 0C003C16 */       jal func_8000F058
  /* 00FCA8 8000F0A8 00402025 */        or $a0, $v0, $zero
  /* 00FCAC 8000F0AC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FCB0 8000F0B0 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00FCB4 8000F0B4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00FCB8 8000F0B8 03E00008 */        jr $ra
  /* 00FCBC 8000F0BC 00000000 */       nop 

