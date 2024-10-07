# TRSS Onebot 一键安装脚本

## 简介

这是一个适用于 Debian 的 TRSS Onebot 一键安装脚本。该脚本旨在简化在 Debian 系统上安装 TRSS 的过程。

## 测试平台

- 手机 Termux 使用TMOE安装 Debian 13 的 proot 容器

## 安装步骤

请按照以下步骤安装：

下载安装脚本：
   ```bash
   wget -O install.sh https://gitee.com/lwztime/ontrss/raw/master/install.sh && chmod 777 install.sh && ./install.sh
   ```
 **错误尝试再次执行** 
 
用GPT瞎搓的，可能不是很好

 _ 启动TRSS-Yunzai的时候，其他会话登录NTQQ，即可使用 _

 ###后续出现找不到node和fnm，请执行

```
echo -e '\n# fnm\nFNM_PATH="$HOME/.local/share/fnm"\nif [ -d "$FNM_PATH" ]; then\n  export PATH="$FNM_PATH:$PATH"\n  readonly FNM_PATH\n  eval "`fnm env`"\nfi' >> ~/.zshrc
```
###并且重启终端

### 登录可能会频繁扫码