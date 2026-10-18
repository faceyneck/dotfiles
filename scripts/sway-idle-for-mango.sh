#!/usr/bin/env bash

# Function to dynamically find the latest MangoWM socket and dispatch a command
dispatch_mango() {
    local cmd="$1"
    local socket
    socket=$(ls -t "$XDG_RUNTIME_DIR"/mango-*.sock 2>/dev/null | head -n 1)
    
    if [ -n "$socket" ]; then
        MANGO_INSTANCE_SIGNATURE="$socket" mmsg dispatch "$cmd"
    fi
}

# Export the function so swayidle can call it via bash -c
export -f dispatch_mango

exec swayidle -w \
    timeout 1605 "bash -c 'dispatch_mango sleep_monitor,model:AW3425DW'" \
    resume "bash -c 'dispatch_mango wakeup_monitor,model:AW3425DW'" \
    before-sleep "true"

