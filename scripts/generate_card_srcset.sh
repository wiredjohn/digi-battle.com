#!/usr/bin/env bash

input="$1"

if [[ -z "$input" || ! -f "$input" ]]; then
  echo "Usage: $0 <image-file>"
  exit 1
fi

filename="${input%.*}"

for width in 50 175 350 700; do
  magick "$input" \
    -resize "${width}x" \
    -quality 100 \
    "${filename}-${width}.webp"
done

echo "Generated:"
for width in 50 175 350 700; do
  echo "${filename}-${width}.webp"
done
