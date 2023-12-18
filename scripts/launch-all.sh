#!/bin/bash

HOME=/home/suliman
SPEED="3"

$HOME/.screenlayout/fixmonitors_card.sh
$HOME/scripts/mouse-speed $SPEED
sudo $HOME/scripts/fix-keyboard-layout.sh
