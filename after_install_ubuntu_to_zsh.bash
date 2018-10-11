
#!/bin/bash

sudo apt-get remove -y libreoffice-common unity-webapps-common thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg
sudo apt-get remove -y aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku onboard deja-dup

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

sudo apt-get install -y zsh git powerline fonts-powerline vim terminator
chsh -s /bin/zsh

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "" >> ~/.zshrc
echo "setopt no_nomatch" >> ~/.zshrc
echo "" >> ~/.zshrc

sudo init 6

