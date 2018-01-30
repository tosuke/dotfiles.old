bind \ca 'beginning-of-line'
bind \ce 'end-of-line'
bind \cr '__history_search_and_complete'
bind \cx '__history_search_and_execute'

if bind -M insert >/dev/null ^/dev/null
  bind -M insert \ca 'beginning-of-line'
  bind -M insert \ce 'end-of-line'
  bind -M insert \cr '__history_search_and_complete'
  bind -M insert \cx '__history_search_and_execute'
end