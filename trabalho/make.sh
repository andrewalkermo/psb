#!/bin/bash
nasm -f elf32 src/main.asm
gcc -m32 -o main src/main.o lib/driver.c lib/asm_io.o
./main
rm  -f src/main.o ./main
