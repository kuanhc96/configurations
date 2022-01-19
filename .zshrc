# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/bin:/usr/local/bin:/home/${USER}/anaconda3/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/${USER}/.oh-my-zsh"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/bagel/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/bagel/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/bagel/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/bagel/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

function container_logs () {
  docker logs -f $(docker ps --format "{{.ID}}" --filter "name=$1")
}

alias -g vim='nvim'
