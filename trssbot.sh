#!/bin/bash

# 函数用于检查命令是否成功
check_command() {
    if [ $? -ne 0 ]; then
        echo "命令失败: \$1"
        exit 1
    fi
}

# 红色高亮提示
echo -e "\033[31m请注意：脚本将在 8 秒后开始执行...\033[0m"

# 等待 8 秒
sleep 4

# 输出当前环境变量
echo "开始执行脚本..."

#刷新配置
echo "刷新配置"
. ~/.bashrc
. ~/.zshrc

# 安装 nodejs22
echo "安装 nodejs22"
fnm use --install-if-missing 22
check_command "安装 nodejs22"

echo "校验node ..."
node -v
check_command "校验 Node "


# 检查 npm 版本
echo "检查 npm 版本..."
npm -v
check_command "检查 npm 版本"

# 设置 npm registry
echo "设置 npm registry..."
npm config set registry https://registry.npmmirror.com/
check_command "设置 npm registry"

# 全局安装 pnpm
echo "正在全局安装 pnpm..."
npm install -g pnpm
check_command "安装 pnpm"

# 设置 pnpm registry
echo "设置 pnpm registry..."
pnpm config set registry https://registry.npmmirror.com/
check_command "设置 pnpm registry"

#安装redis
echo "安装redis和Chromium"
apt install -y redis
apt install -y chromium
check_command "安装redis与Chromium"

# 克隆 Git 仓库
echo "正在克隆 Git 仓库..."
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai
check_command "克隆 Git 仓库"

# 进入项目目录
cd Yunzai || { echo "无法进入目录 Yunzai"; exit 1; }

# 安装项目依赖
echo "正在安装项目依赖..."
pnpm i
check_command "安装项目依赖"

# 安装喵喵插件
echo "安装喵喵插件"
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
check_command "安装喵喵插件"

echo "正在安装插件依赖..."
pnpm install -P
check_command "安装插件依赖"

echo -e "\033[31m请安装接下来安装napcat一定不要选择docker，选择n\033[0m"

echo -e "\033[31m请安装接下来安装napcat一定不要选择docker，选择n\033[0m"

echo -e "\033[31m请安装接下来安装napcat一定不要选择docker，选择n\033[0m"

echo -e "\033[31m请安装接下来安装napcat一定不要选择docker，选择n\033[0m"

# 等待 8 秒
sleep 8

# 安装NapCatQQ
echo "安装NapCatQQ"
curl -o napcat.sh https://fastly.jsdelivr.net/gh/NapNeko/NapCat-Installer@master/script/install.sh && sudo bash napcat.sh
check_command "安装NapCatQQ"

echo "安装环境命令成功执行！"

/root/ntbot.sh
echo "配置ws"