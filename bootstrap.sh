#!/usr/bin/zsh

print -P "%F{green}--- bootstrapping dotfiles ---%f\n"

OHMYZSH=$HOME/.oh-my-zsh
ZSHRC=$HOME/.zshrc
ALIASES=$HOME/.aliases
GITCONFIG=$HOME/.gitconfig
GITIGNORE=$HOME/.gitignore

# config files
# install oh-my-zsh
if [ ! -e "$OHMYZSH" ]; then
    print -P "%F{green}installing oh-my-zsh ...%f\n"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

echo $ZSHRC

if [ ! -e "$ZSHRC" ]; then
    print -P "%f{green}linking .zhsrc ...%f\n"
    ln .zshrc $ZSHRC
fi

if [ ! -e "$ALIASES" ]; then
    print -P "%f{yellow}linking .aliases ...%f\n"
    ln .aliases $ALIASES
fi

if [ ! -e "$GITCONFIG" ]; then
    print -P "%f{yellow}linking .gitconfig ...%f\n"
    ln .gitconfig $GITCONFIG
fi

if [ ! -e "$GITIGNORE" ]; then
    print -P "%f{yellow}linking .gitignore ...%f\n"
    ln .gitignore $GITIGNORE
fi

# python
brew install pyenv
pyenv update && pyenv install-latest

# nvm
print -P "%f{yellow}--- installing .nvm ---%f\n"
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
print -P "%f{yellow}--- setting up .vimrc ---%f\n"
zsh ./vim/install.sh

# vscode
print -P "%f{yellow}--- installing VSCode plugins ---%f\n"
zsh ./vscode/install.sh

source $ZSHRC

print -P "%f{green}exit 0 %f\n"
