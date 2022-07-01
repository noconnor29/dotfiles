alias upall="sudo apt update -y && sudo apt upgrade -y --allow-downgrades && sudo apt autoremove -y && flatpak update -y"
alias dc-pull='sudo docker-compose -f /opt/docker/docker-compose.yml pull'
alias dc-up='sudo docker-compose -f /opt/docker/docker-compose.yml up -d --remove-orphans'
alias dc-down='sudo docker stop $(sudo docker ps -aq) && sudo docker rm $(sudo docker ps -aq)'
alias please='sudo'
alias yl='yamllint'
alias al='ansible-lint'
