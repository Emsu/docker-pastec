#!/bin/bash
set -e

ln /dev/null /dev/raw1394

if [ "$1" = 'pastec' ]; then
    if [ -n "${!2}" ]; then
        exec pastec ${!2}
    elif [ -n "$2" ]; then
        exec pastec $2
    else
        exec pastec $VISUAL_WORD_LIST_PATH
    fi
fi

exec "$@"
