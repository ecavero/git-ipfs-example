#!/usr/bin/env bash
set -e

tmpfile=$(mktemp)
cat > "$tmpfile"

cid=$(ipfs add -Q --pin=true "$tmpfile")

cat <<EOF
{
  "cid": "$cid"
}
EOF

rm -f "$tmpfile"
