#!/bin/bash

# https://blog.csdn.net/kh766200466/article/details/91356092
# backup
echo backup /
tar -cvpzf /media/tc/'My Passport'/ubuntu_bak/ubuntu_bak_rootpath@`date +%Y-%m-%d`.tar.gz --exclude=/proc --exclude=/tmp --exclude=/boot --exclude=/home --exclude=/lost+found --exclude=/media --exclude=/mnt --exclude=/run --exclude=/var/log /
echo backup /home
tar -cvpzf /media/tc/'My Passport'/ubuntu_bak/ubuntu_bak_home@`date +%Y-%m-%d`.tar.gz /home
# not backup swap
# echo backup /boot
# tar -cvpzf /media/tc/'My Passport'/ubuntu_bak/ubuntu_bak_home@`date +%Y-%m-%d`.tar.gz /boot

# restore
# tar -xpzvf backup.tar.gz -C /
