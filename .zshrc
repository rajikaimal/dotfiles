# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(
    git
    zsh-autosuggestions
)

source $HOME/.aliases
source $ZSH/oh-my-zsh.sh

export PATH=/opt/homebrew/bin:$PATH

export DENO_INSTALL="/Users/rajikai/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

