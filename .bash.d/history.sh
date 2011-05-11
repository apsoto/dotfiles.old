# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTIGNORE="&:exit:bg:fg:cd" # ignore duplicate entries, and other mundane commands
# ensures that when you exit a shell, the history from that session is appended to ~/.bash_history.
shopt -s histappend


