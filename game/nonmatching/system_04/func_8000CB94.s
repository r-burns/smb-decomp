.section .text
glabel func_8000CB94
  /* 00D794 8000CB94 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00D798 8000CB98 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00D79C 8000CB9C 90820005 */       lbu $v0, 5($a0)
  /* 00D7A0 8000CBA0 24010001 */     addiu $at, $zero, 1
  /* 00D7A4 8000CBA4 10410018 */       beq $v0, $at, .L8000CC08
  /* 00D7A8 8000CBA8 24010002 */     addiu $at, $zero, 2
  /* 00D7AC 8000CBAC 10410005 */       beq $v0, $at, .L8000CBC4
  /* 00D7B0 8000CBB0 24010003 */     addiu $at, $zero, 3
  /* 00D7B4 8000CBB4 5041000A */      beql $v0, $at, .L8000CBE0
  /* 00D7B8 8000CBB8 C4900018 */      lwc1 $f16, 0x18($a0)
  /* 00D7BC 8000CBBC 1000001D */         b .L8000CC34
  /* 00D7C0 8000CBC0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CBC4:
  /* 00D7C4 8000CBC4 C484000C */      lwc1 $f4, 0xc($a0)
  /* 00D7C8 8000CBC8 C4860018 */      lwc1 $f6, 0x18($a0)
  /* 00D7CC 8000CBCC C48A0010 */      lwc1 $f10, 0x10($a0)
  /* 00D7D0 8000CBD0 46062202 */     mul.s $f8, $f4, $f6
  /* 00D7D4 8000CBD4 10000016 */         b .L8000CC30
  /* 00D7D8 8000CBD8 46085000 */     add.s $f0, $f10, $f8
  /* 00D7DC 8000CBDC C4900018 */      lwc1 $f16, 0x18($a0)
  .L8000CBE0:
  /* 00D7E0 8000CBE0 C48C0008 */      lwc1 $f12, 8($a0)
  /* 00D7E4 8000CBE4 C48E000C */      lwc1 $f14, 0xc($a0)
  /* 00D7E8 8000CBE8 8C860010 */        lw $a2, 0x10($a0)
  /* 00D7EC 8000CBEC 8C870014 */        lw $a3, 0x14($a0)
  /* 00D7F0 8000CBF0 E7B00010 */      swc1 $f16, 0x10($sp)
  /* 00D7F4 8000CBF4 C492001C */      lwc1 $f18, 0x1c($a0)
  /* 00D7F8 8000CBF8 0C00328A */       jal func_8000CA28
  /* 00D7FC 8000CBFC E7B20014 */      swc1 $f18, 0x14($sp)
  /* 00D800 8000CC00 1000000C */         b .L8000CC34
  /* 00D804 8000CC04 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CC08:
  /* 00D808 8000CC08 C484000C */      lwc1 $f4, 0xc($a0)
  /* 00D80C 8000CC0C C4860008 */      lwc1 $f6, 8($a0)
  /* 00D810 8000CC10 4604303E */    c.le.s $f6, $f4
  /* 00D814 8000CC14 00000000 */       nop 
  /* 00D818 8000CC18 45020004 */     bc1fl .L8000CC2C
  /* 00D81C 8000CC1C C4820010 */      lwc1 $f2, 0x10($a0)
  /* 00D820 8000CC20 10000002 */         b .L8000CC2C
  /* 00D824 8000CC24 C4820014 */      lwc1 $f2, 0x14($a0)
  /* 00D828 8000CC28 C4820010 */      lwc1 $f2, 0x10($a0)
  .L8000CC2C:
  /* 00D82C 8000CC2C 46001006 */     mov.s $f0, $f2
  .L8000CC30:
  /* 00D830 8000CC30 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CC34:
  /* 00D834 8000CC34 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00D838 8000CC38 03E00008 */        jr $ra
  /* 00D83C 8000CC3C 00000000 */       nop 

