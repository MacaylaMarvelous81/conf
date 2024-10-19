#!/bin/bash

cd hyprland-conf

if ! git config remote.upstream.url > /dev/null; then
    git remote add upstream https://github.com/AymanLyesri/hyprland-conf
fi
