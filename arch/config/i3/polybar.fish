killall -q polybar
for monitor in (polybar -m | awk -F':' '{print $1}')
  set -x MONITOR $monitor
  polybar example &
end