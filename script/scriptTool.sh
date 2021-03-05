#!/usr/bin/bash

gnome-terminal --window -- bash -c "echo '============================script Tool=======================';cd /home/tc/.local/share/applications/my-ubuntu-helper/script;ls -I scriptTool.sh *.sh;exec bash"

# 将alias st=/home/tc/.local/share/applications/my-ubuntu-helper/script/scriptTool.sh添加到.bashrc中
