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

main() {
    cat $ROOT_PATH/zsh/zshrc > ~/.zshrc
    case $2 in
        "cn" )
            echo "Install oh my zsh with cn mirror"
            install_omz_cn
            cat $ROOT_PATH/zsh/cn.zshenv >> ~/.zshrc
            ;;
        * )
            echo "Install oh my zsh"
            install_omz
            ;;
    esac

    case $1 in
        "wsl" )
            echo "Write wsl environment"
            cat $ROOT_PATH/zsh/wsl.zshenv >> ~/.zshrc
            ;;
        "linux" )
            echo "Write linux environment"
            cat $ROOT_PATH/zsh/linux.zshenv >> ~/.zshrc
            ;;
        "macos" )
            echo "Write mac environment"
            cat $ROOT_PATH/zsh/macos.zshenv >> ~/.zshrc
            ;;
        "vps" )
            echo "Write vps environment"
            cat $ROOT_PATH/zsh/vps.zshenv >> ~/.zshrc
            ;;
        * )
            echo "Skip environment"
            ;;
    esac

    install_omz_plugins
    cat $ROOT_PATH/zsh/cmd.zshenv >> ~/.zshrc
}


test() {
    echo "Test"
    echo $1 $2
}

# test $1 $2
main $1 $2