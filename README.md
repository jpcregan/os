# os

An operating system for the IBM PC written in machine code.

## Requirements

- [hex](https://github.com/jpcregan/hex)

## Instructions

    $ ./build.sh

Run `os.img` on an IBM Compatible PC or emulator. [86Box](https://86box.net/) is recommended.

### NOTE:

The image is built for a 5.25" 180KB floppy disk. Trying to run this on a PC that expects a 3.5" disk will result in invalid sector alignment. This can be solved by converting the file to 3.5" alignment, or changing the floppy emulation on your PC. Configurable file format will be added to the build system at a later date.

## Features

- Prints "Hello, World!"

### TODO:

- Add kernel interrupt support

## License

Licensed under [0BSD](https://opensource.org/license/0BSD).
