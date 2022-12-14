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
		;;
	*)
		echo "target not found: $1"
		exit 1
		;;
esac
