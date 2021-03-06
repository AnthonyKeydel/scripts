#git user setup
git config --global user.email "jeve0658@colorado.edu"
git config --global user.user "Jeff Venicx"
git config --global credential.helper 'cache --timeout=900'

#initial  install programs
sudo apt -qq -y install vim
sudo apt -qq -y install terminator
sudo apt -qq -y install synaptic

#atom install
if  dpkg
then
  wget -O atom-amd64.deb https://atom.io/download/deb
  sudo dpkg -i atom-amd64.deb
  sudo apt -qq -f install
  sudo rm atom-amd64.deb
fi

#slack install
if $(dpkg-query -W -f='${Status}' slack 2>/dev/null | grep -c "ok installed") -eq 1];
then
  xdg-open https://slack.com/downloads/instructions/debian
fi

#setup configs
sudo apt install compizconfig-settings-manager

#important extras
sudo apt -qq -y install cmake
sudo apt -qq -y install python-pip

#internet addons
sudo apt -qq -y install nmap
