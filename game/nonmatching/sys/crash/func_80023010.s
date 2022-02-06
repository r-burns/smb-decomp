.section .text
glabel func_80023010
  /* 023C10 80023010 3C018004 */       lui $at, %hi(D_8003D05C)
  /* 023C14 80023014 AC24D05C */        sw $a0, %lo(D_8003D05C)($at)
  /* 023C18 80023018 3C018004 */       lui $at, %hi(D_8003D060)
  /* 023C1C 8002301C 03E00008 */        jr $ra
  /* 023C20 80023020 AC25D060 */        sw $a1, %lo(D_8003D060)($at)

