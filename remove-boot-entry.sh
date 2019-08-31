#!/bin/bash
#this script is added to crontab, to remove our own entry on reboot,
#the scheduled job can be viewed with crontab -l as root
/bin/efibootmgr | /usr/bin/awk '/ubuntu$/ {sub("^Boot", "", $1); sub("*$", "", $1); print "Removing EFI entry: " $0; system("echo Command:efibootmgr -b " $1 " -B"); system("/bin/efibootmgr -b " $1 " -B")}'
