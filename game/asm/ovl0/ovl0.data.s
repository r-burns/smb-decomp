.include "macros.inc"

.section .data

# Data Sections
#  800D4CA0 -> 800D62B0


glabel D_ovl0_800D4CA0
  /* D460 050680 800D4CA0 */
  .4byte 0x000000 # .float 0.0
  .incbin "ovl0.raw.bin", 0xD464, 0xFF8

glabel D_ovl0_800D5C9C
  /* E45C 05167C 800D5C9C */
  .4byte 0x3f800000 # .float 1.0

glabel D_ovl0_800D5CA0
  .incbin "ovl0.raw.bin", 0xE460, 0xC

glabel jtbl_ovl0_800D5CAC
  /* E46C 05168C 800D5CAC */  .4byte jtgt_ovl0_800C96EC
  /* E470 051690 800D5CB0 */  .4byte jtgt_ovl0_800C96EC
  /* E474 051694 800D5CB4 */  .4byte jtgt_ovl0_800C9714
  /* E478 051698 800D5CB8 */  .4byte jtgt_ovl0_800C9714
  /* E47C 05169C 800D5CBC */  .4byte jtgt_ovl0_800CA024
  /* E480 0516A0 800D5CC0 */  .4byte jtgt_ovl0_800CA024
  /* E484 0516A4 800D5CC4 */  .4byte jtgt_ovl0_800CA144
  /* E488 0516A8 800D5CC8 */  .4byte jtgt_ovl0_800CA144
  /* E48C 0516AC 800D5CCC */  .4byte jtgt_ovl0_800CA194
  /* E490 0516B0 800D5CD0 */  .4byte jtgt_ovl0_800CA194
  /* E494 0516B4 800D5CD4 */  .4byte jtgt_ovl0_800CA5C8
  /* E498 0516B8 800D5CD8 */  .4byte jtgt_ovl0_800CA5C8
  /* E49C 0516BC 800D5CDC */  .4byte jtgt_ovl0_800CAB48
  /* E4A0 0516C0 800D5CE0 */  .4byte jtgt_ovl0_800CAB48
  /* E4A4 0516C4 800D5CE4 */  .4byte jtgt_ovl0_800CB140
  /* E4A8 0516C8 800D5CE8 */  .4byte jtgt_ovl0_800CB140
  /* E4AC 0516CC 800D5CEC */  .4byte jtgt_ovl0_800CB2F0
  /* E4B0 0516D0 800D5CF0 */  .4byte jtgt_ovl0_800CB2F0
  /* E4B4 0516D4 800D5CF4 */  .4byte jtgt_ovl0_800C973C
  /* E4B8 0516D8 800D5CF8 */  .4byte jtgt_ovl0_800C973C
  /* E4BC 0516DC 800D5CFC */  .4byte func_ovl2_8010D250
  /* E4C0 0516E0 800D5D00 */  .4byte func_ovl2_8010D428
  /* E4C4 0516E4 800D5D04 */  .4byte func_ovl2_8010DE48
  .incbin "ovl0.raw.bin", 0xE4C8, 0x4
  /* E4CC 0516EC 800D5D0C */  .4byte func_ovl2_8010E00C
  .incbin "ovl0.raw.bin", 0xE4D0, 0x4

glabel jtbl_ovl0_800D5D14
  /* E4D4 0516F4 800D5D14 */  .4byte jtgt_ovl0_800C994C
  /* E4D8 0516F8 800D5D18 */  .4byte jtgt_ovl0_800C994C
  /* E4DC 0516FC 800D5D1C */  .4byte jtgt_ovl0_800C99CC
  /* E4E0 051700 800D5D20 */  .4byte jtgt_ovl0_800C99CC
  /* E4E4 051704 800D5D24 */  .4byte jtgt_ovl0_800C9F30
  /* E4E8 051708 800D5D28 */  .4byte jtgt_ovl0_800C9F30
  /* E4EC 05170C 800D5D2C */  .4byte jtgt_ovl0_800C9F70
  /* E4F0 051710 800D5D30 */  .4byte jtgt_ovl0_800C9F70
  /* E4F4 051714 800D5D34 */  .4byte func_ovl2_80106904
  /* E4F8 051718 800D5D38 */  .4byte func_ovl2_80106904
  /* E4FC 05171C 800D5D3C */  .4byte func_ovl2_8010E00C
  /* E500 051720 800D5D40 */  .4byte func_ovl2_8010E10C

