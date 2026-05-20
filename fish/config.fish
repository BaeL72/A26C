if status is-login
	if test (tty) = /dev/tty1
		exec start-hyprland
	end
end
if status is-interactive

  fish_vi_key_bindings

  bind -M insert \cf history-pager
  bind -M insert \cr ""

  alias ls='eza --icons=auto'
  alias cat='bat'
  alias icat='kitty +kitten icat'
  alias pdf='bookokrat'
  alias ua='trans -b :uk'

  abbr y 'yazi'
  abbr !! --position anywhere --function last_command
  function last_command
    echo $history[1]
  end
function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold '#1e90ff'
            echo '[N] '
        case insert
            set_color --bold '#50fa7b'
            echo '[I] '
        case replace_one
            set_color --bold '#dd2233'
            echo '[R] '
        case visual
            set_color --bold '#9400d3'
            echo '[V] '
    end
    set_color normal
end
  function fish_prompt
	  echo (set_color green)$PWD
	  echo (set_color '#f0e7d5')'> '
  end

  set fish_greeting
  # starship init fish | source
  set -gx PATH $HOME/.local/bin $PATH

 end
