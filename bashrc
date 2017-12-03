
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

source ~/.git-completion.bash
source ~/.git-prompt.sh
export PS1='\u@\h \W$(__git_ps1 " [%s]")$ '

# export PATH='/usr/local/bin:$PATH'
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh

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

#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
#
#PS1='\W$(__git_ps1 " [%s]") $ '
## the PS1 above looks like this:
## hackerschool [announcements $%] $

export PATH="$HOME/.yarn/bin:$PATH"
