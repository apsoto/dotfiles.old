function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function ruby_info() {
  ruby --version | ruby -e 'info=STDIN.read.split(" "); puts "#{info[1]}(p#{info[4]}"'
}

function rvm_info() {
  echo $GEM_HOME | ruby -e 'puts STDIN.read.split("/").last'
}

function set_prompt {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  # case $TERM in
  #   xterm*)
  #   TITLEBAR='\[\033]0;\w\007\]'
  #   ;;
  #   *)
  #   TITLEBAR=""
  #   ;;
  # esac

  # git-radar: https://github.com/michaeldfallen/git-radar
  PS1="$BLUE[$GREEN\w$RED \$(rvm_info) \$(git-radar --bash --fetch) $BLUE]\n\$$WHITE "
  PS2='> '
  PS4='+ '
}


set_prompt
