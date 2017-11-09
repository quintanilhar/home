TO_LINK := .zshrc .tmux.conf .vimrc .vim

install:
	for path in $(TO_LINK); do \
		test -s ~/$$path || { ln -s ohana/$$path ~/$$path ; } \
	done
