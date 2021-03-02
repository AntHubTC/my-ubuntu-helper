#!/bin/bash

user=`whoami`

echo 应用程序图标刷新小程序
echo 请选择要更新的图标目录:
echo     1. /usr/share/icons/
echo     2. /home/$user/.local/share/icons
read -p '请输入你的选择：' -n 1 opt
echo ''

if [ $opt -eq 1 ]; then
  sudo mv /usr/share/applications ~/applications.bak
  sleep 2
  sudo mv ~/applications.bak /usr/share/applications
elif [ $opt -eq 2 ]; then
  mv /home/$user/.local/share/applications ~/applications.bak
  sleep 2
  mv ~/applications.bak /home/$user/.local/share/applications
else
  echo 没有该选项输入错误！~
fi
