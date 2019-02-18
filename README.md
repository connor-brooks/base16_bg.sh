# base16_bg.sh
*A script to generate and set background images to match base16 themes*

This is a very simple script which extracts the background color from base16 terminal themes set by [base16-shell](https://github.com/chriskempson/base16-shell), generates a small image of that color, and sets the desktop background to that image.

## Requirements
* base16-shell
* imagemagick
* feh
## Instructions 
Grab the script:

`git clone https://github.com/connor-brooks/base16_bg.sh.git`

Move it to a hidden folder in your home directory:

`mv base16_bg.sh ~/.base16_bg`

Add the following to you .bashrc:

`PATH=$PATH:~/.base16_bg`

Add this to your .xinitrc, to set the background at login (Optional):

`feh --bg-scale ~/.base16_bg.png`

Whenever you change to another base16 theme, just the following to update your background: 

`base16_bg.sh`


