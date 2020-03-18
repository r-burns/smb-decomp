.include "macros.inc"

.section .data

# Data Sections
#  800A3070 -> 800A44D0


glabel D_800A3070
  .incbin "overlayloader.raw.bin", 0x16F0, 0x8
  /* 16F8 041DC8 800A3078 */  .4byte func_ovl0_800C7840
  /* 16FC 041DCC 800A307C */  .4byte func_ovl0_800C7840
  /* 1700 041DD0 800A3080 */  .4byte D_ovl0_800D4CA0
  /* 1704 041DD4 800A3084 */  .4byte D_ovl0_800D4CA0
  /* 1708 041DD8 800A3088 */  .4byte D_ovl0_800D62B0
  /* 170C 041DDC 800A308C */  .4byte D_ovl0_800D62B0
  /* 1710 041DE0 800A3090 */  .4byte D_unkmulti_800D6490

glabel D_800A3094
  .incbin "overlayloader.raw.bin", 0x1714, 0x8
  /* 171C 041DEC 800A309C */  .4byte func_ovl1_803903E0
  /* 1720 041DF0 800A30A0 */  .4byte func_ovl1_803903E0
  /* 1724 041DF4 800A30A4 */  .4byte D_ovl1_80390BE0
  /* 1728 041DF8 800A30A8 */  .4byte D_ovl1_80390BE0
  /* 172C 041DFC 800A30AC */  .4byte D_ovl1_803929D0
  /* 1730 041E00 800A30B0 */  .4byte D_ovl1_803929D0
  /* 1734 041E04 800A30B4 */  .4byte D_NF_80392A00

glabel D_800A30B8
  .incbin "overlayloader.raw.bin", 0x1738, 0x8
  /* 1740 041E10 800A30C0 */  .4byte D_unkmulti_800D6490
  /* 1744 041E14 800A30C4 */  .4byte D_unkmulti_800D6490
  /* 1748 041E18 800A30C8 */  .4byte D_ovl2_80116BD0
  /* 174C 041E1C 800A30CC */  .4byte D_ovl2_80116BD0
  /* 1750 041E20 800A30D0 */  .4byte D_ovl2_80130D40
  /* 1754 041E24 800A30D4 */  .4byte D_ovl2_80130D40
  /* 1758 041E28 800A30D8 */  .4byte D_unkmulti_80131B00

glabel D_800A30DC
  .incbin "overlayloader.raw.bin", 0x175C, 0x8
  /* 1764 041E34 800A30E4 */  .4byte D_unkmulti_80131B00
  /* 1768 041E38 800A30E8 */  .4byte D_unkmulti_80131B00
  /* 176C 041E3C 800A30EC */  .4byte D_ovl3_80186660
  /* 1770 041E40 800A30F0 */  .4byte D_ovl3_80186660
  /* 1774 041E44 800A30F4 */  .4byte D_ovl3_8018CF80
  /* 1778 041E48 800A30F8 */  .4byte D_ovl3_8018CF80
  /* 177C 041E4C 800A30FC */  .4byte D_unkmulti_8018D0C0

glabel D_800A3100
  .incbin "overlayloader.raw.bin", 0x1780, 0x8
  /* 1788 041E58 800A3108 */  .4byte D_unkmulti_8018D0C0
  /* 178C 041E5C 800A310C */  .4byte D_unkmulti_8018D0C0
  /* 1790 041E60 800A3110 */  .4byte D_ovl4_8018E3D0
  /* 1794 041E64 800A3114 */  .4byte D_ovl4_8018E3D0
  /* 1798 041E68 800A3118 */  .4byte D_ovl4_8018E480
  /* 179C 041E6C 800A311C */  .4byte D_ovl4_8018E480
  /* 17A0 041E70 800A3120 */  .4byte D_ovl63_8018E7E0

glabel D_800A3124
  .incbin "overlayloader.raw.bin", 0x17A4, 0x8
  /* 17AC 041E7C 800A312C */  .4byte D_unkmulti_8018D0C0
  /* 17B0 041E80 800A3130 */  .4byte D_unkmulti_8018D0C0
  /* 17B4 041E84 800A3134 */  .4byte D_ovl5_8018D580
  /* 17B8 041E88 800A3138 */  .4byte D_ovl5_8018D580
  /* 17BC 041E8C 800A313C */  .4byte D_unkmulti_8018D670
  /* 17C0 041E90 800A3140 */  .4byte D_unkmulti_8018D670
  /* 17C4 041E94 800A3144 */  .4byte D_unkmulti_8018D950

glabel D_800A3148
  .incbin "overlayloader.raw.bin", 0x17C8, 0x8
  /* 17D0 041EA0 800A3150 */  .4byte D_unkmulti_8018D0C0
  /* 17D4 041EA4 800A3154 */  .4byte D_unkmulti_8018D0C0
  /* 17D8 041EA8 800A3158 */  .4byte D_unkmulti_8018EEC0
  /* 17DC 041EAC 800A315C */  .4byte D_unkmulti_8018EEC0
  /* 17E0 041EB0 800A3160 */  .4byte D_ovl6_8018F1A0
  /* 17E4 041EB4 800A3164 */  .4byte D_ovl6_8018F1A0
  /* 17E8 041EB8 800A3168 */  .4byte D_unkmulti_8018F710

glabel D_800A316C
  .incbin "overlayloader.raw.bin", 0x17EC, 0x8
  /* 17F4 041EC4 800A3174 */  .4byte D_unkmulti_8018D0C0
  /* 17F8 041EC8 800A3178 */  .4byte D_unkmulti_8018D0C0
  /* 17FC 041ECC 800A317C */  .4byte D_unkmulti_80190770
  /* 1800 041ED0 800A3180 */  .4byte D_unkmulti_80190770
  /* 1804 041ED4 800A3184 */  .4byte D_unkmulti_80190960
  /* 1808 041ED8 800A3188 */  .4byte D_unkmulti_80190960
  /* 180C 041EDC 800A318C */  .4byte func_ovl65_80190FA0

glabel D_800A3190
  .incbin "overlayloader.raw.bin", 0x1810, 0x8
  /* 1818 041EE8 800A3198 */  .4byte func_ovl8_80371460
  /* 181C 041EEC 800A319C */  .4byte func_ovl8_80371460
  /* 1820 041EF0 800A31A0 */  .4byte D_ovl8_80387CA0
  /* 1824 041EF4 800A31A4 */  .4byte D_ovl8_80387CA0
  /* 1828 041EF8 800A31A8 */  .4byte D_ovl8_8038EE60
  /* 182C 041EFC 800A31AC */  .4byte D_ovl8_8038EE60
  /* 1830 041F00 800A31B0 */  .4byte func_ovl1_803903E0

