# Hybrid Next
set -l selection 354751

setu fish_color_normal brwhite
setu fish_color_command brcyan
setu fish_color_quote brgreen
setu fish_color_redirection brblue
setu fish_color_end brcyan
setu fish_color_error brred
setu fish_color_param brwhite
setu fish_color_comment white --italics
setu fish_color_match black --background=brblue
setu fish_color_search_match brwhite --background=$selection
setu fish_color_operator brcyan
setu fish_color_escape yellow --bold
setu fish_color_autosuggestion white
setu fish_color_valid_path $fish_color_normal --underline
setu fish_color_history_current brblue --bold
setu fish_color_selection $fish_color_normal --background=$selection
setu fish_color_cwd brgreen
setu fish_pager_color_prefix yellow
setu fish_pager_color_completion $fish_color_normal --backfround=$selection
setu fish_pager_color_description green
setu fish_pager_color_progress green