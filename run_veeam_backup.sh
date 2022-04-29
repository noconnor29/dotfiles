#!/bin/bash
# requires .deb install of veeam agent
veeamconfig job start --name "x1"

# link to /etc/profile.d
# sudo ln -s /home/nick/.userconfigs/run_veeam_backup.sh /etc/profile.d/run_veeam_backup.sh
