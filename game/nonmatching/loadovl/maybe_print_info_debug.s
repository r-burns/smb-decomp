.section .rodata
glabel D_800A434C
  /* 29CC 04309C 800A434C */
  .asciz "SYS\n"
  .balign 4

glabel D_800A4354
  /* 29D4 0430A4 800A4354 */
  .asciz "BF\n"
  .balign 4

glabel D_800A4358
  /* 29D8 0430A8 800A4358 */
  .asciz "addr:%x\n"
  .balign 4

glabel D_800A4364
  /* 29E4 0430B4 800A4364 */
  .asciz "GP\n"
  .balign 4

glabel D_800A4368
  /* 29E8 0430B8 800A4368 */
  .asciz "thread:%x\n"
  .balign 4
  /* 29F4 0430C4 800A4374 */
  .asciz "func:%x\n"
  .balign 4

glabel D_800A4380
  /* 2A00 0430D0 800A4380 */
  .asciz "DFC\n"
  .balign 4

glabel D_800A4388
  /* 2A08 0430D8 800A4388 */
  .asciz "addr:%x\n"
  .balign 4

glabel D_800A4394
  /* 2A14 0430E4 800A4394 */
  .asciz "DFO\n"
  .balign 4

glabel D_800A439C
  /* 2A1C 0430EC 800A439C */
  .asciz "cam addr:%x\n"
  .balign 4

glabel D_800A43AC
  /* 2A2C 0430FC 800A43AC */
  .asciz "disp addr:%x\n"
  .balign 4

.section .late_rodata
glabel D_800A44B4
  /* 2B34 043204 800A44B4 */  .word jtgt_800A2EB4
  /* 2B38 043208 800A44B8 */  .word jtgt_800A2EC8
  /* 2B3C 04320C 800A44BC */  .word jtgt_800A2F08
  /* 2B40 043210 800A44C0 */  .word jtgt_800A2F98
  /* 2B44 043214 800A44C4 */  .word jtgt_800A2FD8

