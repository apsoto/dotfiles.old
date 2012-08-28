# set the terminal window title to the value passed in
function settitle() {
  echo -ne "\033]0;$@\007"
}
