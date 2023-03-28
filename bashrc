
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.iterm2_shell_integration.bash
source ~/.creds
export PS1='\u@\h \W$(__git_ps1 " [%s]")$ '

# export PATH='/usr/local/bin:$PATH'
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
# source /usr/local/bin/virtualenvwrapper.sh

export HIPCHAT_API_KEY='VTpvT891zGC2MN3xHqAYeh3SezK6kDPTqrtYSsPD'

alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test100.zip3'
alias ls='ls -G'
alias ll='ls -ltrh'
alias back="cd $OLDPWD"

# Vagrant commands
alias vp='vagrant provision'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vd='vagrant destroy -f'
alias vh='vagrant halt'
alias vr='vagrant reload'

# go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH="/Users/skatz/go"
export PATH=$PATH:$GOPATH/bin
export PATH=/usr/local/go/bin:$PATH

#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
#
#PS1='\W$(__git_ps1 " [%s]") $ '
## the PS1 above looks like this:
## hackerschool [announcements $%] $

export PATH="$HOME/.yarn/bin:$PATH"

export AWS_DEFAULT_REGION="us-east-1"

alias tptssh='ssh -J bastion.tptpm.info'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/skatz/google-cloud-sdk/path.bash.inc' ]; then source '/Users/skatz/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/skatz/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/skatz/google-cloud-sdk/completion.bash.inc'; fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export PATH="/usr/local/sbin:$PATH"

# TpT Dev VM specific config

export FRONT_HOSTNAME=front-skatz
export TPT_EXWORKER_SRC_PATH=/Users/skatz/work/exworker
export TPT_API_SRC_PATH=/Users/skatz/work/api
export PATH="/Users/skatz/api/bin:$PATH"

source <(kubectl completion bash)
#source <(helm completion bash)

#kubectl completion bash | source /dev/stdin

#prompt_set() {
#    PROMPT_KUBECONTEXT="k8s:$(kubectl config current-context 2>/dev/null)\n"
#   PS1="${PROMPT_KUBECONTEXT}[\u@\h \W]\$ "
#}

#source <(tpt completion bash)
tpt completion bash | source /dev/stdin
export WTF=lol

alias eksssh='ssh -J ec2-user@3.86.186.249'

export BRIGADE_NAMESPACE=brigade

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

. /usr/local/opt/asdf/asdf.sh

export DOCKER_BUILDKIT=1

# asdf yarn stuff
export PATH="$(yarn global bin):$PATH"


export SELLER_ETL_DEV_KEYFILE="~/gcp/tpt-data/seller-etl-dev.json"

eval "$(hub alias -s)"
