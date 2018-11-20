#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

memfree=$( free -mh | grep Mem: | awk '{print $7}' )

connections=$( nenstat | grep tcp )

users=$( who )

echo "This is a snapshot of your current system:

                  Disk Used: $diskused
                  
                  Free Memory: $memfree
                  
                  Logged In Users: $users
                  
                  Open Internet Connections:
                  $connections
"

echo "
color info:
http://misc.flogisoft.com/bash/tip_colors_and_formatting
http://wiki.bash-hackers.org/scripting/style
https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
"
