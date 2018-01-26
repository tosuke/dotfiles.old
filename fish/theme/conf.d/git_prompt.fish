# fish git prompt
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_showstashstate 'yes'
set -g __fish_git_prompt_showupstream 'informative'
set -g __fish_git_prompt_color_branch yellow --bold

# Status Chars
set -g __fish_git_prompt_char_upstream_ahead '⬆️ '
set -g __fish_git_prompt_char_upstream_behind '⬇️ '
set -g __fish_git_prompt_char_upstream_prefix ''
set -g __fish_git_prompt_char_dirtystate '⚡ '
set -g __fish_git_prompt_char_untrackedfiles '… '
set -g __fish_git_prompt_char_stagedstate '● '
set -g __fish_git_prompt_char_stashstate '↩ '
set -g __fish_git_prompt_char_conflictedstate '✖ '
set -g __fish_git_prompt_char_cleanstate '✔ '

# Status Colors
set -g __fish_git_prompt_color_dirtystate blue --bold
set -g __fish_git_prompt_color_stagedstate yellow --bold
set -g __fish_git_prompt_color_invalidstate red --bold
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green --bold