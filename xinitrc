ENV=$HOME/.shrc;
export ENV

xscreensaver -no-splash &
xdg-user-dirs-update &


#xrandr --output DP-1 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal &
/home/suliman/.screenlayout/fix-monitor.sh &
/home/suliman/scripts/randombg.sh   &

# DSB AUTOMOUNTER
# refrance site: https://vermaden.wordpress.com/2018/10/11/freebsd-desktop-part-17-automount-removable-media/
dsbmc-cli -a &
dsbmc &

#exec startxfce4

#urxvt &
#xfe &
picom ~/.config/picom.conf &

picom -b -f

redshift &

/usr/local/bin/slstatus &
#exec ssh-agent /usr/local/bin/dwm


fluxbox exec
#openbox
#exec i3

#exec /home/suliman/devs/rustProjects/my_dwm/target/release/my_dwm 
