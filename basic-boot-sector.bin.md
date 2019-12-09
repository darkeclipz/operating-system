This is a binary file of 512 bytes.

In the first 3 bytes the values of E9 FD FF, are written. The represent a jump command, which will jump to itself, so it repeats infinitely.

The last two bytes are the magic value 55 AA that is used by the BIOS to check which device can be used to boot.

This entire files represent one sector on a hard drive. It should be exactly 512 bytes.

If the emulation is started, nothing should happen, because it is in an infinite loop of doing nothing useful.
