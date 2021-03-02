#!/bin/bash
ps -ef | grep chrome | awk '{print $2}' | xargs kill -9
