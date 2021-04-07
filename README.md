# dotFiles

```bash
alias dofl='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> ~/.gitignore
git clone --bare https://github.com/KseandI/dotFiles.git $HOME/.dotfiles
dofl checkout --force
```
