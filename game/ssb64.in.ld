/* OUTPUT_FORMAT (elf64-bigmips) TARGET (elf64-bigmips) */

SECTIONS 
{
    __romPos = 0;

    .boot 0x04000000 : AT(__romPos)
    {
        asm/header.o(.rodata);
        asm/bootstrap.o(.data);
    }
    __romPos += SIZEOF(.boot);

    .code 0x80000400 : AT(__romPos)
    {
        asm/system.o(.data);
        asm/fileloader.o(.data);
        asm/043220.o(.data);
        asm/051C90.o(.data);
        asm/0AC540.o(.data);
        asm/1079C0.o(.data);
        asm/109FB0.o(.data);
        asm/10B370.o(.data);
        asm/111800.o(.data);
        asm/1138E0.o(.data);
        asm/117180.o(.data);
        asm/119AC0.o(.data);
        asm/119DF0.o(.data);
        asm/11A340.o(.data);
        asm/11B970.o(.data);
        asm/11CA90.o(.data);
        asm/11DC10.o(.data);
        asm/11F2B0.o(.data);
        asm/120F50.o(.data);
        asm/1224B0.o(.data);
        asm/1252E0.o(.data);
        asm/1280A0.o(.data);
        asm/129970.o(.data);
        asm/12A4C0.o(.data);
        asm/12AE40.o(.data);
        asm/12EF60.o(.data);
        asm/12FD80.o(.data);
        asm/139D00.o(.data);
        asm/1410E0.o(.data);
        asm/147B30.o(.data);
        asm/14D670.o(.data);
        asm/150740.o(.data);
        asm/150CA0.o(.data);
        asm/158A40.o(.data);
        asm/15DB50.o(.data);
        asm/162640.o(.data);
        asm/165810.o(.data);
        asm/1666F0.o(.data);
        asm/167830.o(.data);
        asm/168930.o(.data);
        asm/169AE0.o(.data);
        asm/16AC10.o(.data);
        asm/16BD10.o(.data);
        asm/16CE70.o(.data);
        asm/16DFD0.o(.data);
        asm/16F130.o(.data);
        asm/16FD40.o(.data);
        asm/170660.o(.data);
        asm/171320.o(.data);
        asm/1721E0.o(.data);
        asm/172B60.o(.data);
        asm/173A30.o(.data);
        asm/174940.o(.data);
        asm/1752C0.o(.data);
        asm/175F00.o(.data);
        asm/1774A0.o(.data);
        asm/178560.o(.data);
        asm/17AD50.o(.data);
        asm/17E510.o(.data);
        asm/17ECC0.o(.data);
        asm/17F200.o(.data);
        asm/187ED0.o(.data);
        asm/18A6D0.o(.data);
        asm/18BE00.o(.data);
        asm/18D030.o(.data);
        asm/18DCB0.o(.data);
        asm/1AB6B0.o(.data);
    }
    __romPos += SIZEOF(.code);

    .resources 0x0 : AT(__romPos)
    {
        resources/resfiletable.o(.data);
        resources/resourcefiles.o(.data);
    }
    __romPos += SIZEOF(.resources);

    .imgbank 0x0 : AT(__romPos)
    {
        sprites/spr_bank-1.o(.data);
        sprites/img_bank-1.o(.data);
        sprites/spr_bank-2.o(.data);
        sprites/img_bank-2.o(.data);
        sprites/spr_bank-3.o(.data);
        sprites/img_bank-3.o(.data);
        sprites/spr_bank-4.o(.data);
        sprites/img_bank-4.o(.data);
        sprites/spr_bank-5.o(.data);
        sprites/img_bank-5.o(.data);
        sprites/spr_bank-6.o(.data);
        sprites/img_bank-6.o(.data);
        sprites/spr_bank-7.o(.data);
        sprites/img_bank-7.o(.data);
        sprites/spr_bank-8.o(.data);
        sprites/img_bank-8.o(.data);
        sprites/spr_bank-9.o(.data);
        sprites/img_bank-9.o(.data);
    }
    __romPos += SIZEOF(.imgbank);


    .audio : 
    {
    }

    .unknown :
    {
    }

    /DISCARD/ :
    {
        *(*);
    }
}
