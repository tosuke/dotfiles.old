function __history_search_and_complete
  __history_search (commandline -b) | read -lz select
  if not test -z $select
    commandline -rb (builtin string trim -- "$select")
    commandline -f repaint
  end
end