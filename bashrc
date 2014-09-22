if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# export PATH='/usr/local/bin:$PATH'
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh

export HIPCHAT_API_KEY='VTpvT891zGC2MN3xHqAYeh3SezK6kDPTqrtYSsPD'

#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
#
#PS1='\W$(__git_ps1 " [%s]") $ '
## the PS1 above looks like this:
## hackerschool [announcements $%] $
