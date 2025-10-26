#!/bin/sh

if [ "$1" = "clean" ]
then
	rm -f boot.bin
	rm -f kernel.bin

	rm -f os.img

	exit 0
fi

hex src/boot.hex boot.bin 
hex src/kernel.hex kernel.bin

dd if=boot.bin of=os.img bs=512 seek=0 status=none
dd if=kernel.bin of=os.img bs=512 seek=1 status=none
