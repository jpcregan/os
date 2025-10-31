#!/bin/sh

hex src/boot.hex boot.bin 
hex src/kernel.hex kernel.bin
hex src/shell.hex shell.bin


dd if=boot.bin of=os.img bs=512 seek=0 status=none
dd if=kernel.bin of=os.img bs=512 seek=1 status=none
dd if=shell.bin of=os.img bs=512 seek=8 status=none
