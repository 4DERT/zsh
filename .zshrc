# Dependancies You Need for this Config
# zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
# autojump - jump to directories with j or jc for child or jo to open in file manager
# zsh-autosuggestions - Suggestions based on your history

# Initial Setup
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# Setup Alias in $HOME/.zsh/aliasrc

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


# Pure Prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
setopt    histignorespace   #Don't add to the history when starts with space

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept
bindkey '^[[1;5D' backward-word         # ctrl + left arrow 
bindkey '^[[1;5C' forward-word          # ctrl + right arrow
bindkey '^[[3~' delete-char             # delete
bindkey '^[[H'   beginning-of-line      # home
bindkey '^[[F'   end-of-line            # end
bindkey '^H' backward-kill-word			# ctrl + backspace

# Load aliases and shortcuts if existent.
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"

# Load ; should be last. (works on manjaro)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
#source /usr/share/autojump/autojump.zsh 2>/dev/null

# works on kde neon
#source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

export LANG=en_US.UTF-8
export LANGUAGE=en
export LC_ALL=C.UTF-8
export PATH=$PATH:~/.local/bin/

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'


