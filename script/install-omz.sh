# /bin/zsh

AUTOSUGGESTIONS_PLUGIN=https://github.com/zsh-users/zsh-autosuggestions.git
SYNTAX_HIGHLIGHTING_PLUGIN=https://github.com/zsh-users/zsh-syntax-highlighting.git


install_omz() {
    echo "Installing oh my zsh...."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_omz_cn() {
    export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
    export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
    export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

    echo "Installing oh my zsh cn...."
    git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
    /bin/bash brew-install/install.sh
    rm -rf brew-install
}

install_omz_plugins() {
    echo "Installing omz plugins..."
    git clone ${AUTOSUGGESTIONS_PLUGIN} ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone ${SYNTAX_HIGHLIGHTING_PLUGIN} ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

test() {
    echo "Testing"
}

main() {
    case $1 in
        "cn" )
            echo "install cn"
            install_omz_cn
            ;;
        * )
            echo "install *"
            install_omz
            ;;
    esac
    install_omz_plugins
}

test