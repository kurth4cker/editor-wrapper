# edit
Simple wrapper script for keeping your hands friendly. It just exec's `$EDITOR`
if set. Otherwise it fallbacks to `vi` command, which is standard editor.

## Installation
### Requirements
Default compilation requires:
* Standard POSIX tools (cp, mv etc.)
* POSIX make
* scdoc (optional, for manpage)

### Building
Set your variables in Makefile and just run:

    # default installation
    make
    # if necessary as root
    make install

Or optionally place `edit.sh` in your `$PATH` manually.

## Usage
See edit(1) manpage.

## Copying
Licensed under ISC License. See file COPYING for details.
