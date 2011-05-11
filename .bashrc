# ~/.bashrc: executed by bash(1) for non-login shells.

FILES=~/.bash.d/*
if [ -d ~/.bash.d ] ; then
  for file in ~/.bash.d/*.sh; do
    if [ -r $file ]; then
      . $file
    fi
  done
  unset file
fi

