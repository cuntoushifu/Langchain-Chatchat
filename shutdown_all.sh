#!/bin/bash

# 首先杀死匹配特定命令模式的进程
ps -eo pid,user,cmd | grep -P 'server/api.py|webui.py|fastchat.serve|multiprocessing' | grep -v grep | awk '{print $1}' | xargs -r kill -9

# 定义要检查的端口数组，包括新添加的7861和8501
PORTS=(20000 20001 20002 7861 8501)

# 循环遍历端口
for port in "${PORTS[@]}"
do
    # 查找监听指定端口的进程并杀死这些进程
    sudo lsof -ti tcp:"$port" | xargs -r sudo kill -9
done

echo "Specified processes and processes on ports 20000, 20001, 20002, 7861, and 8501 have been killed."
