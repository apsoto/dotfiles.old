
if [ -d ~/.ssh ] ; then
  for file in ~/.ssh/*.pem; do
    if [ -r $file ]; then
      ssh-add $file
    fi
  done
  unset file
fi

