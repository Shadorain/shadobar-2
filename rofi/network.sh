#!/bin/sh

## Author : Shadorain
## Mail : shadorainwraith@gmail.com
## Github : @Shadorain
## Reddit : @Shadorain

rofi_command="rofi -theme themes/network.rasi"

## Get info
PROFILE=wlp0s20f3ionit5
IFACE="$(ip link | grep 3: | awk '{print $2}' | rev | cut -c2- | rev)"
#SSID="$(iwgetid -r)"
#LIP="$(nmcli | grep -i server | awk '/server/ {print $2}')"
#PIP="$(dig +short myip.opendns.com @resolver1.opendns.com )"
STATUS="$(netctl is-active $PROFILE)"
ESSID="$(iwlist wlp0s20f3 scan | grep "ESSID:" | sed -e 's/\"//g' | cut -d':' -f 2)"

active=""
urgent="-u 3"

if (ping -c 1 archlinux.org || ping -c 1 google.com || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
	if [[ $STATUS == *"active"* ]]; then
        if [[ $IFACE == e* ]]; then
            connected=""
        else
            connected="直"
        fi
	active="-a 0"
	MSG=$ESSID
	PIP="$(dig +short myip.opendns.com @resolver1.opendns.com )"
	fi
else
    urgent="-u 0"
    MSG="Offline"
    PIP="Not Available"
    connected="睊"
fi

## Icons
bmon="龍"
launch_cli="歷"
airplane=""

options="$connected\n$bmon\n$launch_cli\n$airplane"

## Main
chosen="$(echo -e "$options" | $rofi_command -p "$MSG" -dmenu $active $urgent -selected-row 1)"
case $chosen in
    $connected)
		if [[ $STATUS == *"active"* ]]; then
			netctl stop-all
		else
			netctl start $PROFILE
		fi 
        ;;
    $bmon)
        kitty bmon
        ;;
    $launch_cli)
        kitty sudo netctl edit $PROFILE
        ;;
    $airplane)
        if [[ $STATE == *"enable"* ]]; then
            kitty sudo rfkill block 1 2 3 4
            netctl stop-all
        else
            kitty sudo rfkill unblock 1 2 3 4
        fi
        ;;
esac

