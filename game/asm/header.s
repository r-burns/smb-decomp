# Super Smash Bros. Header

.section .rodata

.byte 0x80, 0x37, 0x12, 0x40    # PI BSD Domain 1 register
.word 0x0000000F                # clock rate 
.word 0x80100400                # entry point + 0x00100000 TODO: actual function address lol
.word 0x00001449                # release
.word 0x916B8B5B                # CRC 1
.word 0x780B85A4                # CRC 2
.word 0x00000000                # unknown 
.word 0x00000000                # unknown
.ascii "SMASH BROTHERS      "   # ROM Name (20 bytes ASCII)
.word 0x00000000                # unknown
.byte 0x00, 0x00, 0x00          # unknown
.ascii "N"                      # media format (cartridge)
.ascii "AL"                     # cartridge ID
.ascii "E"                      # country code
.byte 0x00                      # version
