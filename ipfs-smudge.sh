#!/usr/bin/env bash
set -e

pointer=$(cat)

cid=$(echo "$pointer" | grep -oP '"cid":\s*"\K[^"]+')

ipfs cat "$cid"
