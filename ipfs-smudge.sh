#!/usr/bin/env bash
set -euo pipefail

cid=$(jq -r .cid)
ipfs cat "$cid"
