.section .text
glabel func_80004A0C
  /* 00560C 80004A0C 3C038004 */       lui $v1, %hi(D_80046570)
  /* 005610 80004A10 3C068004 */       lui $a2, %hi(D_80046578)
  /* 005614 80004A14 3C088004 */       lui $t0, %hi(D_80046580)
  /* 005618 80004A18 3C0A8004 */       lui $t2, %hi(D_80046588)
  /* 00561C 80004A1C 3C028004 */       lui $v0, %hi(D_800465C8)
  /* 005620 80004A20 244265C8 */     addiu $v0, $v0, %lo(D_800465C8)
  /* 005624 80004A24 254A6588 */     addiu $t2, $t2, %lo(D_80046588)
  /* 005628 80004A28 25086580 */     addiu $t0, $t0, %lo(D_80046580)
  /* 00562C 80004A2C 24C66578 */     addiu $a2, $a2, %lo(D_80046578)
  /* 005630 80004A30 24636570 */     addiu $v1, $v1, %lo(D_80046570)
  /* 005634 80004A34 00802825 */        or $a1, $a0, $zero
  /* 005638 80004A38 24870008 */     addiu $a3, $a0, 8
  /* 00563C 80004A3C 24890010 */     addiu $t1, $a0, 0x10
  /* 005640 80004A40 248B0018 */     addiu $t3, $a0, 0x18
  .L80004A44:
  /* 005644 80004A44 8CAF0000 */        lw $t7, ($a1)
  /* 005648 80004A48 254A0020 */     addiu $t2, $t2, 0x20
  /* 00564C 80004A4C 24630020 */     addiu $v1, $v1, 0x20
  /* 005650 80004A50 AC6FFFE0 */        sw $t7, -0x20($v1) # D_80046570 + -32
  /* 005654 80004A54 8CAE0004 */        lw $t6, 4($a1)
  /* 005658 80004A58 24A50020 */     addiu $a1, $a1, 0x20
  /* 00565C 80004A5C 24C60020 */     addiu $a2, $a2, 0x20
  /* 005660 80004A60 AC6EFFE4 */        sw $t6, -0x1c($v1) # D_80046570 + -28
  /* 005664 80004A64 8CF90000 */        lw $t9, ($a3)
  /* 005668 80004A68 24E70020 */     addiu $a3, $a3, 0x20
  /* 00566C 80004A6C 25080020 */     addiu $t0, $t0, 0x20
  /* 005670 80004A70 ACD9FFE0 */        sw $t9, -0x20($a2) # D_80046578 + -32
  /* 005674 80004A74 8CF8FFE4 */        lw $t8, -0x1c($a3)
  /* 005678 80004A78 25290020 */     addiu $t1, $t1, 0x20
  /* 00567C 80004A7C 256B0020 */     addiu $t3, $t3, 0x20
  /* 005680 80004A80 ACD8FFE4 */        sw $t8, -0x1c($a2) # D_80046578 + -28
  /* 005684 80004A84 8D2DFFE0 */        lw $t5, -0x20($t1)
  /* 005688 80004A88 AD0DFFE0 */        sw $t5, -0x20($t0) # D_80046580 + -32
  /* 00568C 80004A8C 8D2CFFE4 */        lw $t4, -0x1c($t1)
  /* 005690 80004A90 AD0CFFE4 */        sw $t4, -0x1c($t0) # D_80046580 + -28
  /* 005694 80004A94 8D6FFFE0 */        lw $t7, -0x20($t3)
  /* 005698 80004A98 AD4FFFE0 */        sw $t7, -0x20($t2) # D_80046588 + -32
  /* 00569C 80004A9C 8D6EFFE4 */        lw $t6, -0x1c($t3)
  /* 0056A0 80004AA0 1542FFE8 */       bne $t2, $v0, .L80004A44
  /* 0056A4 80004AA4 AD4EFFE4 */        sw $t6, -0x1c($t2) # D_80046588 + -28
  /* 0056A8 80004AA8 03E00008 */        jr $ra
  /* 0056AC 80004AAC 00000000 */       nop 

