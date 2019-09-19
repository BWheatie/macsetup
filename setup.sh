echo "Creating an SSH key for you..."
ssh-keygen -t rsa

echo "Please add this public key to Github \n"
echo "https://github.com/account/ssh \n"
read -p "Press [Enter] key after this..."

echo "Installing xcode-stuff"
xcode-select --install

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew..."
brew update

echo "Installing Git..."
brew install git

echo "Git config"
git config --global user.name "Ben Wheat"
git config --global user.email BWheatie@gmail.com

echo "Installing brew things..."
brew bundle

echo "Installing Oh My ZSH..."
curl -L http://install.ohmyz.sh | sh

echo "Setting ZSH as shell..."
chsh -s /bin/zsh

echo "Brew cleanup..."
brew cask cleanup
brew cleanup

echo "Setuping up MacOS..."
osx_setup.sh
