.section .text
glabel ssb_rom_copy_writeback
  /* 0038DC 80002CDC 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0038E0 80002CE0 00C03825 */        or $a3, $a2, $zero
  /* 0038E4 80002CE4 00803025 */        or $a2, $a0, $zero
  /* 0038E8 80002CE8 AFA40020 */        sw $a0, 0x20($sp)
  /* 0038EC 80002CEC AFBF001C */        sw $ra, 0x1c($sp)
  /* 0038F0 80002CF0 3C048004 */       lui $a0, %hi(gPiHandle)
  /* 0038F4 80002CF4 240E0001 */     addiu $t6, $zero, 1
  /* 0038F8 80002CF8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 0038FC 80002CFC 0C000AA4 */       jal ssb_data_dma
  /* 003900 80002D00 8C845040 */        lw $a0, %lo(gPiHandle)($a0)
  /* 003904 80002D04 8FBF001C */        lw $ra, 0x1c($sp)
  /* 003908 80002D08 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00390C 80002D0C 03E00008 */        jr $ra
  /* 003910 80002D10 00000000 */       nop 

