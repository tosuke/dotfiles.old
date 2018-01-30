case $1 in
  arch)
  ;;
  *)
    echo "unsupported os" >&2
    exit 1
  ;;
esac

mkdir -p $HOME/{src,bin,pkg}
git config --global ghq.root $HOME/src

ghq get https://github.com/Tosuke/dotfiles.git

cd $HOME/src/github.com/Tosuke/dotfiles
fish deploy.fish $1