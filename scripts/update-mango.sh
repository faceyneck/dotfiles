#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="/github/mango"
BUILD_DIR="$REPO_DIR/build"
BRANCH="wl-only"

cd "$REPO_DIR"

echo "=== Fetching latest changes and tags ==="
git fetch --all --tags

echo "=== Switching to $BRANCH and syncing with origin/$BRANCH ==="
git checkout "$BRANCH"
git reset --hard "origin/$BRANCH"

echo "=== Configuring meson build ==="
# Add any extra -D options you use right after -Dprefix=/usr
meson setup "$BUILD_DIR" --wipe -Dprefix=/usr

echo "=== Compiling with ninja ==="
ninja -C "$BUILD_DIR"

echo "=== Installing to /usr ==="
sudo ninja -C "$BUILD_DIR" install

echo "=== Done! Log out and back in to load the new binary. ==="
