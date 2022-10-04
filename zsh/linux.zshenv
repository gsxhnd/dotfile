eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

. "$HOME/.cargo/env"

export PATH=$PATH:~/go/bin

alias setproxy="export ALL_PROXY=http://127.0.0.1:7890; echo 'SET PROXY SUCCESS!!!'"
alias unsetproxy="unset ALL_PROXY; echo 'UNSET PROXY SUCCESS!!!'"