# dotfile

## zsh

<https://ohmyz.sh/>

### 安装 oh-my-zsh

`https://mirrors.tuna.tsinghua.edu.cn/help/ohmyzsh.git/`

```bash
git clone https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git
cd ohmyzsh/tools
REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh install.sh
```

### 插件

<https://github.com/zsh-users/zsh-autosuggestions>

<https://github.com/zsh-users/zsh-syntax-highlighting>

## brew

安装 HomeBrew `https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/`

```bash
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install

/bin/bash brew-install/install.sh

rm -rf brew-install
```

## 使用 Brew 安装环境

### 安装开发环境

```bash
brew install gcc@5 gcc python@3.9 python@3.10
brew install go node yarn llvm@12
```

### 安装软件

```bash
brew install neovim exa duf neofetch bat bottom httpie procs
```

### GRPC

```bash
brew install protobuf protoc-gen-go protoc-gen-go-grpc
```

### rust

<www.rust-lang.org>

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
