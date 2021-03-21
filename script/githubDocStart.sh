#!/bin/bash

# configuration
server_port=9000
server_page_url='http://localhost:'$server_port'/IndexBlog/'
document_path='/media/tc/jx-file/2_STUDY/GitHubRepositories/00myGitHubRepository/FallenGodCoder.github.io'

# program
pwd=$(pwd)
existsPID=$(ps -ef | awk 'BEGIN{pre="http.server '$server_port'$"}{if($0 ~ pre) print $2}' )

if [[ -n $existsPID ]]; then
  echo Detected that the document service has started, PID:$existsPID
  echo Restart in progress.

  kill -9 $existsPID
fi

echo start document service....
cd $document_path
nohup python -m http.server $server_port >/dev/null 2>&1 &
cd $pwd
echo document service started.

# electron-webbox今后做一个脚本钩子就好了，可以实现启动前运行脚本，退出前运行脚本
electron-webbox --args url="$server_page_url" maximize
