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

#define GLUE(a, b) a ## b
#define GLUE2(a, b) GLUE(a, b)

// Static assertions
#ifdef __GNUC__
#define STATIC_ASSERT(cond, msg) _Static_assert(cond, msg)
#else
#define STATIC_ASSERT(cond, msg) typedef char GLUE2(static_assertion_failed, __LINE__)[(cond) ? 1 : -1]
#endif

/// Convert from a physical addresss to a ROM (0xB0) address
#define PHYSICAL_TO_ROM(x) ((uintptr_t)(x) + 0xB0000000)

#endif /* SSB_C_MACROS_H */
