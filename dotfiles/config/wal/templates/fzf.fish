function fzf
## Wrapper for fzf, to configure it nicely
  # command fzf --layout=reverse --info=hidden --height=20% --no-bold --color='fg:{foreground},fg+:#ffffff,bg:{background},bg+:{color3},gutter:{background},hl:{color5},hl+:{color7},preview-fg:{foreground},preview-bg:{background},border:{color7},pointer:{color5}'
  command fzf --layout=reverse --info=hidden --height=20% --no-bold --color='fg:{foreground},bg:{background},bg+:{background},hl:{color6},hl+:{color8},gutter:{background},pointer:{color6}'
end