glabel D_ovl0_800D5D44
  .incbin "ovl0.raw.bin", 0xE504, 0xC

glabel D_ovl0_800D5D50
  .incbin "ovl0.raw.bin", 0xE510, 0x4

glabel D_ovl0_800D5D54
  .incbin "ovl0.raw.bin", 0xE514, 0x4

glabel D_ovl0_800D5D58
  .incbin "ovl0.raw.bin", 0xE518, 0x4

glabel D_ovl0_800D5D5C
  /* E51C 05173C 800D5D5C */
  .asciz "{"
  .balign 4

glabel D_ovl0_800D5D60
  .incbin "ovl0.raw.bin", 0xE520, 0xB0

glabel D_ovl0_800D5E10
  /* E5D0 0517F0 800D5E10 */
  .asciz "FPE : 0 div (adfDMatrixDirecXBillboardSca) \n"
  .balign 4

glabel D_ovl0_800D5E40
  /* E600 051820 800D5E40 */
  .asciz "drawBitMap: no bitmap data!\n"
  .balign 4

glabel D_ovl0_800D5E60
  /* E620 051840 800D5E60 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E64
  /* E624 051844 800D5E64 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_ovl0_800D5E68
  /* E628 051848 800D5E68 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E6C
  /* E62C 05184C 800D5E6C */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E70
  /* E630 051850 800D5E70 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_ovl0_800D5E74
  /* E634 051854 800D5E74 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E78
  /* E638 051858 800D5E78 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D5E7C
  /* E63C 05185C 800D5E7C */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E80
  /* E640 051860 800D5E80 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E84
  /* E644 051864 800D5E84 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E88
  /* E648 051868 800D5E88 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5E8C
  /* E64C 05186C 800D5E8C */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_ovl0_800D5E90
  /* E650 051870 800D5E90 */  .4byte jtgt_ovl0_800C9560
  /* E654 051874 800D5E94 */  .4byte jtgt_ovl0_800C9570
  /* E658 051878 800D5E98 */  .4byte jtgt_ovl0_800C9580
  /* E65C 05187C 800D5E9C */  .4byte jtgt_ovl0_800C9590
  /* E660 051880 800D5EA0 */  .4byte jtgt_ovl0_800C960C
  /* E664 051884 800D5EA4 */  .4byte jtgt_ovl0_800C9624
  /* E668 051888 800D5EA8 */  .4byte jtgt_ovl0_800C963C
  /* E66C 05188C 800D5EAC */  .4byte jtgt_ovl0_800C9654
  /* E670 051890 800D5EB0 */  .4byte jtgt_ovl0_800C9664
  /* E674 051894 800D5EB4 */  .4byte jtgt_ovl0_800C9674

glabel D_ovl0_800D5EB8
  /* E678 051898 800D5EB8 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_ovl0_800D5EBC
  /* E67C 05189C 800D5EBC */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_ovl0_800D5EC0
  /* E680 0518A0 800D5EC0 */
  .4byte 0x3f7fbe77 # .float 0.999

glabel D_ovl0_800D5EC4
  /* E684 0518A4 800D5EC4 */
  .4byte 0x38d1b717 # .float 0.0001

