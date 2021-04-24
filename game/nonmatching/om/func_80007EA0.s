.section .text
glabel func_80007EA0
  /* 008AA0 80007EA0 8C8E006C */        lw $t6, 0x6c($a0)
  /* 008AA4 80007EA4 ACAE0000 */        sw $t6, ($a1)
  /* 008AA8 80007EA8 03E00008 */        jr $ra
  /* 008AAC 80007EAC AC85006C */        sw $a1, 0x6c($a0)

