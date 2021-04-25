# shadobar 2.0
PART TWO IS HERE BABY, the new and improved shadobar! with more colors and far more sexiness!!
My complete and beautiful polybar. Took a while but well worth the beauty and the functionality!
All rofi files that are integrated into the bar are in the rofi/ directory, that goes for scripts as well. 

## Why Shadobar
* Most visible module is fully interactive.
  * *Some parts scroll, some parts just clicking (right, left, mid).
* It's quite pretty (atleast in my opinion!)
  * *very clean and compact look, the underlines and overlines and the other features I added make it so much more beautiful.*
* Quite simple to understand
  * *Simple to change up and make perfect for yourself!*

##### TODO's
* [X] ~~I3wm Support/Fork (anyone willing to help, much appreciated)~~
* [X] ~~Make hotswapping available~~

## Installation

### Comments
Honestly only the `config-xmonad` is updated because I only use xmonad now, this doesn't hinder
you at all though from using shadobar2.0 though because the only difference is the workspaces part.
I have working workspaces for bspwm and i3 (I believe) setup in their separate config files, but
config-xmonad is the most updated and will be from now on.

1. first cd into ~/.config then clone the repo
        `cd ~/.config; git clone https://github.com/Shadorain/shadobar.git` 
2. cd into shadobar directory 
        `cd ~/.config/shadobar/`
3. Copy/move the entire rofi directory into *~/.config* 
        `cp -r ~/.config/shadobar/rofi ~/.config/rofi` 
4. (Optional) finally set *the line below* where you would like shadobar to auto start from.
        `echo "polybar shadobar -c ~/.config/shadobar/config &" >> ~/.config/bspwm/bspwmrc` (in my this case: bspwmrc)

### I3 users
* Follow each of those steps above, the only change you will need is to swap the i3 config with the bspwm one.
        `mv ~/.config/shadobar/config-i3 ~/.config/shadobar/config`

#### ---And there you go! You have succesfully installed Shadobar!----
  ( Please give feedback if certain things do not work )

## Dependencies
* Polybar of course!
    `sudo pacman -S polybar`
* (Optional for functionality) Rofi and Dmenu 
    `sudo pacman -S rofi dmenu`

#### Fonts
* `sudo pacman -S otf-ipafont`
* `yay -S ttf-iosevka ttf-font-logos ttf-mplus otf-mplus otf-font-awesome-5-free`


## Some Screenshots!
#### Full-bar
Desc: Shot of the full bar
* Battery Discharging
* Shado layout in window manager
![Full-bar Shot](scrots/full_bar.png) 
<hr>

#### Workspaces
Desc: Shot of workspace section
* Mint workspaces are empty
* Pink highlighted: focused workspace
* Blueish color: contain windows
* Blank space in front: My run launcher (I think it just looks better blank)
![Workspace + Run launcher shot](scrots/workspaces.png) 
<hr>

#### Mid Section
Desc: This is where the music goes (in my case: MPD)
* *spotify modules were left in at the bottom if one uses spotify over (superior) MPD*
* clickable prev play pause
* Artist - Song name   distance in/song length
  * *right click to open ncmpcpp (or preferred client)*
  * *scroll to seek forward or backwards*
![Mid Section](scrots/mid_section.png)
<hr>

#### Right Section #1
Desc: Shot of right section of the bar
In this shot:
* Taskwarrior widget to rotate todos
* Time is shown (click to bring up notif of calendar)
* Volume bar (click to mute)
* System indicators (CPU MEM BAT) are separated for better visibility
* Battery icon is hidden when it is full and charging
* Power menu: click to open pretty rofi power menu
![Right Section #1](scrots/right_section.png)
<hr>

## Contact
* Discord: Shadorain#4182
* Email: shadorainwraith@gmail.com

## Feedback
* Message any time if you would like help or info or would like to help!
  * *Every critique helps me make this better*
* Hope you enjoy my shadobar configuration of polybar!
* Drop a star to let me know you like it!
