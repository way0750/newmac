# install oh my zsh first because some of the following depends on my zsh’s dir
# make when done installing zsh, exit out of it to continue

# install  homebrew:
# this will install xcode too if missing
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# then enter this to install brew cask
brew cask

mkdir ~/repos
cd ~/repos

# install oh my zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git
sh ./oh-my-zsh/tools/install.sh

# should find+replace and/or add new alias and whatnot to .zshrc

# install fonts:
git clone https://github.com/powerline/fonts.git
sh ./fonts/install.sh

# install powerlevel9k for zsh
git clone https://github.com/Powerlevel9k/powerlevel9k.git
cp -r ./powerlevel9k ~/.oh-my-zsh/custom/themes/powerlevel9k
sed -i -e 's/ZSH_THEME\=\"robbyrussell\"/ZSH_THEME\=\"powerlevel9k\/powerlevel9k\"/' ~/.zshrc

# install autojump
git clone https://github.com/wting/autojump.git
./autojump/install.py

# download iTerm 2 theme
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git

cd ~
# install these apps:
brew install fzf

$(brew --prefix)/opt/fzf/install

# you still need alfred, avast security, google chrome, iterm2, karabiner elements, sequel-pro, spectacle, VSCode-darwin, SmootherScrollForVsCode
# for the SmootherScrollForVsCode
# copy the smoothscroll dir to
# $HOME/.vscode/extensions
# some times you need to compile the extentions first

