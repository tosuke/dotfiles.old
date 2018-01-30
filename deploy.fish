function deploy
  set -l source $argv[1]
  set -l dest $argv[2]
  for path in (find $source | string replace $source '' | string replace -r '^/' '' | string match -v '')
    if test -d $source/$path
      mkdir -p $dest/$path
    else
      if test -L $dest/$path
        if test (realpath $dest/$path) = (realpath $source/$path)
          continue
        end
      end

      if test -e $dest/$path
        rm $dest/$path
      end
      ln -sfnv (realpath $source/$path) $dest/$path
    end
  end
end

set -l list 'common' $argv

echo 'Deploy files'
for type in $list
  deploy $type/home $HOME
  deploy $type/config $HOME/.config
end

if not contains fisher (functions)
  echo 'Install fisher'
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
end

echo "Install fish plugins"
fisher install (pwd)/fish/*
