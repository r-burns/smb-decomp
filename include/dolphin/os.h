#ifndef _DOLPHIN_OS_H_
#define _DOLPHIN_OS_H_

#include <dolphin/OSAlloc.h>
#include <dolphin/OSCache.h>
#include <dolphin/OSModule.h>

void *OSGetArenaHi(void);
void *OSGetArenaLo(void);
void OSSetArenaHi(void *);
void OSSetArenaLo(void *);

u32 OSGetPhysicalMemSize(void);

void OSReport(char *, ...);

#endif
