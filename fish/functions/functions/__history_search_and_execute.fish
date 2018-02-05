function __history_search_and_execute
  __history_search (commandline -b) | read -lz select
  if not test -z $select
    echo \n"executing: $select"
    eval $select
  end
  commandline -f repaint
end