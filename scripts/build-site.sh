#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
output="$root/_site"

mkdir -p "$output/assets"
rm -f "$output/.DS_Store" "$output/assets/.DS_Store"
cp "$root/index.html" "$output/index.html"
cp "$root/app-ads.txt" "$output/app-ads.txt"
cp "$root/assets/landing.css" "$output/assets/landing.css"
cp "$root/assets/swipe-eraser.png" "$output/assets/swipe-eraser.png"
cp "$root/assets/home-android.jpg" "$output/assets/home-android.jpg"
cp "$root/assets/duplicates-android.jpg" "$output/assets/duplicates-android.jpg"
cp "$root/assets/swipe-android.jpg" "$output/assets/swipe-android.jpg"

file_count=$(find "$output" -type f | wc -l | tr -d ' ')
if [ "$file_count" -ne 7 ]; then
  printf 'Expected 7 site files, found %s. Remove stale files from _site before deploying.\n' "$file_count" >&2
  exit 1
fi

printf 'Site ready in %s (7 files).\n' "$output"
