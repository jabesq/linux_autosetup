#!/bin/bash

cd ${HOME}

for f in *; do
    if [[ -d $f ]]; then
        cd ${f}
        [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1
        if [ $? -eq 0 ]
        then
            echo ${PWD}
            git fetch --all
        fi
        cd ${HOME}
    fi
done

