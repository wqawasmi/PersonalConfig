# Fetches & installs required packages to ensure my dev setup works as intended.

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Adobe SourceCodePro Fonts
brew tap homebrew/cask-fonts && brew cask install font-source-code-pro

# Vim (based on setup made by @jessfraz)
cd ~/
git clone --recursive https://github.com/jessfraz/.vim.git .vim
ln -sf $HOME/.vim/vimrc $HOME/.vimrc
cd $HOME/.vim
git submodule update --init

# Fish
brew install fish

# OhMyFish
curl -L https://get.oh-my.fish | fish

# GCloud CLI
cd ~/
curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-242.0.0-darwin-x86.tar.gz | tar xz
~/google-cloud-sdk/install.sh

# pip
cd /tmp
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

# AWS CLI
pip install awscli


# Fun Stuff
brew install fortune
brew install cowsay
brew install lolcat

# Done :)
echo "Now you're like Walee!" | cowsay | lolcat
