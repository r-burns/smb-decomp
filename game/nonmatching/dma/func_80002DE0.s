.section .text
glabel func_80002DE0
  /* 0039E0 80002DE0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0039E4 80002DE4 00C03825 */        or $a3, $a2, $zero
  /* 0039E8 80002DE8 00803025 */        or $a2, $a0, $zero
  /* 0039EC 80002DEC AFA40020 */        sw $a0, 0x20($sp)
  /* 0039F0 80002DF0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0039F4 80002DF4 3C048004 */       lui $a0, %hi(D_80045048)
  /* 0039F8 80002DF8 240E0001 */     addiu $t6, $zero, 1
  /* 0039FC 80002DFC AFAE0010 */        sw $t6, 0x10($sp)
  /* 003A00 80002E00 0C000AA4 */       jal ssb_data_dma
  /* 003A04 80002E04 24845048 */     addiu $a0, $a0, %lo(D_80045048)
  /* 003A08 80002E08 8FBF001C */        lw $ra, 0x1c($sp)
  /* 003A0C 80002E0C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 003A10 80002E10 03E00008 */        jr $ra
  /* 003A14 80002E14 00000000 */       nop 

