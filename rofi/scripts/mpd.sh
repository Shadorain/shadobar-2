#!/bin/sh

rofi_command="rofi -theme themes/mpd.rasi"

# Gets the current status of mpd (for us to parse it later on)
status="$(mpc status)"
# Defines the Play / Pause option content
if [[ $status == *"[playing]"* ]]; then
    play_pause=""
else
    play_pause=""
fi
active=""
urgent=""

# Display if repeat mode is on / off
tog_repeat=""
if [[ $status == *"repeat: on"* ]]; then
    active="-a 5"
elif [[ $status == *"repeat: off"* ]]; then
    urgent="-u 5"
else
    tog_repeat=" Parsing error"
fi

# Display if random mode is on / off
tog_random=""
if [[ $status == *"random: on"* ]]; then
    [ -n "$active" ] && active+=",6" || active="-a 6"
elif [[ $status == *"random: off"* ]]; then
    [ -n "$urgent" ] && urgent+=",6" || urgent="-u 6"
else
    tog_random=" Parsing error"
fi
stop=""
next=""
previous=""
seek_back=""
seek_for=""
settings=""

# Variable passed to rofi
#options="$previous\n$play_pause\n$stop\n$next\n$tog_repeat\n$tog_random"
options="$seek_back\n$previous\n$play_pause\n$next\n$seek_for\n$tog_repeat\n$tog_random"
#options="$seek_back\n$previous\n$play_pause\n$next\n$seek_for"
#other="$tog_repeat\n$tog_random"

# Get the current playing song
current=$(mpc -f "%artist% - %title% | %album%" current)
# If mpd isn't running it will return an empty string, we don't want to display that
if [[ -z "$current" ]]; then
    current="-"
fi

# Spawn the mpd menu with the "Play / Pause" entry selected by default
chosen="$(echo -e "$options" | $rofi_command -p "  $current" -dmenu $active $urgent -selected-row 2)"
case $chosen in
    $previous)
        mpc -q prev && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $play_pause)
        mpc -q toggle && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $stop)
        mpc -q stop
        ;;
    $next)
        mpc -q next && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $tog_repeat)
        mpc -q repeat
        ;;
    $tog_random)
        mpc -q random
        ;;
    $seek_for)
        mpc seek +5
        ;;
    $seek_back)
        mpc seek -5
        ;;
esac

