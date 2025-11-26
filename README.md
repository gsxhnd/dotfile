# dotfile

```shell
apt install -y git curl zsh
sh -c "$(curl -fsLS get.chezmoi.io)"

sh -c "$(curl -fsSL https://install.ohmyz.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chezmoi init gsxhnd/dotfile
chezmoi apply
```
