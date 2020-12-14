.section .text
glabel ssb_rom_copy_no_writeback
  /* 0038A0 80002CA0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0038A4 80002CA4 AFA50024 */        sw $a1, 0x24($sp)
  /* 0038A8 80002CA8 00802825 */        or $a1, $a0, $zero
  /* 0038AC 80002CAC AFA40020 */        sw $a0, 0x20($sp)
  /* 0038B0 80002CB0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0038B4 80002CB4 00C03825 */        or $a3, $a2, $zero
  /* 0038B8 80002CB8 3C048004 */       lui $a0, %hi(gPiHandle)
  /* 0038BC 80002CBC 8FA60024 */        lw $a2, 0x24($sp)
  /* 0038C0 80002CC0 8C845040 */        lw $a0, %lo(gPiHandle)($a0)
  /* 0038C4 80002CC4 0C000AA4 */       jal ssb_data_dma
  /* 0038C8 80002CC8 AFA00010 */        sw $zero, 0x10($sp)
  /* 0038CC 80002CCC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0038D0 80002CD0 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0038D4 80002CD4 03E00008 */        jr $ra
  /* 0038D8 80002CD8 00000000 */       nop 

