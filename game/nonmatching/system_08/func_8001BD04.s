.section .text
glabel func_8001BD04
  /* 01C904 8001BD04 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 01C908 8001BD08 C7A4003C */      lwc1 $f4, 0x3c($sp)
  /* 01C90C 8001BD0C AFBF001C */        sw $ra, 0x1c($sp)
  /* 01C910 8001BD10 AFA50024 */        sw $a1, 0x24($sp)
  /* 01C914 8001BD14 AFA60028 */        sw $a2, 0x28($sp)
  /* 01C918 8001BD18 AFA7002C */        sw $a3, 0x2c($sp)
  /* 01C91C 8001BD1C 8FA70038 */        lw $a3, 0x38($sp)
  /* 01C920 8001BD20 8FA60034 */        lw $a2, 0x34($sp)
  /* 01C924 8001BD24 8FA50030 */        lw $a1, 0x30($sp)
  /* 01C928 8001BD28 AFA40020 */        sw $a0, 0x20($sp)
  /* 01C92C 8001BD2C 0C006E9E */       jal func_8001BA78
  /* 01C930 8001BD30 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01C934 8001BD34 8FA40020 */        lw $a0, 0x20($sp)
  /* 01C938 8001BD38 C7A60024 */      lwc1 $f6, 0x24($sp)
  /* 01C93C 8001BD3C E4860030 */      swc1 $f6, 0x30($a0)
  /* 01C940 8001BD40 C7A80028 */      lwc1 $f8, 0x28($sp)
  /* 01C944 8001BD44 E4880034 */      swc1 $f8, 0x34($a0)
  /* 01C948 8001BD48 C7AA002C */      lwc1 $f10, 0x2c($sp)
  /* 01C94C 8001BD4C E48A0038 */      swc1 $f10, 0x38($a0)
  /* 01C950 8001BD50 8FA70048 */        lw $a3, 0x48($sp)
  /* 01C954 8001BD54 8FA60044 */        lw $a2, 0x44($sp)
  /* 01C958 8001BD58 0C006E09 */       jal hal_row_multiplication_f
  /* 01C95C 8001BD5C 8FA50040 */        lw $a1, 0x40($sp)
  /* 01C960 8001BD60 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01C964 8001BD64 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01C968 8001BD68 03E00008 */        jr $ra
  /* 01C96C 8001BD6C 00000000 */       nop 

