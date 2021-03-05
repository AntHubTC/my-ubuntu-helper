#！/bin/bash

if [ ! `command -v aria2c` ]; then
  echo -e "\033[31m aria2c command not foud! Please install Arial2c. \033[0m"
  exit
fi


ps -ef | grep aria2c | awk '{print $2}' | head -n 1 | xargs kill -9
