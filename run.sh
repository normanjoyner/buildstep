#!/bin/bash
if [ "$#" -eq 0 ]; then
    exec /start web
fi

if [ "$1" == "/start" ]; then
    exec $@
else
    exec /exec $@
fi