glabel D_ovl0_800D5EC8
  /* E688 0518A8 800D5EC8 */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_ovl0_800D5ECC
  /* E68C 0518AC 800D5ECC */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_ovl0_800D5ED0
  /* E690 0518B0 800D5ED0 */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_ovl0_800D5ED4
  /* E694 0518B4 800D5ED4 */
  .4byte 0x3f7ff972 # .float 0.9999
  .incbin "ovl0.raw.bin", 0xE698, 0x8

glabel D_ovl0_800D5EE0
  /* E6A0 0518C0 800D5EE0 */
  .asciz "Relocatable Data Manager: Status Buffer is full !!\n"
  .balign 4

glabel D_ovl0_800D5F14
  /* E6D4 0518F4 800D5F14 */
  .asciz "Relocatable Data Manager: Force Status Buffer is full !!\n"
  .balign 4

glabel D_ovl0_800D5F50
  /* E710 051930 800D5F50 */
  .asciz "Relocatable Data Manager: External Data is over %d!!\n"
  .balign 4

glabel D_ovl0_800D5F88
  /* E748 051968 800D5F88 */
  .asciz "Relocatable Data Manager: Buffer is full !!\n"
  .balign 4
  .incbin "ovl0.raw.bin", 0xE778, 0x8

glabel D_ovl0_800D5FC0
  /* E780 0519A0 800D5FC0 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel jtbl_ovl0_800D5FC4
  /* E784 0519A4 800D5FC4 */  .4byte jtgt_ovl0_800D0374
  /* E788 0519A8 800D5FC8 */  .4byte jtgt_ovl0_800D0390
  /* E78C 0519AC 800D5FCC */  .4byte jtgt_ovl0_800D03B4
  /* E790 0519B0 800D5FD0 */  .4byte jtgt_ovl0_800D03C4
  /* E794 0519B4 800D5FD4 */  .4byte jtgt_ovl0_800D03D4
  /* E798 0519B8 800D5FD8 */  .4byte jtgt_ovl0_800D03D4

