.section .text
glabel func_80007E90
  /* 008A90 80007E90 8C8E0090 */        lw $t6, 0x90($a0)
  /* 008A94 80007E94 ACAE0000 */        sw $t6, ($a1)
  /* 008A98 80007E98 03E00008 */        jr $ra
  /* 008A9C 80007E9C AC850090 */        sw $a1, 0x90($a0)

