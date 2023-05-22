TO_LINK := .zshrc .tmux.conf .vimrc .vim .ctags .global_ignore

install:
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	for path in $(TO_LINK); do \
		test -s ~/$$path || { ln -s ohana/$$path ~/$$path ; } \
	done
