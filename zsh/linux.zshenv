eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PATH=$PATH:~/go/bin
. "$HOME/.cargo/env"

alias setproxy="export ALL_PROXY=http://127.0.0.1:7890; echo 'SET PROXY SUCCESS!!!'"
alias unsetproxy="unset ALL_PROXY; echo 'UNSET PROXY SUCCESS!!!'"