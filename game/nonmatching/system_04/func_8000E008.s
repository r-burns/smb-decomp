.section .text
glabel func_8000E008
  /* 00EC08 8000E008 AFA50004 */        sw $a1, 4($sp)
  /* 00EC0C 8000E00C 1080000A */      beqz $a0, .L8000E038
  /* 00EC10 8000E010 30A500FF */      andi $a1, $a1, 0xff
  /* 00EC14 8000E014 00A01025 */        or $v0, $a1, $zero
  /* 00EC18 8000E018 908E0004 */       lbu $t6, 4($a0)
  .L8000E01C:
  /* 00EC1C 8000E01C 544E0004 */      bnel $v0, $t6, .L8000E030
  /* 00EC20 8000E020 8C840000 */        lw $a0, ($a0)
  /* 00EC24 8000E024 03E00008 */        jr $ra
  /* 00EC28 8000E028 00801025 */        or $v0, $a0, $zero

  /* 00EC2C 8000E02C 8C840000 */        lw $a0, ($a0)
  .L8000E030:
  /* 00EC30 8000E030 5480FFFA */      bnel $a0, $zero, .L8000E01C
  /* 00EC34 8000E034 908E0004 */       lbu $t6, 4($a0)
  .L8000E038:
  /* 00EC38 8000E038 00001025 */        or $v0, $zero, $zero
  /* 00EC3C 8000E03C 03E00008 */        jr $ra
  /* 00EC40 8000E040 00000000 */       nop 

