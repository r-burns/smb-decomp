.section .text
glabel func_800062B4
  /* 006EB4 800062B4 3C198004 */       lui $t9, %hi(D_80046668)
  /* 006EB8 800062B8 8F396668 */        lw $t9, %lo(D_80046668)($t9)
  /* 006EBC 800062BC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 006EC0 800062C0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 006EC4 800062C4 0320F809 */      jalr $t9
  /* 006EC8 800062C8 AFA40018 */        sw $a0, 0x18($sp)
  /* 006ECC 800062CC 8FAE0018 */        lw $t6, 0x18($sp)
  /* 006ED0 800062D0 8DD90004 */        lw $t9, 4($t6)
  /* 006ED4 800062D4 0320F809 */      jalr $t9
  /* 006ED8 800062D8 00000000 */       nop 
  /* 006EDC 800062DC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 006EE0 800062E0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 006EE4 800062E4 03E00008 */        jr $ra
  /* 006EE8 800062E8 00000000 */       nop 

