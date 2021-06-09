.section .late_rodata

glabel D_8003E018
  /* 3DC18 03EC18 8003E018 */
  .word 0xfeffffff # .float -1.7014117e38

.section .text
glabel func_8000FA3C
  /* 01063C 8000FA3C 8C82006C */        lw $v0, 0x6c($a0)
  /* 010640 8000FA40 44866000 */      mtc1 $a2, $f12
  /* 010644 8000FA44 3C018004 */       lui $at, %hi(D_8003E018)
  /* 010648 8000FA48 50400006 */      beql $v0, $zero, .L8000FA64
  /* 01064C 8000FA4C AC850070 */        sw $a1, 0x70($a0)
  /* 010650 8000FA50 A0400005 */        sb $zero, 5($v0)
  .L8000FA54:
  /* 010654 8000FA54 8C420000 */        lw $v0, ($v0)
  /* 010658 8000FA58 5440FFFE */      bnel $v0, $zero, .L8000FA54
  /* 01065C 8000FA5C A0400005 */        sb $zero, 5($v0)
  /* 010660 8000FA60 AC850070 */        sw $a1, 0x70($a0)
  .L8000FA64:
  /* 010664 8000FA64 C424E018 */      lwc1 $f4, %lo(D_8003E018)($at)
  /* 010668 8000FA68 E48C007C */      swc1 $f12, 0x7c($a0)
  /* 01066C 8000FA6C 03E00008 */        jr $ra
  /* 010670 8000FA70 E4840074 */      swc1 $f4, 0x74($a0)

