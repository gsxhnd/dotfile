eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PATH=$PATH:~/go/bin
. "$HOME/.cargo/env"

host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
alias setproxy="export ALL_PROXY=http://$host_ip:7890; echo 'SET PROXY SUCCESS!!!'"
alias unsetproxy="unset ALL_PROXY; echo 'UNSET PROXY SUCCESS!!!'"