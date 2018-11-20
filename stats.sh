#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

memfree=$( free -mh | grep Mem: | awk '{print $7}' )

connections=$( netstat | grep tcp )

users=$( who )

echo -en "This is a snapshot of your current system:

\e[95mLight magenta     Disk Used: $diskused
                  
\e[96mLight cyan        Free Memory: $memfree
                  
\e[5mBlink \e[32mGreen  Logged In Users: $users
                  
                  \e[30;48;5;82m
                  Open Internet Connections:
                  $connections
                  
                  \e[0m
"

echo "
color info:
http://misc.flogisoft.com/bash/tip_colors_and_formatting
http://wiki.bash-hackers.org/scripting/style
https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
"
