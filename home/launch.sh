#!/usr/bin/env zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar DP-1 &
polybar DVI-I-1 &
polybar DVI-D-1 &


echo "Bars launched..."
