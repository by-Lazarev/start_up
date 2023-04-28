ln -s ~/goinfre/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
omz reload
brew install ctags
brew install npm
vim +PluginInstall +qall
