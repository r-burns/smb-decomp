.section .rodata
glabel D_8003DDA0
  /* 3D9A0 03E9A0 8003DDA0 */
  .asciz "gobjthread stack over  gobjid = %d\n"
  .balign 4

.section .text
glabel func_8000B1E8
  /* 00BDE8 8000B1E8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00BDEC 8000B1EC 3C028004 */       lui $v0, %hi(D_80046A60)
  /* 00BDF0 8000B1F0 8C426A60 */        lw $v0, %lo(D_80046A60)($v0)
  /* 00BDF4 8000B1F4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00BDF8 8000B1F8 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BDFC 8000B1FC AFB00014 */        sw $s0, 0x14($sp)
  /* 00BE00 8000B200 8C4E001C */        lw $t6, 0x1c($v0)
  /* 00BE04 8000B204 00808025 */        or $s0, $a0, $zero
  /* 00BE08 8000B208 3C01FEDC */       lui $at, (0xFEDCBA98 >> 16) # 4275878552
  /* 00BE0C 8000B20C 8DCF01B8 */        lw $t7, 0x1b8($t6)
  /* 00BE10 8000B210 3421BA98 */       ori $at, $at, (0xFEDCBA98 & 0xFFFF) # 4275878552
  /* 00BE14 8000B214 3C048004 */       lui $a0, %hi(D_8003DDA0)
  /* 00BE18 8000B218 8DF80038 */        lw $t8, 0x38($t7)
  /* 00BE1C 8000B21C 8DF9003C */        lw $t9, 0x3c($t7)
  /* 00BE20 8000B220 57000004 */      bnel $t8, $zero, .L8000B234
  /* 00BE24 8000B224 8C480018 */        lw $t0, 0x18($v0)
  /* 00BE28 8000B228 13210005 */       beq $t9, $at, .L8000B240
  /* 00BE2C 8000B22C 00000000 */       nop 
  /* 00BE30 8000B230 8C480018 */        lw $t0, 0x18($v0)
  .L8000B234:
  /* 00BE34 8000B234 2484DDA0 */     addiu $a0, $a0, %lo(D_8003DDA0)
  /* 00BE38 8000B238 0C008D89 */       jal fatal_printf
  /* 00BE3C 8000B23C 8D050000 */        lw $a1, ($t0)
  .L8000B240:
  /* 00BE40 8000B240 1200000B */      beqz $s0, .L8000B270
  /* 00BE44 8000B244 3C118004 */       lui $s1, %hi(gOMMq)
  /* 00BE48 8000B248 26316A70 */     addiu $s1, $s1, %lo(gOMMq)
  /* 00BE4C 8000B24C 02202025 */        or $a0, $s1, $zero
  .L8000B250:
  /* 00BE50 8000B250 24050001 */     addiu $a1, $zero, 1
  /* 00BE54 8000B254 0C00C000 */       jal osSendMesg
  /* 00BE58 8000B258 00003025 */        or $a2, $zero, $zero
  /* 00BE5C 8000B25C 0C00C054 */       jal osStopThread
  /* 00BE60 8000B260 00002025 */        or $a0, $zero, $zero
  /* 00BE64 8000B264 2610FFFF */     addiu $s0, $s0, -1
  /* 00BE68 8000B268 5600FFF9 */      bnel $s0, $zero, .L8000B250
  /* 00BE6C 8000B26C 02202025 */        or $a0, $s1, $zero
  .L8000B270:
  /* 00BE70 8000B270 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00BE74 8000B274 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BE78 8000B278 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BE7C 8000B27C 03E00008 */        jr $ra
  /* 00BE80 8000B280 27BD0020 */     addiu $sp, $sp, 0x20

