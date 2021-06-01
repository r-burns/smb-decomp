.section .text
glabel func_800A2B18
  /* 041868 800A2B18 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 04186C 800A2B1C AFA40040 */        sw $a0, 0x40($sp)
  /* 041870 800A2B20 AFBF003C */        sw $ra, 0x3c($sp)
  /* 041874 800A2B24 3C04EFFF */       lui $a0, (0xEFFFFFFF >> 16) # 4026531839
  /* 041878 800A2B28 AFA50044 */        sw $a1, 0x44($sp)
  /* 04187C 800A2B2C AFA60048 */        sw $a2, 0x48($sp)
  /* 041880 800A2B30 0C002C66 */       jal func_8000B198
  /* 041884 800A2B34 3484FFFF */       ori $a0, $a0, (0xEFFFFFFF & 0xFFFF) # 4026531839
  /* 041888 800A2B38 10400003 */      beqz $v0, .L800A2B48
  /* 04188C 800A2B3C 3C04EFFF */       lui $a0, (0xEFFFFFFF >> 16) # 4026531839
  /* 041890 800A2B40 10000015 */         b .L800A2B98
  /* 041894 800A2B44 00001025 */        or $v0, $zero, $zero
  .L800A2B48:
  /* 041898 800A2B48 8FAF0048 */        lw $t7, 0x48($sp)
  /* 04189C 800A2B4C 3C0E800A */       lui $t6, %hi(func_800A26D8)
  /* 0418A0 800A2B50 25CE26D8 */     addiu $t6, $t6, %lo(func_800A26D8)
  /* 0418A4 800A2B54 24180000 */     addiu $t8, $zero, 0
  /* 0418A8 800A2B58 24190000 */     addiu $t9, $zero, 0
  /* 0418AC 800A2B5C AFB9001C */        sw $t9, 0x1c($sp)
  /* 0418B0 800A2B60 AFB80018 */        sw $t8, 0x18($sp)
  /* 0418B4 800A2B64 AFAE0010 */        sw $t6, 0x10($sp)
  /* 0418B8 800A2B68 3484FFFF */       ori $a0, $a0, (0xEFFFFFFF & 0xFFFF) # 4026531839
  /* 0418BC 800A2B6C 00002825 */        or $a1, $zero, $zero
  /* 0418C0 800A2B70 8FA60040 */        lw $a2, 0x40($sp)
  /* 0418C4 800A2B74 8FA70044 */        lw $a3, 0x44($sp)
  /* 0418C8 800A2B78 AFA00020 */        sw $zero, 0x20($sp)
  /* 0418CC 800A2B7C AFA00024 */        sw $zero, 0x24($sp)
  /* 0418D0 800A2B80 AFA00028 */        sw $zero, 0x28($sp)
  /* 0418D4 800A2B84 AFA0002C */        sw $zero, 0x2c($sp)
  /* 0418D8 800A2B88 AFA00030 */        sw $zero, 0x30($sp)
  /* 0418DC 800A2B8C AFA00034 */        sw $zero, 0x34($sp)
  /* 0418E0 800A2B90 0C002E4F */       jal func_8000B93C
  /* 0418E4 800A2B94 AFAF0014 */        sw $t7, 0x14($sp)
  .L800A2B98:
  /* 0418E8 800A2B98 8FBF003C */        lw $ra, 0x3c($sp)
  /* 0418EC 800A2B9C 27BD0040 */     addiu $sp, $sp, 0x40
  /* 0418F0 800A2BA0 03E00008 */        jr $ra
  /* 0418F4 800A2BA4 00000000 */       nop 

  /* 0418F8 800A2BA8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0418FC 800A2BAC AFBF0014 */        sw $ra, 0x14($sp)
  /* 041900 800A2BB0 AFA40018 */        sw $a0, 0x18($sp)
  /* 041904 800A2BB4 AFA5001C */        sw $a1, 0x1c($sp)
  /* 041908 800A2BB8 AFA60020 */        sw $a2, 0x20($sp)
  /* 04190C 800A2BBC 0C002C66 */       jal func_8000B198
  /* 041910 800A2BC0 2404FFFE */     addiu $a0, $zero, -2
  /* 041914 800A2BC4 10400005 */      beqz $v0, .L800A2BDC
  /* 041918 800A2BC8 00402025 */        or $a0, $v0, $zero
  /* 04191C 800A2BCC 0C0026A1 */       jal func_80009A84
  /* 041920 800A2BD0 00000000 */       nop 
  /* 041924 800A2BD4 10000006 */         b .L800A2BF0
  /* 041928 800A2BD8 3C04EFFF */       lui $a0, 0xefff
  .L800A2BDC:
  /* 04192C 800A2BDC 8FA40018 */        lw $a0, 0x18($sp)
  /* 041930 800A2BE0 8FA5001C */        lw $a1, 0x1c($sp)
  /* 041934 800A2BE4 0C0088DA */       jal func_80022368
  /* 041938 800A2BE8 8FA60020 */        lw $a2, 0x20($sp)
  /* 04193C 800A2BEC 3C04EFFF */       lui $a0, (0xEFFFFFFF >> 16) # 4026531839
  .L800A2BF0:
  /* 041940 800A2BF0 0C002C66 */       jal func_8000B198
  /* 041944 800A2BF4 3484FFFF */       ori $a0, $a0, (0xEFFFFFFF & 0xFFFF) # 4026531839
  /* 041948 800A2BF8 10400005 */      beqz $v0, .L800A2C10
  /* 04194C 800A2BFC 00402025 */        or $a0, $v0, $zero
  /* 041950 800A2C00 0C0026A1 */       jal func_80009A84
  /* 041954 800A2C04 00000000 */       nop 
  /* 041958 800A2C08 10000006 */         b .L800A2C24
  /* 04195C 800A2C0C 8FBF0014 */        lw $ra, 0x14($sp)
  .L800A2C10:
  /* 041960 800A2C10 8FA40018 */        lw $a0, 0x18($sp)
  /* 041964 800A2C14 8FA5001C */        lw $a1, 0x1c($sp)
  /* 041968 800A2C18 0C028AC6 */       jal func_800A2B18
  /* 04196C 800A2C1C 8FA60020 */        lw $a2, 0x20($sp)
  /* 041970 800A2C20 8FBF0014 */        lw $ra, 0x14($sp)
  .L800A2C24:
  /* 041974 800A2C24 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041978 800A2C28 03E00008 */        jr $ra
  /* 04197C 800A2C2C 00000000 */       nop 


# possible break here
