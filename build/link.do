redo-ifchange ../config.rc
. ../config.rc

RGBLINKFLAGS=""
RGBLINK="rgblink"
RGBFIXFLAGS="-O -v -p 255"
RGBFIX="rgbfix"

# args
# $1 - output rom
# $2 - output map
# $3 - output symbols
# $4 - input obj files
# $5 - link script
# $PWD - root dir of project

cat > "$3" << EOF
#!/bin/sh
set -e
RGBLINKFLAGS="$RGBLINKFLAGS"
RGBLINK="$RGBLINK"
RGBFIXFLAGS="$RGBFIXFLAGS"
RGBFIX="$RGBFIX"

obj=\$(cat \$4)
redo-ifchange \$obj
\$RGBLINK \$RGBLINKFLAGS -l "\$5" -n "\$3" -m "\$2" -o "\$1" \$obj
\$RGBFIX \$RGBFIXFLAGS "\$1"
EOF

chmod u+x "$3"
