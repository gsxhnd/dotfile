# /bin/zsh

AUTOSUGGESTIONS_PLUGIN=https://github.com/zsh-users/zsh-autosuggestions.git
SYNTAX_HIGHLIGHTING_PLUGIN=https://github.com/zsh-users/zsh-syntax-highlighting.git

ROOT_PATH=$(pwd)

install_omz() {
    echo "Installing oh my zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Installing omz plugins..."
    git clone ${AUTOSUGGESTIONS_PLUGIN} ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone ${SYNTAX_HIGHLIGHTING_PLUGIN} ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

install_omz_cn() {
    git clone https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git
    cd ohmyzsh/tools
    REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh install.sh
    cd ../..
    rm -rf ohmyzsh
}

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_brew_cn() {
    git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
    ./brew-install/install.sh
    rm -rf brew-install
}

move_config_file() {
    cat $ROOT_PATH/.zshrc > ~/.zshrc
    cat $ROOT_PATH/alacritty/alacritty_linux.toml > ~/.config/alacritty/alacritty.toml
    cp -r $ROOT_PATH/zellij ~/.config/
}

main() {
    install_omz
    install_brew
    move_config_file
}
main