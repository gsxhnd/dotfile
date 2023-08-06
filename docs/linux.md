# Linux install dotfile

## 安装依赖

```shell
sudo apt install git curl zsh
```

## Oh my zsh

<https://ohmyz.sh/>

国内安装 omz 文档 `https://mirrors.tuna.tsinghua.edu.cn/help/ohmyzsh.git/`

### 插件

<https://github.com/zsh-users/zsh-autosuggestions>

<https://github.com/zsh-users/zsh-syntax-highlighting>

## 安装 HomeBrew

国内安装 HomeBrew 文档 <https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/>

## 执行安装

```bash
# 安装 omz
./install.sh omz
# 安装 Homebrew
./install.sh brew
# 安装 Rust <www.rust-lang.org>
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 配置文件
./install.sh config
```

## Alacritty + Zellij + Starship
