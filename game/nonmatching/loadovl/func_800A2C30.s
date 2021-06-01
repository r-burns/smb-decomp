.section .rodata
glabel D_800A41E0
  /* 2860 042F30 800A41E0 */
  .asciz "gobj id:%d:"
  .balign 4

glabel D_800A41EC
  /* 286C 042F3C 800A41EC */
  .asciz "fighter\n"
  .balign 4

glabel D_800A41F8
  /* 2878 042F48 800A41F8 */
  .asciz "kind:%d, player:%d, pkind:%d\n"
  .balign 4

glabel D_800A4218
  /* 2898 042F68 800A4218 */
  .asciz "stat:%d, mstat:%d\n"
  .balign 4

glabel D_800A422C
  /* 28AC 042F7C 800A422C */
  .asciz "ga:%d\n"
  .balign 4
  /* 28B4 042F84 800A4234 */
  .asciz "weapon\n"
  .balign 4

glabel D_800A423C
  /* 28BC 042F8C 800A423C */
  .asciz "kind:%d, player:%d\n"
  .balign 4

glabel D_800A4250
  /* 28D0 042FA0 800A4250 */
  .asciz "atk stat:%d\n"
  .balign 4

glabel D_800A4260
  /* 28E0 042FB0 800A4260 */
  .asciz "ga:%d\n"
  .balign 4
  /* 28E8 042FB8 800A4268 */
  .asciz "item\n"
  .balign 4

glabel D_800A4270
  /* 28F0 042FC0 800A4270 */
  .asciz "kind:%d, player:%d\n"
  .balign 4

glabel D_800A4284
  /* 2904 042FD4 800A4284 */
  .asciz "atk stat:%d\n"
  .balign 4

glabel D_800A4294
  /* 2914 042FE4 800A4294 */
  .asciz "ga:%d\n"
  .balign 4

glabel D_800A429C
  /* 291C 042FEC 800A429C */
  .asciz "proc update:%x\n"
  .balign 4

glabel D_800A42AC
  /* 292C 042FFC 800A42AC */
  .asciz "proc map:%x\n"
  .balign 4

glabel D_800A42BC
  /* 293C 04300C 800A42BC */
  .asciz "proc hit:%x\n"
  .balign 4

glabel D_800A42CC
  /* 294C 04301C 800A42CC */
  .asciz "proc shield:%x\n"
  .balign 4

glabel D_800A42DC
  /* 295C 04302C 800A42DC */
  .asciz "proc hop:%x\n"
  .balign 4

glabel D_800A42EC
  /* 296C 04303C 800A42EC */
  .asciz "proc setoff:%x\n"
  .balign 4

glabel D_800A42FC
  /* 297C 04304C 800A42FC */
  .asciz "proc reflector:%x\n"
  .balign 4

glabel D_800A4310
  /* 2990 043060 800A4310 */
  .asciz "proc damage:%x\n"
  .balign 4

glabel D_800A4320
  /* 29A0 043070 800A4320 */
  .asciz "effect\n"
  .balign 4

glabel D_800A4328
  /* 29A8 043078 800A4328 */
  .asciz "fgobj:%x"
  .balign 4

glabel D_800A4334
  /* 29B4 043084 800A4334 */
  .asciz "proc func:%x\n"
  .balign 4
  # these might be somewhere else, but they'll have to go after this function
  /* 29C4 043094 800A4344 */
  .asciz "\n"
  .balign 4
  /* 29C8 043098 800A4348 */
  .asciz "\n"
  .balign 4


