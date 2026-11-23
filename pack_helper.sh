#!/usr/bin/env bash
set -e
LIB="femto-diamond.a"
TAG="hidden-canyon-crimson-delta"
REPO="subxqdhbl/hugegrovelab"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
