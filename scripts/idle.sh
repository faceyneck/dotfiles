#!/usr/bin/env bash

# Fire up swayidle using your clean inherited environment variables
exec swayidle -w \
    timeout 900 "mmsg dispatch 'sleep_monitor,model:AW3425DW'" \
    timeout 905 "wlopm --off \*" \
    resume "wlopm --on \*; mmsg dispatch 'wakeup_monitor,model:AW3425DW'" \
    before-sleep "mmsg dispatch 'sleep_monitor,model:AW3425DW'; wlopm --off \*"

