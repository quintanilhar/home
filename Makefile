TO_LINK := .zshrc .tmux.conf .vimrc .vim .ctags .global_ignore

install:
	for path in $(TO_LINK); do \
		test -s ~/$$path || { ln -s ohana/$$path ~/$$path ; } \
	done