glabel D_ovl0_800D5FDC
  /* E79C 0519BC 800D5FDC */  .4byte jtgt_ovl0_800CF05C
  /* E7A0 0519C0 800D5FE0 */  .4byte jtgt_ovl0_800D0434
  /* E7A4 0519C4 800D5FE4 */  .4byte jtgt_ovl0_800D0434
  /* E7A8 0519C8 800D5FE8 */  .4byte jtgt_ovl0_800D0434
  /* E7AC 0519CC 800D5FEC */  .4byte jtgt_ovl0_800D0434
  /* E7B0 0519D0 800D5FF0 */  .4byte jtgt_ovl0_800D0434
  /* E7B4 0519D4 800D5FF4 */  .4byte jtgt_ovl0_800D0434
  /* E7B8 0519D8 800D5FF8 */  .4byte jtgt_ovl0_800D0434
  /* E7BC 0519DC 800D5FFC */  .4byte jtgt_ovl0_800CF0B4
  /* E7C0 0519E0 800D6000 */  .4byte jtgt_ovl0_800D0434
  /* E7C4 0519E4 800D6004 */  .4byte jtgt_ovl0_800D0434
  /* E7C8 0519E8 800D6008 */  .4byte jtgt_ovl0_800D0434
  /* E7CC 0519EC 800D600C */  .4byte jtgt_ovl0_800D0434
  /* E7D0 0519F0 800D6010 */  .4byte jtgt_ovl0_800D0434
  /* E7D4 0519F4 800D6014 */  .4byte jtgt_ovl0_800D0434
  /* E7D8 0519F8 800D6018 */  .4byte jtgt_ovl0_800D0434
  /* E7DC 0519FC 800D601C */  .4byte jtgt_ovl0_800CF13C
  /* E7E0 051A00 800D6020 */  .4byte jtgt_ovl0_800D0434
  /* E7E4 051A04 800D6024 */  .4byte jtgt_ovl0_800D0434
  /* E7E8 051A08 800D6028 */  .4byte jtgt_ovl0_800D0434
  /* E7EC 051A0C 800D602C */  .4byte jtgt_ovl0_800D0434
  /* E7F0 051A10 800D6030 */  .4byte jtgt_ovl0_800D0434
  /* E7F4 051A14 800D6034 */  .4byte jtgt_ovl0_800D0434
  /* E7F8 051A18 800D6038 */  .4byte jtgt_ovl0_800D0434
  /* E7FC 051A1C 800D603C */  .4byte jtgt_ovl0_800CF194
  /* E800 051A20 800D6040 */  .4byte jtgt_ovl0_800D0434
  /* E804 051A24 800D6044 */  .4byte jtgt_ovl0_800D0434
  /* E808 051A28 800D6048 */  .4byte jtgt_ovl0_800D0434
  /* E80C 051A2C 800D604C */  .4byte jtgt_ovl0_800D0434
  /* E810 051A30 800D6050 */  .4byte jtgt_ovl0_800D0434
  /* E814 051A34 800D6054 */  .4byte jtgt_ovl0_800D0434
  /* E818 051A38 800D6058 */  .4byte jtgt_ovl0_800D0434
  /* E81C 051A3C 800D605C */  .4byte jtgt_ovl0_800CF21C
  /* E820 051A40 800D6060 */  .4byte jtgt_ovl0_800CF25C
  /* E824 051A44 800D6064 */  .4byte jtgt_ovl0_800CF26C
  /* E828 051A48 800D6068 */  .4byte jtgt_ovl0_800CF2B8
  /* E82C 051A4C 800D606C */  .4byte jtgt_ovl0_800CF308
  /* E830 051A50 800D6070 */  .4byte jtgt_ovl0_800CF38C
  /* E834 051A54 800D6074 */  .4byte jtgt_ovl0_800CF3F4
  /* E838 051A58 800D6078 */  .4byte jtgt_ovl0_800CF44C
  /* E83C 051A5C 800D607C */  .4byte jtgt_ovl0_800CF494
  /* E840 051A60 800D6080 */  .4byte jtgt_ovl0_800CF510
  /* E844 051A64 800D6084 */  .4byte jtgt_ovl0_800CF534
  /* E848 051A68 800D6088 */  .4byte jtgt_ovl0_800CF5F4
  /* E84C 051A6C 800D608C */  .4byte jtgt_ovl0_800CF638
  /* E850 051A70 800D6090 */  .4byte jtgt_ovl0_800CF698
  /* E854 051A74 800D6094 */  .4byte jtgt_ovl0_800CF6A8
  /* E858 051A78 800D6098 */  .4byte jtgt_ovl0_800CF6BC
  /* E85C 051A7C 800D609C */  .4byte jtgt_ovl0_800CF6DC
  /* E860 051A80 800D60A0 */  .4byte jtgt_ovl0_800CF6FC
  /* E864 051A84 800D60A4 */  .4byte jtgt_ovl0_800CF70C
  /* E868 051A88 800D60A8 */  .4byte jtgt_ovl0_800CF71C
  /* E86C 051A8C 800D60AC */  .4byte jtgt_ovl0_800CF730
  /* E870 051A90 800D60B0 */  .4byte jtgt_ovl0_800CF740
  /* E874 051A94 800D60B4 */  .4byte jtgt_ovl0_800CF750
  /* E878 051A98 800D60B8 */  .4byte jtgt_ovl0_800CF764
  /* E87C 051A9C 800D60BC */  .4byte jtgt_ovl0_800CF78C
  /* E880 051AA0 800D60C0 */  .4byte jtgt_ovl0_800CF7C4
  /* E884 051AA4 800D60C4 */  .4byte jtgt_ovl0_800CF860
  /* E888 051AA8 800D60C8 */  .4byte jtgt_ovl0_800CFC28
  /* E88C 051AAC 800D60CC */  .4byte jtgt_ovl0_800CFFF0
  /* E890 051AB0 800D60D0 */  .4byte jtgt_ovl0_800D00F0
  /* E894 051AB4 800D60D4 */  .4byte jtgt_ovl0_800D018C
  /* E898 051AB8 800D60D8 */  .4byte jtgt_ovl0_800D01E8
  /* E89C 051ABC 800D60DC */  .4byte jtgt_ovl0_800D020C
  /* E8A0 051AC0 800D60E0 */  .4byte jtgt_ovl0_800D0434
  /* E8A4 051AC4 800D60E4 */  .4byte jtgt_ovl0_800D0434
  /* E8A8 051AC8 800D60E8 */  .4byte jtgt_ovl0_800D0434
  /* E8AC 051ACC 800D60EC */  .4byte jtgt_ovl0_800D0434
  /* E8B0 051AD0 800D60F0 */  .4byte jtgt_ovl0_800D0434
  /* E8B4 051AD4 800D60F4 */  .4byte jtgt_ovl0_800D0434
  /* E8B8 051AD8 800D60F8 */  .4byte jtgt_ovl0_800D0434
  /* E8BC 051ADC 800D60FC */  .4byte jtgt_ovl0_800D0434
  /* E8C0 051AE0 800D6100 */  .4byte jtgt_ovl0_800D0434
  /* E8C4 051AE4 800D6104 */  .4byte jtgt_ovl0_800D0434
  /* E8C8 051AE8 800D6108 */  .4byte jtgt_ovl0_800D0434
  /* E8CC 051AEC 800D610C */  .4byte jtgt_ovl0_800D0434
  /* E8D0 051AF0 800D6110 */  .4byte jtgt_ovl0_800D0434
  /* E8D4 051AF4 800D6114 */  .4byte jtgt_ovl0_800D0434
  /* E8D8 051AF8 800D6118 */  .4byte jtgt_ovl0_800D0434
  /* E8DC 051AFC 800D611C */  .4byte jtgt_ovl0_800D02C0

