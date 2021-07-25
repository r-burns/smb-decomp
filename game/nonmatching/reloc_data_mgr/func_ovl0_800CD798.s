.section .rodata

glabel D_ovl0_800D5F14
  /* E6D4 0518F4 800D5F14 */
  .asciz "Relocatable Data Manager: Force Status Buffer is full !!\n"
  .balign 4

.section .text
glabel func_ovl0_800CD798
  /* 049178 800CD798 3C03800D */       lui $v1, %hi(D_ovl0_800D62E0)
  /* 04917C 800CD79C 246362E0 */     addiu $v1, $v1, %lo(D_ovl0_800D62E0)
  /* 049180 800CD7A0 8C660024 */        lw $a2, 0x24($v1) # D_ovl0_800D62E0 + 36
  /* 049184 800CD7A4 8C6E0028 */        lw $t6, 0x28($v1) # D_ovl0_800D62E0 + 40
  /* 049188 800CD7A8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04918C 800CD7AC AFBF001C */        sw $ra, 0x1c($sp)
  /* 049190 800CD7B0 00CE082B */      sltu $at, $a2, $t6
  /* 049194 800CD7B4 14200009 */      bnez $at, .L800CD7DC
  /* 049198 800CD7B8 AFB00018 */        sw $s0, 0x18($sp)
  /* 04919C 800CD7BC 3C10800D */       lui $s0, %hi(D_ovl0_800D5F14)
  /* 0491A0 800CD7C0 26105F14 */     addiu $s0, $s0, %lo(D_ovl0_800D5F14)
  .L800CD7C4:
  /* 0491A4 800CD7C4 0C008D89 */       jal fatal_printf
  /* 0491A8 800CD7C8 02002025 */        or $a0, $s0, $zero
  /* 0491AC 800CD7CC 0C028C10 */       jal func_800A3040
  /* 0491B0 800CD7D0 00000000 */       nop 
  /* 0491B4 800CD7D4 1000FFFB */         b .L800CD7C4
  /* 0491B8 800CD7D8 00000000 */       nop 
  .L800CD7DC:
  /* 0491BC 800CD7DC 8C6F002C */        lw $t7, 0x2c($v1)
  /* 0491C0 800CD7E0 000610C0 */       sll $v0, $a2, 3
  /* 0491C4 800CD7E4 01E2C021 */      addu $t8, $t7, $v0
  /* 0491C8 800CD7E8 AF040000 */        sw $a0, ($t8)
  /* 0491CC 800CD7EC 8C79002C */        lw $t9, 0x2c($v1)
  /* 0491D0 800CD7F0 03224021 */      addu $t0, $t9, $v0
  /* 0491D4 800CD7F4 AD050004 */        sw $a1, 4($t0)
  /* 0491D8 800CD7F8 8C690024 */        lw $t1, 0x24($v1)
  /* 0491DC 800CD7FC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0491E0 800CD800 8FB00018 */        lw $s0, 0x18($sp)
  /* 0491E4 800CD804 252A0001 */     addiu $t2, $t1, 1
  /* 0491E8 800CD808 AC6A0024 */        sw $t2, 0x24($v1)
  /* 0491EC 800CD80C 03E00008 */        jr $ra
  /* 0491F0 800CD810 27BD0020 */     addiu $sp, $sp, 0x20

