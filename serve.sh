#!/bin/bash -ex

docker run \
  --name ouseblog-dev-server \
  -u $(id -u):$(id -g) \
  -p 1313:1313 \
  -v $(pwd)/site:/site \
  --rm \
  ouseblog \
  hugo server \
    --source /site \
    --bind 0.0.0.0 \
    --port 1313 \
    --theme etch \
    --watch \
    --disableFastRender
