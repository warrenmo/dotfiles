# Requirements

## cmake

## make

## ripgrep

`ripgrep` is recommended for `telescope.nvim`. To install `ripgrep`, we first need to install `cargo`:
```bash
$ curl https://sh.rustup.rs -sSf | sh
$ cargo --version
```
Now we can install `ripgrep`:
```bash
$ cargo install ripgrep
```

# Installation

## Neovim

See [https://github.com/neovim/neovim/blob/master/INSTALL.md](https://github.com/neovim/neovim/blob/master/INSTALL.md).

### Older systems

[This repo](https://github.com/neovim/neovim-releases) maintains unsupported builds of neovim.

# Plugins

# LSPs

## Rust

In order to install a Rust LSP, we need `rust-analyzer`

```bash
$ curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
$ chmod +x ~/.local/bin/rust-analyzer
$ rust-analyzer --version
```
