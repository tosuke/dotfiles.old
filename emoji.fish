#!/bin/fish

git clone https://github.com/googlei18n/noto-emoji.git noto-emoji
mkdir -p emoji

find ./noto-emoji/png/128 -name "*.png" |\
grep -E "\/emoji_u[0-9a-f]+\.png" |\
xargs -I"@arg" cp @arg ./emoji

cd ./emoji

for file in (find . -name "*.png")
	set -l dest (echo $file | sed -E "s/emoji_u(.+)/\1/")
	mv $file $dest
end

cd ..
rm -rf noto-emoji
