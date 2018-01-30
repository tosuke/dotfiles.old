install-arch() {
  echo "Install arch requirements"
  
  echo "> set makepkg.conf"
  curl -Lo $HOME/.config/pacman/makepkg.conf --create-dirs 'https://raw.githubusercontent.com/Tosuke/dotfiles/master/arch/config/pacman/makepkg.conf'

  echo "> install clang"
  pacaur -S --noconfirm --needed clang
  
  echo "> install packages"
  curl 'https://raw.githubusercontent.com/Tosuke/dotfiles/master/requirements-arch' \
    | grep -ve '^$' -ve '^#' \
    | xargs pacaur -S --noconfirm --noedit --needed
}

echo $1
case $1 in
  arch)
    install-arch
  ;;
  "")
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
source $HOME/.env.sh