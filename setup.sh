#!/bin/sh
git config filter.ipfs.clean  './ipfs-clean.sh'
git config filter.ipfs.smudge './ipfs-smudge.sh'
git config filter.ipfs.required true

# Debe hacerse checkout para que corra el smudge.
git checkout -- .
