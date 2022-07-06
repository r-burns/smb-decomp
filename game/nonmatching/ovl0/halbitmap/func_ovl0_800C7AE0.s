.section .text
glabel func_ovl0_800C7AE0
  /* 0434C0 800C7AE0 44856000 */      mtc1 $a1, $f12
  /* 0434C4 800C7AE4 C4840000 */      lwc1 $f4, ($a0)
  /* 0434C8 800C7AE8 C4880004 */      lwc1 $f8, 4($a0)
  /* 0434CC 800C7AEC 00801025 */        or $v0, $a0, $zero
  /* 0434D0 800C7AF0 460C2182 */     mul.s $f6, $f4, $f12
  /* 0434D4 800C7AF4 00000000 */       nop 
  /* 0434D8 800C7AF8 460C4282 */     mul.s $f10, $f8, $f12
  /* 0434DC 800C7AFC E4860000 */      swc1 $f6, ($a0)
  /* 0434E0 800C7B00 03E00008 */        jr $ra
  /* 0434E4 800C7B04 E48A0004 */      swc1 $f10, 4($a0)

