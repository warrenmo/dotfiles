zssh() {
  if [[ -z "$1" ]]; then
    echo "Usage: sshz <server> [additional ssh options]"
    return 1
  fi
  local server="$1"
  shift  # Shift to handle additional SSH options after the server name
  ssh -t "$server" "~/.local/bin/zsh -l" "$@"
}
