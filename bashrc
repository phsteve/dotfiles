
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
alias ll='ls -ltr'
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

#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
#
#PS1='\W$(__git_ps1 " [%s]") $ '
## the PS1 above looks like this:
## hackerschool [announcements $%] $

export PATH="$HOME/.yarn/bin:$PATH"

export AWS_DEFAULT_REGION="us-east-1"

# Use jumphost when using SSH, but save a reference to plain old
# ssh before doing so.
alias ossh='/usr/local/bin/ssh'
alias ssh='ossh -J bastion.tptpm.info'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/skatz/google-cloud-sdk/path.bash.inc' ]; then source '/Users/skatz/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/skatz/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/skatz/google-cloud-sdk/completion.bash.inc'; fi

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export PATH="/usr/local/sbin:$PATH"

# TpT Dev VM specific config

export FRONT_HOSTNAME=front-skatz
export TPT_EXWORKER_SRC_PATH=/Users/skatz/work/exworker
export TPT_API_SRC_PATH=/Users/skatz/work/api
source /usr/local/opt/asdf/asdf.sh
export PATH="/Users/skatz/api/bin:$PATH"
