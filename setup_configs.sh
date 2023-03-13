#!/bin/bash
# Used to move/link configs into user locations

# Link ~/.ssh/config
ln -sf ~/projects/dotfiles/.ssh/config ~/.ssh/config

# Link ~/.gitconfig
ln -sf ~/projects/dotfiles/.gitconfig ~/.gitconfig

# Link ~/.vimrc
ln -sf ~/projects/dotfiles/.vimrc ~/.vimrc

# Link ~/.bashrc and ~/.bash_aliases
ln -sf ~/projects/dotfiles/.bashrc ~/.bashrc
ln -sf ~/projects/dotfiles/.bash_aliases ~/.bash_aliases

# Will also need to run manually for veeam
# sudo ln -s /home/nick/.run_veeam_backup.sh /etc/profile.d/run_veeam_backup.sh
source ~/.bashrc