glabel D_800A31B4
  .incbin "overlayloader.raw.bin", 0x1834, 0x8
  /* 183C 041F0C 800A31BC */  .4byte func_ovl9_80369240
  /* 1840 041F10 800A31C0 */  .4byte func_ovl9_80369240
  /* 1844 041F14 800A31C4 */  .4byte D_ovl9_80369F60
  /* 1848 041F18 800A31C8 */  .4byte D_ovl9_80369F60
  /* 184C 041F1C 800A31CC */  .4byte D_ovl9_8036A400
  /* 1850 041F20 800A31D0 */  .4byte D_ovl9_8036A400
  /* 1854 041F24 800A31D4 */  .4byte func_ovl8_80371460

glabel D_800A31D8
  .incbin "overlayloader.raw.bin", 0x1858, 0x8
  /* 1860 041F30 800A31E0 */  .4byte D_unkmulti_80131B00
  /* 1864 041F34 800A31E4 */  .4byte D_unkmulti_80131B00
  /* 1868 041F38 800A31E8 */  .4byte D_multiple_801341E0
  /* 186C 041F3C 800A31EC */  .4byte D_multiple_801341E0
  /* 1870 041F40 800A31F0 */  .4byte D_unkmulti_80134440
  /* 1874 041F44 800A31F4 */  .4byte D_unkmulti_80134440
  /* 1878 041F48 800A31F8 */  .4byte D_unkmulti_801345B0

glabel D_800A31FC
  .incbin "overlayloader.raw.bin", 0x187C, 0x8
  /* 1884 041F54 800A3204 */  .4byte D_unkmulti_800D6490
  /* 1888 041F58 800A3208 */  .4byte D_unkmulti_800D6490
  /* 188C 041F5C 800A320C */  .4byte D_ovl11_800D6700
  /* 1890 041F60 800A3210 */  .4byte D_ovl11_800D6700
  /* 1894 041F64 800A3214 */  .4byte D_unkmulti_800D67C0
  /* 1898 041F68 800A3218 */  .4byte D_unkmulti_800D67C0
  /* 189C 041F6C 800A321C */  .4byte D_unkmulti_800D6B30

glabel D_800A3220
  .incbin "overlayloader.raw.bin", 0x18A0, 0x8
  /* 18A8 041F78 800A3228 */  .4byte D_unkmulti_800D6490
  /* 18AC 041F7C 800A322C */  .4byte D_unkmulti_800D6490
  /* 18B0 041F80 800A3230 */  .4byte D_ovl12_800D6680
  /* 18B4 041F84 800A3234 */  .4byte D_ovl12_800D6680
  /* 18B8 041F88 800A3238 */  .4byte D_unkmulti_800D69E0
  /* 18BC 041F8C 800A323C */  .4byte D_unkmulti_800D69E0
  /* 18C0 041F90 800A3240 */  .4byte D_unkmulti_800D69F0

glabel D_800A3244
  .incbin "overlayloader.raw.bin", 0x18C4, 0x8
  /* 18CC 041F9C 800A324C */  .4byte D_unkmulti_80131B00
  /* 18D0 041FA0 800A3250 */  .4byte D_unkmulti_80131B00
  /* 18D4 041FA4 800A3254 */  .4byte D_ovl57_801321E0
  /* 18D8 041FA8 800A3258 */  .4byte D_ovl57_801321E0
  /* 18DC 041FAC 800A325C */  .4byte D_unkmulti_80133130
  /* 18E0 041FB0 800A3260 */  .4byte D_unkmulti_80133130
  /* 18E4 041FB4 800A3264 */  .4byte D_unkmulti_80133170

glabel D_800A3268
  .incbin "overlayloader.raw.bin", 0x18E8, 0x8
  /* 18F0 041FC0 800A3270 */  .4byte D_unkmulti_80131B00
  /* 18F4 041FC4 800A3274 */  .4byte D_unkmulti_80131B00
  /* 18F8 041FC8 800A3278 */  .4byte D_ovl14_80132690
  /* 18FC 041FCC 800A327C */  .4byte D_ovl14_80132690
  /* 1900 041FD0 800A3280 */  .4byte D_unkmulti_80132C20
  /* 1904 041FD4 800A3284 */  .4byte D_unkmulti_80132C20
  /* 1908 041FD8 800A3288 */  .4byte D_unkmulti_80133130

glabel D_800A328C
  .incbin "overlayloader.raw.bin", 0x190C, 0x8
  /* 1914 041FE4 800A3294 */  .4byte D_unkmulti_800D6490
  /* 1918 041FE8 800A3298 */  .4byte D_unkmulti_800D6490
  /* 191C 041FEC 800A329C */  .4byte D_ovl15_800D66E0
  /* 1920 041FF0 800A32A0 */  .4byte D_ovl15_800D66E0
  /* 1924 041FF4 800A32A4 */  .4byte D_unkmulti_800D69F0
  /* 1928 041FF8 800A32A8 */  .4byte D_unkmulti_800D69F0
  /* 192C 041FFC 800A32AC */  .4byte D_unkmulti_800D6A00

glabel D_800A32B0
  .incbin "overlayloader.raw.bin", 0x1930, 0x8
  /* 1938 042008 800A32B8 */  .4byte D_unkmulti_800D6490
  /* 193C 04200C 800A32BC */  .4byte D_unkmulti_800D6490
  /* 1940 042010 800A32C0 */  .4byte D_ovl16_800D7010
  /* 1944 042014 800A32C4 */  .4byte D_ovl16_800D7010
  /* 1948 042018 800A32C8 */  .4byte D_unkmulti_800D7110
  /* 194C 04201C 800A32CC */  .4byte D_unkmulti_800D7110
  /* 1950 042020 800A32D0 */  .4byte func_ovl2_800D7170

glabel D_800A32D4
  .incbin "overlayloader.raw.bin", 0x1954, 0x8
  /* 195C 04202C 800A32DC */  .4byte D_unkmulti_80131B00
  /* 1960 042030 800A32E0 */  .4byte D_unkmulti_80131B00
  /* 1964 042034 800A32E4 */  .4byte D_ovl17_80132B90
  /* 1968 042038 800A32E8 */  .4byte D_ovl17_80132B90
  /* 196C 04203C 800A32EC */  .4byte D_unkmulti_80132C80
  /* 1970 042040 800A32F0 */  .4byte D_unkmulti_80132C80
  /* 1974 042044 800A32F4 */  .4byte D_ovl49_80132D70

glabel D_800A32F8
  .incbin "overlayloader.raw.bin", 0x1978, 0x8
  /* 1980 042050 800A3300 */  .4byte D_unkmulti_80131B00
  /* 1984 042054 800A3304 */  .4byte D_unkmulti_80131B00
  /* 1988 042058 800A3308 */  .4byte D_multiple_80133080
  /* 198C 04205C 800A330C */  .4byte D_multiple_80133080
  /* 1990 042060 800A3310 */  .4byte D_ovl18_801331A0
  /* 1994 042064 800A3314 */  .4byte D_ovl18_801331A0
  /* 1998 042068 800A3318 */  .4byte D_unkmulti_801332A0

