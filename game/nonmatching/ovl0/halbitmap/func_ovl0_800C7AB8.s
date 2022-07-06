.section .text
glabel func_ovl0_800C7AB8
  /* 043498 800C7AB8 C4840000 */      lwc1 $f4, ($a0)
  /* 04349C 800C7ABC C4A60000 */      lwc1 $f6, ($a1)
  /* 0434A0 800C7AC0 C48A0004 */      lwc1 $f10, 4($a0)
  /* 0434A4 800C7AC4 00801025 */        or $v0, $a0, $zero
  /* 0434A8 800C7AC8 46062200 */     add.s $f8, $f4, $f6
  /* 0434AC 800C7ACC E4880000 */      swc1 $f8, ($a0)
  /* 0434B0 800C7AD0 C4B00004 */      lwc1 $f16, 4($a1)
  /* 0434B4 800C7AD4 46105480 */     add.s $f18, $f10, $f16
  /* 0434B8 800C7AD8 03E00008 */        jr $ra
  /* 0434BC 800C7ADC E4920004 */      swc1 $f18, 4($a0)

