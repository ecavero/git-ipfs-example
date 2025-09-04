#!/usr/bin/env bash
set -e

tmpfile=$(mktemp)
cat > "$tmpfile"

cid=$(ipfs add -Q --pin=true "$tmpfile")

cat <<EOF
{
  "cid": "$cid",
  "filename": "$(basename "$GIT_FILENAME")"
}
EOF

rm -f "$tmpfile"
