#!/bin/bash

ps -ef | grep firefox | awk '{print $2}' | head -n 1 | xargs kill -9
