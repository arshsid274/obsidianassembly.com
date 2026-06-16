#!/bin/bash
mkdir -p _nuxt images/offices images/objects-init images/guys images/home/updates images/main

BASE="https://obsidianassembly.com"

curl -s -o _nuxt/index.a596e4a8.css "$BASE/_nuxt/index.a596e4a8.css"

for i in 1 2 3 4 5 6 7; do
  curl -s -o images/offices/$i.webp "$BASE/images/offices/$i.webp"
  curl -s -o images/offices/$i.jpg  "$BASE/images/offices/$i.jpg"
done

for i in 1 2 3 4; do
  curl -s -o images/objects-init/object-$i.webp "$BASE/images/objects-init/object-$i.webp"
done

for i in 1 2; do
  curl -s -o images/guys/g-$i.webp "$BASE/images/guys/g-$i.webp"
done

for i in 1 2 3 4 5; do
  curl -s -o images/home/updates/$i.webp "$BASE/images/home/updates/$i.webp"
done

for i in 1 2 3; do
  curl -s -o images/main/admission-$i.webp "$BASE/images/main/admission-$i.webp"
  curl -s -o images/main/admission-$i-blured.webp "$BASE/images/main/admission-$i-blured.webp"
done

curl -s -o images/home/stone-2.webp "$BASE/images/home/stone-2.webp"
curl -s -o images/home/stone-3.webp "$BASE/images/home/stone-3.webp"
curl -s -o images/home/figure-map.webp "$BASE/images/home/figure-map.webp"
curl -s -o images/home/people-silhouette.webp "$BASE/images/home/people-silhouette.webp"

find . -size 0 -delete

echo "Done."
