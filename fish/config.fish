if status is-interactive

  fish_vi_key_bindings

  bind -M insert -m default jj "repaint"
  bind -M visual -m default jj "repaint"
  bind -M replace -m default jj "repaint"

  bind -M insert \cf history-pager
  bind -M insert \cr ""

  alias ls='eza --icons=auto'
  alias cat='bat'
  alias icat='kitty +kitten icat'

  abbr y 'yazi'
  abbr !! --position anywhere --function last_command
  function last_command
    echo $history[1]
  end

  set fish_greeting
  starship init fish | source

 end
