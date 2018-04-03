/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#wget
brew install wget

#iterm2 and oh_my_zsh
brew cask install iterm2
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#loading cutom fucntions
cd ~/
git clone "https://github.com/namicersei/dotfiles.git"
echo "\nsource dotfiles/.functions\n" >> ~/.zshrc
source .zshrc

#apache installation
sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null
brew install httpd
sudo brew services start httpd

echo "Change docuemnt root\n"

mkdir ~/Sites
echo "<h1>Test Page</h1>" > ~/Sites/index.html
sudo apachectl -k restart

#php 7.2
brew install php72 --with-httpd
echo "Enable php module"
echo "<?php phpinfo(); ?>" > ~/Sites/phpVersion.php

#mariadb
brew install mariadb
echo "Run Secure Install then\nbrew services start mariadb"

#chrome
brew cask install google-chrome

#jdk
brew cask install java

#vlc
brew cask install vlc