glabel D_800A331C
  .incbin "overlayloader.raw.bin", 0x199C, 0x8
  /* 19A4 042074 800A3324 */  .4byte D_unkmulti_80131B00
  /* 19A8 042078 800A3328 */  .4byte D_unkmulti_80131B00
  /* 19AC 04207C 800A332C */  .4byte D_ovl19_801347B0
  /* 19B0 042080 800A3330 */  .4byte D_ovl19_801347B0
  /* 19B4 042084 800A3334 */  .4byte D_ovl19_80134930
  /* 19B8 042088 800A3338 */  .4byte D_ovl19_80134930
  /* 19BC 04208C 800A333C */  .4byte D_ovl30_80134A50

glabel D_800A3340
  .incbin "overlayloader.raw.bin", 0x19C0, 0x8
  /* 19C8 042098 800A3348 */  .4byte D_unkmulti_80131B00
  /* 19CC 04209C 800A334C */  .4byte D_unkmulti_80131B00
  /* 19D0 0420A0 800A3350 */  .4byte D_ovl20_801346C0
  /* 19D4 0420A4 800A3354 */  .4byte D_ovl20_801346C0
  /* 19D8 0420A8 800A3358 */  .4byte D_ovl20_801348C0
  /* 19DC 0420AC 800A335C */  .4byte D_ovl20_801348C0
  /* 19E0 0420B0 800A3360 */  .4byte D_unkmulti_801349E0

glabel D_800A3364
  .incbin "overlayloader.raw.bin", 0x19E4, 0x8
  /* 19EC 0420BC 800A336C */  .4byte D_unkmulti_80131B00
  /* 19F0 0420C0 800A3370 */  .4byte D_unkmulti_80131B00
  /* 19F4 0420C4 800A3374 */  .4byte D_unkmulti_80133210
  /* 19F8 0420C8 800A3378 */  .4byte D_unkmulti_80133210
  /* 19FC 0420CC 800A337C */  .4byte D_unkmulti_801333D0
  /* 1A00 0420D0 800A3380 */  .4byte D_unkmulti_801333D0
  /* 1A04 0420D4 800A3384 */  .4byte D_unkmulti_80133540

glabel D_800A3388
  .incbin "overlayloader.raw.bin", 0x1A08, 0x8
  /* 1A10 0420E0 800A3390 */  .4byte D_unkmulti_80131B00
  /* 1A14 0420E4 800A3394 */  .4byte D_unkmulti_80131B00
  /* 1A18 0420E8 800A3398 */  .4byte D_ovl22_80132500
  /* 1A1C 0420EC 800A339C */  .4byte D_ovl22_80132500
  /* 1A20 0420F0 800A33A0 */  .4byte D_ovl44_80132650
  /* 1A24 0420F4 800A33A4 */  .4byte D_ovl44_80132650
  /* 1A28 0420F8 800A33A8 */  .4byte D_unkmulti_80132990

glabel D_800A33AC
  .incbin "overlayloader.raw.bin", 0x1A2C, 0x8
  /* 1A34 042104 800A33B4 */  .4byte D_unkmulti_80131B00
  /* 1A38 042108 800A33B8 */  .4byte D_unkmulti_80131B00
  /* 1A3C 04210C 800A33BC */  .4byte D_ovl23_80132370
  /* 1A40 042110 800A33C0 */  .4byte D_ovl23_80132370
  /* 1A44 042114 800A33C4 */  .4byte D_unkmulti_80132480
  /* 1A48 042118 800A33C8 */  .4byte D_unkmulti_80132480
  /* 1A4C 04211C 800A33CC */  .4byte D_unkmulti_80132800

glabel D_800A33D0
  .incbin "overlayloader.raw.bin", 0x1A50, 0x8
  /* 1A58 042128 800A33D8 */  .4byte D_unkmulti_80131B00
  /* 1A5C 04212C 800A33DC */  .4byte D_unkmulti_80131B00
  /* 1A60 042130 800A33E0 */  .4byte D_ovl24_80134DF0
  /* 1A64 042134 800A33E4 */  .4byte D_ovl24_80134DF0
  /* 1A68 042138 800A33E8 */  .4byte D_unkmulti_80135C20
  /* 1A6C 04213C 800A33EC */  .4byte D_unkmulti_80135C20
  /* 1A70 042140 800A33F0 */  .4byte D_unkmulti_80136070

glabel D_800A33F4
  .incbin "overlayloader.raw.bin", 0x1A74, 0x8
  /* 1A7C 04214C 800A33FC */  .4byte D_unkmulti_80131B00
  /* 1A80 042150 800A3400 */  .4byte D_unkmulti_80131B00
  /* 1A84 042154 800A3404 */  .4byte D_ovl25_80132830
  /* 1A88 042158 800A3408 */  .4byte D_ovl25_80132830
  /* 1A8C 04215C 800A340C */  .4byte D_unkmulti_80132920
  /* 1A90 042160 800A3410 */  .4byte D_unkmulti_80132920
  /* 1A94 042164 800A3414 */  .4byte D_multiple_80132A40

glabel D_800A3418
  .incbin "overlayloader.raw.bin", 0x1A98, 0x8
  /* 1AA0 042170 800A3420 */  .4byte D_unkmulti_80131B00
  /* 1AA4 042174 800A3424 */  .4byte D_unkmulti_80131B00
  /* 1AA8 042178 800A3428 */  .4byte D_ovl26_8013B3A0
  /* 1AAC 04217C 800A342C */  .4byte D_ovl26_8013B3A0
  /* 1AB0 042180 800A3430 */  .4byte D_unkmulti_8013BA80
  /* 1AB4 042184 800A3434 */  .4byte D_unkmulti_8013BA80
  /* 1AB8 042188 800A3438 */  .4byte func_ovl3_8013C4C0

glabel D_800A343C
  .incbin "overlayloader.raw.bin", 0x1ABC, 0x8
  /* 1AC4 042194 800A3444 */  .4byte D_unkmulti_80131B00
  /* 1AC8 042198 800A3448 */  .4byte D_unkmulti_80131B00
  /* 1ACC 04219C 800A344C */  .4byte D_unkmulti_801385B0
  /* 1AD0 0421A0 800A3450 */  .4byte D_unkmulti_801385B0
  /* 1AD4 0421A4 800A3454 */  .4byte D_unkmulti_80138EE0
  /* 1AD8 0421A8 800A3458 */  .4byte D_unkmulti_80138EE0
  /* 1ADC 0421AC 800A345C */  .4byte D_unkmulti_801396D0

