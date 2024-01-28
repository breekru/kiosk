#Remove Unnecessary Software
sudo apt-get purge wolfram-engine -y
sudo apt-get purge libreoffice* -y
sudo apt-get purge bluej* -y
sudo apt-get purge greenfoot* -y
sudo apt-get clean
sudo apt-get autoremove

#Update OS
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install epiphany-browser x11-xserver-utils xautomation unclutter -y

#Launch Autostart and add file
xte "keydown Control_L" "keydown Alt_L" "key t" "keyup Control_L" "keyup Alt_L" -x:0
sleep 5s;
xte "str sudo nano /etc/xdg/lxsession/LXDE-pi/autostart" -x:0
xte "key Return" -x:0
sleep 5s;
xte "keydown Control_L" "keydown Shift_L" "key 6" "keyup Control_L" "keyup Shift_L" -x:0
xte "keydown Alt_L" "str /" "keyup Alt_L" -x:0
xte "keydown Control_L" "key K" "keyup Control_L" -x:0
sleep 5s;
xte "str @lxpanel --profile LXDE-pi" -x:0
xte "key Return" -x:0
xte "str @pcmanfm --desktop --profile LXDE-pi" -x:0
xte "key Return" -x:0
xte "str @xscreensaver -no-splash" -x:0
xte "key Return" -x:0
xte "str @xset s off" -x:0
xte "key Return" -x:0
xte "str @xset -dpms" -x:0
xte "key Return" -x:0
xte "str @xset s noblank" -x:0
xte "key Return" -x:0
xte "str @/home/pi/kiosk/trello_kiosk.sh /b/RZBwe6aa/blk-farm-projects trello@blkfarms.com kcIF0&3*@c > /dev/nul> 2>&1" -x:0
xte "keydown Control_L" "key X" "keyup Control_L" -x:0
xte "str Y" -x:0
xte "key Return" -x:0

#Clone Trello-Kiosk GitHub
#xte "str git clone https://github.com/Zuehlke/Trello-Kiosk.git" -x:0
sleep 15s;
xte "str sudo chmod 755 /home/pi/kiosk/trello_kiosk.sh" -x:0
xte "key Return" -x:0
sleep 5s;
xte "str sudo chmod 755 /home/pi/kiosk/tab_switcher.sh" -x:0
xte "key Return" -x:0





