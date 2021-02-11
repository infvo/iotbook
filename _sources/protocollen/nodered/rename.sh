#/bin/bash
for f in *.pngx; do
    mv -- "$f" "${f%.pngx}.png"
done
