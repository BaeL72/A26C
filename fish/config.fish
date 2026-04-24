if status is-interactive
   fish_vi_key_bindings
   bind -M insert -m default jj "repaint"
   bind -M visual -m default jj "repaint"
   bind -M replace -m default jj "repaint"
    # Starship custom prompt
    #    starship init fish | source
    alias ls='lsd'
    alias cat='bat'
    abbr y 'yazi'
    alias icat='kitty +kitten icat'

    set fish_greeting
    starship init fish | source
 end
