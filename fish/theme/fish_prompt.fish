function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  if not set -q __fish_git_prompt_show_informative_status
    set -g __fish_git_prompt_show_informative_status 1
  end
  if not set -q __fish_git_prompt_hide_untrackedfiles
    set -g __fish_git_prompt_hide_untrackedfiles 1
  end

  if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
  end

  set -l color_cwd
  set -l prefix
  set -l suffix
  switch "$USER"
    case root toor
      if set -q fish_color_cwd_root
        set color_cwd $fish_color_cwd_root
      else
        set color_cwd $fish_color_cwd
      end
      set suffix '#'
    case '*'
      set color_cwd $fish_color_cwd
      set suffix '$'
  end

  # PWD
  set_color $color_cwd
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_vcs_prompt)

  if not test $last_status -eq 0
    set_color $fish_color_error
    echo -n "[$last_status] "
    set_color normal
  end

    echo -n "$suffix "
end
