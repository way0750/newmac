# install oh my zsh first because some of the following depends on my zsh’s dir
# make when done installing zsh, exit out of it to continue
mkdir ~/repos

sh ./gitInstallations/oh-my-zsh/tools/install.sh

# should find+replace and/or add new alias and whatnot to .zshrc

# install fonts:
sh ./gitInstallations/fonts/install.sh

# install powerlevel9k for zsh
cp -r ./gitInstallations/powerlevel9k ~/.oh-my-zsh/custom/themes/powerlevel9k

# install the powerlevel9k theme:
sed -i -e 's/ZSH_THEME\=\"robbyrussell\"/ZSH_THEME\=\"powerlevel9k\/powerlevel9k\"/' ~/.zshrc

# install autojump
./gitInstallations/autojump/install.py

# install /.fzf
./gitInstallations/fzf/install

# install  homebrew: 
# this will install xcode too if missing
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# then enter this to install brew cask
brew cask

# install these apps:
brew install fzf

$(brew --prefix)/opt/fzf/install



