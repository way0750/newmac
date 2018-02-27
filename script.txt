# things to install
# install  homebrew: 
# this will install xcode too if missing
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# then enter this to install brew cask
brew cask
# install these apps:
brew cask install iterm2 spectacle google-chrome visual-studio-code karabiner-elements postman sequel-pro autojump
# install zsh
oh-my-zsh: sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir repos
# install fonts:
# clone
cd ~
git clone https://github.com/powerline/fonts.git --depth=1
# install
./fonts/install.sh
# clean-up a bit
sudo rm -rf fonts

