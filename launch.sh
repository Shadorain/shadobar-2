#!/bin/sh

# Terminate already running bar instances
killall polybar

polybar shadobar -c ~/.config/shadobar/config-xmonad &
echo "Polybar Launched..."

