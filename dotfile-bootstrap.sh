# inspired by https://github.com/mathiasbynens/dotfiles
read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rsync --exclude ".DS_Store" -av . ~
  echo "dotfiles repo moved to home dir"
fi

