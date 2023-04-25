function brsw {
	eval "$(~/goinfre/homebrew/bin/brew shellenv)"
	chmod -R go-w "$(brew --prefix)/share/zsh"
}
alias py="python3"
brsw
brew update
rm -rf ~/Movies ~/Music
