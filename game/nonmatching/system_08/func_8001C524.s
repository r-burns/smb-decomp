.section .text
glabel func_8001C524
  /* 01D124 8001C524 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01D128 8001C528 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01D12C 8001C52C AFA5001C */        sw $a1, 0x1c($sp)
  /* 01D130 8001C530 AFA60020 */        sw $a2, 0x20($sp)
  /* 01D134 8001C534 AFA70024 */        sw $a3, 0x24($sp)
  /* 01D138 8001C538 8FA70030 */        lw $a3, 0x30($sp)
  /* 01D13C 8001C53C 8FA6002C */        lw $a2, 0x2c($sp)
  /* 01D140 8001C540 8FA50028 */        lw $a1, 0x28($sp)
  /* 01D144 8001C544 0C006F7B */       jal func_8001BDEC
  /* 01D148 8001C548 AFA40018 */        sw $a0, 0x18($sp)
  /* 01D14C 8001C54C 8FA40018 */        lw $a0, 0x18($sp)
  /* 01D150 8001C550 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01D154 8001C554 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01D158 8001C558 C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01D15C 8001C55C E4860034 */      swc1 $f6, 0x34($a0)
  /* 01D160 8001C560 C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01D164 8001C564 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01D168 8001C568 8FA7003C */        lw $a3, 0x3c($sp)
  /* 01D16C 8001C56C 8FA60038 */        lw $a2, 0x38($sp)
  /* 01D170 8001C570 0C006E09 */       jal hal_row_multiplication_f
  /* 01D174 8001C574 8FA50034 */        lw $a1, 0x34($sp)
  /* 01D178 8001C578 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01D17C 8001C57C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01D180 8001C580 03E00008 */        jr $ra
  /* 01D184 8001C584 00000000 */       nop 

