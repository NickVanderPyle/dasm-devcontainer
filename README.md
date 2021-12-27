## Template devcontainer for Visual Studio Code and Atari development.

Includes dasm, make, and an extension to highlight 6502 assembler.

After container is built, devcontainer will run [get-headers.sh](./scripts/get-headers.sh) which will download `vcs.h` and `macros.h` into the [./include/](./include/) directory for the current `dasm` version.

[Makefile](./Makefile) looks for `*.asm` in [./src/](./src/) directory and build artifacts to [./out/](./out/).

[Makefile](./Makefile) should output symbols and list file for [Stella](https://stella-emu.github.io/downloads.html)'s debugger.