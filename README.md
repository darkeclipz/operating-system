# Operating System

This is a very basic operating system that has been programmed from scratch. All the references that have been used to create it are listed below.

The goal is to learn more about how a computer works by creating a program that runs without any operating system.

# Tooling

 * Hex editor: a useful hex editor is HxD.
 * CygWin (for the gcc compiler).
 * Qemu to emulate the CPU.
   * Install QEMU from their website. Then go to `C:\Program Files\qemu` and rename `qemu-system-x86_64.exe` to just `qemu.exe`. Also add the `C:\Program Files\qemu` to your environment variables.
 * nasm
   * I dumped the files in the Windows directory. 

These are some commonly used commands to either build the kernel, or start the emulation.

**Assemble**

`nasm bootsect.asm -f bin -o bootsect.bin`

**Build kernel**

`some command`

**Start QEMU**

`qemu my-os.bin`

**Print binary bytes**

`od -t x1 -A n filename`

# References

 - [Writing a simple operating system from scratch, Nick Blundell](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)