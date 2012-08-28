# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
	alias ls='ls -GF'
    alias diff=/opt/local/bin/colordiff
    alias grep='grep --color'
fi

# some more ls aliases
alias ll='ls -l'
alias pgrep='pgrep -L'

alias rack='ack --rails'
alias pgstart='sudo port load postgresql90-server'
alias pgstop='sudo port unload postgresql90-server'
alias mysqlstart='sudo launchctl load /Library/LaunchDaemons/org.macports.mysql5.plist'
alias mysqlstop='sudo launchctl unload /Library/LaunchDaemons/org.macports.mysql5.plist'

alias be='bundle exec'
alias ws='cd ~/projects/wurl/servers/wurl-server'
alias wsc='cd ~/projects/wurl/ops/wurl-chef-repo'
alias cr='cd ~/projects/channels/channels-reader'
alias crc='cd ~/projects/channels/channels-chef-repo'
