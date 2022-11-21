redo-ifchange ../config.rc
. ../config.rc

RGBASMFLAGS="-E -H -I src"
RGBASM="rgbasm"

# args
# $1 - input source file
# $2 - output file
# $PWD - root dir of project

cat > "$3" << EOF
#!/bin/sh
set -e
RGBASMFLAGS="$RGBASMFLAGS"
RGBASM="$RGBASM"

redo-ifchange "\$1"
\$RGBASM \$RGBASMFLAGS -M "\$2.d" -o "\$2" "\$1"
deps=\$(sed -e 's@.*: @@' "\$2.d")
# shellcheck disable=all
redo-ifchange \$deps
rm "\$2.d"
EOF

chmod u+x "$3"
