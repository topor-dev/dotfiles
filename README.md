# dotfiles

### manual
https://www.atlassian.com/git/tutorials/dotfiles

### usage

    git clone --bare <repo-url> $HOME/.dotfiles
    alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
    config checkout
