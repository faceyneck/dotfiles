#!/usr/bin/env bash

SESSION_NAME="scratchpad"

# Start session, create first window, and background it
tmux new-session -d -s "$SESSION_NAME" -n "Bashy Fun 😀"

# Create second window
tmux new-window -t "$SESSION_NAME":2 -n "btop and Shizz 🖥️"

# Launch btop in the second window (which defaults to 1 pane)
tmux send-keys -t "$SESSION_NAME":2 "btop" C-m

# Attach to the session
tmux attach-session -t "$SESSION_NAME"
