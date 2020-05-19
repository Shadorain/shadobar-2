#!/bin/sh

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## browser : @adi1090x
## music : @adi1090x

rofi_command="rofi -theme /home/shadow/.config/rofi/themes/apps.rasi"

# Links
#terminal=""
#terminal=""
terminal=""
#terminal=""
files="ﱮ"
#files=""
#files=""
#files=""
editor=""
#editor=""
browser=""
music=""
#music=""
#music=""
#settings="漣"
settings=""

# Variable passed to rofi
options="$files\n$editor\n$music\n$settings"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
        kitty &
        ;;
    $files)
        kitty /home/shadow/.config/vifm/scripts/vifmrun
        ;;
    $editor)
        kitty nvim /home/shadow/vimwiki/Life/TODO.md
        #kitty nvim &
        ;;
    $browser)
        firefox &
        ;;
    $music)
        kitty nvim /home/shadow/vimwiki/diary/diary.md
         #bspc desktop -f V
        ;;
    $settings)
        libreoffice &
        ;;
esac

