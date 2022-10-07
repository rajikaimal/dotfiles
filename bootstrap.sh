#!/usr/bin/zsh

echo "--- bootstrapping dotfiles ---"

OHMYZSH=$HOME/.oh-my-zsh
ZSHRC=$HOME/.zshrc
ALIASES=$HOME/.aliases
GITCONFIG=$HOME/.gitconfig
GITIGNORE=$HOME/.gitignore

# Install oh-my-zsh
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
    echo "Linking .aliases ..."
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

echo "syncing ..."
source $ZSHRC
echo "exit 0"