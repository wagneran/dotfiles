export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export HISTFILESIZE=
export HISTSIZE=
export GOPATH=$HOME
export GOBIN=$GOPATH/bin
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

CONFIGS=$(find ~/.kube/configs/* | awk '{out=(NR==1) ? $1 : out":"$1} END{print out}')
export KUBECONFIG=$CONFIGS
ADMIN_CONFIGS=$(find ~/.kube/admin_configs/* | awk '{out=(NR==1) ? $1 : out":"$1} END{print out}')
export KUBECONFIG="$ADMIN_CONFIGS:$CONFIGS"
export PATH="~/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/bin:$PATH"
