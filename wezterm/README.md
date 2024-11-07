# Source

Basically everything here was taken from [https://mwop.net/blog/2024-07-04-how-i-use-wezterm.html](https://mwop.net/blog/2024-07-04-how-i-use-wezterm.html).

# Installation

```bash
$ cp dotfiles/wezterm/.wezterm.lua ~/
```

## Fonts

```bash
$ git clone https://github.com/powerline/fonts.git
$ cd fonts
$ ./install.sh
$ cd ..
$ rm -rf fonts
```

## WezTerm Session Manager

```bash
$ git clone https://github.com/danielcopper/wezterm-session-manager.git ~/.config/wezterm/wezterm-session-manager
```

## wezterm.nvim

```bash
$ git clone https://github.com/aca/wezterm.nvim.git
$ cd wezterm.nvim/wezterm.nvim.navigator && go install
$ cd ../..
$ rm -rf wezterm.nvim
```

### Golang compiler

```bash
$ brew install go
```

### Recommended step (though seemingly unnecessary?)

Add this to your `.bashrc` or `.zshrc`:
```
[ -n "$WEZTERM_PANE" ] && export NVIM_LISTEN_ADDRESS="/tmp/nvim$WEZTERM_PANE"
```

