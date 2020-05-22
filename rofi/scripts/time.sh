#!/bin/sh

## Author : Shadorain
## Mail : Shadorain@gmail.com
## Github : @Shadorain
## Reddit : @Shadorain

rofi_command="rofi -theme themes/time.rasi"

## Get time and date
TIME="$(date +"%A, %I:%M %p")"
DAY="$(date +"%d")"
MONTH="$(date +"%m")"
YEAR="$(date +"%Y")"

options="$MONTH\n$DAY\n$YEAR"

## Main
chosen="$(echo -e "$options" | $rofi_command -p "  $TIME" -dmenu -selected-row 1)"
case $chosen in
    $DAY)
        kitty nvim "~/vimwiki/diary/$YEAR-$MONTH-$DAY.md"
        ;;
    $MONTH)
        bspc desktop -f X && kitty calcurse
        ;;
    $YEAR)
        bspc desktop -f X && kitty calcurse
        ;;
esac
