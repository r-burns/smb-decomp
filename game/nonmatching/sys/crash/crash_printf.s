.section .text
glabel crash_printf
  /* 023D54 80023154 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 023D58 80023158 AFA50024 */        sw $a1, 0x24($sp)
  /* 023D5C 8002315C 03A02825 */        or $a1, $sp, $zero
  /* 023D60 80023160 AFBF0014 */        sw $ra, 0x14($sp)
  /* 023D64 80023164 24A50027 */     addiu $a1, $a1, 0x27
  /* 023D68 80023168 2401FFFC */     addiu $at, $zero, -4
  /* 023D6C 8002316C AFA40020 */        sw $a0, 0x20($sp)
  /* 023D70 80023170 AFA60028 */        sw $a2, 0x28($sp)
  /* 023D74 80023174 AFA7002C */        sw $a3, 0x2c($sp)
  /* 023D78 80023178 0C008C09 */       jal func_80023024
  /* 023D7C 8002317C 00A12824 */       and $a1, $a1, $at
  /* 023D80 80023180 8FBF0014 */        lw $ra, 0x14($sp)
  /* 023D84 80023184 27BD0020 */     addiu $sp, $sp, 0x20
  /* 023D88 80023188 03E00008 */        jr $ra
  /* 023D8C 8002318C 00000000 */       nop 

