#！/bin/bash

ps -ef | grep aria2c | awk '{print $2}' | head -n 1 | xargs kill -9
