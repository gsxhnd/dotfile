# dotfile

## oh my zsh

<https://ohmyz.sh/>

### 安装 oh-my-zsh

国内安装 omz 文档 `https://mirrors.tuna.tsinghua.edu.cn/help/ohmyzsh.git/`
国内安装 HomeBrew 执行

```bash
./script/install-omz-cn.sh
```

### 插件

<https://github.com/zsh-users/zsh-autosuggestions>

<https://github.com/zsh-users/zsh-syntax-highlighting>

安装插件

```bash
./script/install-zsh-plugin.sh
```

## brew

国内安装 HomeBrew 文档 <https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/>
国内安装 HomeBrew 执行

```bash
./script/install-brew-cn.sh
```

国外服务器安装 HomeBrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### 安装软件

```bash
./script/brew-install.sh
```

## rust

<www.rust-lang.org>

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
