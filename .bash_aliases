alias upall="sudo apt update -y && sudo apt upgrade -y --allow-downgrades && sudo apt autoremove -y && flatpak update"
alias dc-pull='docker-compose -f ~/docker/docker-compose.yml pull'
alias dc-up='docker-compose -f ~/docker/docker-compose.yml up -d --remove-orphans'
alias dc-down='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
