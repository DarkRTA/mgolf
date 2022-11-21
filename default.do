#!/bin/sh
# TODO: split this into multiple files as the project gets larger
# right now this is just a direct translation of the original Makefile

# TODO: use variables instead of hardcoded args and executables
set -e
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
		# TODO: move linking into build/
		redo-ifchange build/mgolf.list build/link
		redo-ifchange $(cat build/mgolf.list)
		build/link $3 mgolf.map mgolf.sym build/mgolf.list src/layout.link
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
