/* OUTPUT_FORMAT (elf64-bigmips) TARGET (elf64-bigmips) */

/* Macros */
#define SET_ROM_POS(offset) \
    __romPos = offset;

#define BEGIN_SEG(name, addr) \
    _##name##SegStart = ADDR(.name); \
    _##name##SegRomStart = __romPos; \
    .name addr : AT(__romPos)

#define END_SEG(name) \
    _##name##SegEnd = ADDR(.name) + SIZEOF(.name); \
    _##name##SegRomEnd = __romPos + SIZEOF(.name); \
    __romPos += SIZEOF(.name);

#define BEGIN_NOLOAD(name) \
    _##name##SegNoloadStart = ADDR(.name.noload); \
    .name.noload (NOLOAD) :

#define END_NOLOAD(name) \
    _##name##SegNoloadEnd = ADDR(.name.noload) + SIZEOF(.name.noload);


/* Start of Linker Script */
SECTIONS 
{
    SET_ROM_POS(0)

    BEGIN_SEG(boot, 0xA4000000)
    {
        asm/header.o(.rodata);
        asm/boot/boot.o(.text .data);
    }
    END_SEG(boot)

    BEGIN_SEG(system, 0x80000400) 
    {
        asm/system/system.text.o(.text);
        asm/system/system.data.o(.data);
    }
    END_SEG(system)
    BEGIN_NOLOAD(system)
    {
        asm/system/system.bss.o(.bss);
    }
    END_NOLOAD(system)

    BEGIN_SEG(loadovl, 0x800A1980)
    {
        asm/loadovl/overlayloader.text.o(.text);
        asm/loadovl/overlayloader.data.o(.data);
    }
    END_SEG(loadovl)
    BEGIN_NOLOAD(loadovl)
    {
        asm/loadovl/overlayloader.bss.o(.bss);
    }
    END_NOLOAD(loadovl)

    BEGIN_SEG(ovl0, 0x800C7840)
    {
        asm/ovl0/ovl0.text.o(.text);
        asm/ovl0/ovl0.data.o(.data);
    }
    END_SEG(ovl0)
    BEGIN_NOLOAD(ovl0)
    {
        asm/ovl0/ovl0.bss.o(.bss);
    }
    END_NOLOAD(ovl0)

    BEGIN_SEG(ovl2, 0x800D6490)
    {
        asm/ovl2/ovl2.text.o(.text);
        asm/ovl2/ovl2.data.o(.data);
    }
    END_SEG(ovl2)
    BEGIN_NOLOAD(ovl2)
    {
        asm/ovl2/ovl2.bss.o(.bss);
    }
    END_NOLOAD(ovl2)

    BEGIN_SEG(ovl3, 0x80131B00)
    {
        asm/ovl3/ovl3.text.o(.text);
        asm/ovl3/ovl3.data.o(.data);
    }
    END_SEG(ovl3)
    BEGIN_NOLOAD(ovl3)
    {
        asm/ovl3/ovl3.bss.o(.bss);
    }
    END_NOLOAD(ovl3)

    BEGIN_SEG(ovl1, 0x803903E0)
    {
        asm/ovl1/ovl1.text.o(.text);
        asm/ovl1/ovl1.data.o(.data);
    }
    END_SEG(ovl1)
    BEGIN_NOLOAD(ovl1)
    {
        asm/ovl1/ovl1.bss.o(.bss);
    }
    END_NOLOAD(ovl1)

    BEGIN_SEG(ovl4, 0x8018D0C0)
    {
        asm/ovl4/ovl4.text.o(.text);
        asm/ovl4/ovl4.data.o(.data);
    }
    END_SEG(ovl4)
    BEGIN_NOLOAD(ovl4)
    {
        asm/ovl4/ovl4.bss.o(.bss);
    }
    END_NOLOAD(ovl4)

    BEGIN_SEG(ovl5, 0x8018D0C0)
    {
        asm/ovl5/ovl5.text.o(.text);
        asm/ovl5/ovl5.data.o(.data);
    }
    END_SEG(ovl5)
    BEGIN_NOLOAD(ovl5)
    {
        asm/ovl5/ovl5.bss.o(.bss);
    }
    END_NOLOAD(ovl5)

    BEGIN_SEG(ovl65, 0x8018D0C0)
    {
        asm/ovl65/ovl65.text.o(.text);
        asm/ovl65/ovl65.data.o(.data);
    }
    END_SEG(ovl65)
    BEGIN_NOLOAD(ovl65)
    {
        asm/ovl65/ovl65.bss.o(.bss);
    }
    END_NOLOAD(ovl65)

    BEGIN_SEG(ovl6, 0x8018D0C0)
    {
        asm/ovl6/ovl6.text.o(.text);
        asm/ovl6/ovl6.data.o(.data);
    }
    END_SEG(ovl6)
    BEGIN_NOLOAD(ovl6)
    {
        asm/ovl6/ovl6.bss.o(.bss);
    }
    END_NOLOAD(ovl6)

    BEGIN_SEG(ovl7, 0x8018D0C0)
    {
        asm/ovl7/ovl7.text.o(.text);
        asm/ovl7/ovl7.data.o(.data);
    }
    END_SEG(ovl7)
    BEGIN_NOLOAD(ovl7)
    {
        asm/ovl7/ovl7.bss.o(.bss);
    }
    END_NOLOAD(ovl7)

    BEGIN_SEG(ovl10, 0x80131B00)
    {
        asm/ovl10/ovl10.text.o(.text);
        asm/ovl10/ovl10.data.o(.data);
    }
    END_SEG(ovl10)
    BEGIN_NOLOAD(ovl10)
    {
        asm/ovl10/ovl10.bss.o(.bss);
    }
    END_NOLOAD(ovl10)

    BEGIN_SEG(ovl11, 0x800D6490)
    {
        asm/ovl11/ovl11.text.o(.text);
        asm/ovl11/ovl11.data.o(.data);
    }
    END_SEG(ovl11)
    BEGIN_NOLOAD(ovl11)
    {
        asm/ovl11/ovl11.bss.o(.bss);
    }
    END_NOLOAD(ovl11)

    BEGIN_SEG(ovl12, 0x800D6490)
    {
        asm/ovl12/ovl12.text.o(.text);
        asm/ovl12/ovl12.data.o(.data);
    }
    END_SEG(ovl12)
    BEGIN_NOLOAD(ovl12)
    {
        asm/ovl12/ovl12.bss.o(.bss);
    }
    END_NOLOAD(ovl12)

    BEGIN_SEG(ovl13, 0x80131B00)
    {
        asm/ovl13/ovl13.text.o(.text);
        asm/ovl13/ovl13.data.o(.data);
    }
    END_SEG(ovl13)
    BEGIN_NOLOAD(ovl13)
    {
        asm/ovl13/ovl13.bss.o(.bss);
    }
    END_NOLOAD(ovl13)

    BEGIN_SEG(ovl14, 0x80131B00)
    {
        asm/ovl14/ovl14.text.o(.text);
        asm/ovl14/ovl14.data.o(.data);
    }
    END_SEG(ovl14)
    BEGIN_NOLOAD(ovl14)
    {
        asm/ovl14/ovl14.bss.o(.bss);
    }
    END_NOLOAD(ovl14)

    BEGIN_SEG(ovl17, 0x80131B00)
    {
        asm/ovl17/ovl17.text.o(.text);
        asm/ovl17/ovl17.data.o(.data);
    }
    END_SEG(ovl17)
    BEGIN_NOLOAD(ovl17)
    {
        asm/ovl17/ovl17.bss.o(.bss);
    }
    END_NOLOAD(ovl17)


    .code 0x800D6490 : AT(__romPos)
    {
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
        sprites/img_bank-1.o(.header .rodata);
        sprites/spr_bank-2.o(.data);
        sprites/img_bank-2.o(.header .rodata);
        sprites/spr_bank-3.o(.data);
        sprites/img_bank-3.o(.header .rodata);
        sprites/spr_bank-4.o(.data);
        sprites/img_bank-4.o(.header .rodata);
        sprites/spr_bank-5.o(.data);
        sprites/img_bank-5.o(.header .rodata);
        sprites/spr_bank-6.o(.data);
        sprites/img_bank-6.o(.header .rodata);
        sprites/spr_bank-7.o(.data);
        sprites/img_bank-7.o(.header .rodata);
        sprites/spr_bank-8.o(.data);
        sprites/img_bank-8.o(.header .rodata);
        sprites/spr_bank-9.o(.data);
        sprites/img_bank-9.o(.header .rodata);
    }
    __romPos += SIZEOF(.imgbank);

    .audio : 
    {
        audio/S1_music.sbk.o(.data);
        audio/B1_sounds1.ctl.o(.data);
        audio/B1_sounds1.tbl.o(.data);
        audio/B1_sounds2.ctl.o(.data);
        audio/B1_sounds2.tbl.o(.data);
    }
    __romPos += SIZEOF(.audio);

    .unknown :
    {
        unknown/F573D0.o(.data);
        unknown/F57BF0.o(.data);
        unknown/F5A9C0.o(.data);
    }

    /DISCARD/ :
    {
        *(*);
    }
}
