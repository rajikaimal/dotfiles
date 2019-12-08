#!/bin/sh

if [ -d "$HOME/.vim/bundle" ]
then
	echo "Vundle already installed"
else
	echo "Vundle is a prerequisite for this .vimrc"
	echo "Please install Vundle,"
	echo "Install: https://github.com/VundleVim/Vundle.vim#quick-start"
fi

echo "Copying .vimrc ... \n"

cp .vimrc $HOME/.vimrc

echo ".vimrc copied"
echo ":source %"
echo ":PluginInstall"
