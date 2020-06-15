cd ~

sudo apt update
sudo apt upgrade -y

sudo apt-get install apt-transport-https -y

sudo apt install vim -y

# Firewall
sudo apt install ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

sudo apt install git -y
sudo apt install tmux -y

# Config files
wget https://raw.githubusercontent.com/NathanPhilliber/Config-Files/master/.tmux.conf -O ~/.tmux.conf
wget https://raw.githubusercontent.com/NathanPhilliber/Config-Files/master/.vimrc -O ~/.vimrc
wget https://raw.githubusercontent.com/NathanPhilliber/Config-Files/master/.zshrc -O ~/.zshrc

# ZSH and OH-MY-ZSH
sudo apt install zsh -y
chsh -s $(which zsh)
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
pwd | xargs -I {} sed -i.old '1s;^;export ZSH="{}/.oh-my-zsh"\n;' .zshrc
rm .zshrc.old

# Setup SSH
mkdir ~/.ssh
touch ~/.ssh/authorized_keys
