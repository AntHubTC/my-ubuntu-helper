#!/bin/bash

# init .ara2 config file
if [ ! -d $HOME/.aria2 ]; then
  mkdir $HOME/.aria2
fi

if [ ! -f $HOME/.aria2/aria2.session ]; then
  touch $HOME/.aria2/aria2.session
fi

if [ ! `command -v aria2c` ]; then
  echo -e "\033[31m aria2c command not foud! Please install Arial2c. \033[0m"
  exit
fi

# start aria2c
aria2c -D --conf-path=./.aria2/.aria2.conf