glabel D_800A3460
  .incbin "overlayloader.raw.bin", 0x1AE0, 0x8
  /* 1AE8 0421B8 800A3468 */  .4byte D_unkmulti_80131B00
  /* 1AEC 0421BC 800A346C */  .4byte D_unkmulti_80131B00
  /* 1AF0 0421C0 800A3470 */  .4byte D_ovl28_80137F60
  /* 1AF4 0421C4 800A3474 */  .4byte D_ovl28_80137F60
  /* 1AF8 0421C8 800A3478 */  .4byte D_unkmulti_80138550
  /* 1AFC 0421CC 800A347C */  .4byte D_unkmulti_80138550
  /* 1B00 0421D0 800A3480 */  .4byte D_unkmulti_80138CC0

glabel D_800A3484
  .incbin "overlayloader.raw.bin", 0x1B04, 0x8
  /* 1B0C 0421DC 800A348C */  .4byte D_unkmulti_80131B00
  /* 1B10 0421E0 800A3490 */  .4byte D_unkmulti_80131B00
  /* 1B14 0421E4 800A3494 */  .4byte D_ovl29_80136F50
  /* 1B18 0421E8 800A3498 */  .4byte D_ovl29_80136F50
  /* 1B1C 0421EC 800A349C */  .4byte D_unkmulti_80137640
  /* 1B20 0421F0 800A34A0 */  .4byte D_unkmulti_80137640
  /* 1B24 0421F4 800A34A4 */  .4byte D_unkmulti_80137E30

glabel D_800A34A8
  .incbin "overlayloader.raw.bin", 0x1B28, 0x8
  /* 1B30 042200 800A34B0 */  .4byte D_unkmulti_80131B00
  /* 1B34 042204 800A34B4 */  .4byte D_unkmulti_80131B00
  /* 1B38 042208 800A34B8 */  .4byte D_ovl30_801344D0
  /* 1B3C 04220C 800A34BC */  .4byte D_ovl30_801344D0
  /* 1B40 042210 800A34C0 */  .4byte D_ovl34_80134BD0
  /* 1B44 042214 800A34C4 */  .4byte D_ovl34_80134BD0
  /* 1B48 042218 800A34C8 */  .4byte D_ovl33_80134E30

glabel D_800A34CC
  .incbin "overlayloader.raw.bin", 0x1B4C, 0x8
  /* 1B54 042224 800A34D4 */  .4byte D_unkmulti_80131B00
  /* 1B58 042228 800A34D8 */  .4byte D_unkmulti_80131B00
  /* 1B5C 04222C 800A34DC */  .4byte D_multiple_80138EF0
  /* 1B60 042230 800A34E0 */  .4byte D_multiple_80138EF0
  /* 1B64 042234 800A34E4 */  .4byte D_unkmulti_801398A0
  /* 1B68 042238 800A34E8 */  .4byte D_unkmulti_801398A0
  /* 1B6C 04223C 800A34EC */  .4byte D_unkmulti_8013A070

glabel D_800A34F0
  .incbin "overlayloader.raw.bin", 0x1B70, 0x8
  /* 1B78 042248 800A34F8 */  .4byte D_unkmulti_80131B00
  /* 1B7C 04224C 800A34FC */  .4byte D_unkmulti_80131B00
  /* 1B80 042250 800A3500 */  .4byte D_ovl32_80136630
  /* 1B84 042254 800A3504 */  .4byte D_ovl32_80136630
  /* 1B88 042258 800A3508 */  .4byte D_unkmulti_80136C10
  /* 1B8C 04225C 800A350C */  .4byte D_unkmulti_80136C10
  /* 1B90 042260 800A3510 */  .4byte D_unkmulti_80136DA0

glabel D_800A3514
  .incbin "overlayloader.raw.bin", 0x1B94, 0x8
  /* 1B9C 04226C 800A351C */  .4byte D_unkmulti_80131B00
  /* 1BA0 042270 800A3520 */  .4byte D_unkmulti_80131B00
  /* 1BA4 042274 800A3524 */  .4byte D_ovl33_801340B0
  /* 1BA8 042278 800A3528 */  .4byte D_ovl33_801340B0
  /* 1BAC 04227C 800A352C */  .4byte D_unkmulti_801365F0
  /* 1BB0 042280 800A3530 */  .4byte D_unkmulti_801365F0
  /* 1BB4 042284 800A3534 */  .4byte D_ovl32_80136A90

glabel D_800A3538
  .incbin "overlayloader.raw.bin", 0x1BB8, 0x8
  /* 1BC0 042290 800A3540 */  .4byte D_unkmulti_80131B00
  /* 1BC4 042294 800A3544 */  .4byte D_unkmulti_80131B00
  /* 1BC8 042298 800A3548 */  .4byte D_multiple_80134A20
  /* 1BCC 04229C 800A354C */  .4byte D_multiple_80134A20
  /* 1BD0 0422A0 800A3550 */  .4byte D_unkmulti_80134CD0
  /* 1BD4 0422A4 800A3554 */  .4byte D_unkmulti_80134CD0
  /* 1BD8 0422A8 800A3558 */  .4byte D_unkmulti_801350D0

glabel D_800A355C
  .incbin "overlayloader.raw.bin", 0x1BDC, 0x8
  /* 1BE4 0422B4 800A3564 */  .4byte D_unkmulti_80131B00
  /* 1BE8 0422B8 800A3568 */  .4byte D_unkmulti_80131B00
  /* 1BEC 0422BC 800A356C */  .4byte D_ovl35_801328A0
  /* 1BF0 0422C0 800A3570 */  .4byte D_ovl35_801328A0
  /* 1BF4 0422C4 800A3574 */  .4byte D_multiple_801329E0
  /* 1BF8 0422C8 800A3578 */  .4byte D_multiple_801329E0
  /* 1BFC 0422CC 800A357C */  .4byte D_ovl14_80132BC0

glabel D_800A3580
  .incbin "overlayloader.raw.bin", 0x1C00, 0x8
  /* 1C08 0422D8 800A3588 */  .4byte D_unkmulti_8018D0C0
  /* 1C0C 0422DC 800A358C */  .4byte D_unkmulti_8018D0C0
  /* 1C10 0422E0 800A3590 */  .4byte D_multiple_8018E090
  /* 1C14 0422E4 800A3594 */  .4byte D_multiple_8018E090
  /* 1C18 0422E8 800A3598 */  .4byte D_multiple_8018E200
  /* 1C1C 0422EC 800A359C */  .4byte D_multiple_8018E200
  /* 1C20 0422F0 800A35A0 */  .4byte D_unkmulti_8018E620

glabel D_800A35A4
  .incbin "overlayloader.raw.bin", 0x1C24, 0x8
  /* 1C2C 0422FC 800A35AC */  .4byte D_unkmulti_8018D0C0
  /* 1C30 042300 800A35B0 */  .4byte D_unkmulti_8018D0C0
  /* 1C34 042304 800A35B4 */  .4byte D_multiple_8018E070
  /* 1C38 042308 800A35B8 */  .4byte D_multiple_8018E070
  /* 1C3C 04230C 800A35BC */  .4byte D_ovl39_8018E1C0
  /* 1C40 042310 800A35C0 */  .4byte D_ovl39_8018E1C0
  /* 1C44 042314 800A35C4 */  .4byte D_unkmulti_8018E5E0

