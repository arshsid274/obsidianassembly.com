#!/bin/bash
for f in *.html; do
  [ -f "$f" ] || continue
  # Remove all <script>...</script> blocks
  perl -i -0pe 's/<script\b[^>]*>.*?<\/script>//gs' "$f"
  # Remove modulepreload and preload hints for scripts
  perl -i -pe 's/<link[^>]*rel="modulepreload"[^>]*>//g' "$f"
  perl -i -pe 's/<link[^>]*as="script"[^>]*>//g' "$f"
  echo "Stripped: $f"
done
