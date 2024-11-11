ZSH=$HOME/.config/zsh
ZSH_PLUGINS=$ZSH/plugins

autoload -Uz compinit && compinit


### Functions

zssh() {
  if [[ -z "$1" ]]; then
    echo "Usage: zssh <server> [additional ssh options]"
    return 1
  fi
  local server="$1"
  shift  # Shift to handle additional SSH options after the server name
  ssh -t "$server" "~/.local/bin/zsh -l" "$@"
}


### History

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# ctrl + alt(opt) + p / n to scroll up / down your history after having written some of the terminal command
# E.g.: after sourcing this file, try `cd`-ing around some directories
#       and then type `cd` into the termianland press ctrl+alt+p a few times to see
#       your previous `cd` calls
bindkey '^[^P' history-search-backward
bindkey '^[^N' history-search-forward


### Aliases

alias v=nvim

# eza: ls alternative
alias ls="eza --icons=auto"

# zoxide: cd alternative
# NOTE: this line must be placed after the line compinit is called;
#       you may have to rebuild your completions cache by running `rm ~/.zcompdump*; compinit
eval "$(zoxide init zsh)"


### Plugins

# Git branch, subcommand, etc. completion
zstyle ':completion:*:*:git:*' script ~/.config/zsh/plugins/git-completion.bash
fpath=(~/.zsh $fpath)

# Git aliases (e.g., gst = git status; gcb = git checkout -b)
source $ZSH_PLUGINS/git.plugin.zsh

# zsh command autosuggestions
source $ZSH_PLUGINS/zsh-autosuggestions.zsh

# pretty + informative terminal prompt
# NOTE: uncomment the higher line or lower line (but not both)
#       depending on whether you installed via brew or locally, respectively
#source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme  # brew
#source $ZSH_PLUGINS/powerlevel10k/powerlevel10k.zsh-theme  # local

# highlight zsh commands as green (correct syntax) or red (incorrect syntax)
# NOTE: the lower this plugin is in this .zshrc file, the better
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


### Misc

# may be necessary to uncomment the line below
#  if treesitter.nvim is erroring like crazy when you run nvim
#CC=gcc
