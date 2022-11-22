redo-ifchange config.rc
. ./config.rc

objs=$(find src -name '*.asm' | sed -e 's|^src|obj|g' -e 's/.asm$/.o/')

redo-ifchange $objs

$RGBLINK $RGBLINKFLAGS -l src/layout.link -n mgolf.sym -m mgolf.map -o "$3" $objs
$RGBFIX $RGBFIXFLAGS "$3"
