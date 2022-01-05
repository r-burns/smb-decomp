.section .text
glabel func_8001CAF8
  /* 01D6F8 8001CAF8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01D6FC 8001CAFC AFBF0014 */        sw $ra, 0x14($sp)
  /* 01D700 8001CB00 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01D704 8001CB04 AFA60020 */        sw $a2, 0x20($sp)
  /* 01D708 8001CB08 AFA70024 */        sw $a3, 0x24($sp)
  /* 01D70C 8001CB0C 8FA70030 */        lw $a3, 0x30($sp)
  /* 01D710 8001CB10 8FA6002C */        lw $a2, 0x2c($sp)
  /* 01D714 8001CB14 8FA50028 */        lw $a1, 0x28($sp)
  /* 01D718 8001CB18 0C00725F */       jal func_8001C97C
  /* 01D71C 8001CB1C AFA40018 */        sw $a0, 0x18($sp)
  /* 01D720 8001CB20 8FA40018 */        lw $a0, 0x18($sp)
  /* 01D724 8001CB24 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01D728 8001CB28 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01D72C 8001CB2C C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01D730 8001CB30 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01D734 8001CB34 C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01D738 8001CB38 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01D73C 8001CB3C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01D740 8001CB40 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01D744 8001CB44 03E00008 */        jr $ra
  /* 01D748 8001CB48 00000000 */       nop 

