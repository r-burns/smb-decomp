.section .text
glabel func_80018FBC
  /* 019BBC 80018FBC C4840000 */      lwc1 $f4, ($a0)
  /* 019BC0 80018FC0 C4A60000 */      lwc1 $f6, ($a1)
  /* 019BC4 80018FC4 C48A0004 */      lwc1 $f10, 4($a0)
  /* 019BC8 80018FC8 00801025 */        or $v0, $a0, $zero
  /* 019BCC 80018FCC 46062200 */     add.s $f8, $f4, $f6
  /* 019BD0 80018FD0 C4840008 */      lwc1 $f4, 8($a0)
  /* 019BD4 80018FD4 E4880000 */      swc1 $f8, ($a0)
  /* 019BD8 80018FD8 C4B00004 */      lwc1 $f16, 4($a1)
  /* 019BDC 80018FDC 46105480 */     add.s $f18, $f10, $f16
  /* 019BE0 80018FE0 E4920004 */      swc1 $f18, 4($a0)
  /* 019BE4 80018FE4 C4A60008 */      lwc1 $f6, 8($a1)
  /* 019BE8 80018FE8 46062200 */     add.s $f8, $f4, $f6
  /* 019BEC 80018FEC 03E00008 */        jr $ra
  /* 019BF0 80018FF0 E4880008 */      swc1 $f8, 8($a0)

