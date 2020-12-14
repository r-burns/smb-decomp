.section .text
glabel func_80002DA4
  /* 0039A4 80002DA4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0039A8 80002DA8 AFA50024 */        sw $a1, 0x24($sp)
  /* 0039AC 80002DAC 00802825 */        or $a1, $a0, $zero
  /* 0039B0 80002DB0 AFA40020 */        sw $a0, 0x20($sp)
  /* 0039B4 80002DB4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0039B8 80002DB8 00C03825 */        or $a3, $a2, $zero
  /* 0039BC 80002DBC 3C048004 */       lui $a0, %hi(D_80045048)
  /* 0039C0 80002DC0 8FA60024 */        lw $a2, 0x24($sp)
  /* 0039C4 80002DC4 24845048 */     addiu $a0, $a0, %lo(D_80045048)
  /* 0039C8 80002DC8 0C000AA4 */       jal ssb_data_dma
  /* 0039CC 80002DCC AFA00010 */        sw $zero, 0x10($sp)
  /* 0039D0 80002DD0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0039D4 80002DD4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0039D8 80002DD8 03E00008 */        jr $ra
  /* 0039DC 80002DDC 00000000 */       nop 

