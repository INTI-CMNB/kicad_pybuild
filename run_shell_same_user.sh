#!/bin/sh
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
export CWD=$(pwd)
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --user $USER_ID:$GROUP_ID \
    -v $CWD:$CWD --workdir="$CWD" \
    --workdir="/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/home/$USER:/home/$USER:rw" \
    setsoft/kicad_pybuild:latest /bin/bash
