ln -s $(pwd)/qmk_firmware/keyboards/keyball ../__qmk__/keyboards/keyball
qmk compile -j 12 -kb keyball/keyball44 -km via
mkdir -p tmp
cp ../__qmk__/keyball_keyball44_via.hex tmp/keyball44.hex
