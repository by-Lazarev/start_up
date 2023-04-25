function brsw {
	eval "$(~/goinfre/homebrew/bin/brew shellenv)"
	chmod -R go-w "$(brew --prefix)/share/zsh"
}
alias py="python3"
brsw
brew update
brew install macvim
vim +PluginInstall +qall
brew install ctags
brew install npm
rm -rf ~/Movies ~/Music
