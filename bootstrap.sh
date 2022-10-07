#!/usr/bin/zsh

echo "--- bootstrapping dotfiles ---"

OHMYZSH=$HOME/.oh-my-zsh
ZSHRC=$HOME/.zshrc
ALIASES=$HOME/.aliases
GITCONFIG=$HOME/.gitconfig
GITIGNORE=$HOME/.gitignore

# config files
# install oh-my-zsh
if [ ! -e "$OHMYZSH" ]; then
    echo "installing oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

echo $ZSHRC

if [ ! -e "$ZSHRC" ]; then
    echo "linking .zhsrc ..."
    ln .zshrc $ZSHRC
fi

if [ ! -e "$ALIASES" ]; then
    echo "linking .aliases ..."
    ln .aliases $ALIASES
fi

if [ ! -e "$GITCONFIG" ]; then
    echo "linking .gitconfig ..."
    ln .gitconfig $GITCONFIG
fi

if [ ! -e "$GITIGNORE" ]; then
    echo "linking .gitignore ..."
    ln .gitignore $GITIGNORE
fi

# python
brew install pyenv
pyenv update && pyenv install-latest

# nvm
echo "--- installing .nvm ---"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# node
if (( $+commands[node] )); then
    print -P "%F{yellow}node is already installed %f\n"
else
    print -P "%F{green}installing node%f\n"
    . ~/.nvm/nvm.sh
    nvm install node # "node" is an alias for the latest version
fi

# vim
echo "--- setting up .vimrc ---"
zsh ./vim/install.sh

# vscode
echo "--- installing VSCode plugins ---"
zsh ./vscode/install.sh

source $ZSHRC

echo "exit 0"