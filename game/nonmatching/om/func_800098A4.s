.section .rodata

glabel D_8003DAF4
  /* 3D6F4 03E6F4 8003DAF4 */
  .asciz "omGAddCommon() : link num over : link = %d : id = %d\n"
  .balign 4

.section .text
glabel func_800098A4
  /* 00A4A4 800098A4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A4A8 800098A8 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A4AC 800098AC 30C600FF */      andi $a2, $a2, 0xff
  /* 00A4B0 800098B0 28C10021 */      slti $at, $a2, 0x21
  /* 00A4B4 800098B4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A4B8 800098B8 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A4BC 800098BC AFA50024 */        sw $a1, 0x24($sp)
  /* 00A4C0 800098C0 AFA7002C */        sw $a3, 0x2c($sp)
  /* 00A4C4 800098C4 AFA60018 */        sw $a2, 0x18($sp)
  /* 00A4C8 800098C8 14200008 */      bnez $at, .L800098EC
  /* 00A4CC 800098CC 00C07025 */        or $t6, $a2, $zero
  /* 00A4D0 800098D0 3C048004 */       lui $a0, %hi(D_8003DAF4)
  /* 00A4D4 800098D4 2484DAF4 */     addiu $a0, $a0, %lo(D_8003DAF4)
  /* 00A4D8 800098D8 01C02825 */        or $a1, $t6, $zero
  /* 00A4DC 800098DC 0C008D89 */       jal fatal_printf
  /* 00A4E0 800098E0 8FA60020 */        lw $a2, 0x20($sp)
  .L800098E4:
  /* 00A4E4 800098E4 1000FFFF */         b .L800098E4
  /* 00A4E8 800098E8 00000000 */       nop 
  .L800098EC:
  /* 00A4EC 800098EC 0C001E3F */       jal func_800078FC
  /* 00A4F0 800098F0 A3A6002B */        sb $a2, 0x2b($sp)
  /* 00A4F4 800098F4 93A6002B */       lbu $a2, 0x2b($sp)
  /* 00A4F8 800098F8 14400003 */      bnez $v0, .L80009908
  /* 00A4FC 800098FC 00401825 */        or $v1, $v0, $zero
  /* 00A500 80009900 10000015 */         b .L80009958
  /* 00A504 80009904 00001025 */        or $v0, $zero, $zero
  .L80009908:
  /* 00A508 80009908 8FAF0020 */        lw $t7, 0x20($sp)
  /* 00A50C 8000990C A066000C */        sb $a2, 0xc($v1)
  /* 00A510 80009910 44802000 */      mtc1 $zero, $f4
  /* 00A514 80009914 AC6F0000 */        sw $t7, ($v1)
  /* 00A518 80009918 8FB8002C */        lw $t8, 0x2c($sp)
  /* 00A51C 8000991C 24080041 */     addiu $t0, $zero, 0x41
  /* 00A520 80009920 00601025 */        or $v0, $v1, $zero
  /* 00A524 80009924 AC780010 */        sw $t8, 0x10($v1)
  /* 00A528 80009928 8FB90024 */        lw $t9, 0x24($sp)
  /* 00A52C 8000992C AC600018 */        sw $zero, 0x18($v1)
  /* 00A530 80009930 AC60001C */        sw $zero, 0x1c($v1)
  /* 00A534 80009934 AC600070 */        sw $zero, 0x70($v1)
  /* 00A538 80009938 AC60007C */        sw $zero, 0x7c($v1)
  /* 00A53C 8000993C A060000F */        sb $zero, 0xf($v1)
  /* 00A540 80009940 AC600074 */        sw $zero, 0x74($v1)
  /* 00A544 80009944 A068000D */        sb $t0, 0xd($v1)
  /* 00A548 80009948 AC600080 */        sw $zero, 0x80($v1)
  /* 00A54C 8000994C AC600084 */        sw $zero, 0x84($v1)
  /* 00A550 80009950 E4640078 */      swc1 $f4, 0x78($v1)
  /* 00A554 80009954 AC790014 */        sw $t9, 0x14($v1)
  .L80009958:
  /* 00A558 80009958 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A55C 8000995C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A560 80009960 03E00008 */        jr $ra
  /* 00A564 80009964 00000000 */       nop 

