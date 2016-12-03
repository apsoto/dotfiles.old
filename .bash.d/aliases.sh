# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
	alias ls='ls -GF'
  alias grep='grep --color'
fi

# some more ls aliases
alias ll='ls -l'
alias stp='subl -project *.sublime-project'
alias be='bundle exec'
