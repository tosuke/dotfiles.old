bind \ca 'beginning-of-line'
bind \ce 'end-of-line'

if bind -M insert >/dev/null ^/dev/null
  bind -M insert \ca 'beginning-of-line'
  bind -M insert \ce 'end-of-line'
end