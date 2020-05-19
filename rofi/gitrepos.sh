#!/bin/sh

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/gitrepos.rasi"

# Links
github=""
vimwiki=""
#vimwiki=""
#config=""
#shadochan=""
#dotfiles=""
#shadobar=""
#config_dc=""
config=""
shadochan=""
dotfiles=""
shadobar=""
config_dc=""

# Variable passed to rofi
options="$github\n$vimwiki\n$config\n$shadochan\n$dotfiles\n$shadobar\n$config_dc"

chosen="$(echo -e "$options" | $rofi_command -p "Shadorain's Repos" -dmenu -selected-row 0)"
case $chosen in
    $github)
        firefox --new-tab https://github.com/Shadorain
        ;;
    $config)
        firefox --new-tab https://github.com/Shadorain/.config
        ;;
    $vimwiki)
        firefox --new-tab https://github.com/Shadorain/vimwiki
        ;;
    $shadochan)
        firefox --new-tab https://www.github.com/Shadorain/Shadochan
        ;;
    $dotfiles)
        firefox --new-tab https://github.com/Shadorain/.dotfiles
        ;;
    $shadobar)
        firefox --new-tab https://github.com/Shadorain/shadobar
        ;;
    $config_dc)
        firefox --new-tab https://github.com/Shadorain/.config-darkcherry
        ;;
esac

