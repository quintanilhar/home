#export ZSH=/home/quintanilhar/.oh-my-zsh
#export PATH="/home/quintanilhar/.composer/vendor/bin:$PATH"
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