glabel D_ovl0_800D6120
  /* E8E0 051B00 800D6120 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D6124
  /* E8E4 051B04 800D6124 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D6128
  /* E8E8 051B08 800D6128 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D612C
  /* E8EC 051B0C 800D612C */
  .4byte 0x4422f983 # .float 651.8986

glabel jtbl_ovl0_800D6130
  /* E8F0 051B10 800D6130 */  .4byte jtgt_ovl0_800D0DDC
  /* E8F4 051B14 800D6134 */  .4byte jtgt_ovl0_800D0E10
  /* E8F8 051B18 800D6138 */  .4byte jtgt_ovl0_800D0E44
  /* E8FC 051B1C 800D613C */  .4byte jtgt_ovl0_800D0E80
  /* E900 051B20 800D6140 */  .4byte jtgt_ovl0_800D0E80
  /* E904 051B24 800D6144 */  .4byte jtgt_ovl0_800D0ECC
  /* E908 051B28 800D6148 */  .4byte jtgt_ovl0_800D0ECC
  /* E90C 051B2C 800D614C */  .4byte jtgt_ovl0_800D0F14
  /* E910 051B30 800D6150 */  .4byte jtgt_ovl0_800D0F14
  /* E914 051B34 800D6154 */  .4byte jtgt_ovl0_800D0E80
  /* E918 051B38 800D6158 */  .4byte jtgt_ovl0_800D0E80
  /* E91C 051B3C 800D615C */  .4byte jtgt_ovl0_800D0ECC
  /* E920 051B40 800D6160 */  .4byte jtgt_ovl0_800D0ECC
  /* E924 051B44 800D6164 */  .4byte jtgt_ovl0_800D0F14
  /* E928 051B48 800D6168 */  .4byte jtgt_ovl0_800D0F14

