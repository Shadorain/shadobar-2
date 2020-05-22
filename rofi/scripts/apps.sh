#!/bin/sh

## Author : Shadorain
## Mail : Shadorain@gmail.com
## browser : @Shadorain
## music : @Shadorain

rofi_command="rofi -theme ~/.config/rofi/themes/apps.rasi"

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
        kitty ~/.config/vifm/scripts/vifmrun
        ;;
    $editor)
        kitty nvim ~/vimwiki/Life/TODO.md
        #kitty nvim &
        ;;
    $browser)
        firefox &
        ;;
    $music)
        kitty nvim ~/vimwiki/diary/diary.md
         #bspc desktop -f V
        ;;
    $settings)
        libreoffice &
        ;;
esac

