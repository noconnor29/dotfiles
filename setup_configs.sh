#!/bin/bash
# Used to move/link configs into user locations

# Link ~/.ssh/config
ln -sf ~/.userconfigs/.ssh/config ~/.ssh/config

# Link ~/.vimrc
ln -sf ~/.userconfigs/.vimrc ~/.vimrc

# Link ~/.bashrc
ln -sf ~/.userconfigs/.bashrc ~/.bashrc

# Will also need to run manually for veeam
# sudo ln -s /home/nick/.run_veeam_backup.sh /etc/profile.d/run_veeam_backup.sh