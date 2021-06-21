.section .late_rodata

glabel D_8003DE38
  /* 3DA38 03EA38 8003DE38 */
  .word 0xff7fffff # .float -3.4028235e38

glabel D_8003DE3C
  /* 3DA3C 03EA3C 8003DE3C */
  .word 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003DE40
  /* 3DA40 03EA40 8003DE40 */  .word L8000CE84
  /* 3DA44 03EA44 8003DE44 */  .word L8000CE8C
  /* 3DA48 03EA48 8003DE48 */  .word L8000CE94
  /* 3DA4C 03EA4C 8003DE4C */  .word L8000CE9C
  /* 3DA50 03EA50 8003DE50 */  .word L8000CEE0
  /* 3DA54 03EA54 8003DE54 */  .word L8000CEE8
  /* 3DA58 03EA58 8003DE58 */  .word L8000CEF0
  /* 3DA5C 03EA5C 8003DE5C */  .word L8000CEF8
  /* 3DA60 03EA60 8003DE60 */  .word L8000CF00
  /* 3DA64 03EA64 8003DE64 */  .word L8000CF08

glabel D_8003DE68
  /* 3DA68 03EA68 8003DE68 */
  .word 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DE6C
  /* 3DA6C 03EA6C 8003DE6C */
  .word 0xff7fffff # .float -3.4028235e38

