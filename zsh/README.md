# Installation

## zsh

```bash
$ brew install zsh
$ chsh $(which zsh)
```

### Local install

```bash
$ cd ~
$ curl -L https://sourceforge.net/projects/zsh/files/latest/download -o zsh.tar.xz
$ mkdir -p ~/.local
$ tar -xf zsh.tar.xz
$ cd zsh-*
$ ./configure --prefix=$HOME/.local
$ make && make install
$ cd ~
$ rm -f zsh.tar.xz
$ rm -rf zsh-<version number>
```

### ssh-ing into zsh

```
$ ssh -t <name>@<machine> "zsh -l"
```
or if you did a local install of `zsh`:
```bash
$ ssh -t <name>@<machine> "~/.local/bin/zsh -l"
```

There's also a function defined in this repo's `.zshrc` file that allows you to just run `zssh <machine>`.


# .zshrc

```bash
$ mv ~/.zshrc ~/.zshrc.old
$ cp dotfiles/zsh/.zshrc ~/
```

# Plugins

```bash
$ mkdir -p ~/.local/zsh/plugins
$ cp -r dotfiles/zsh/plugins ~/.local/zsh
```

## powerlevel10k

```bash
$ brew install powerlevel10k
$ echo "source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme" >> .zshrc
```

### Local install

```bash
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/plugins/powerlevel10k
$ echo "source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
$ source ~/.zshrc
```

