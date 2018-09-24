if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

