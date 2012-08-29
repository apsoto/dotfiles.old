
if [ -d ~/.ssh ] ; then
  ssh-add ~/.ssh/id_dsa

  for file in ~/.ssh/*.pem; do
    if [ -r $file ]; then
      ssh-add $file
    fi
  done
  unset file
fi

