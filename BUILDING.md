# Installation and Building
## macOS
### Step 1: Install Dependencies
[Install Rust (via rustup)](https://rustup.rs)

[Install Homebrew](https://brew.sh)

Then, use Homebrew to install the folllowing dependencies:

    brew install python3 capstone tehzz/n64-dev/mips64-elf-binutils tehzz/n64-dev/qemu-irix

Finally, install [doit](https://pydoit.org/) via Homebrew `pip3`

    pip3 install doit

### Step 2: Copy Baserom(s) into Repo
For each version of SSB64 you want to build, put that version's big-endian z64 ROM at `./baserom.{version}.z64`.
The baserom is used for asset extraction.

### Step 3: Build the ROM
Use `doit` to build your desired version of SSB64:

    doit -n4 VERSION=us       # Build the NTSC-U version with 4 concurrent jobs



# Build Options
## General `doit` Options
### Concurrent Builds
`-n {number of subprocesses}` 

## CLI Config Options
These configuration options must go after any `doit` options and after any `doit` tasks

### `VERSION`
#### Options:
* **us**

Select the version of SSB64 to build. Currently, only the NSTC-U version is supported.

#### Examples
    doit -n8 VERSION=us

### `NON_MATCHING`
#### Options
Enable this flag by setting it to `1`. 

Sometimes, it is too hard or too annoying to exactly match the generated machine code from C. 
In those cases, the original machine is used. When this flag is set, however, an equivalent (hopefully) C function is used.

#### Examples
    doit NON_MATCHING=1

### `AVOID_UB`
#### Options
Enable this flag by setting it to `1`. 

Some matching C code may contain the dreaded "undefined behavior" (aka UB). 
By settings this flag, any known instances of UB code will be corrected or replaced with non-UB code. As the new, correctly-defined code will no longer be matching, enabling this flag will also enable `NON_MATCHING`.

#### Examples
    doit AVOID_UB=1

### `TOOLCHAIN` and `LIBULTRA_TC`
#### Options
* **ido7.1** (default for `TOOLCHAIN`)
* **ido5.3** (default for `LIBULTRA_TC`)
* qemu-ido7.1
* qemu-ido5.3

### `QEMU_IRIX`
Override the default system or environment qemu-irix

#### Examples
    doit QEMU_IRIX=/usr/opt/qemu/qemu-irix


# Dependency Info
* Rust
  - language for tooling
* Python3
  - build system
  - inline-asm for `ido` compiler
  - helper scripts to aid decompilation (see [`utils`](.\utils))
* capstone
  - library needed for `ido` toolchain static recompilation
* mips64-elf binutils
  - provides assembler for game asm
  - provides linker and archiver for final rom
* qemu-irix
  - used to run IDO 5.3 `as` (until that binary can be statically recompiled)
  - can be used to run all IDO binaries (see `TOOLCHAIN` and `LIBULTRA_TC` build options)
