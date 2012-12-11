
if [ -d ~/.ssh ] ; then
  # add default keys
  ssh-add

  for file in ~/.ssh/*.pem; do
    if [ -r $file ]; then
      ssh-add $file
    fi
  done
  unset file
fi

