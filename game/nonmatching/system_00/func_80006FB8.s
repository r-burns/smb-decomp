.section .text
glabel func_80006FB8
  /* 007BB8 80006FB8 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 007BBC 80006FBC 3C018004 */       lui $at, %hi(D_80046680)
  /* 007BC0 80006FC0 AC206680 */        sw $zero, %lo(D_80046680)($at)
  /* 007BC4 80006FC4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 007BC8 80006FC8 AFA40050 */        sw $a0, 0x50($sp)
  /* 007BCC 80006FCC 3C018004 */       lui $at, %hi(D_80046674)
  /* 007BD0 80006FD0 240E0002 */     addiu $t6, $zero, 2
  /* 007BD4 80006FD4 AFA50054 */        sw $a1, 0x54($sp)
  /* 007BD8 80006FD8 AC2E6674 */        sw $t6, %lo(D_80046674)($at)
  /* 007BDC 80006FDC 0C001B86 */       jal func_80006E18
  /* 007BE0 80006FE0 00C02025 */        or $a0, $a2, $zero
  /* 007BE4 80006FE4 0C001B99 */       jal func_80006E64
  /* 007BE8 80006FE8 8FA40050 */        lw $a0, 0x50($sp)
  /* 007BEC 80006FEC 0C001B9F */       jal func_80006E7C
  /* 007BF0 80006FF0 8FA40054 */        lw $a0, 0x54($sp)
  /* 007BF4 80006FF4 240F0004 */     addiu $t7, $zero, 4
  /* 007BF8 80006FF8 24180064 */     addiu $t8, $zero, 0x64
  /* 007BFC 80006FFC AFAF0018 */        sw $t7, 0x18($sp)
  /* 007C00 80007000 AFB8001C */        sw $t8, 0x1c($sp)
  /* 007C04 80007004 0C001BBD */       jal func_80006EF4
  /* 007C08 80007008 27A40018 */     addiu $a0, $sp, 0x18
  /* 007C0C 8000700C 0C00025C */       jal func_80000970
  /* 007C10 80007010 27A40018 */     addiu $a0, $sp, 0x18
  /* 007C14 80007014 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007C18 80007018 27BD0050 */     addiu $sp, $sp, 0x50
  /* 007C1C 8000701C 03E00008 */        jr $ra
  /* 007C20 80007020 00000000 */       nop 

