sleep 10s;
xte "keydown Control_L" "keydown Alt_L" "key t" "keyup Control_L" "keyup Alt_L" -x:0
sleep 15s;
xte "str select-editor" "key Return" -x:0
sleep 1s;
xte "key 1" -x:0
sleep 1s;
xte "key Return" -x:0
sleep 1s;
xte "str crontab -e" -x:0
sleep 1s;
xte "key Return" -x:0
sleep 5s;
xte "keydown Alt_L" "str /" "keyup Alt_L" -x:0
sleep 1s;
xte "str */5 * * * * /home/pi/kiosk/tab-switcher.sh >/dev/null 2>&1" -x:0
xte "keydown Control_L" "key X" "keyup Control_L" -x:0
xte "str Y" -x:0
xte "key Return" -x:0