.section .text
glabel maybe_print_info_debug
  /* 041BD4 800A2E84 3C0E8004 */       lui $t6, %hi(D_8003B874)
  /* 041BD8 800A2E88 8DCEB874 */        lw $t6, %lo(D_8003B874)($t6)
  /* 041BDC 800A2E8C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 041BE0 800A2E90 AFBF0014 */        sw $ra, 0x14($sp)
  /* 041BE4 800A2E94 2DC10005 */     sltiu $at, $t6, 5
  /* 041BE8 800A2E98 10200065 */      beqz $at, .L800A3030
  /* 041BEC 800A2E9C 000E7080 */       sll $t6, $t6, 2
  /* 041BF0 800A2EA0 3C01800A */       lui $at, %hi(D_800A44B4)
  /* 041BF4 800A2EA4 002E0821 */      addu $at, $at, $t6
  /* 041BF8 800A2EA8 8C2E44B4 */        lw $t6, %lo(D_800A44B4)($at)
  /* 041BFC 800A2EAC 01C00008 */        jr $t6
  /* 041C00 800A2EB0 00000000 */       nop 
  glabel jtgt_800A2EB4
  /* 041C04 800A2EB4 3C04800A */       lui $a0, %hi(D_800A434C)
  /* 041C08 800A2EB8 0C008C55 */       jal func_80023154
  /* 041C0C 800A2EBC 2484434C */     addiu $a0, $a0, %lo(D_800A434C)
  /* 041C10 800A2EC0 1000005C */         b .L800A3034
  /* 041C14 800A2EC4 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2EC8
  /* 041C18 800A2EC8 3C04800A */       lui $a0, %hi(D_800A4354)
  /* 041C1C 800A2ECC 0C008C55 */       jal func_80023154
  /* 041C20 800A2ED0 24844354 */     addiu $a0, $a0, %lo(D_800A4354)
  /* 041C24 800A2ED4 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041C28 800A2ED8 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  /* 041C2C 800A2EDC 3C04800A */       lui $a0, %hi(D_800A4358)
  /* 041C30 800A2EE0 24844358 */     addiu $a0, $a0, %lo(D_800A4358)
  /* 041C34 800A2EE4 50C00053 */      beql $a2, $zero, .L800A3034
  /* 041C38 800A2EE8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041C3C 800A2EEC 0C008C55 */       jal func_80023154
  /* 041C40 800A2EF0 8CC50014 */        lw $a1, 0x14($a2)
  /* 041C44 800A2EF4 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 041C48 800A2EF8 0C028B0C */       jal func_800A2C30
  /* 041C4C 800A2EFC 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  /* 041C50 800A2F00 1000004C */         b .L800A3034
  /* 041C54 800A2F04 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2F08
  /* 041C58 800A2F08 3C04800A */       lui $a0, %hi(D_800A4364)
  /* 041C5C 800A2F0C 0C008C55 */       jal func_80023154
  /* 041C60 800A2F10 24844364 */     addiu $a0, $a0, %lo(D_800A4364)
  /* 041C64 800A2F14 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041C68 800A2F18 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  /* 041C6C 800A2F1C 3C028004 */       lui $v0, %hi(D_80046A60)
  /* 041C70 800A2F20 50C00044 */      beql $a2, $zero, .L800A3034
  /* 041C74 800A2F24 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041C78 800A2F28 8C426A60 */        lw $v0, %lo(D_80046A60)($v0)
  /* 041C7C 800A2F2C 10400016 */      beqz $v0, .L800A2F88
  /* 041C80 800A2F30 00000000 */       nop 
  /* 041C84 800A2F34 90430014 */       lbu $v1, 0x14($v0)
  /* 041C88 800A2F38 24010001 */     addiu $at, $zero, 1
  /* 041C8C 800A2F3C 3C04800A */       lui $a0, 0x800a
  /* 041C90 800A2F40 50600006 */      beql $v1, $zero, .L800A2F5C
  /* 041C94 800A2F44 8C4F001C */        lw $t7, 0x1c($v0)
  /* 041C98 800A2F48 1061000A */       beq $v1, $at, .L800A2F74
  /* 041C9C 800A2F4C 3C04800A */       lui $a0, %hi(D_800A4368)
  /* 041CA0 800A2F50 1000000D */         b .L800A2F88
  /* 041CA4 800A2F54 00000000 */       nop 
  /* 041CA8 800A2F58 8C4F001C */        lw $t7, 0x1c($v0)
  .L800A2F5C:
  /* 041CAC 800A2F5C 24844368 */     addiu $a0, $a0, %lo(D_800A4368)
  /* 041CB0 800A2F60 0C008C55 */       jal func_80023154
  /* 041CB4 800A2F64 8DE50124 */        lw $a1, 0x124($t7)
  /* 041CB8 800A2F68 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041CBC 800A2F6C 10000006 */         b .L800A2F88
  /* 041CC0 800A2F70 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L800A2F74:
  /* 041CC4 800A2F74 24844374 */     addiu $a0, $a0, 0x4374
  /* 041CC8 800A2F78 0C008C55 */       jal func_80023154
  /* 041CCC 800A2F7C 8C45001C */        lw $a1, 0x1c($v0)
  /* 041CD0 800A2F80 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 041CD4 800A2F84 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L800A2F88:
  /* 041CD8 800A2F88 0C028B0C */       jal func_800A2C30
  /* 041CDC 800A2F8C 00C02025 */        or $a0, $a2, $zero
  /* 041CE0 800A2F90 10000028 */         b .L800A3034
  /* 041CE4 800A2F94 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2F98
  /* 041CE8 800A2F98 3C04800A */       lui $a0, %hi(D_800A4380)
  /* 041CEC 800A2F9C 0C008C55 */       jal func_80023154
  /* 041CF0 800A2FA0 24844380 */     addiu $a0, $a0, %lo(D_800A4380)
  /* 041CF4 800A2FA4 3C028004 */       lui $v0, %hi(D_80046A58)
  /* 041CF8 800A2FA8 8C426A58 */        lw $v0, %lo(D_80046A58)($v0)
  /* 041CFC 800A2FAC 3C04800A */       lui $a0, %hi(D_800A4388)
  /* 041D00 800A2FB0 24844388 */     addiu $a0, $a0, %lo(D_800A4388)
  /* 041D04 800A2FB4 5040001F */      beql $v0, $zero, .L800A3034
  /* 041D08 800A2FB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041D0C 800A2FBC 0C008C55 */       jal func_80023154
  /* 041D10 800A2FC0 8C45002C */        lw $a1, 0x2c($v0)
  /* 041D14 800A2FC4 3C048004 */       lui $a0, %hi(D_80046A58)
  /* 041D18 800A2FC8 0C028B0C */       jal func_800A2C30
  /* 041D1C 800A2FCC 8C846A58 */        lw $a0, %lo(D_80046A58)($a0)
  /* 041D20 800A2FD0 10000018 */         b .L800A3034
  /* 041D24 800A2FD4 8FBF0014 */        lw $ra, 0x14($sp)
  glabel jtgt_800A2FD8
  /* 041D28 800A2FD8 3C04800A */       lui $a0, %hi(D_800A4394)
  /* 041D2C 800A2FDC 0C008C55 */       jal func_80023154
  /* 041D30 800A2FE0 24844394 */     addiu $a0, $a0, %lo(D_800A4394)
  /* 041D34 800A2FE4 3C028004 */       lui $v0, %hi(D_80046A58)
  /* 041D38 800A2FE8 8C426A58 */        lw $v0, %lo(D_80046A58)($v0)
  /* 041D3C 800A2FEC 3C04800A */       lui $a0, %hi(D_800A439C)
  /* 041D40 800A2FF0 2484439C */     addiu $a0, $a0, %lo(D_800A439C)
  /* 041D44 800A2FF4 10400003 */      beqz $v0, .L800A3004
  /* 041D48 800A2FF8 00000000 */       nop 
  /* 041D4C 800A2FFC 0C008C55 */       jal func_80023154
  /* 041D50 800A3000 8C45002C */        lw $a1, 0x2c($v0)
  .L800A3004:
  /* 041D54 800A3004 3C028004 */       lui $v0, %hi(D_80046A5C)
  /* 041D58 800A3008 8C426A5C */        lw $v0, %lo(D_80046A5C)($v0)
  /* 041D5C 800A300C 3C04800A */       lui $a0, %hi(D_800A43AC)
  /* 041D60 800A3010 248443AC */     addiu $a0, $a0, %lo(D_800A43AC)
  /* 041D64 800A3014 50400007 */      beql $v0, $zero, .L800A3034
  /* 041D68 800A3018 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041D6C 800A301C 0C008C55 */       jal func_80023154
  /* 041D70 800A3020 8C45002C */        lw $a1, 0x2c($v0)
  /* 041D74 800A3024 3C048004 */       lui $a0, %hi(D_80046A5C)
  /* 041D78 800A3028 0C028B0C */       jal func_800A2C30
  /* 041D7C 800A302C 8C846A5C */        lw $a0, %lo(D_80046A5C)($a0)
  .L800A3030:
  /* 041D80 800A3030 8FBF0014 */        lw $ra, 0x14($sp)
  .L800A3034:
  /* 041D84 800A3034 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041D88 800A3038 03E00008 */        jr $ra
  /* 041D8C 800A303C 00000000 */       nop 

