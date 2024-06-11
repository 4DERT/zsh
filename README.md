# zsh

My ZSH Config

## Setup

```
tar -xzf .zsh.tar.gz
cp -r .zsh ~/
cp .zshrc ~/
```

## Get Dependencies

- zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos - https://github.com/zsh-users/zsh-syntax-highlighting
- zsh-autosuggestions - Suggestions based on your history - https://github.com/zsh-users/zsh-autosuggestions
- bat - Cat clone with syntax highlighting and git integration - https://github.com/sharkdp/bat
- zoxide - A smarter cd command. Supports all major shells. - https://github.com/ajeetdsouza/zoxide
- eza - A modern, maintained replacement for ls - https://github.com/eza-community/eza
- fd - A simple, fast and user-friendly alternative to 'find' - https://github.com/sharkdp/fd
- fzf - A command-line fuzzy finder - https://github.com/junegunn/fzf

### Debian Dependencies

```bash
sudo apt install zsh-syntax-highlighting zsh-autosuggestions zoxide bat fzf fd eza
```

### Arch Dependencies

```bash
yay -S zsh-syntax-highlighting zsh-autosuggestions zoxide bat fzf fd eza

yay -S ttf-jetbrains-mono-nerd
```

Finish the conversion by changing your user in /etc/passwd to /bin/zsh instead of /bin/bash

or typing `chsh $USER` and entering `/bin/zsh`

