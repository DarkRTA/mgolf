cd ..
find src -name '*.asm' | sed -e 's|^src|obj|g' -e 's/.asm$/.o/'
