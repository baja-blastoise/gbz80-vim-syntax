# gbz80 Vim Syntax
Vim/NeoVim syntax file for gbz80 Game Boy assembly.  NeoVim ships with both .asm and .z80 syntax files, but neither of them work very well for the Game Boy flavor.  You end up with most of the text all highlighted the same color, which doesn't really help readability.  This file should make it easier to distinguish registers, memory locations, and hex/binary/graphic numbers.

## Installation
Download **gbz80.vim** and copy it into your syntax file directory.  Your directory may vary - on my Linux system they can be found here:
`/usr/share/vim/vimfiles/syntax/`
`/usr/share/nvim/runtime/syntax/`

## Usage
See the Vim/NeoVim documentation for information on how to automatically apply syntax based on file extension.  RGBDS works with .asm files, your installation may already have a syntax file associated with that extension.  If you want to manually apply the syntax file, use the command `set syntax=gbz80`.

## Example
Here's how it looks on my NeoVim setup.  Configured using LazyVim.
!(lazyvim_example.png)
