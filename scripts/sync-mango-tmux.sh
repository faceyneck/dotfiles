#!/usr/bin/env bash

# A simple script to re-set $XDG_RUNTIME_DIR for mango,
# so that I can continue using my tmux session in-between
# mangowm restarts.
#
# $XDG_RUNTIME_DIR needs to be set in order for mmsg to work


set -euo pipefail

runtime_dir="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}"
latest_sock="$(ls -t "$runtime_dir"/mango*.sock | head -n 1)"

# Update the global tmux server environment for newly created sessions/panes
tmux set-environment -g MANGO_INSTANCE_SIGNATURE "$latest_sock"

echo "Updated MANGO_INSTANCE_SIGNATURE to $latest_sock"