glabel D_800A35C8
  .incbin "overlayloader.raw.bin", 0x1C48, 0x8
  /* 1C50 042320 800A35D0 */  .4byte D_unkmulti_8018D0C0
  /* 1C54 042324 800A35D4 */  .4byte D_unkmulti_8018D0C0
  /* 1C58 042328 800A35D8 */  .4byte D_ovl38_8018E120
  /* 1C5C 04232C 800A35DC */  .4byte D_ovl38_8018E120
  /* 1C60 042330 800A35E0 */  .4byte D_unkmulti_8018E270
  /* 1C64 042334 800A35E4 */  .4byte D_unkmulti_8018E270
  /* 1C68 042338 800A35E8 */  .4byte D_unkmulti_8018E690

glabel D_800A35EC
  .incbin "overlayloader.raw.bin", 0x1C6C, 0x8
  /* 1C74 042344 800A35F4 */  .4byte D_unkmulti_8018D0C0
  /* 1C78 042348 800A35F8 */  .4byte D_unkmulti_8018D0C0
  /* 1C7C 04234C 800A35FC */  .4byte D_multiple_8018E090
  /* 1C80 042350 800A3600 */  .4byte D_multiple_8018E090
  /* 1C84 042354 800A3604 */  .4byte D_multiple_8018E1F0
  /* 1C88 042358 800A3608 */  .4byte D_multiple_8018E1F0
  /* 1C8C 04235C 800A360C */  .4byte D_unkmulti_8018E610

glabel D_800A3610
  .incbin "overlayloader.raw.bin", 0x1C90, 0x8
  /* 1C98 042368 800A3618 */  .4byte D_unkmulti_8018D0C0
  /* 1C9C 04236C 800A361C */  .4byte D_unkmulti_8018D0C0
  /* 1CA0 042370 800A3620 */  .4byte D_multiple_8018E070
  /* 1CA4 042374 800A3624 */  .4byte D_multiple_8018E070
  /* 1CA8 042378 800A3628 */  .4byte D_ovl39_8018E1C0
  /* 1CAC 04237C 800A362C */  .4byte D_ovl39_8018E1C0
  /* 1CB0 042380 800A3630 */  .4byte D_unkmulti_8018E5E0

glabel D_800A3634
  .incbin "overlayloader.raw.bin", 0x1CB4, 0x8
  /* 1CBC 04238C 800A363C */  .4byte D_unkmulti_8018D0C0
  /* 1CC0 042390 800A3640 */  .4byte D_unkmulti_8018D0C0
  /* 1CC4 042394 800A3644 */  .4byte D_multiple_8018E0C0
  /* 1CC8 042398 800A3648 */  .4byte D_multiple_8018E0C0
  /* 1CCC 04239C 800A364C */  .4byte D_ovl36_8018E220
  /* 1CD0 0423A0 800A3650 */  .4byte D_ovl36_8018E220
  /* 1CD4 0423A4 800A3654 */  .4byte D_unkmulti_8018E640

glabel D_800A3658
  .incbin "overlayloader.raw.bin", 0x1CD8, 0x8
  /* 1CE0 0423B0 800A3660 */  .4byte D_unkmulti_8018D0C0
  /* 1CE4 0423B4 800A3664 */  .4byte D_unkmulti_8018D0C0
  /* 1CE8 0423B8 800A3668 */  .4byte D_multiple_8018E0C0
  /* 1CEC 0423BC 800A366C */  .4byte D_multiple_8018E0C0
  /* 1CF0 0423C0 800A3670 */  .4byte D_ovl36_8018E220
  /* 1CF4 0423C4 800A3674 */  .4byte D_ovl36_8018E220
  /* 1CF8 0423C8 800A3678 */  .4byte D_unkmulti_8018E640

glabel D_800A367C
  .incbin "overlayloader.raw.bin", 0x1CFC, 0x8
  /* 1D04 0423D4 800A3684 */  .4byte D_unkmulti_8018D0C0
  /* 1D08 0423D8 800A3688 */  .4byte D_unkmulti_8018D0C0
  /* 1D0C 0423DC 800A368C */  .4byte D_multiple_8018E0B0
  /* 1D10 0423E0 800A3690 */  .4byte D_multiple_8018E0B0
  /* 1D14 0423E4 800A3694 */  .4byte D_ovl36_8018E220
  /* 1D18 0423E8 800A3698 */  .4byte D_ovl36_8018E220
  /* 1D1C 0423EC 800A369C */  .4byte D_unkmulti_8018E640

glabel D_800A36A0
  .incbin "overlayloader.raw.bin", 0x1D20, 0x8
  /* 1D28 0423F8 800A36A8 */  .4byte D_unkmulti_80131B00
  /* 1D2C 0423FC 800A36AC */  .4byte D_unkmulti_80131B00
  /* 1D30 042400 800A36B0 */  .4byte D_ovl44_801325D0
  /* 1D34 042404 800A36B4 */  .4byte D_ovl44_801325D0
  /* 1D38 042408 800A36B8 */  .4byte D_unkmulti_80132710
  /* 1D3C 04240C 800A36BC */  .4byte D_unkmulti_80132710
  /* 1D40 042410 800A36C0 */  .4byte D_unkmulti_80132AB0

glabel D_800A36C4
  .incbin "overlayloader.raw.bin", 0x1D44, 0x8
  /* 1D4C 04241C 800A36CC */  .4byte D_unkmulti_80131B00
  /* 1D50 042420 800A36D0 */  .4byte D_unkmulti_80131B00
  /* 1D54 042424 800A36D4 */  .4byte D_ovl45_80132330
  /* 1D58 042428 800A36D8 */  .4byte D_ovl45_80132330
  /* 1D5C 04242C 800A36DC */  .4byte D_unkmulti_80132420
  /* 1D60 042430 800A36E0 */  .4byte D_unkmulti_80132420
  /* 1D64 042434 800A36E4 */  .4byte D_unkmulti_80132600

glabel D_800A36E8
  .incbin "overlayloader.raw.bin", 0x1D68, 0x8
  /* 1D70 042440 800A36F0 */  .4byte D_unkmulti_80131B00
  /* 1D74 042444 800A36F4 */  .4byte D_unkmulti_80131B00
  /* 1D78 042448 800A36F8 */  .4byte D_ovl46_801326D0
  /* 1D7C 04244C 800A36FC */  .4byte D_ovl46_801326D0
  /* 1D80 042450 800A3700 */  .4byte D_unkmulti_801327C0
  /* 1D84 042454 800A3704 */  .4byte D_unkmulti_801327C0
  /* 1D88 042458 800A3708 */  .4byte D_unkmulti_801329A0