.section .text
glabel func_8000CCBC
  /* 00D8BC 8000CCBC 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 00D8C0 8000CCC0 AFBF004C */        sw $ra, 0x4c($sp)
  /* 00D8C4 8000CCC4 AFB00048 */        sw $s0, 0x48($sp)
  /* 00D8C8 8000CCC8 F7BE0040 */      sdc1 $f30, 0x40($sp)
  /* 00D8CC 8000CCCC F7BC0038 */      sdc1 $f28, 0x38($sp)
  /* 00D8D0 8000CCD0 F7BA0030 */      sdc1 $f26, 0x30($sp)
  /* 00D8D4 8000CCD4 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 00D8D8 8000CCD8 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 00D8DC 8000CCDC F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00D8E0 8000CCE0 3C018004 */       lui $at, %hi(D_8003DE38)
  /* 00D8E4 8000CCE4 C424DE38 */      lwc1 $f4, %lo(D_8003DE38)($at)
  /* 00D8E8 8000CCE8 C4800074 */      lwc1 $f0, 0x74($a0)
  /* 00D8EC 8000CCEC 00803825 */        or $a3, $a0, $zero
  /* 00D8F0 8000CCF0 46002032 */    c.eq.s $f4, $f0
  /* 00D8F4 8000CCF4 00000000 */       nop 
  /* 00D8F8 8000CCF8 45030093 */     bc1tl .L8000CF48
  /* 00D8FC 8000CCFC 8FBF004C */        lw $ra, 0x4c($sp)
  /* 00D900 8000CD00 8C90006C */        lw $s0, 0x6c($a0)
  /* 00D904 8000CD04 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00D908 8000CD08 12000085 */      beqz $s0, .L8000CF20
  /* 00D90C 8000CD0C 00000000 */       nop 
  /* 00D910 8000CD10 4480F000 */      mtc1 $zero, $f30
  /* 00D914 8000CD14 4481E000 */      mtc1 $at, $f28 # 1.0 to cop1
  /* 00D918 8000CD18 C7BA0054 */      lwc1 $f26, 0x54($sp)
  /* 00D91C 8000CD1C 920E0005 */       lbu $t6, 5($s0)
  .L8000CD20:
  /* 00D920 8000CD20 3C018004 */       lui $at, %hi(D_8003DE3C)
  /* 00D924 8000CD24 51C0007A */      beql $t6, $zero, .L8000CF10
  /* 00D928 8000CD28 8E100000 */        lw $s0, ($s0)
  /* 00D92C 8000CD2C C426DE3C */      lwc1 $f6, %lo(D_8003DE3C)($at)
  /* 00D930 8000CD30 C4E80074 */      lwc1 $f8, 0x74($a3)
  /* 00D934 8000CD34 46083032 */    c.eq.s $f6, $f8
  /* 00D938 8000CD38 00000000 */       nop 
  /* 00D93C 8000CD3C 45030006 */     bc1tl .L8000CD58
  /* 00D940 8000CD40 8CEF0004 */        lw $t7, 4($a3)
  /* 00D944 8000CD44 C60A000C */      lwc1 $f10, 0xc($s0)
  /* 00D948 8000CD48 C4E40078 */      lwc1 $f4, 0x78($a3)
  /* 00D94C 8000CD4C 46045180 */     add.s $f6, $f10, $f4
  /* 00D950 8000CD50 E606000C */      swc1 $f6, 0xc($s0)
  /* 00D954 8000CD54 8CEF0004 */        lw $t7, 4($a3)
  .L8000CD58:
  /* 00D958 8000CD58 8DF8007C */        lw $t8, 0x7c($t7)
  /* 00D95C 8000CD5C 33190002 */      andi $t9, $t8, 2
  /* 00D960 8000CD60 5720006B */      bnel $t9, $zero, .L8000CF10
  /* 00D964 8000CD64 8E100000 */        lw $s0, ($s0)
  /* 00D968 8000CD68 92020005 */       lbu $v0, 5($s0)
  /* 00D96C 8000CD6C 24010001 */     addiu $at, $zero, 1
  /* 00D970 8000CD70 10410031 */       beq $v0, $at, .L8000CE38
  /* 00D974 8000CD74 24010002 */     addiu $at, $zero, 2
  /* 00D978 8000CD78 10410005 */       beq $v0, $at, .L8000CD90
  /* 00D97C 8000CD7C 24010003 */     addiu $at, $zero, 3
  /* 00D980 8000CD80 5041000A */      beql $v0, $at, .L8000CDAC
  /* 00D984 8000CD84 C6020008 */      lwc1 $f2, 8($s0)
  /* 00D988 8000CD88 10000035 */         b .L8000CE60
  /* 00D98C 8000CD8C 92080004 */       lbu $t0, 4($s0)
  .L8000CD90: #2
  /* 00D990 8000CD90 C608000C */      lwc1 $f8, 0xc($s0)
  /* 00D994 8000CD94 C60A0018 */      lwc1 $f10, 0x18($s0)
  /* 00D998 8000CD98 C6060010 */      lwc1 $f6, 0x10($s0)
  /* 00D99C 8000CD9C 460A4102 */     mul.s $f4, $f8, $f10
  /* 00D9A0 8000CDA0 1000002E */         b .L8000CE5C
  /* 00D9A4 8000CDA4 46043680 */     add.s $f26, $f6, $f4
  /* 00D9A8 8000CDA8 C6020008 */      lwc1 $f2, 8($s0)
  .L8000CDAC: #3
  /* 00D9AC 8000CDAC C600000C */      lwc1 $f0, 0xc($s0)
  /* 00D9B0 8000CDB0 3C014040 */       lui $at, (0x40400000 >> 16) # 3.0
  /* 00D9B4 8000CDB4 46021402 */     mul.s $f16, $f2, $f2
  /* 00D9B8 8000CDB8 44813000 */      mtc1 $at, $f6 # 3.0 to cop1
  /* 00D9BC 8000CDBC 46000302 */     mul.s $f12, $f0, $f0
  /* 00D9C0 8000CDC0 00000000 */       nop 
  /* 00D9C4 8000CDC4 460C1482 */     mul.s $f18, $f2, $f12
  /* 00D9C8 8000CDC8 00000000 */       nop 
  /* 00D9CC 8000CDCC 460C0202 */     mul.s $f8, $f0, $f12
  /* 00D9D0 8000CDD0 00000000 */       nop 
  /* 00D9D4 8000CDD4 46104382 */     mul.s $f14, $f8, $f16
  /* 00D9D8 8000CDD8 C6080010 */      lwc1 $f8, 0x10($s0)
  /* 00D9DC 8000CDDC 460E7280 */     add.s $f10, $f14, $f14
  /* 00D9E0 8000CDE0 46127601 */     sub.s $f24, $f14, $f18
  /* 00D9E4 8000CDE4 46025502 */     mul.s $f20, $f10, $f2
  /* 00D9E8 8000CDE8 00000000 */       nop 
  /* 00D9EC 8000CDEC 460C3102 */     mul.s $f4, $f6, $f12
  /* 00D9F0 8000CDF0 00000000 */       nop 
  /* 00D9F4 8000CDF4 46102582 */     mul.s $f22, $f4, $f16
  /* 00D9F8 8000CDF8 4616A281 */     sub.s $f10, $f20, $f22
  /* 00D9FC 8000CDFC 461C5180 */     add.s $f6, $f10, $f28
  /* 00DA00 8000CE00 C60A0014 */      lwc1 $f10, 0x14($s0)
  /* 00DA04 8000CE04 46064102 */     mul.s $f4, $f8, $f6
  /* 00DA08 8000CE08 4614B201 */     sub.s $f8, $f22, $f20
  /* 00DA0C 8000CE0C 46085182 */     mul.s $f6, $f10, $f8
  /* 00DA10 8000CE10 C6080018 */      lwc1 $f8, 0x18($s0)
  /* 00DA14 8000CE14 46062280 */     add.s $f10, $f4, $f6
  /* 00DA18 8000CE18 4612C101 */     sub.s $f4, $f24, $f18
  /* 00DA1C 8000CE1C 46002180 */     add.s $f6, $f4, $f0
  /* 00DA20 8000CE20 46064102 */     mul.s $f4, $f8, $f6
  /* 00DA24 8000CE24 C606001C */      lwc1 $f6, 0x1c($s0)
  /* 00DA28 8000CE28 46045200 */     add.s $f8, $f10, $f4
  /* 00DA2C 8000CE2C 46183282 */     mul.s $f10, $f6, $f24
  /* 00DA30 8000CE30 1000000A */         b .L8000CE5C
  /* 00DA34 8000CE34 460A4680 */     add.s $f26, $f8, $f10
  .L8000CE38: #1
  /* 00DA38 8000CE38 C604000C */      lwc1 $f4, 0xc($s0)
  /* 00DA3C 8000CE3C C6060008 */      lwc1 $f6, 8($s0)
  /* 00DA40 8000CE40 4604303E */    c.le.s $f6, $f4
  /* 00DA44 8000CE44 00000000 */       nop 
  /* 00DA48 8000CE48 45020004 */     bc1fl .L8000CE5C
  /* 00DA4C 8000CE4C C61A0010 */      lwc1 $f26, 0x10($s0)
  /* 00DA50 8000CE50 10000002 */         b .L8000CE5C
  /* 00DA54 8000CE54 C61A0014 */      lwc1 $f26, 0x14($s0)
  /* 00DA58 8000CE58 C61A0010 */      lwc1 $f26, 0x10($s0)
  .L8000CE5C:
  /* 00DA5C 8000CE5C 92080004 */       lbu $t0, 4($s0)
  .L8000CE60: # break
  /* 00DA60 8000CE60 2509FFFF */     addiu $t1, $t0, -1
  /* 00DA64 8000CE64 2D21000A */     sltiu $at, $t1, 0xa
  /* 00DA68 8000CE68 10200028 */      beqz $at, .L8000CF0C
  /* 00DA6C 8000CE6C 00094880 */       sll $t1, $t1, 2
  /* 00DA70 8000CE70 3C018004 */       lui $at, %hi(jtbl_8003DE40)
  /* 00DA74 8000CE74 00290821 */      addu $at, $at, $t1
  /* 00DA78 8000CE78 8C29DE40 */        lw $t1, %lo(jtbl_8003DE40)($at)
  /* 00DA7C 8000CE7C 01200008 */        jr $t1
  /* 00DA80 8000CE80 00000000 */       nop 
  glabel L8000CE84
  /* 00DA84 8000CE84 10000021 */         b .L8000CF0C
  /* 00DA88 8000CE88 E4FA0030 */      swc1 $f26, 0x30($a3)
  glabel L8000CE8C
  /* 00DA8C 8000CE8C 1000001F */         b .L8000CF0C
  /* 00DA90 8000CE90 E4FA0034 */      swc1 $f26, 0x34($a3)
  glabel L8000CE94
  /* 00DA94 8000CE94 1000001D */         b .L8000CF0C
  /* 00DA98 8000CE98 E4FA0038 */      swc1 $f26, 0x38($a3)
  glabel L8000CE9C
  /* 00DA9C 8000CE9C 461ED03C */    c.lt.s $f26, $f30
  /* 00DAA0 8000CEA0 24E4001C */     addiu $a0, $a3, 0x1c
  /* 00DAA4 8000CEA4 45020004 */     bc1fl .L8000CEB8
  /* 00DAA8 8000CEA8 461AE03C */    c.lt.s $f28, $f26
  /* 00DAAC 8000CEAC 10000006 */         b .L8000CEC8
  /* 00DAB0 8000CEB0 4600F686 */     mov.s $f26, $f30
  /* 00DAB4 8000CEB4 461AE03C */    c.lt.s $f28, $f26
  .L8000CEB8:
  /* 00DAB8 8000CEB8 00000000 */       nop 
  /* 00DABC 8000CEBC 45020003 */     bc1fl .L8000CECC
  /* 00DAC0 8000CEC0 8E050020 */        lw $a1, 0x20($s0)
  /* 00DAC4 8000CEC4 4600E686 */     mov.s $f26, $f28
  .L8000CEC8:
  /* 00DAC8 8000CEC8 8E050020 */        lw $a1, 0x20($s0)
  .L8000CECC:
  /* 00DACC 8000CECC 4406D000 */      mfc1 $a2, $f26
  /* 00DAD0 8000CED0 0C00794C */       jal func_8001E530
  /* 00DAD4 8000CED4 AFA70058 */        sw $a3, 0x58($sp)
  /* 00DAD8 8000CED8 1000000C */         b .L8000CF0C
  /* 00DADC 8000CEDC 8FA70058 */        lw $a3, 0x58($sp)
  glabel L8000CEE0
  /* 00DAE0 8000CEE0 1000000A */         b .L8000CF0C
  /* 00DAE4 8000CEE4 E4FA001C */      swc1 $f26, 0x1c($a3)
  glabel L8000CEE8
  /* 00DAE8 8000CEE8 10000008 */         b .L8000CF0C
  /* 00DAEC 8000CEEC E4FA0020 */      swc1 $f26, 0x20($a3)
  glabel L8000CEF0
  /* 00DAF0 8000CEF0 10000006 */         b .L8000CF0C
  /* 00DAF4 8000CEF4 E4FA0024 */      swc1 $f26, 0x24($a3)
  glabel L8000CEF8
  /* 00DAF8 8000CEF8 10000004 */         b .L8000CF0C
  /* 00DAFC 8000CEFC E4FA0040 */      swc1 $f26, 0x40($a3)
  glabel L8000CF00
  /* 00DB00 8000CF00 10000002 */         b .L8000CF0C
  /* 00DB04 8000CF04 E4FA0044 */      swc1 $f26, 0x44($a3)
  glabel L8000CF08
  /* 00DB08 8000CF08 E4FA0048 */      swc1 $f26, 0x48($a3)
  .L8000CF0C:
  /* 00DB0C 8000CF0C 8E100000 */        lw $s0, ($s0)
  .L8000CF10:
  /* 00DB10 8000CF10 5600FF83 */      bnel $s0, $zero, .L8000CD20
  /* 00DB14 8000CF14 920E0005 */       lbu $t6, 5($s0)
  /* 00DB18 8000CF18 E7BA0054 */      swc1 $f26, 0x54($sp)
  /* 00DB1C 8000CF1C C4E00074 */      lwc1 $f0, 0x74($a3)
  .L8000CF20:
  /* 00DB20 8000CF20 3C018004 */       lui $at, %hi(D_8003DE68)
  /* 00DB24 8000CF24 C428DE68 */      lwc1 $f8, %lo(D_8003DE68)($at)
  /* 00DB28 8000CF28 3C018004 */       lui $at, %hi(D_8003DE6C)
  /* 00DB2C 8000CF2C 46004032 */    c.eq.s $f8, $f0
  /* 00DB30 8000CF30 00000000 */       nop 
  /* 00DB34 8000CF34 45020004 */     bc1fl .L8000CF48
  /* 00DB38 8000CF38 8FBF004C */        lw $ra, 0x4c($sp)
  /* 00DB3C 8000CF3C C42ADE6C */      lwc1 $f10, %lo(D_8003DE6C)($at)
  /* 00DB40 8000CF40 E4EA0074 */      swc1 $f10, 0x74($a3)
  /* 00DB44 8000CF44 8FBF004C */        lw $ra, 0x4c($sp)
  .L8000CF48:
  /* 00DB48 8000CF48 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00DB4C 8000CF4C D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 00DB50 8000CF50 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 00DB54 8000CF54 D7BA0030 */      ldc1 $f26, 0x30($sp)
  /* 00DB58 8000CF58 D7BC0038 */      ldc1 $f28, 0x38($sp)
  /* 00DB5C 8000CF5C D7BE0040 */      ldc1 $f30, 0x40($sp)
  /* 00DB60 8000CF60 8FB00048 */        lw $s0, 0x48($sp)
  /* 00DB64 8000CF64 03E00008 */        jr $ra
  /* 00DB68 8000CF68 27BD0058 */     addiu $sp, $sp, 0x58

