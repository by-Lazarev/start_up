m -rf ~/Library/Containers/com.docker.docker
mkdir -p ~/goinfre/Docker/Data
ln -s ~/goinfre/Docker ~/Library/Containers/com.docker.docker
git clone https://github.com/Homebrew/brew goinfre/homebrew
omz reload
brsw
brew update
