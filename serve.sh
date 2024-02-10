#!/bin/bash -ex

./hugo.sh server \
    --source /site \
    --bind 0.0.0.0 \
    --port 1313 \
    --theme etch \
    --watch \
    --disableFastRender