glabel D_ovl0_800D616C
  /* E92C 051B4C 800D616C */  .4byte jtgt_ovl0_800D1874
  /* E930 051B50 800D6170 */  .4byte jtgt_ovl0_800D18B4
  /* E934 051B54 800D6174 */  .4byte jtgt_ovl0_800D187C
  /* E938 051B58 800D6178 */  .4byte jtgt_ovl0_800D18B4
  /* E93C 051B5C 800D617C */  .4byte jtgt_ovl0_800D18B4
  /* E940 051B60 800D6180 */  .4byte jtgt_ovl0_800D18B4
  /* E944 051B64 800D6184 */  .4byte jtgt_ovl0_800D1884
  /* E948 051B68 800D6188 */  .4byte jtgt_ovl0_800D18B4
  /* E94C 051B6C 800D618C */  .4byte jtgt_ovl0_800D18B4
  /* E950 051B70 800D6190 */  .4byte jtgt_ovl0_800D18B4
  /* E954 051B74 800D6194 */  .4byte jtgt_ovl0_800D18B4
  /* E958 051B78 800D6198 */  .4byte jtgt_ovl0_800D18B4
  /* E95C 051B7C 800D619C */  .4byte jtgt_ovl0_800D18B4
  /* E960 051B80 800D61A0 */  .4byte jtgt_ovl0_800D18B4
  /* E964 051B84 800D61A4 */  .4byte jtgt_ovl0_800D188C
  /* E968 051B88 800D61A8 */  .4byte jtgt_ovl0_800D18B4
  /* E96C 051B8C 800D61AC */  .4byte jtgt_ovl0_800D18B4
  /* E970 051B90 800D61B0 */  .4byte jtgt_ovl0_800D18B4
  /* E974 051B94 800D61B4 */  .4byte jtgt_ovl0_800D18B4
  /* E978 051B98 800D61B8 */  .4byte jtgt_ovl0_800D18B4
  /* E97C 051B9C 800D61BC */  .4byte jtgt_ovl0_800D18B4
  /* E980 051BA0 800D61C0 */  .4byte jtgt_ovl0_800D18B4
  /* E984 051BA4 800D61C4 */  .4byte jtgt_ovl0_800D18B4
  /* E988 051BA8 800D61C8 */  .4byte jtgt_ovl0_800D18B4
  /* E98C 051BAC 800D61CC */  .4byte jtgt_ovl0_800D18B4
  /* E990 051BB0 800D61D0 */  .4byte jtgt_ovl0_800D18B4
  /* E994 051BB4 800D61D4 */  .4byte jtgt_ovl0_800D18B4
  /* E998 051BB8 800D61D8 */  .4byte jtgt_ovl0_800D18B4
  /* E99C 051BBC 800D61DC */  .4byte jtgt_ovl0_800D18B4
  /* E9A0 051BC0 800D61E0 */  .4byte jtgt_ovl0_800D18B4
  /* E9A4 051BC4 800D61E4 */  .4byte jtgt_ovl0_800D1894

