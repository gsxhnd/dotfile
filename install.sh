# /bin/zsh

AUTOSUGGESTIONS_PLUGIN=https://github.com/zsh-users/zsh-autosuggestions.git
SYNTAX_HIGHLIGHTING_PLUGIN=https://github.com/zsh-users/zsh-syntax-highlighting.git

ROOT_PATH=$(pwd)

install_omz() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_omz_cn() {
    git clone https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git
    cd ohmyzsh/tools
    REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh install.sh
    cd ../..
    rm -rf ohmyzsh
}

install_omz_plugins() {
    echo "Installing omz plugins..."
    git clone ${AUTOSUGGESTIONS_PLUGIN} ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone ${SYNTAX_HIGHLIGHTING_PLUGIN} ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

cleanup() {
    rm -rf ~/.oh-my-zsh
    rm -rf ~/.config/alacritty
    rm -rf ~/.config/zellij
}
move_config_file() {
    cat $ROOT_PATH/.zshrc > ~/.zshrc
    cp -r $ROOT_PATH/alacritty ~/.config/
    cp -r $ROOT_PATH/zellij ~/.config/
}

main() {
    case $1 in
        "omz" )
            install_omz
            install_omz_plugins
        ;;
        "clean" )
            cleanup
        ;;
        "config" )
            move_config_file
        ;;
        * )
            echo "You must"
        ;;
    esac
}
main $1