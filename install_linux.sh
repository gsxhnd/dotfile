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

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_brew_cn() {
    git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
    ./brew-install/install.sh
    rm -rf brew-install
}

brew_install_dev() {
    brew install gcc@5 gcc llvm@12 conan python@3.10 pipenv node node@18 yarn pnpm go protobuf protoc-gen-go protoc-gen-go-grpc
}

brew_install_cli() {
    brew install bottom procs exa duf neofetch
    brew install lazygit lazydocker onefetch
    brew install neovim bat httpie httpstate
    brew install k9s helm kubernetes-cli
}

move_config_file() {
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