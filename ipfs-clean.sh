#!/usr/bin/env bash
set -euo pipefail

tmpfile=$(mktemp)
# Read stdin into the temp file
tee "$tmpfile" >/dev/null

cid=$(ipfs add -Q --pin=true "$tmpfile")

# Generate JSON safely with jq
jq -n --arg cid "$cid" '{cid: $cid}'

rm -f "$tmpfile"
