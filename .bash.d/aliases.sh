# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
	alias ls='ls -GF'
    alias diff=/opt/local/bin/colordiff
    alias grep='grep --color'
fi

# some more ls aliases
alias ll='ls -l'
alias pgrep='pgrep -L'

alias rack='ack --ruby --yaml --js --css'
alias pgstart='sudo port load postgresql90-server'
alias pgstop='sudo port unload postgresql90-server'
alias mysqlstart='sudo launchctl load /Library/LaunchDaemons/org.macports.mysql5.plist'
alias mysqlstop='sudo launchctl unload /Library/LaunchDaemons/org.macports.mysql5.plist'

alias be='bundle exec'
