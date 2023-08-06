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

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

move_config_file() {
    git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
    cat $ROOT_PATH/.zshrc > ~/.zshrc
    cp -r $ROOT_PATH/alacritty ~/.config/
    cp -r $ROOT_PATH/zellij ~/.config/
}


cleanup() {
    rm -rf ~/.oh-my-zsh
    rm -rf ~/.config/alacritty
    rm -rf ~/.config/zellij
}

main() {
    case $1 in
        ;;
        "clean" )
            cleanup
        ;;
        * )
            install_omz
            install_brew
            move_config_file
        ;;
    esac
}
main $1