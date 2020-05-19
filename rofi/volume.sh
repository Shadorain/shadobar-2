#!/bin/sh

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/volume.rasi"

## Get Volume
#VOLUME=$(amixer get Master | tail -n 1 | awk -F ' ' '{print $5}' | tr -d '[]%')
MUTE=$(amixer get Master | tail -n 1 | awk -F ' ' '{print $6}' | tr -d '[]%')

active=""
urgent=""

if [[ $MUTE == *"off"* ]]; then
    active="-a 1"
else
    urgent="-u 1"
fi

if [[ $MUTE == *"off"* ]]; then
    active="-a 1"
else
    urgent="-u 1"
fi

if [[ $MUTE == *"on"* ]]; then
    VOLUME="$(amixer get Master | tail -n 1 | awk -F ' ' '{print $5}' | tr -d '[]%')%"
else
    VOLUME="Mu..."
fi

## Icons
ICON_UP="ﱛ"
ICON_DOWN="ﱜ"
ICON_MUTED="ﱝ"
ICON_MIXER=""

options="$ICON_UP\n$ICON_MUTED\n$ICON_DOWN\n$ICON_MIXER"

## Main
chosen="$(echo -e "$options" | $rofi_command -p "$VOLUME" -dmenu $active $urgent -selected-row 3)"
case $chosen in
    $ICON_UP)
        "pulesemixer --change-volume +10"
        ;;
    $ICON_DOWN)
        "pulesemixer --change-volume -10"
        ;;
    $ICON_MUTED)
        pulsemixer --toggle-mute
        ;;
    $ICON_MIXER)
        kitty pulsemixer
        ;;
esac

