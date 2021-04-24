.section .text
glabel func_80008CC0
  /* 0098C0 80008CC0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0098C4 80008CC4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0098C8 80008CC8 AFA5001C */        sw $a1, 0x1c($sp)
  /* 0098CC 80008CCC AFA60020 */        sw $a2, 0x20($sp)
  /* 0098D0 80008CD0 30C600FF */      andi $a2, $a2, 0xff
  /* 0098D4 80008CD4 30A500FF */      andi $a1, $a1, 0xff
  /* 0098D8 80008CD8 0C002157 */       jal func_8000855C
  /* 0098DC 80008CDC 90870056 */       lbu $a3, 0x56($a0)
  /* 0098E0 80008CE0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0098E4 80008CE4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0098E8 80008CE8 03E00008 */        jr $ra
  /* 0098EC 80008CEC 00000000 */       nop 

