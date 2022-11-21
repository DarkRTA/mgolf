# Mario Golf (GBC) Dissasembly

Disassembly of Mario Golf (GBC) brought to you by a single dumbass.

It builds the following ROM:

- mgolf.gbc (USA) `
sha1: 7f2062e51b4fc87378c1d5e6b9578c9277b94e0b1`

## Usage

1. Install [rgbds](https://github.com/rednex/rgbds#1-installing-rgbds) (version >= 0.6.0 required);
2. `./do` or [`redo`](https://github.com/apenwarr/redo/).

This will build both the game and the debug symbols.

## Development

This project uses `redo` instead of `make`. While a minimal implementation of
`redo` has been provided in the form of `./do`, it is highly recommeded you
install and use `redo` if you plan on contributing due to limitaions of the
shell script.
