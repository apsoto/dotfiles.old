# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# vi mode for editing command lines.
set -o vi

# CDPATH so you can jump around without typing a lot.  Uses autocompletion too
export CDPATH=.:~
cdpaths="$([ -d ~/projects ] && find ~/projects -maxdepth 1 -type d | egrep -v '/(\.)|_[a-zA-Z0-9]' | egrep -v '(bin)|(cmd)|(doc)|(lib)|(pkg)|(test)' | xargs -n1 dirname | uniq)"
for i in $cdpaths; do
  CDPATH=$CDPATH:$i
done