glabel D_ovl0_800D61E8
  /* E9A8 051BC8 800D61E8 */  .4byte jtgt_ovl0_800D1944
  /* E9AC 051BCC 800D61EC */  .4byte jtgt_ovl0_800D1984
  /* E9B0 051BD0 800D61F0 */  .4byte jtgt_ovl0_800D194C
  /* E9B4 051BD4 800D61F4 */  .4byte jtgt_ovl0_800D1984
  /* E9B8 051BD8 800D61F8 */  .4byte jtgt_ovl0_800D1984
  /* E9BC 051BDC 800D61FC */  .4byte jtgt_ovl0_800D1984
  /* E9C0 051BE0 800D6200 */  .4byte jtgt_ovl0_800D1954
  /* E9C4 051BE4 800D6204 */  .4byte jtgt_ovl0_800D1984
  /* E9C8 051BE8 800D6208 */  .4byte jtgt_ovl0_800D1984
  /* E9CC 051BEC 800D620C */  .4byte jtgt_ovl0_800D1984
  /* E9D0 051BF0 800D6210 */  .4byte jtgt_ovl0_800D1984
  /* E9D4 051BF4 800D6214 */  .4byte jtgt_ovl0_800D1984
  /* E9D8 051BF8 800D6218 */  .4byte jtgt_ovl0_800D1984
  /* E9DC 051BFC 800D621C */  .4byte jtgt_ovl0_800D1984
  /* E9E0 051C00 800D6220 */  .4byte jtgt_ovl0_800D195C
  /* E9E4 051C04 800D6224 */  .4byte jtgt_ovl0_800D1984
  /* E9E8 051C08 800D6228 */  .4byte jtgt_ovl0_800D1984
  /* E9EC 051C0C 800D622C */  .4byte jtgt_ovl0_800D1984
  /* E9F0 051C10 800D6230 */  .4byte jtgt_ovl0_800D1984
  /* E9F4 051C14 800D6234 */  .4byte jtgt_ovl0_800D1984
  /* E9F8 051C18 800D6238 */  .4byte jtgt_ovl0_800D1984
  /* E9FC 051C1C 800D623C */  .4byte jtgt_ovl0_800D1984
  /* EA00 051C20 800D6240 */  .4byte jtgt_ovl0_800D1984
  /* EA04 051C24 800D6244 */  .4byte jtgt_ovl0_800D1984
  /* EA08 051C28 800D6248 */  .4byte jtgt_ovl0_800D1984
  /* EA0C 051C2C 800D624C */  .4byte jtgt_ovl0_800D1984
  /* EA10 051C30 800D6250 */  .4byte jtgt_ovl0_800D1984
  /* EA14 051C34 800D6254 */  .4byte jtgt_ovl0_800D1984
  /* EA18 051C38 800D6258 */  .4byte jtgt_ovl0_800D1984
  /* EA1C 051C3C 800D625C */  .4byte jtgt_ovl0_800D1984
  /* EA20 051C40 800D6260 */  .4byte jtgt_ovl0_800D1964

glabel D_ovl0_800D6264
  /* EA24 051C44 800D6264 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel D_ovl0_800D6268
  /* EA28 051C48 800D6268 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel jtbl_ovl0_800D626C
  /* EA2C 051C4C 800D626C */  .4byte jtgt_ovl0_800D2E9C
  /* EA30 051C50 800D6270 */  .4byte jtgt_ovl0_800D31E0
  /* EA34 051C54 800D6274 */  .4byte jtgt_ovl0_800D3294
  /* EA38 051C58 800D6278 */  .4byte jtgt_ovl0_800D2E9C
  /* EA3C 051C5C 800D627C */  .4byte jtgt_ovl0_800D2E9C

glabel D_ovl0_800D6280
  /* EA40 051C60 800D6280 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel jtbl_ovl0_800D6284
  /* EA44 051C64 800D6284 */  .4byte jtgt_ovl0_800D3804
  /* EA48 051C68 800D6288 */  .4byte jtgt_ovl0_800D381C
  /* EA4C 051C6C 800D628C */  .4byte jtgt_ovl0_800D3850
  /* EA50 051C70 800D6290 */  .4byte jtgt_ovl0_800D3804
  /* EA54 051C74 800D6294 */  .4byte jtgt_ovl0_800D3804

glabel D_ovl0_800D6298
  /* EA58 051C78 800D6298 */
  .4byte 0x40c90fdb # .float 6.2831855
  .incbin "ovl0.raw.bin", 0xEA5C, 0x4

glabel D_ovl0_800D62A0
  /* EA60 051C80 800D62A0 */
  .4byte 0x3fae8ba3 # .float 1.3636364

glabel D_ovl0_800D62A4
  /* EA64 051C84 800D62A4 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_ovl0_800D62A8
  /* EA68 051C88 800D62A8 */
  .4byte 0x44898000 # .float 1100.0
  .incbin "ovl0.raw.bin", 0xEA6C, 0x4
