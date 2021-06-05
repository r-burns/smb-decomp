.section .text
glabel unref_8000B618
  /* 00C218 8000B618 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 00C21C 8000B61C AFB40028 */        sw $s4, 0x28($sp)
  /* 00C220 8000B620 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00C224 8000B624 AFB00018 */        sw $s0, 0x18($sp)
  /* 00C228 8000B628 00A08025 */        or $s0, $a1, $zero
  /* 00C22C 8000B62C 00C08825 */        or $s1, $a2, $zero
  /* 00C230 8000B630 0080A025 */        or $s4, $a0, $zero
  /* 00C234 8000B634 AFBF002C */        sw $ra, 0x2c($sp)
  /* 00C238 8000B638 AFB30024 */        sw $s3, 0x24($sp)
  /* 00C23C 8000B63C AFB20020 */        sw $s2, 0x20($sp)
  /* 00C240 8000B640 AFA00038 */        sw $zero, 0x38($sp)
  /* 00C244 8000B644 AFA0003C */        sw $zero, 0x3c($sp)
  /* 00C248 8000B648 27A20040 */     addiu $v0, $sp, 0x40
  /* 00C24C 8000B64C 27A30080 */     addiu $v1, $sp, 0x80
  .L8000B650:
  /* 00C250 8000B650 24420010 */     addiu $v0, $v0, 0x10
  /* 00C254 8000B654 AC40FFF4 */        sw $zero, -0xc($v0)
  /* 00C258 8000B658 AC40FFF8 */        sw $zero, -8($v0)
  /* 00C25C 8000B65C AC40FFFC */        sw $zero, -4($v0)
  /* 00C260 8000B660 1443FFFB */       bne $v0, $v1, .L8000B650
  /* 00C264 8000B664 AC40FFF0 */        sw $zero, -0x10($v0)
  /* 00C268 8000B668 8E020000 */        lw $v0, ($s0)
  /* 00C26C 8000B66C 24130012 */     addiu $s3, $zero, 0x12
  /* 00C270 8000B670 27B20038 */     addiu $s2, $sp, 0x38
  /* 00C274 8000B674 5262001E */      beql $s3, $v0, .L8000B6F0
  /* 00C278 8000B678 8FBF002C */        lw $ra, 0x2c($sp)
  .L8000B67C:
  /* 00C27C 8000B67C 1040000B */      beqz $v0, .L8000B6AC
  /* 00C280 8000B680 02802025 */        or $a0, $s4, $zero
  /* 00C284 8000B684 00027080 */       sll $t6, $v0, 2
  /* 00C288 8000B688 024E7821 */      addu $t7, $s2, $t6
  /* 00C28C 8000B68C 8DE4FFFC */        lw $a0, -4($t7)
  /* 00C290 8000B690 0C002D56 */       jal func_8000B558
  /* 00C294 8000B694 8E050004 */        lw $a1, 4($s0)
  /* 00C298 8000B698 8E180000 */        lw $t8, ($s0)
  /* 00C29C 8000B69C 0018C880 */       sll $t9, $t8, 2
  /* 00C2A0 8000B6A0 02594021 */      addu $t0, $s2, $t9
  /* 00C2A4 8000B6A4 10000004 */         b .L8000B6B8
  /* 00C2A8 8000B6A8 AD020000 */        sw $v0, ($t0)
  .L8000B6AC:
  /* 00C2AC 8000B6AC 0C002D3E */       jal func_8000B4F8
  /* 00C2B0 8000B6B0 8E050004 */        lw $a1, 4($s0)
  /* 00C2B4 8000B6B4 AFA20038 */        sw $v0, 0x38($sp)
  .L8000B6B8:
  /* 00C2B8 8000B6B8 8E0A0008 */        lw $t2, 8($s0)
  /* 00C2BC 8000B6BC AC4A001C */        sw $t2, 0x1c($v0)
  /* 00C2C0 8000B6C0 8E09000C */        lw $t1, 0xc($s0)
  /* 00C2C4 8000B6C4 AC490020 */        sw $t1, 0x20($v0)
  /* 00C2C8 8000B6C8 8E0A0010 */        lw $t2, 0x10($s0)
  /* 00C2CC 8000B6CC 12200003 */      beqz $s1, .L8000B6DC
  /* 00C2D0 8000B6D0 AC4A0024 */        sw $t2, 0x24($v0)
  /* 00C2D4 8000B6D4 AE220000 */        sw $v0, ($s1)
  /* 00C2D8 8000B6D8 26310004 */     addiu $s1, $s1, 4
  .L8000B6DC:
  /* 00C2DC 8000B6DC 8E020014 */        lw $v0, 0x14($s0)
  /* 00C2E0 8000B6E0 26100014 */     addiu $s0, $s0, 0x14
  /* 00C2E4 8000B6E4 1662FFE5 */       bne $s3, $v0, .L8000B67C
  /* 00C2E8 8000B6E8 00000000 */       nop 
  /* 00C2EC 8000B6EC 8FBF002C */        lw $ra, 0x2c($sp)
  .L8000B6F0:
  /* 00C2F0 8000B6F0 8FB00018 */        lw $s0, 0x18($sp)
  /* 00C2F4 8000B6F4 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00C2F8 8000B6F8 8FB20020 */        lw $s2, 0x20($sp)
  /* 00C2FC 8000B6FC 8FB30024 */        lw $s3, 0x24($sp)
  /* 00C300 8000B700 8FB40028 */        lw $s4, 0x28($sp)
  /* 00C304 8000B704 03E00008 */        jr $ra
  /* 00C308 8000B708 27BD0088 */     addiu $sp, $sp, 0x88

