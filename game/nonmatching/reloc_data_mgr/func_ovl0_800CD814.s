.section .text
glabel func_ovl0_800CD814
  /* 0491F4 800CD814 3C0E800D */       lui $t6, %hi(D_ovl0_800D62E0)
  /* 0491F8 800CD818 00047880 */       sll $t7, $a0, 2
  /* 0491FC 800CD81C 8DCE62E0 */        lw $t6, %lo(D_ovl0_800D62E0)($t6)
  /* 049200 800CD820 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049204 800CD824 01E47823 */      subu $t7, $t7, $a0
  /* 049208 800CD828 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04920C 800CD82C 000F7880 */       sll $t7, $t7, 2
  /* 049210 800CD830 3C05800D */       lui $a1, %hi(D_ovl0_800D6334)
  /* 049214 800CD834 8CA56334 */        lw $a1, %lo(D_ovl0_800D6334)($a1)
  /* 049218 800CD838 24060018 */     addiu $a2, $zero, 0x18
  /* 04921C 800CD83C 0C000B28 */       jal dma_rom_read
  /* 049220 800CD840 01CF2021 */      addu $a0, $t6, $t7
  /* 049224 800CD844 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049228 800CD848 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04922C 800CD84C 03E00008 */        jr $ra
  /* 049230 800CD850 00000000 */       nop 

