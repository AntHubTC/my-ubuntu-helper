#!/bin/bash

ps -ef | grep chrome | awk '{print $2}' | head -n 1 | xargs kill -9
