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
		rm -rf -- *.gbc *.sym *.map obj
		redo build/clean
		;;
	mgolf.gbc)
		obj="$(find src -name '*.asm' | sed -e 's|^src|obj/|g' -e 's/.asm$/.o/')"
		redo-ifchange $obj
		rgblink -l src/layout.link -n mgolf.sym -m mgolf.map -o "$3" $obj
		rgbfix -O -v -p 255 "$3"
		;;
	*.o)
		src="src/${2#obj/}"
		src="${src%.o}.asm"
		mkdir -p "$(dirname "$1")"
		redo-ifchange build/assemble
		build/assemble $src $3
		;;
	*)
		echo "target not found: $1"
		exit 1
		;;
esac
