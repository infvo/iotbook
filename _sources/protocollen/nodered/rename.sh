#/bin/bash
for f in *.png; do
    mv -- "$f" "${f%.png}.pngx"
done
