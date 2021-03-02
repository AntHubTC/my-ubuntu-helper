#!/bin/bash

echo ===================My multi screen config tools=================
echo        1. 只使用笔记本主屏幕
echo        2. 只使用VGA
echo        3. 只使用DP
echo        4. 使用笔记本屏幕和VGA
echo        5. 使用笔记本屏幕和DP
echo        6. 使用VGA和DP
echo        7. 查看当前配置
echo 注意: 有一些命令不是很稳定，应该是图形界面自动对屏幕的调节对这个程序命令的冲突。但有时候自动调节没有达到我们预期的效果，这个程序就可以弥补一些问题。
echo ================================================================
read -p '请输入你的选择：' -n 1 opt
echo ''

if [ $opt -eq 1 ]; then
  xrandr --output VGA-1-1 --off \
         --output DP-1-1 --off \
         --output eDP-1-1 --auto --rotate normal --mode '1366x768' --primary
elif [ $opt -eq 2 ]; then
  xrandr --output eDP-1-1 --off \
         --output DP-1-1 --off \
         --output VGA-1-1 --auto --rotate normal --mode '1920x1080' --primary
elif [ $opt -eq 3 ]; then
  xrandr --output eDP-1-1 --off \
         --output VGA-1-1 --off \
         --output DP-1-1 --auto --rotate normal --pos 0x0 --mode '2560x1440' --primary
elif [ $opt -eq 4 ]; then
  xrandr --output DP-1-1 --off \
         --output eDP-1-1 --auto --rotate normal --mode '1366x768' --primary \
         --output VGA-1-1 --auto --rotate normal --pos 0x0 --mode '1920x1080' --right-of eDP-1-1
elif [ $opt -eq 5 ]; then
  xrandr --output VGA-1-1 --off \
         --output eDP-1-1 --auto --rotate normal --mode '1366x768' --primary \
         --output DP-1-1 --auto --rotate normal --pos 0x0 --mode '2560x1440' --right-of eDP-1-1
elif [ $opt -eq 6 ]; then
  xrandr --output eDP-1-1 --off \
         --output VGA-1-1 --auto --rotate normal --mode '1920x1080' --primary \
         --output DP-1-1 --auto --rotate right --pos 0x0 --mode '2560x1440' --left-of VGA-1-1
elif [ $opt -eq 7 ]; then
  xrandr -q
fi
