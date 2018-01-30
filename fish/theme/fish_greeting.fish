function fish_greeting
  function __sync_vscode
    echo 'Sync vscode extensions'
    sync-vscode-extensions
  end
  function __sync_fisher
    echo 'Sync fish plugin'
    fisher up
  end

  daily-task '__sync_vscode' '__sync_fisher'
end