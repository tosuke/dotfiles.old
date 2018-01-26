# Tomorrow Night Bright
set -l background 000000
set -l current_line 2a2a2a
set -l selection 424242
set -l foreground eaeaea
set -l comment 969896
set -l red d54e53
set -l orange e78c45
set -l yellow e7c547
set -l green b9ca4a
set -l aqua 70c0b1
set -l blue 7aa6da
set -l purple c397d8

set -g fish_color_normal $foreground
set -g fish_color_command $purple
set -g fish_color_quote $green
set -g fish_color_redirection $aqua
set -g fish_color_end $purple
set -g fish_color_error $red
set -g fish_color_param $blue
set -g fish_color_comment $yellow
set -g fish_color_match $foreground --background=$aqua
set -g fish_color_search_match $yellow --background=$selection
set -g fish_color_operator $yellow
set -g fish_color_escape $yellow --bold
set -g fish_color_autosuggestion $comment
set -g fish_color_valid_path $foreground --underline
set -g fish_color_history_current $foreground --bold
set -g fish_color_selection $foreground --bold --background=$selection
set -g fish_pager_color_prefix $foreground --bold --underline
set -g fish_pager_color_description $green
set -g fish_pager_color_progress $foreground --background=$aqua

