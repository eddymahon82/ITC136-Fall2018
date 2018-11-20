#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

memfree=$( free -mh | grep Mem: | awk '{print $7}' )

connections=$( netstat | grep tcp )

users=$( who )

echo -en "This is a snapshot of your current system:

\e[95m        Disk Used: $diskused
                  
\e[96m        Free Memory: $memfree
                  
\e[5m \e[32m  Logged In Users: $users
                  
\e[46m
Open Internet Connections:
$connections


\e[49m
"

echo "
color info:
http://misc.flogisoft.com/bash/tip_colors_and_formatting
http://wiki.bash-hackers.org/scripting/style
https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
"
