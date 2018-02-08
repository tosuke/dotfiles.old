emojify -l \
  | rofi -dmenu -p '>' \
  | awk '{print $2}' \
  | read -l select

if test -n "$select"
  echo $select | xclip -r
end