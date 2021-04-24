.section .text
glabel func_80009C90
  /* 00A890 80009C90 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A894 80009C94 AFA50024 */        sw $a1, 0x24($sp)
  /* 00A898 80009C98 00802825 */        or $a1, $a0, $zero
  /* 00A89C 80009C9C AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A8A0 80009CA0 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A8A4 80009CA4 00C03825 */        or $a3, $a2, $zero
  /* 00A8A8 80009CA8 93A60027 */       lbu $a2, 0x27($sp)
  /* 00A8AC 80009CAC 00002025 */        or $a0, $zero, $zero
  /* 00A8B0 80009CB0 0C0026D2 */       jal func_80009B48
  /* 00A8B4 80009CB4 AFA00010 */        sw $zero, 0x10($sp)
  /* 00A8B8 80009CB8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A8BC 80009CBC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A8C0 80009CC0 03E00008 */        jr $ra
  /* 00A8C4 80009CC4 00000000 */       nop 

