.section .text
glabel func_8001BC44
  /* 01C844 8001BC44 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 01C848 8001BC48 C7A4003C */      lwc1 $f4, 0x3c($sp)
  /* 01C84C 8001BC4C AFBF001C */        sw $ra, 0x1c($sp)
  /* 01C850 8001BC50 AFA50024 */        sw $a1, 0x24($sp)
  /* 01C854 8001BC54 AFA60028 */        sw $a2, 0x28($sp)
  /* 01C858 8001BC58 AFA7002C */        sw $a3, 0x2c($sp)
  /* 01C85C 8001BC5C 8FA70038 */        lw $a3, 0x38($sp)
  /* 01C860 8001BC60 8FA60034 */        lw $a2, 0x34($sp)
  /* 01C864 8001BC64 8FA50030 */        lw $a1, 0x30($sp)
  /* 01C868 8001BC68 AFA40020 */        sw $a0, 0x20($sp)
  /* 01C86C 8001BC6C 0C006E9E */       jal func_8001BA78
  /* 01C870 8001BC70 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01C874 8001BC74 8FA40020 */        lw $a0, 0x20($sp)
  /* 01C878 8001BC78 C7A60024 */      lwc1 $f6, 0x24($sp)
  /* 01C87C 8001BC7C E4860030 */      swc1 $f6, 0x30($a0)
  /* 01C880 8001BC80 C7A80028 */      lwc1 $f8, 0x28($sp)
  /* 01C884 8001BC84 E4880034 */      swc1 $f8, 0x34($a0)
  /* 01C888 8001BC88 C7AA002C */      lwc1 $f10, 0x2c($sp)
  /* 01C88C 8001BC8C E48A0038 */      swc1 $f10, 0x38($a0)
  /* 01C890 8001BC90 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01C894 8001BC94 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01C898 8001BC98 03E00008 */        jr $ra
  /* 01C89C 8001BC9C 00000000 */       nop 

