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
  alias show='bat -p'
  alias icat='kitty +kitten icat'
  alias pdf='bookokrat'
  alias ua='trans -b :uk'

  abbr y 'yazi'
  abbr !! --position anywhere --function last_command
  function last_command
    echo $history[1]
  end
  function fish_mode_prompt; end
  function fish_prompt
	  echo (set_color cyan)$PWD

	  switch $fish_bind_mode
		  case default
			  set_color --bold '#1e90ff'
			  echo -n '[NORMAL]'(set_color '#f0e7d5')' > '
		  case insert
			  set_color --bold '#50fa7b'
			  echo -n '[INSERT]'(set_color '#f0e7d5')' > '
		  case replace_one replace
			  set_color --bold '#dd2233'
			  echo -n '[REPLACE]'(set_color '#f0e7d5')' > '
		  case visual
			  set_color --bold '#9400d3'
			  echo -n '[VISUAL]'(set_color '#f0e7d5')' > '
		  case '*'
			  echo -n '[?]'(set_color '#f0e7d5')' > '
	  end
	  set_color normal
  end

  set fish_greeting
  # starship init fish | source
  set -gx PATH $HOME/.local/bin $PATH

 end
