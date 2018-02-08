#!/bin/fish
set -l list \
  "Logout:i3-msg exit" \
  "Shutdown:systemctl poweroff" \
  "Reboot:systemctl reboot"

for cmd in $list
  echo $cmd | awk -F':' '{print $1}'
end

if test -n $argv[1]
  for cmd in $list
    if test (echo $cmd | awk -F':' '{print $1}') = $argv[1]
      eval (echo $cmd | awk -F':' '{print $2}')
    end
  end
end