glabel D_800A370C
  .incbin "overlayloader.raw.bin", 0x1D8C, 0x8
  /* 1D94 042464 800A3714 */  .4byte D_unkmulti_80131B00
  /* 1D98 042468 800A3718 */  .4byte D_unkmulti_80131B00
  /* 1D9C 04246C 800A371C */  .4byte D_multiple_801328D0
  /* 1DA0 042470 800A3720 */  .4byte D_multiple_801328D0
  /* 1DA4 042474 800A3724 */  .4byte D_unkmulti_801329C0
  /* 1DA8 042478 800A3728 */  .4byte D_unkmulti_801329C0
  /* 1DAC 04247C 800A372C */  .4byte D_multiple_80132BA0

glabel D_800A3730
  .incbin "overlayloader.raw.bin", 0x1DB0, 0x8
  /* 1DB8 042488 800A3738 */  .4byte D_unkmulti_80131B00
  /* 1DBC 04248C 800A373C */  .4byte D_unkmulti_80131B00
  /* 1DC0 042490 800A3740 */  .4byte D_ovl48_801323A0
  /* 1DC4 042494 800A3744 */  .4byte D_ovl48_801323A0
  /* 1DC8 042498 800A3748 */  .4byte D_unkmulti_80132480
  /* 1DCC 04249C 800A374C */  .4byte D_unkmulti_80132480
  /* 1DD0 0424A0 800A3750 */  .4byte D_ovl22_80132660

glabel D_800A3754
  .incbin "overlayloader.raw.bin", 0x1DD4, 0x8
  /* 1DDC 0424AC 800A375C */  .4byte D_unkmulti_80131B00
  /* 1DE0 0424B0 800A3760 */  .4byte D_unkmulti_80131B00
  /* 1DE4 0424B4 800A3764 */  .4byte D_multiple_801328D0
  /* 1DE8 0424B8 800A3768 */  .4byte D_multiple_801328D0
  /* 1DEC 0424BC 800A376C */  .4byte D_ovl47_801329D0
  /* 1DF0 0424C0 800A3770 */  .4byte D_ovl47_801329D0
  /* 1DF4 0424C4 800A3774 */  .4byte D_unkmulti_80132D80

glabel D_800A3778
  .incbin "overlayloader.raw.bin", 0x1DF8, 0x8
  /* 1E00 0424D0 800A3780 */  .4byte D_unkmulti_80131B00
  /* 1E04 0424D4 800A3784 */  .4byte D_unkmulti_80131B00
  /* 1E08 0424D8 800A3788 */  .4byte D_ovl50_801328F0
  /* 1E0C 0424DC 800A378C */  .4byte D_ovl50_801328F0
  /* 1E10 0424E0 800A3790 */  .4byte D_multiple_80132A10
  /* 1E14 0424E4 800A3794 */  .4byte D_multiple_80132A10
  /* 1E18 0424E8 800A3798 */  .4byte D_unkmulti_80132C10

glabel D_800A379C
  .incbin "overlayloader.raw.bin", 0x1E1C, 0x8
  /* 1E24 0424F4 800A37A4 */  .4byte D_unkmulti_8018D0C0
  /* 1E28 0424F8 800A37A8 */  .4byte D_unkmulti_8018D0C0
  /* 1E2C 0424FC 800A37AC */  .4byte D_ovl51_8018D870
  /* 1E30 042500 800A37B0 */  .4byte D_ovl51_8018D870
  /* 1E34 042504 800A37B4 */  .4byte D_unkmulti_8018DA40
  /* 1E38 042508 800A37B8 */  .4byte D_unkmulti_8018DA40
  /* 1E3C 04250C 800A37BC */  .4byte D_unkmulti_8018DE60

glabel D_800A37C0
  .incbin "overlayloader.raw.bin", 0x1E40, 0x8
  /* 1E48 042518 800A37C8 */  .4byte D_unkmulti_80131B00
  /* 1E4C 04251C 800A37CC */  .4byte D_unkmulti_80131B00
  /* 1E50 042520 800A37D0 */  .4byte D_ovl52_80132640
  /* 1E54 042524 800A37D4 */  .4byte D_ovl52_80132640
  /* 1E58 042528 800A37D8 */  .4byte D_ovl44_80132740
  /* 1E5C 04252C 800A37DC */  .4byte D_ovl44_80132740
  /* 1E60 042530 800A37E0 */  .4byte D_unkmulti_80132920

glabel D_800A37E4
  .incbin "overlayloader.raw.bin", 0x1E64, 0x8
  /* 1E6C 04253C 800A37EC */  .4byte D_unkmulti_80131B00
  /* 1E70 042540 800A37F0 */  .4byte D_unkmulti_80131B00
  /* 1E74 042544 800A37F4 */  .4byte D_ovl53_80132E80
  /* 1E78 042548 800A37F8 */  .4byte D_ovl53_80132E80
  /* 1E7C 04254C 800A37FC */  .4byte D_multiple_801330A0
  /* 1E80 042550 800A3800 */  .4byte D_multiple_801330A0
  /* 1E84 042554 800A3804 */  .4byte D_ovl18_801331C0

glabel D_800A3808
  .incbin "overlayloader.raw.bin", 0x1E88, 0x8
  /* 1E90 042560 800A3810 */  .4byte D_unkmulti_80131B00
  /* 1E94 042564 800A3814 */  .4byte D_unkmulti_80131B00
  /* 1E98 042568 800A3818 */  .4byte D_multiple_80132AD0
  /* 1E9C 04256C 800A381C */  .4byte D_multiple_80132AD0
  /* 1EA0 042570 800A3820 */  .4byte D_ovl14_80132BC0
  /* 1EA4 042574 800A3824 */  .4byte D_ovl14_80132BC0
  /* 1EA8 042578 800A3828 */  .4byte D_ovl61_80132F80

glabel D_800A382C
  .incbin "overlayloader.raw.bin", 0x1EAC, 0x8
  /* 1EB4 042584 800A3834 */  .4byte D_unkmulti_80131B00
  /* 1EB8 042588 800A3838 */  .4byte D_unkmulti_80131B00
  /* 1EBC 04258C 800A383C */  .4byte D_ovl55_80134160
  /* 1EC0 042590 800A3840 */  .4byte D_ovl55_80134160
  /* 1EC4 042594 800A3844 */  .4byte D_multiple_801342F0
  /* 1EC8 042598 800A3848 */  .4byte D_multiple_801342F0
  /* 1ECC 04259C 800A384C */  .4byte D_unkmulti_80134540

glabel D_800A3850
  .incbin "overlayloader.raw.bin", 0x1ED0, 0x8
  /* 1ED8 0425A8 800A3858 */  .4byte D_unkmulti_80131B00
  /* 1EDC 0425AC 800A385C */  .4byte D_unkmulti_80131B00
  /* 1EE0 0425B0 800A3860 */  .4byte D_ovl56_80134EE0
  /* 1EE4 0425B4 800A3864 */  .4byte D_ovl56_80134EE0
  /* 1EE8 0425B8 800A3868 */  .4byte D_unkmulti_801352C0
  /* 1EEC 0425BC 800A386C */  .4byte D_unkmulti_801352C0
  /* 1EF0 0425C0 800A3870 */  .4byte D_unkmulti_801355B0

