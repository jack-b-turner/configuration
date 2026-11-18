HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

autoload -Uz compinit
compinit
setopt inc_append_history  
setopt share_history        
setopt hist_ignore_dups      
setopt hist_ignore_all_dups  
setopt hist_reduce_blanks

zstyle ':completion:*' menu select

# Case-insensitive and partial-word completion (e.g., 'm/d' expands to 'movies/downloads')
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Match color settings of the 'ls' command in the completion menu
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

