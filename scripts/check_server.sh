#! /bin/bash


if ping -c https://ransompants.xyz; then
    echo "server live"
else
    echo "server down"
fi
