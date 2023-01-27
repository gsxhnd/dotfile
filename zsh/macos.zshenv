export PATH=$PATH:~/go/bin
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$PATH:$JAVA_HOME/bin
. "$HOME/.cargo/env"


alias typora="/Applications/Typora.app/Contents/MacOS/Typora"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"

alias setproxy="export ALL_PROXY=http://127.0.0.1:7890; echo 'SET PROXY SUCCESS!!!'"
alias unsetproxy="unset ALL_PROXY; echo 'UNSET PROXY SUCCESS!!!'"