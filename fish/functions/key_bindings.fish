bind \ca 'beginning-of-line'
bind \ce 'end-of-line'
bind \cr '__history_search_and_complete'
bind \cx '__history_search_and_execute'
bind \cg '__ghq_look'
bind \ct '__tig'

if bind -M insert >/dev/null ^/dev/null
  bind -M insert \ca 'beginning-of-line'
  bind -M insert \ce 'end-of-line'
  bind -M insert \cr '__history_search_and_complete'
  bind -M insert \cx '__history_search_and_execute'
  bind -M insert \cg '__ghq_look'
  bind -M insert \ct '__tig'
end
