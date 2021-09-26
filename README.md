# dotfiles
![alt text](https://i.imgur.com/CBLqnEP.jpg)
# New sway
![alt text](https://i.imgur.com/UDdJQSd.jpg)

# bspwm
![alt text](https://i.imgur.com/XrHjpVS.jpg)

# For bspwm and i3
install https://github.com/adi1090x/polybar-themes

# i3
![alt text](https://i.imgur.com/MYwCcaM.jpg)

# i3 2.0
![alt text](unixporn.png)

# i3 evadgelion ed
![alt text](i3v3.png)

# DWM

![Image](2021-09-26-1632642036_1366x768.jpg)
```zsh
#.xinitrc
setxkbmap -layout us,ru -option "grp:alt_shift_toggle" & 
feh --bg-scale /home/ikari/Загрузки/6.jpg &
#opentabletdriver
otd &
#время
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &


exec dwm
