#!/bin/sh

## Author : Shadorain
## Mail : Shadorain@gmail.com
## Github : @Shadorain
## Reddit : @Shadorain

rofi_command="rofi -theme themes/quicklinks.rasi"

# Links
linkedin=""
hackthebox=""
onenote=""
gitlab=""
github=""
reddit=""
youtube=""

# Variable passed to rofi
options="$hackthebox\n$linkedin\n$onenote\n$github\n$gitlab\n$reddit\n$youtube"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  Firefox" -dmenu -selected-row 0)"
case $chosen in
    $linkedin)
        firefox --new-tab https://linkedin.com/
        ;;
    $hackthebox)
        firefox --new-tab https://hackthebox.eu/
        ;;
    $onenote)
        firefox --new-tab https://www.onenote.com/
        ;;
    $github)
        firefox --new-tab https://www.github.com/
        ;;
    $reddit)
        firefox --new-tab https://www.reddit.com/
        ;;
    $youtube)
        firefox --new-tab https://www.youtube.com/
        ;;
esac

