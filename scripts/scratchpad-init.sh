#!/usr/bin/env bash

SESSION_NAME="scratchpad"

# Start session, create first window, and background it
tmux new-session -d -s "$SESSION_NAME" -n "Bashy Fun 😀"

# Create second window
tmux new-window -t "$SESSION_NAME":2 -n "btop and Shizz 🖥️"

# Split the second window horizontally (creates side-by-side panes)
tmux split-window -h -t "$SESSION_NAME":2

# Launch btop in the first pane of the second window
tmux send-keys -t "$SESSION_NAME":2.1 "btop" C-m

# Attach to the session
tmux attach-session -t "$SESSION_NAME"

