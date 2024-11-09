ZSH=$HOME/.config/zsh
ZSH_PLUGINS=$ZSH/plugins

### Custom functions

zssh() {
  if [[ -z "$1" ]]; then
    echo "Usage: zssh <server> [additional ssh options]"
    return 1
  fi
  local server="$1"
  shift  # Shift to handle additional SSH options after the server name
  ssh -t "$server" "~/.local/bin/zsh -l" "$@"
}

### Plugins

source $ZSH_PLUGINS/git.plugin.zsh
source $ZSH_PLUGINS/zsh-autosuggestions.zsh
# zsh-syntax-highlighting must go last
source $ZSH_PLUGINS/zsh-syntax-highlighting.zsh

# powerlevel10k location depends on whether you used `brew` or installed locally
