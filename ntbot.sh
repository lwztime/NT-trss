#!/bin/bash

# 使脚本在遇到错误时退出
set -e

# 提示用户输入账号
read -p "请输入BOT账号: " account

# 第一个文件的下载 URL（请根据实际情况修改）
file_url_1="https://gitee.com/lwztime/ontrss/raw/master/onebot11Q.json"  
# 第二个文件的下载 URL（请根据实际情况修改）
file_url_2="https://gitee.com/lwztime/ontrss/raw/master/napcatQ.json"  

# 目标目录
target_dir="/opt/QQ/resources/app/app_launcher/napcat/config"

# 创建目标目录（如果不存在）
mkdir -p "$target_dir"

# 下载第一个文件并重命名
if wget -O "${target_dir}/onebot11_${account}.json" "$file_url_1"; then
    echo "文件已下载并重命名为 onebot11_${account}.json"
else
    echo "第一个文件下载失败，请检查 URL 或网络连接。"
    exit 1  # 退出脚本
fi

# 下载第二个文件并重命名
if wget -O "${target_dir}/napcat_${account}.json" "$file_url_2"; then
    echo "文件已下载并重命名为 napcat_${account}.json"
else
    echo "第二个文件下载失败，请检查 URL 或网络连接。"
    exit 1  # 退出脚本
fi

# 所有文件下载完成后，输出登录命令
echo -e "Napcat的登录命令为\033[31m xvfb-run -a qq --no-sandbox -q ${account} \033[0m"