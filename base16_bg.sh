#!/bin/bash
convert -size 100x100 xc:#$(cat ~/.base16_theme | grep color00 | head -1 | cut -d '"' -f2 | sed --expression='s/\///g') ~/.base16_bg.png;
feh --bg-scale ~/.base16_bg.png
