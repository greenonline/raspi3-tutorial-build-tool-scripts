# Build tool creation scripts for Raspberry Pi 3 tutorial

## Description

Scripts to create the build tools necessary for the raspi3-tutorial repo: [`bztsrc`](https://github.com/bztsrc)/[**`raspi3-tutorial`**](https://github.com/bztsrc/raspi3-tutorial)

These scripts simply replicate the steps (and commands) in the first part of the tutorial, [AArch64 Cross Compiler](https://github.com/bztsrc/raspi3-tutorial/tree/master/00_crosscompiler)

## Usage

Run these scripts with  `sh -x`, for example

```none
sh -x aa_01_get_sources.sh
```
if you so desire... or you could make them executable... up to you.

You can run each of them individually, one at a time, or use the umbrella script `aa_00_run_all.sh` to run the whole lot in one go (which make time some time), for example

```none
sh -x aa_00_run_all.sh
```

Note: You may need to run using `sudo` (only for the last two scripts, `aa_06_build_binutils.sh` and `aa_07_build_gcc`, in particular for the final `make install` to run without throwing permissions errors. ALternatively you can run them as a standard (non-root) user and fiinish off the installs using 

```none
cd aarch64-binutils
sudo make install
```
and
```none
cd aarch64-gcc
sudo make install
```
respectively.

These scripts create the cross-compiling tools in `/usr/local/cross-compiler`

```none
$ ls /usr/local/cross-compiler/bin
aarch64-elf-addr2line  aarch64-elf-elfedit    aarch64-elf-gcc-ranlib  aarch64-elf-ld       aarch64-elf-ranlib
aarch64-elf-ar         aarch64-elf-gcc        aarch64-elf-gcov        aarch64-elf-ld.bfd   aarch64-elf-readelf
aarch64-elf-as         aarch64-elf-gcc-7.2.0  aarch64-elf-gcov-dump   aarch64-elf-nm       aarch64-elf-size
aarch64-elf-c++filt    aarch64-elf-gcc-ar     aarch64-elf-gcov-tool   aarch64-elf-objcopy  aarch64-elf-strings
aarch64-elf-cpp        aarch64-elf-gcc-nm     aarch64-elf-gprof       aarch64-elf-objdump  aarch64-elf-strip
```

However, only the following six are required to complete the tutorial

- `aarch64-elf-as` - the assembler
- `aarch64-elf-gcc` - the C compiler
- `aarch64-elf-ld` - the linker
- `aarch64-elf-objcopy` - to convert ELF executable into IMG format
- `aarch64-elf-objdump` - utility to disassemble executables (for debugging)
- `aarch64-elf-readelf` - an useful utility to dump sections and segments in executables (for debugging)

## See also

- My blog: [Raspberry Pi 3 bare metal](https://gr33nonline.wordpress.com/2022/07/08/raspberry-pi-3-bare-metal/)

## Acknowledgements

Thanks go to:

- Zoltan Baldaszti's "Bare metal Raspberry Pi 3 tutorials" ([github](https://github.com/bztsrc/raspi3-tutorial/))
