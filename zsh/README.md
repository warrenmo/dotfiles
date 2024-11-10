# Requirements

## zsh

### MacOS

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

# Installation

## .zshrc

```bash
$ mv ~/.zshrc ~/.zshrc.old
$ cp dotfiles/zsh/.zshrc ~/
```

## Plugins

```bash
$ mkdir -p ~/.local/zsh/plugins
$ cp -r dotfiles/zsh/plugins ~/.local/zsh
```

### zsh-autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
```

### zsh-syntax-highlighting

```bash
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins
```

### powerlevel10k

#### MacOS

```bash
$ brew install powerlevel10k
$ echo "source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme" >> .zshrc
```

#### powerlevel10k (local install)

```bash
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/plugins/powerlevel10k
$ echo "source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
$ source ~/.zshrc
```


# ssh-ing into zsh

There's a function `zssh` defined in this repo's `.zshrc` file that allows you to run
```bash
$ zssh <machine>
```
and have `zsh` run automatically. Under the hood, it's doing something like:
```
$ ssh -t <name>@<machine> "zsh -l"
```
or if you did a local install of `zsh`:
```bash
$ ssh -t <name>@<machine> "~/.local/bin/zsh -l"
```

