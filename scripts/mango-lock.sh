#!/usr/bin/env bash
wlopm --on \* 2>/dev/null
exec gtklock --idle-timeout 300
