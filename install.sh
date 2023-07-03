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

# main() {
#     case $1 in
#         "cn" )
#             install_omz_cn
#         ;;
#         * )
#             install_omz
#         ;;
#     esac
#     install_omz_plugins
#     cat $ROOT_PATH/.zshrc > ~/.zshrc
# }
# main $1

echo ${ROOT_PATH}