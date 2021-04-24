.section .rodata

glabel D_8003DBE4
  /* 3D7E4 03E7E4 8003DBE4 */
  .asciz "omGMoveObjDLHead() : dl_link num over : dl_link = %d : id = %d\n"
  .balign 4

.section .text
glabel func_8000A14C
  /* 00AD4C 8000A14C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AD50 8000A150 AFA50024 */        sw $a1, 0x24($sp)
  /* 00AD54 8000A154 30A500FF */      andi $a1, $a1, 0xff
  /* 00AD58 8000A158 28A10040 */      slti $at, $a1, 0x40
  /* 00AD5C 8000A15C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AD60 8000A160 AFA60028 */        sw $a2, 0x28($sp)
  /* 00AD64 8000A164 00803825 */        or $a3, $a0, $zero
  /* 00AD68 8000A168 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AD6C 8000A16C 14200008 */      bnez $at, .L8000A190
  /* 00AD70 8000A170 00A07025 */        or $t6, $a1, $zero
  /* 00AD74 8000A174 3C048004 */       lui $a0, %hi(D_8003DBE4)
  /* 00AD78 8000A178 2484DBE4 */     addiu $a0, $a0, %lo(D_8003DBE4)
  /* 00AD7C 8000A17C 01C02825 */        or $a1, $t6, $zero
  /* 00AD80 8000A180 0C008D89 */       jal fatal_printf
  /* 00AD84 8000A184 8CE60000 */        lw $a2, ($a3)
  .L8000A188:
  /* 00AD88 8000A188 1000FFFF */         b .L8000A188
  /* 00AD8C 8000A18C 00000000 */       nop 
  .L8000A190:
  /* 00AD90 8000A190 00E02025 */        or $a0, $a3, $zero
  /* 00AD94 8000A194 A3A50027 */        sb $a1, 0x27($sp)
  /* 00AD98 8000A198 0C001F3D */       jal func_80007CF4
  /* 00AD9C 8000A19C AFA70020 */        sw $a3, 0x20($sp)
  /* 00ADA0 8000A1A0 93A50027 */       lbu $a1, 0x27($sp)
  /* 00ADA4 8000A1A4 8FA40020 */        lw $a0, 0x20($sp)
  /* 00ADA8 8000A1A8 A085000D */        sb $a1, 0xd($a0)
  /* 00ADAC 8000A1AC 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00ADB0 8000A1B0 0C001F1B */       jal func_80007C6C
  /* 00ADB4 8000A1B4 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00ADB8 8000A1B8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00ADBC 8000A1BC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00ADC0 8000A1C0 03E00008 */        jr $ra
  /* 00ADC4 8000A1C4 00000000 */       nop 

  /* 00ADC8 8000A1C8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00ADCC 8000A1CC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00ADD0 8000A1D0 AFA40018 */        sw $a0, 0x18($sp)
  /* 00ADD4 8000A1D4 0C001F3D */       jal func_80007CF4
  /* 00ADD8 8000A1D8 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00ADDC 8000A1DC 8FA5001C */        lw $a1, 0x1c($sp)
  /* 00ADE0 8000A1E0 8FA40018 */        lw $a0, 0x18($sp)
  /* 00ADE4 8000A1E4 90AE000D */       lbu $t6, 0xd($a1)
  /* 00ADE8 8000A1E8 A08E000D */        sb $t6, 0xd($a0)
  /* 00ADEC 8000A1EC 8CAF0028 */        lw $t7, 0x28($a1)
  /* 00ADF0 8000A1F0 0C001EE6 */       jal func_80007B98
  /* 00ADF4 8000A1F4 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00ADF8 8000A1F8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00ADFC 8000A1FC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AE00 8000A200 03E00008 */        jr $ra
  /* 00AE04 8000A204 00000000 */       nop 

  /* 00AE08 8000A208 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AE0C 8000A20C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AE10 8000A210 AFA40018 */        sw $a0, 0x18($sp)
  /* 00AE14 8000A214 0C001F3D */       jal func_80007CF4
  /* 00AE18 8000A218 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AE1C 8000A21C 8FA6001C */        lw $a2, 0x1c($sp)
  /* 00AE20 8000A220 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AE24 8000A224 90CE000D */       lbu $t6, 0xd($a2)
  /* 00AE28 8000A228 A08E000D */        sb $t6, 0xd($a0)
  /* 00AE2C 8000A22C 8CCF0028 */        lw $t7, 0x28($a2)
  /* 00AE30 8000A230 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00AE34 8000A234 0C001EE6 */       jal func_80007B98
  /* 00AE38 8000A238 8CC50024 */        lw $a1, 0x24($a2)
  /* 00AE3C 8000A23C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AE40 8000A240 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AE44 8000A244 03E00008 */        jr $ra
  /* 00AE48 8000A248 00000000 */       nop 

