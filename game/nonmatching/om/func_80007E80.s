.section .text
glabel func_80007E80
  /* 008A80 80007E80 8C8E006C */        lw $t6, 0x6c($a0)
  /* 008A84 80007E84 ACAE0000 */        sw $t6, ($a1)
  /* 008A88 80007E88 03E00008 */        jr $ra
  /* 008A8C 80007E8C AC85006C */        sw $a1, 0x6c($a0)

