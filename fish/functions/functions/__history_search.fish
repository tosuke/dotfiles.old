function __history_search
  set -l esc \uFFFE
  set -q HISTORY_IGNORE_WORDS; or set -l HISTORY_IGNORE_WORDS '^ls' '^cd'

  set -l query ( \
    for w in $HISTORY_IGNORE_WORDS; echo $w; end \
      | string replace -r '^\^' "^;$esc" \
      | awk '{print "("$0")"}' \
      | string join '|' \
  )
 
  builtin history --null \
    | sed -e "s/\\x0/\n;$esc/g" \
    | string trim \
    | string match -vr "$query" \
    | fish_indent -i --ansi \
    | awk "/^$esc/{ printf \"%s\",\$0 } /^[^$esc]/{ printf \"\\n%s\",\$0 }" \
    | string match -r ".+" \
    | sed -e "s/$esc/\\x0/g" \
    | fzf --read0 --tiebreak=index --toggle-sort=ctrl-r --query="$argv"
end