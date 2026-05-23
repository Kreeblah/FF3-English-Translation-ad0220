# FF3-English-Translation-ad0220
Code for patching Final Fantasy III with ad0220's English patch.

Based on [this patch](https://www.romhacking.net/translations/1590/) from RHDN.

## Building
### Requirements

In theory, any compiler which supports the C99 standard should work.  Compilation has only been tested with Clang, however.

The included `Makefile` assumes a GNU `make` command to be installed.

### Build Command
`make`

## Usage
`ff3trans < ff3.nes > ff3e.nes`
