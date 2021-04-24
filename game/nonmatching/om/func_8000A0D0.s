.section .rodata

glabel D_8003DBA8
  /* 3D7A8 03E7A8 8003DBA8 */
  .asciz "omGMoveObjDL() : dl_link num over : dl_link = %d : id = %d\n"
  .balign 4

.section .text
glabel func_8000A0D0
  /* 00ACD0 8000A0D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00ACD4 8000A0D4 AFA50024 */        sw $a1, 0x24($sp)
  /* 00ACD8 8000A0D8 30A500FF */      andi $a1, $a1, 0xff
  /* 00ACDC 8000A0DC 28A10040 */      slti $at, $a1, 0x40
  /* 00ACE0 8000A0E0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00ACE4 8000A0E4 AFA60028 */        sw $a2, 0x28($sp)
  /* 00ACE8 8000A0E8 00803825 */        or $a3, $a0, $zero
  /* 00ACEC 8000A0EC AFA5001C */        sw $a1, 0x1c($sp)
  /* 00ACF0 8000A0F0 14200008 */      bnez $at, .L8000A114
  /* 00ACF4 8000A0F4 00A07025 */        or $t6, $a1, $zero
  /* 00ACF8 8000A0F8 3C048004 */       lui $a0, %hi(D_8003DBA8)
  /* 00ACFC 8000A0FC 2484DBA8 */     addiu $a0, $a0, %lo(D_8003DBA8)
  /* 00AD00 8000A100 01C02825 */        or $a1, $t6, $zero
  /* 00AD04 8000A104 0C008D89 */       jal fatal_printf
  /* 00AD08 8000A108 8CE60000 */        lw $a2, ($a3)
  .L8000A10C:
  /* 00AD0C 8000A10C 1000FFFF */         b .L8000A10C
  /* 00AD10 8000A110 00000000 */       nop 
  .L8000A114:
  /* 00AD14 8000A114 00E02025 */        or $a0, $a3, $zero
  /* 00AD18 8000A118 A3A50027 */        sb $a1, 0x27($sp)
  /* 00AD1C 8000A11C 0C001F3D */       jal func_80007CF4
  /* 00AD20 8000A120 AFA70020 */        sw $a3, 0x20($sp)
  /* 00AD24 8000A124 93A50027 */       lbu $a1, 0x27($sp)
  /* 00AD28 8000A128 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AD2C 8000A12C A085000D */        sb $a1, 0xd($a0)
  /* 00AD30 8000A130 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00AD34 8000A134 0C001F00 */       jal func_80007C00
  /* 00AD38 8000A138 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00AD3C 8000A13C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AD40 8000A140 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AD44 8000A144 03E00008 */        jr $ra
  /* 00AD48 8000A148 00000000 */       nop 