glabel D_800A3874
  .incbin "overlayloader.raw.bin", 0x1EF4, 0x8
  /* 1EFC 0425CC 800A387C */  .4byte D_unkmulti_80131B00
  /* 1F00 0425D0 800A3880 */  .4byte D_unkmulti_80131B00
  /* 1F04 0425D4 800A3884 */  .4byte D_ovl57_80132100
  /* 1F08 0425D8 800A3888 */  .4byte D_ovl57_80132100
  /* 1F0C 0425DC 800A388C */  .4byte D_unkmulti_801322B0
  /* 1F10 0425E0 800A3890 */  .4byte D_unkmulti_801322B0
  /* 1F14 0425E4 800A3894 */  .4byte D_unkmulti_80132300

glabel D_800A3898
  .incbin "overlayloader.raw.bin", 0x1F18, 0x8
  /* 1F20 0425F0 800A38A0 */  .4byte D_unkmulti_80131B00
  /* 1F24 0425F4 800A38A4 */  .4byte D_unkmulti_80131B00
  /* 1F28 0425F8 800A38A8 */  .4byte D_ovl58_80131F50
  /* 1F2C 0425FC 800A38AC */  .4byte D_ovl58_80131F50
  /* 1F30 042600 800A38B0 */  .4byte D_unkmulti_80132040
  /* 1F34 042604 800A38B4 */  .4byte D_unkmulti_80132040
  /* 1F38 042608 800A38B8 */  .4byte D_unkmulti_80132080

glabel D_800A38BC
  .incbin "overlayloader.raw.bin", 0x1F3C, 0x8
  /* 1F44 042614 800A38C4 */  .4byte D_unkmulti_80131B00
  /* 1F48 042618 800A38C8 */  .4byte D_unkmulti_80131B00
  /* 1F4C 04261C 800A38CC */  .4byte D_ovl59_80135260
  /* 1F50 042620 800A38D0 */  .4byte D_ovl59_80135260
  /* 1F54 042624 800A38D4 */  .4byte D_unkmulti_8013A7D0
  /* 1F58 042628 800A38D8 */  .4byte D_unkmulti_8013A7D0
  /* 1F5C 04262C 800A38DC */  .4byte D_unkmulti_8013AA60

glabel D_800A38E0
  .incbin "overlayloader.raw.bin", 0x1F60, 0x8
  /* 1F68 042638 800A38E8 */  .4byte D_unkmulti_80131B00
  /* 1F6C 04263C 800A38EC */  .4byte D_unkmulti_80131B00
  /* 1F70 042640 800A38F0 */  .4byte D_ovl60_80133620
  /* 1F74 042644 800A38F4 */  .4byte D_ovl60_80133620
  /* 1F78 042648 800A38F8 */  .4byte D_ovl60_801337A0
  /* 1F7C 04264C 800A38FC */  .4byte D_ovl60_801337A0
  /* 1F80 042650 800A3900 */  .4byte D_unkmulti_801338C0

glabel D_800A3904
  .incbin "overlayloader.raw.bin", 0x1F84, 0x8
  /* 1F8C 04265C 800A390C */  .4byte D_unkmulti_80131B00
  /* 1F90 042660 800A3910 */  .4byte D_unkmulti_80131B00
  /* 1F94 042664 800A3914 */  .4byte D_ovl61_80132F20
  /* 1F98 042668 800A3918 */  .4byte D_ovl61_80132F20
  /* 1F9C 04266C 800A391C */  .4byte D_ovl61_80133060
  /* 1FA0 042670 800A3920 */  .4byte D_ovl61_80133060
  /* 1FA4 042674 800A3924 */  .4byte D_unkmulti_80133170

glabel D_800A3928
  .incbin "overlayloader.raw.bin", 0x1FA8, 0x8
  /* 1FB0 042680 800A3930 */  .4byte D_unkmulti_80131B00
  /* 1FB4 042684 800A3934 */  .4byte D_unkmulti_80131B00
  /* 1FB8 042688 800A3938 */  .4byte D_ovl62_801339E0
  /* 1FBC 04268C 800A393C */  .4byte D_ovl62_801339E0
  /* 1FC0 042690 800A3940 */  .4byte D_ovl55_80134300
  /* 1FC4 042694 800A3944 */  .4byte D_ovl55_80134300
  /* 1FC8 042698 800A3948 */  .4byte D_ovl10_80134480

glabel D_800A394C
  .incbin "overlayloader.raw.bin", 0x1FCC, 0x8
  /* 1FD4 0426A4 800A3954 */  .4byte D_unkmulti_8018D0C0
  /* 1FD8 0426A8 800A3958 */  .4byte D_unkmulti_8018D0C0
  /* 1FDC 0426AC 800A395C */  .4byte D_ovl63_8018E6E0
  /* 1FE0 0426B0 800A3960 */  .4byte D_ovl63_8018E6E0
  /* 1FE4 0426B4 800A3964 */  .4byte D_ovl63_8018E7F0
  /* 1FE8 0426B8 800A3968 */  .4byte D_ovl63_8018E7F0
  /* 1FEC 0426BC 800A396C */  .4byte D_unkmulti_8018EC00

glabel D_800A3970
  .incbin "overlayloader.raw.bin", 0x1FF0, 0x8
  /* 1FF8 0426C8 800A3978 */  .4byte D_unkmulti_8018D0C0
  /* 1FFC 0426CC 800A397C */  .4byte D_unkmulti_8018D0C0
  /* 2000 0426D0 800A3980 */  .4byte D_unkmulti_8018E160
  /* 2004 0426D4 800A3984 */  .4byte D_unkmulti_8018E160
  /* 2008 0426D8 800A3988 */  .4byte D_ovl64_8018E2F0
  /* 200C 0426DC 800A398C */  .4byte D_ovl64_8018E2F0
  /* 2010 0426E0 800A3990 */  .4byte D_unkmulti_8018E860

glabel D_800A3994
  .incbin "overlayloader.raw.bin", 0x2014, 0x5C

glabel D_800A39F0
  .incbin "overlayloader.raw.bin", 0x2070, 0x5C

glabel D_800A3A4C
  .incbin "overlayloader.raw.bin", 0x20CC, 0x5C

glabel D_800A3AA8
  .incbin "overlayloader.raw.bin", 0x2128, 0x6C

glabel D_800A3B14
  .incbin "overlayloader.raw.bin", 0x2194, 0x2D6

glabel D_800A3DEA
  .incbin "overlayloader.raw.bin", 0x246A, 0x10E

glabel D_800A3EF8
  .incbin "overlayloader.raw.bin", 0x2578, 0x7C

