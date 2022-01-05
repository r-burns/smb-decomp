.section .text
glabel func_8001CBA8
  /* 01D7A8 8001CBA8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 01D7AC 8001CBAC AFBF0014 */        sw $ra, 0x14($sp)
  /* 01D7B0 8001CBB0 AFA5001C */        sw $a1, 0x1c($sp)
  /* 01D7B4 8001CBB4 AFA60020 */        sw $a2, 0x20($sp)
  /* 01D7B8 8001CBB8 AFA70024 */        sw $a3, 0x24($sp)
  /* 01D7BC 8001CBBC 8FA70030 */        lw $a3, 0x30($sp)
  /* 01D7C0 8001CBC0 8FA6002C */        lw $a2, 0x2c($sp)
  /* 01D7C4 8001CBC4 8FA50028 */        lw $a1, 0x28($sp)
  /* 01D7C8 8001CBC8 0C00725F */       jal func_8001C97C
  /* 01D7CC 8001CBCC AFA40018 */        sw $a0, 0x18($sp)
  /* 01D7D0 8001CBD0 8FA40018 */        lw $a0, 0x18($sp)
  /* 01D7D4 8001CBD4 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 01D7D8 8001CBD8 E4840030 */      swc1 $f4, 0x30($a0)
  /* 01D7DC 8001CBDC C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 01D7E0 8001CBE0 E4860034 */      swc1 $f6, 0x34($a0)
  /* 01D7E4 8001CBE4 C7A80024 */      lwc1 $f8, 0x24($sp)
  /* 01D7E8 8001CBE8 E4880038 */      swc1 $f8, 0x38($a0)
  /* 01D7EC 8001CBEC 8FA7003C */        lw $a3, 0x3c($sp)
  /* 01D7F0 8001CBF0 8FA60038 */        lw $a2, 0x38($sp)
  /* 01D7F4 8001CBF4 0C006E09 */       jal func_8001B824
  /* 01D7F8 8001CBF8 8FA50034 */        lw $a1, 0x34($sp)
  /* 01D7FC 8001CBFC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01D800 8001CC00 27BD0018 */     addiu $sp, $sp, 0x18
  /* 01D804 8001CC04 03E00008 */        jr $ra
  /* 01D808 8001CC08 00000000 */       nop 

