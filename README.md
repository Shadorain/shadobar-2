# shadobar 2.0
PART TWO IS HERE BABY, the new and improved shadobar! with more colors and far more sexiness!!
My complete and beautiful polybar. Took a while but well worth the beauty and the functionality!  
All rofi files that are integrated into the bar are in the rofi/ directory, that goes for scripts as well. 

## Why Shadobar
* Every single visible module is fully interactive.
  * *Some parts scroll, some parts just clicking, either way: fully interactive. Certain i3 things are missing because I just do not know anything i3, but the i3 config should fix alot)*
* It's quite pretty (atleast in my opinion!)
  * *very clean and compact look, the underlines and overlines and the other features I added make it so much more beautiful.*
* Quite simple to understand
  * *Simple to change up and make perfect for yourself!*
  * *very single color is customizable right at the top of your config now*
* Works with any launcher!
  * *I personally like rofi the best because of how pretty it can be, but you can use anything you like (only rofi is included though)!*

##### TODO's
* [X] ~~I3wm Support/Fork (anyone willing to help, much appreciated)~~
* [X] ~~Make hotswapping available~~


## Installation
1. first cd into ~/.config then clone the repo  
        `cd ~/.config; git clone https://github.com/Shadorain/shadobar.git`  
2. cd into shadobar directory  
        `cd ~/.config/shadobar/`  
3. Copy/move the entire rofi directory into *~/.config*  
        `cp ~/.config/shadobar/rofi ~/.config/rofi`  
4. (Optional) finally set *~/.config/polybar/launch.sh &* where you would like shadobar to auto start from.
        `echo "polybar shadobar -c ~/.config/shadobar/config &" >> ~/.config/bspwm/bspwmrc` (in my case: bspwmrc)  

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
* Tray open
* Battery Discharging
* Floating window  
![Full-bar Shot](scrots/screeny5.png)  
<hr>

#### Workspaces
Desc: Shot of workspace section
* Mint workspaces are empty
* Different color with overline: focused workspace
* Arch Logo: My run launcher
* The grid: indicates that current workspace is in tiled mode
  * *Click to put in monocle*  
![Workspace + Run launcher shot](scrots/screeny7.png)  
<hr>

#### Dimmed Workspaces
Desc: Shot of workspaces when focusing separate monitor
* Workspace foreground dims out when not in the monitor where shadobar is.  
![Dimmed workspaces](scrots/screeny6.png)  
<hr>

#### Floating indicator
Desc: Shot of workspaces that are all full and in the current desktop there is a floating window
* *Click the floating icon to put the window back into tiling mode*  
![Floating indicator](scrots/screeny4.png)  
<hr>

#### Mid Section
Desc: This is where the music goes (in my case: MPD)
* *spotify modules were left in at the bottom if one uses spotify over (superior) MPD*
* prev play pause
* Album | Artist - Song name 
  * *click to open mpd menu (rofi)*
* Time
  * *click to go to workspace where you manage music*  
![Mid Section](scrots/screeny2.png)  
<hr>

#### Right Section #1
Desc: Shot of right section of the bar
In this shot:
* Tray is closed
  * *click to display more icons*
* Volume low (not muted)
* Time is shown
* Battery icon is hidden when it is full and charging  
![Right Section #1](scrots/screeny1.png)  
<hr>

#### Right Section #2
Desc: Shot of right section of bar
In this shot:
* Tray is opened displaying various more options (network, music, most used apps, quicklinks, github repos, close tray)
* Volume is muted (left click)
* Battery is not hidden anymore and is discharging (Overline and icon will change colors as battery level decreases)  
![Right Section #2](scrots/screeny3.png)  
<hr>


## Contact
* Discord: Shadorain#4182
* Email: shadorainwraith@gmail.com

## Feedback
* Message any time if you would like help or info or would like to help!
  * *Every critique helps me make this better*
* Hope you enjoy my shadobar configuration of polybar!
* Drop a star to let me know you like it!
