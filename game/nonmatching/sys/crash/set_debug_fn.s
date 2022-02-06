.section .text
glabel set_debug_fn
  /* 023C04 80023004 3C01800A */       lui $at, %hi(D_8009E3D8)
  /* 023C08 80023008 03E00008 */        jr $ra
  /* 023C0C 8002300C AC24E3D8 */        sw $a0, %lo(D_8009E3D8)($at)

