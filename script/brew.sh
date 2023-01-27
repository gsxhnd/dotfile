# /bin/zsh

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}


install_brew_cn() {
    export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
    export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
    export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

    git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
    /bin/bash brew-install/install.sh
    rm -rf brew-install
}

brew_install_dev() {
    brew install gcc@5 gcc llvm@12 conan
}

brew_install_py() {
    brew install python@3.8 python@3.9 python@3.10 pipenv
}

brew_install_node() {
    brew install node node@18 node@16 yarn pnpm
}

brew_install_cli() {
    brew install bottom procs
    brew install neovim exa duf neofetch bat httpie
}

brew_install_go() {
    brew install go protobuf protoc-gen-go protoc-gen-go-grpc
}

main() {
    case $1 in
        "cn" )
            echo "Install homebrew with cn mirror"
            install_brew_cn
            ;;
        * )
            echo "install homebrew"
            install_brew
            ;;
    esac
    brew_install_cli
}

main $1