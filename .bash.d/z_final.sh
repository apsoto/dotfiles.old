# let mac apps know the PATH, for example, ide's that run tools, etc
if [[ uname -eq "Darwin" ]]; then
  launchctl setenv PATH $PATH
fi