glabel D_800A3F74
  .incbin "overlayloader.raw.bin", 0x25F4, 0xC

glabel D_800A3F80
  .incbin "overlayloader.raw.bin", 0x2600, 0x41

glabel D_800A3FC1
  .incbin "overlayloader.raw.bin", 0x2641, 0x1

glabel D_800A3FC2
  .incbin "overlayloader.raw.bin", 0x2642, 0x1

glabel D_800A3FC3
  .incbin "overlayloader.raw.bin", 0x2643, 0x5

glabel D_800A3FC8
  .incbin "overlayloader.raw.bin", 0x2648, 0x1F8

glabel D_800A41C0
  /* 2840 042F10 800A41C0 */
  .asciz "Mar 16 1999 18:26:57"
  .balign 4
  .incbin "overlayloader.raw.bin", 0x2858, 0x8

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
  /* 29C4 043094 800A4344 */
  .asciz "\n"
  .balign 4
  /* 29C8 043098 800A4348 */
  .asciz "\n"
  .balign 4

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

glabel jtbl_800A43BC
  /* 2A3C 04310C 800A43BC */  .4byte jtgt_800A1C68
  /* 2A40 043110 800A43C0 */  .4byte jtgt_800A1C88
  /* 2A44 043114 800A43C4 */  .4byte jtgt_800A1CC8
  /* 2A48 043118 800A43C8 */  .4byte jtgt_800A1D00
  /* 2A4C 04311C 800A43CC */  .4byte jtgt_800A1D40
  /* 2A50 043120 800A43D0 */  .4byte jtgt_800A1D88
  /* 2A54 043124 800A43D4 */  .4byte jtgt_800A1DA8
  /* 2A58 043128 800A43D8 */  .4byte jtgt_800A1DC8
  /* 2A5C 04312C 800A43DC */  .4byte jtgt_800A1DF0
  /* 2A60 043130 800A43E0 */  .4byte jtgt_800A1E68
  /* 2A64 043134 800A43E4 */  .4byte jtgt_800A1E90
  /* 2A68 043138 800A43E8 */  .4byte jtgt_800A1EB8
  /* 2A6C 04313C 800A43EC */  .4byte jtgt_800A1EE0
  /* 2A70 043140 800A43F0 */  .4byte jtgt_800A1F10
  /* 2A74 043144 800A43F4 */  .4byte jtgt_800A1F40
  /* 2A78 043148 800A43F8 */  .4byte jtgt_800A1F70
  /* 2A7C 04314C 800A43FC */  .4byte jtgt_800A1FA0
  /* 2A80 043150 800A4400 */  .4byte jtgt_800A23FC
  /* 2A84 043154 800A4404 */  .4byte jtgt_800A242C
  /* 2A88 043158 800A4408 */  .4byte jtgt_800A245C
  /* 2A8C 04315C 800A440C */  .4byte jtgt_800A248C
  /* 2A90 043160 800A4410 */  .4byte jtgt_800A1FD0
  /* 2A94 043164 800A4414 */  .4byte jtgt_800A1FF8
  /* 2A98 043168 800A4418 */  .4byte jtgt_800A2028
  /* 2A9C 04316C 800A441C */  .4byte jtgt_800A20D4
  /* 2AA0 043170 800A4420 */  .4byte jtgt_800A2104
  /* 2AA4 043174 800A4424 */  .4byte jtgt_800A212C
  /* 2AA8 043178 800A4428 */  .4byte jtgt_800A215C
  /* 2AAC 04317C 800A442C */  .4byte jtgt_800A2184
  /* 2AB0 043180 800A4430 */  .4byte jtgt_800A21AC
  /* 2AB4 043184 800A4434 */  .4byte jtgt_800A21CC
  /* 2AB8 043188 800A4438 */  .4byte jtgt_800A21F4
  /* 2ABC 04318C 800A443C */  .4byte jtgt_800A2214
  /* 2AC0 043190 800A4440 */  .4byte jtgt_800A2234
  /* 2AC4 043194 800A4444 */  .4byte jtgt_800A2254
  /* 2AC8 043198 800A4448 */  .4byte jtgt_800A2274
  /* 2ACC 04319C 800A444C */  .4byte jtgt_800A2294
  /* 2AD0 0431A0 800A4450 */  .4byte jtgt_800A22B4
  /* 2AD4 0431A4 800A4454 */  .4byte jtgt_800A22D4
  /* 2AD8 0431A8 800A4458 */  .4byte jtgt_800A22F4
  /* 2ADC 0431AC 800A445C */  .4byte jtgt_800A2314
  /* 2AE0 0431B0 800A4460 */  .4byte jtgt_800A2334
  /* 2AE4 0431B4 800A4464 */  .4byte jtgt_800A2354
  /* 2AE8 0431B8 800A4468 */  .4byte jtgt_800A2374
  /* 2AEC 0431BC 800A446C */  .4byte jtgt_800A2394
  /* 2AF0 0431C0 800A4470 */  .4byte jtgt_800A23B4
  /* 2AF4 0431C4 800A4474 */  .4byte jtgt_800A23DC
  /* 2AF8 0431C8 800A4478 */  .4byte jtgt_800A24BC
  /* 2AFC 0431CC 800A447C */  .4byte jtgt_800A24EC
  /* 2B00 0431D0 800A4480 */  .4byte jtgt_800A251C
  /* 2B04 0431D4 800A4484 */  .4byte jtgt_800A254C
  /* 2B08 0431D8 800A4488 */  .4byte jtgt_800A257C
  /* 2B0C 0431DC 800A448C */  .4byte jtgt_800A2060
  /* 2B10 0431E0 800A4490 */  .4byte jtgt_800A2074
  /* 2B14 0431E4 800A4494 */  .4byte jtgt_800A20A4
  /* 2B18 0431E8 800A4498 */  .4byte jtgt_800A25CC
  /* 2B1C 0431EC 800A449C */  .4byte jtgt_800A25AC
  /* 2B20 0431F0 800A44A0 */  .4byte jtgt_800A1E18
  /* 2B24 0431F4 800A44A4 */  .4byte jtgt_800A1E40
  /* 2B28 0431F8 800A44A8 */  .4byte jtgt_800A25EC
  /* 2B2C 0431FC 800A44AC */  .4byte jtgt_800A2614
  /* 2B30 043200 800A44B0 */  .4byte jtgt_800A2644

glabel D_800A44B4
  /* 2B34 043204 800A44B4 */  .4byte jtgt_800A2EB4
  /* 2B38 043208 800A44B8 */  .4byte jtgt_800A2EC8
  /* 2B3C 04320C 800A44BC */  .4byte jtgt_800A2F08
  /* 2B40 043210 800A44C0 */  .4byte jtgt_800A2F98
  /* 2B44 043214 800A44C4 */  .4byte jtgt_800A2FD8
  .incbin "overlayloader.raw.bin", 0x2B48, 0x8
