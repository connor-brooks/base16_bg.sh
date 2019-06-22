# base16_bg.sh
*A script to generate and set background images to match base16 themes*

This is a very simple script which extracts the background color from base16 terminal themes set by [base16-shell](https://github.com/chriskempson/base16-shell), generates a small image of that color, and sets the desktop background to that image automatically.

## Requirements
* base16-shell
* imagemagick
* feh
## Instructions 
Grab the script:

`git clone https://github.com/connor-brooks/base16_bg.sh.git`

Move the script and patch to your base16 folder:

`mv base16_bg.sh ~/.config/base16-shell/`

`mv patch.diff ~/.config/base16-shell/`

Apply the patch to base16-shell:

`cd ~/.config/base16-shell`

`patch < patch.diff`

Delete the patch file:

`rm ~/.config/base16-shell/patch.diff`

Add this to .xinitrc, to set the background at login:

`feh --bg-scale ~/.base16_bg.png`

Close all terminals or source bashrc:

`source ~/.bashrc`

Run base16 to generate background file:

`base16_phd`

The window manager background should now sync to terminal colors
