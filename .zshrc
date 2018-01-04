export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/homebrew/bin:$PATH"
export EDITOR='vim'

ZSH_THEME="robbyrussell"

DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -z "$TMUX" ]]; then
    tmux new-session -d -s me
    tmux select-window -t me:0
    tmux attach-session -t me
fi
