# FF3-English-Translation-ad0220
Code for patching Final Fantasy III with ad0220's English patch.

Based on [this patch](https://www.romhacking.net/translations/1590/) from RHDN.

## Requirements
This tool requires an NES ROM dumped from a Japanese Final Fantasy III cartridge.  This ROM should have the following checksums for the ROM data **without the header:**

    MD5:    45A7D02ED0DC92665A30DA1D9B4AF35D
    SHA1:   8690012D6F4D6D11D16FD9AF7B200D9B6EA2504E
    SHA256: 7FF89B50156B6F5B3D78D3D2EEEC8A9221D9F7B18F8350ABF89B7867A205F710

The ROM (again, **without the header**) should have a size of 524,288 bytes.

To play the patched ROM, you'll need a means of playing 1 megabyte NES games that use an MMC3 mapper.  Some emulators struggle with this.

After patching, the new ROM should be 1,048,576 bytes (**without the header**) and have the following checksums (again, **without the header**):

    MD5:    C0F52E4D575244BF1870E128C1E5E613
    SHA1:   E6FDAB6D8539B47580AFC9C147AE598964619B96
    SHA256: 5C36E81E9038AD68440C179D45291C98E6E318132569BBFC9A1719FFDCDCECE0

The new header should reflect the larger size (e.g. `4E45531A400042000000000000000000`).

If you're unfamiliar with how to determine whether your ROM has a header, and how to verify it without the header, you can inspect your ROM and see whether it's exactly 16 bytes larger than the sizes mentioned above.  If it is, you can use a hex editor to open it, and if you see the first four bytes (in hex) as 4E45531A, then you have a headered ROM.  If you make a copy of the ROM and then remove the first 16 bytes, you'll have an unheadered ROM.  Unheadered NES ROMs generally aren't very useful, except to verify the actual ROM data (since headers can differ between people's copies of the same ROM).

Alternatively, you can build and use the [NES20Tool](https://github.com/Kreeblah/NES20Tool) utility (which handles all of the checksum calculations while ignoring any headers).

## Building
### Requirements

In theory, any compiler which supports the C99 standard should work.  Compilation has only been tested with Clang, however.

The included `Makefile` assumes a GNU `make` command to be installed.

### Build Command
`make`

## Usage
`ff3trans < ff3.nes > ff3e.nes`

This takes a ROM named `ff3.nes` as the input and creates a patched ROM named `ff3e.nes`.
