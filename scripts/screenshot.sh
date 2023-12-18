#!/bin/sh
DISPLAY=:0 scrot 'screen-%Y-%M-%d-%H_%M.jpg' -q 20 -e 'mv $f /home/suliman/Pictures/screenShots/'
