#ifndef SSB_C_MACROS_H
#define SSB_C_MACROS_H

/// Count the number of elements in a static array
#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))

/// Avoid compiler warnings for unused variables
#ifdef __GNUC__
#define UNUSED __attribute__((unused))
#else
#define UNUSED
#endif

/// Convert from a physical addresss to a ROM (0xB0) address
#define PHYSICAL_TO_ROM(x) ((uintptr_t)(x) + 0xB0000000)

#endif /* SSB_C_MACROS_H */
