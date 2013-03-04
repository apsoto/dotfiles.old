# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
	alias ls='ls -GF'
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
alias fr='bundle exec foreman run'
alias ws='cd ~/projects/wurl/servers/wurl-server'
alias wsd='cd ~/projects/wurl/wurl_show_data'
alias ww='cd ~/projects/wurl/server/wurl-workers'
alias api='cd ~/projects/wurl/servers/wurl-api'
alias wsc='cd ~/projects/wurl/ops/wurl-chef-repo'
alias cr='cd ~/projects/channels/channels-reader'
alias crc='cd ~/projects/channels/channels-chef-repo'
alias siren='cd ~/projects/wurl/clients/siren-browser'
alias andrea='cd ~/projects/wurl/clients/wurl-api-client-andrea'
alias pt='cd ~/projects/pt/svn'
