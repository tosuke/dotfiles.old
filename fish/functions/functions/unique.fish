function unique
  awk '!colname[$0]++{print $0}'
end