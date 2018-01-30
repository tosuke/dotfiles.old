function __history_search_and_execute
  __history_search (commandline -b) | read -lz select
  if not test -z $select
    echo \n"execting: $select"
    eval $select
    commandline -f repaint
  end
end