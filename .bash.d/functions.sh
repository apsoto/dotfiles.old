# set the terminal window title to the value passed in
function settitle() {
  echo -ne "\033]0;$@\007"
}

# Returns the absolute path of the given argument
# Note: does not validate the file exists
function absolute_path() {
  echo $(cd $(dirname $1); pwd)/$(basename $1)
}

# let mac apps know the PATH, for example, ide's that run tools, etc
if [[ uname -eq "Darwin" ]]; then
  # Set Finder label color
function set_color_label(){
  if [ $# -lt 2 ]; then
    echo "USAGE: label [0-7] file1 [file2] ..."
    echo "Sets the Finder label (color) for files"
    echo "Default colors:"
    echo " 0  No color"
    echo " 1  Orange"
    echo " 2  Red"
    echo " 3  Yellow"
    echo " 4  Blue"
    echo " 5  Purple"
    echo " 6  Green"
    echo " 7  Gray"
  else
    osascript - "$@" << EOF
    on run argv
        set labelIndex to (item 1 of argv as number)
        repeat with i from 2 to (count of argv)
          tell application "Finder"
              set theFile to POSIX file (item i of argv) as alias
              set label index of theFile to labelIndex
          end tell
        end repeat
    end run
EOF
  fi
}
fi