.section .text
glabel func_800A2C30
  /* 041980 800A2C30 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 041984 800A2C34 00803025 */        or $a2, $a0, $zero
  /* 041988 800A2C38 AFBF001C */        sw $ra, 0x1c($sp)
  /* 04198C 800A2C3C AFB00018 */        sw $s0, 0x18($sp)
  /* 041990 800A2C40 8CC50000 */        lw $a1, ($a2)
  /* 041994 800A2C44 3C04800A */       lui $a0, %hi(D_800A41E0)
  /* 041998 800A2C48 248441E0 */     addiu $a0, $a0, %lo(D_800A41E0)
  /* 04199C 800A2C4C 0C008C55 */       jal func_80023154
  /* 0419A0 800A2C50 AFA60028 */        sw $a2, 0x28($sp)
  /* 0419A4 800A2C54 8FA60028 */        lw $a2, 0x28($sp)
  /* 0419A8 800A2C58 240103E8 */     addiu $at, $zero, 0x3e8
  /* 0419AC 800A2C5C 3C04800A */       lui $a0, 0x800a
  /* 0419B0 800A2C60 8CC20000 */        lw $v0, ($a2)
  /* 0419B4 800A2C64 1041000A */       beq $v0, $at, .L800A2C90
  /* 0419B8 800A2C68 240103F3 */     addiu $at, $zero, 0x3f3
  /* 0419BC 800A2C6C 10410064 */       beq $v0, $at, .L800A2E00
  /* 0419C0 800A2C70 240103F4 */     addiu $at, $zero, 0x3f4
  /* 0419C4 800A2C74 1041001E */       beq $v0, $at, .L800A2CF0
  /* 0419C8 800A2C78 3C04800A */       lui $a0, 0x800a
  /* 0419CC 800A2C7C 240103F5 */     addiu $at, $zero, 0x3f5
  /* 0419D0 800A2C80 1041002D */       beq $v0, $at, .L800A2D38
  /* 0419D4 800A2C84 3C04800A */       lui $a0, 0x800a
  /* 0419D8 800A2C88 10000077 */         b .L800A2E68
  /* 0419DC 800A2C8C 3C04800A */       lui $a0, %hi(D_800A41EC)
  .L800A2C90:
  /* 0419E0 800A2C90 8CC20084 */        lw $v0, 0x84($a2)
  /* 0419E4 800A2C94 248441EC */     addiu $a0, $a0, %lo(D_800A41EC)
  /* 0419E8 800A2C98 0C008C55 */       jal func_80023154
  /* 0419EC 800A2C9C AFA20024 */        sw $v0, 0x24($sp)
  /* 0419F0 800A2CA0 8FA20024 */        lw $v0, 0x24($sp)
  /* 0419F4 800A2CA4 3C04800A */       lui $a0, %hi(D_800A41F8)
  /* 0419F8 800A2CA8 248441F8 */     addiu $a0, $a0, %lo(D_800A41F8)
  /* 0419FC 800A2CAC 8C450008 */        lw $a1, 8($v0)
  /* 041A00 800A2CB0 9046000D */       lbu $a2, 0xd($v0)
  /* 041A04 800A2CB4 0C008C55 */       jal func_80023154
  /* 041A08 800A2CB8 8C470020 */        lw $a3, 0x20($v0)
  /* 041A0C 800A2CBC 8FA20024 */        lw $v0, 0x24($sp)
  /* 041A10 800A2CC0 3C04800A */       lui $a0, %hi(D_800A4218)
  /* 041A14 800A2CC4 24844218 */     addiu $a0, $a0, %lo(D_800A4218)
  /* 041A18 800A2CC8 8C450024 */        lw $a1, 0x24($v0)
  /* 041A1C 800A2CCC 0C008C55 */       jal func_80023154
  /* 041A20 800A2CD0 8C460028 */        lw $a2, 0x28($v0)
  /* 041A24 800A2CD4 8FA20024 */        lw $v0, 0x24($sp)
  /* 041A28 800A2CD8 3C04800A */       lui $a0, %hi(D_800A422C)
  /* 041A2C 800A2CDC 2484422C */     addiu $a0, $a0, %lo(D_800A422C)
  /* 041A30 800A2CE0 0C008C55 */       jal func_80023154
  /* 041A34 800A2CE4 8C45014C */        lw $a1, 0x14c($v0)
  /* 041A38 800A2CE8 10000062 */         b .L800A2E74
  /* 041A3C 800A2CEC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2CF0:
  /* 041A40 800A2CF0 8CD00084 */        lw $s0, 0x84($a2)
  /* 041A44 800A2CF4 0C008C55 */       jal func_80023154
  /* 041A48 800A2CF8 24844234 */     addiu $a0, $a0, 0x4234
  /* 041A4C 800A2CFC 3C04800A */       lui $a0, %hi(D_800A423C)
  /* 041A50 800A2D00 2484423C */     addiu $a0, $a0, %lo(D_800A423C)
  /* 041A54 800A2D04 8E05000C */        lw $a1, 0xc($s0)
  /* 041A58 800A2D08 0C008C55 */       jal func_80023154
  /* 041A5C 800A2D0C 92060011 */       lbu $a2, 0x11($s0)
  /* 041A60 800A2D10 3C04800A */       lui $a0, %hi(D_800A4250)
  /* 041A64 800A2D14 24844250 */     addiu $a0, $a0, %lo(D_800A4250)
  /* 041A68 800A2D18 0C008C55 */       jal func_80023154
  /* 041A6C 800A2D1C 8E050100 */        lw $a1, 0x100($s0)
  /* 041A70 800A2D20 3C04800A */       lui $a0, %hi(D_800A4260)
  /* 041A74 800A2D24 24844260 */     addiu $a0, $a0, %lo(D_800A4260)
  /* 041A78 800A2D28 0C008C55 */       jal func_80023154
  /* 041A7C 800A2D2C 8E0500FC */        lw $a1, 0xfc($s0)
  /* 041A80 800A2D30 10000050 */         b .L800A2E74
  /* 041A84 800A2D34 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2D38:
  /* 041A88 800A2D38 8CD00084 */        lw $s0, 0x84($a2)
  /* 041A8C 800A2D3C 0C008C55 */       jal func_80023154
  /* 041A90 800A2D40 24844268 */     addiu $a0, $a0, 0x4268
  /* 041A94 800A2D44 3C04800A */       lui $a0, %hi(D_800A4270)
  /* 041A98 800A2D48 24844270 */     addiu $a0, $a0, %lo(D_800A4270)
  /* 041A9C 800A2D4C 8E05000C */        lw $a1, 0xc($s0)
  /* 041AA0 800A2D50 0C008C55 */       jal func_80023154
  /* 041AA4 800A2D54 92060015 */       lbu $a2, 0x15($s0)
  /* 041AA8 800A2D58 3C04800A */       lui $a0, %hi(D_800A4284)
  /* 041AAC 800A2D5C 24844284 */     addiu $a0, $a0, %lo(D_800A4284)
  /* 041AB0 800A2D60 0C008C55 */       jal func_80023154
  /* 041AB4 800A2D64 8E05010C */        lw $a1, 0x10c($s0)
  /* 041AB8 800A2D68 3C04800A */       lui $a0, %hi(D_800A4294)
  /* 041ABC 800A2D6C 24844294 */     addiu $a0, $a0, %lo(D_800A4294)
  /* 041AC0 800A2D70 0C008C55 */       jal func_80023154
  /* 041AC4 800A2D74 8E050108 */        lw $a1, 0x108($s0)
  /* 041AC8 800A2D78 3C04800A */       lui $a0, %hi(D_800A429C)
  /* 041ACC 800A2D7C 2484429C */     addiu $a0, $a0, %lo(D_800A429C)
  /* 041AD0 800A2D80 0C008C55 */       jal func_80023154
  /* 041AD4 800A2D84 8E050378 */        lw $a1, 0x378($s0)
  /* 041AD8 800A2D88 3C04800A */       lui $a0, %hi(D_800A42AC)
  /* 041ADC 800A2D8C 248442AC */     addiu $a0, $a0, %lo(D_800A42AC)
  /* 041AE0 800A2D90 0C008C55 */       jal func_80023154
  /* 041AE4 800A2D94 8E05037C */        lw $a1, 0x37c($s0)
  /* 041AE8 800A2D98 3C04800A */       lui $a0, %hi(D_800A42BC)
  /* 041AEC 800A2D9C 248442BC */     addiu $a0, $a0, %lo(D_800A42BC)
  /* 041AF0 800A2DA0 0C008C55 */       jal func_80023154
  /* 041AF4 800A2DA4 8E050380 */        lw $a1, 0x380($s0)
  /* 041AF8 800A2DA8 3C04800A */       lui $a0, %hi(D_800A42CC)
  /* 041AFC 800A2DAC 248442CC */     addiu $a0, $a0, %lo(D_800A42CC)
  /* 041B00 800A2DB0 0C008C55 */       jal func_80023154
  /* 041B04 800A2DB4 8E050384 */        lw $a1, 0x384($s0)
  /* 041B08 800A2DB8 3C04800A */       lui $a0, %hi(D_800A42DC)
  /* 041B0C 800A2DBC 248442DC */     addiu $a0, $a0, %lo(D_800A42DC)
  /* 041B10 800A2DC0 0C008C55 */       jal func_80023154
  /* 041B14 800A2DC4 8E050388 */        lw $a1, 0x388($s0)
  /* 041B18 800A2DC8 3C04800A */       lui $a0, %hi(D_800A42EC)
  /* 041B1C 800A2DCC 248442EC */     addiu $a0, $a0, %lo(D_800A42EC)
  /* 041B20 800A2DD0 0C008C55 */       jal func_80023154
  /* 041B24 800A2DD4 8E05038C */        lw $a1, 0x38c($s0)
  /* 041B28 800A2DD8 3C04800A */       lui $a0, %hi(D_800A42FC)
  /* 041B2C 800A2DDC 248442FC */     addiu $a0, $a0, %lo(D_800A42FC)
  /* 041B30 800A2DE0 0C008C55 */       jal func_80023154
  /* 041B34 800A2DE4 8E050390 */        lw $a1, 0x390($s0)
  /* 041B38 800A2DE8 3C04800A */       lui $a0, %hi(D_800A4310)
  /* 041B3C 800A2DEC 24844310 */     addiu $a0, $a0, %lo(D_800A4310)
  /* 041B40 800A2DF0 0C008C55 */       jal func_80023154
  /* 041B44 800A2DF4 8E050394 */        lw $a1, 0x394($s0)
  /* 041B48 800A2DF8 1000001E */         b .L800A2E74
  /* 041B4C 800A2DFC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E00:
  /* 041B50 800A2E00 8CD00084 */        lw $s0, 0x84($a2)
  /* 041B54 800A2E04 3C018000 */       lui $at, 0x8000
  /* 041B58 800A2E08 3C04800A */       lui $a0, 0x800a
  /* 041B5C 800A2E0C 0201082B */      sltu $at, $s0, $at
  /* 041B60 800A2E10 14200011 */      bnez $at, .L800A2E58
  /* 041B64 800A2E14 3C018080 */       lui $at, 0x8080
  /* 041B68 800A2E18 0201082B */      sltu $at, $s0, $at
  /* 041B6C 800A2E1C 1020000E */      beqz $at, .L800A2E58
  /* 041B70 800A2E20 00000000 */       nop 
  /* 041B74 800A2E24 3C04800A */       lui $a0, %hi(D_800A4320)
  /* 041B78 800A2E28 0C008C55 */       jal func_80023154
  /* 041B7C 800A2E2C 24844320 */     addiu $a0, $a0, %lo(D_800A4320)
  /* 041B80 800A2E30 3C04800A */       lui $a0, %hi(D_800A4328)
  /* 041B84 800A2E34 24844328 */     addiu $a0, $a0, %lo(D_800A4328)
  /* 041B88 800A2E38 0C008C55 */       jal func_80023154
  /* 041B8C 800A2E3C 8E050004 */        lw $a1, 4($s0)
  /* 041B90 800A2E40 3C04800A */       lui $a0, %hi(D_800A4334)
  /* 041B94 800A2E44 24844334 */     addiu $a0, $a0, %lo(D_800A4334)
  /* 041B98 800A2E48 0C008C55 */       jal func_80023154
  /* 041B9C 800A2E4C 8E050014 */        lw $a1, 0x14($s0)
  /* 041BA0 800A2E50 10000008 */         b .L800A2E74
  /* 041BA4 800A2E54 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E58:
  /* 041BA8 800A2E58 0C008C55 */       jal func_80023154
  /* 041BAC 800A2E5C 24844344 */     addiu $a0, $a0, 0x4344
  /* 041BB0 800A2E60 10000004 */         b .L800A2E74
  /* 041BB4 800A2E64 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E68:
  /* 041BB8 800A2E68 0C008C55 */       jal func_80023154
  /* 041BBC 800A2E6C 24844348 */     addiu $a0, $a0, 0x4348
  /* 041BC0 800A2E70 8FBF001C */        lw $ra, 0x1c($sp)
  .L800A2E74:
  /* 041BC4 800A2E74 8FB00018 */        lw $s0, 0x18($sp)
  /* 041BC8 800A2E78 27BD0028 */     addiu $sp, $sp, 0x28
  /* 041BCC 800A2E7C 03E00008 */        jr $ra
  /* 041BD0 800A2E80 00000000 */       nop 

