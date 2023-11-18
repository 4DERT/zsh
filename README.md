# zsh

My ZSH Config

## Setup

```
tar -xzf zsh.tar.gz
cp -r .zsh ~/
cp .zshrc ~/
```

## Get Dependencies

- zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
- zsh-autosuggestions - Suggestions based on your history

### Debian Dependencies

```bash
sudo apt install zsh-syntax-highlighting zsh-autosuggestions lsd bat-cat
```

### Arch Dependencies

```bash
yay -S zsh-syntax-highlighting zsh-autosuggestions lsd bat

yay -S ttf-jetbrains-mono-nerd
```

Finish the conversion by changing your user in /etc/passwd to /bin/zsh instead of /bin/bash

or typing `chsh $USER` and entering `/bin/zsh`

