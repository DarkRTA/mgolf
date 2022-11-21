#!/bin/sh
# TODO: split this into multiple files as the project gets larger
# right now this is just a direct translation of the original Makefile

# TODO: use variables instead of hardcoded args and executables
exec 1>&2

case $1 in
	all)
		redo-ifchange mgolf.gbc
		sha1sum -c mgolf.sha1
		;;
	clean)
		rm -rfv -- *.gbc *.sym *.map obj
		;;
	mgolf.gbc)
		redo-ifchange obj/game.o
		rgblink -n mgolf.sym -m mgolf.map -o "$3" obj/game.o
		rgbfix -v -p 255 "$3"
		;;
	*.o)
		src="src/${2#obj}"
		src="${src%.o}.asm"
		mkdir -p "$(dirname "$1")"
		redo-ifchange "$src"
		rgbasm -HI src -M "$1.d" -o "$3" "$src"
		deps=$(sed -e 's@.*: @@' "$1.d")
		# shellcheck disable=all
		redo-ifchange $deps
		;;
	*.1bpp)
		png="src/${2#obj/}"
		png="${png%.1bpp}.png"
		redo-ifchange "$png"
		mkdir -p "$(dirname "$1")"
		rgbgfx -d 1 -o "$3" "$png"
		;;
	*.2bpp)
		png="src/${2#obj/}"
		png="${png%.2bpp}.png"
		redo-ifchange "$png"
		mkdir -p "$(dirname "$1")"
		rgbgfx -d 2 -o "$3" "$png"
		;;
	*)
		echo "target not found: $1"
		exit 1
		;;
esac
