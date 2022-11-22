redo-ifchange config.rc
. ./config.rc

src="src/${2#obj/}.asm"
mkdir -p "$(dirname "$1")"

redo-ifchange "$src"
$RGBASM $RGBASMFLAGS -M "$1.d" -o "$3" "$src"
deps=$(sed -e 's@.*: @@' "$1.d")
# shellcheck disable=all
redo-ifchange $deps
rm "$1.d"
