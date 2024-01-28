#!/bin/bash

xhost +local:docker && \
docker build . -t tdss:latest && \
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix tdss:latest
