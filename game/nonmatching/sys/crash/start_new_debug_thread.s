.section .text
glabel start_new_debug_thread
  /* 0241D0 800235D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0241D4 800235D4 3C0E800A */       lui $t6, %hi(D_8009EDB8)
  /* 0241D8 800235D8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 0241DC 800235DC 25CEEDB8 */     addiu $t6, $t6, %lo(D_8009EDB8)
  /* 0241E0 800235E0 3C04800A */       lui $a0, %hi(D_8009E408)
  /* 0241E4 800235E4 3C068002 */       lui $a2, %hi(fileloader_thread8_crash)
  /* 0241E8 800235E8 240F0069 */     addiu $t7, $zero, 0x69
  /* 0241EC 800235EC AFAF0014 */        sw $t7, 0x14($sp)
  /* 0241F0 800235F0 24C633A4 */     addiu $a2, $a2, %lo(fileloader_thread8_crash)
  /* 0241F4 800235F4 2484E408 */     addiu $a0, $a0, %lo(D_8009E408)
  /* 0241F8 800235F8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 0241FC 800235FC 24050008 */     addiu $a1, $zero, 8
  /* 024200 80023600 0C00C788 */       jal osCreateThread
  /* 024204 80023604 00003825 */        or $a3, $zero, $zero
  /* 024208 80023608 3C04800A */       lui $a0, %hi(D_8009E408)
  /* 02420C 8002360C 0C00E464 */       jal osStartThread
  /* 024210 80023610 2484E408 */     addiu $a0, $a0, %lo(D_8009E408)
  /* 024214 80023614 8FBF001C */        lw $ra, 0x1c($sp)
  /* 024218 80023618 27BD0020 */     addiu $sp, $sp, 0x20
  /* 02421C 8002361C 03E00008 */        jr $ra
  /* 024220 80023620 00000000 */       nop 

