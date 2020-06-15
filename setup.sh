sudo apt update
sudo apt upgrade -y

sudo apt install vim -y

sudo apt install ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

sudo apt install git -y
sudo apt install tmux -y

