#!/bin/sh

## Author : Shadorain
## Mail : Shadorain@gmail.com
## Github : @Shadorain
## Reddit : @Shadorain

rofi_command="rofi -show-icons -theme themes/menu/powermenu.rasi"
uptime=$(uptime -p | sed -e 's/up //g')
#mem=$( free -h | grep -i mem | awk -F ' ' '{print $3}')
cpu=$(sh ~/.config/rofi/bin/usedcpu)
memory=$(sh ~/.config/rofi/bin/usedram)

# Options
shutdown="襤"
reboot="ﰇ"
lock=""
suspend="鈴"
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "祥  $uptime    $cpu    $memory " -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        /home/shadow/.config/rofi/scripts/pmenu_shutdown.sh
        ;;
    $reboot)
        reboot
        ;;
    $lock)
        /home/shadow/.i3/i3lock-multimonitor/lock
        ;;
    $suspend)
        /home/shadow/.i3/i3lock-multimonitor/lock
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        /home/shadow/.config/scripts/prompt "Logout?" "bspwm exit"
        ;;
esac

