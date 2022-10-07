#!/usr/bin/zsh

if [ -d "$HOME/.vim/bundle" ]
then
	echo "vundle already installed"
else
	echo "--- vundle is a prerequisite for this .vimrc ---"
	echo "--- please install Vundle ---"
	echo "https://github.com/VundleVim/Vundle.vim#quick-start"
fi

echo "copying .vimrc ... \n"

cp .vimrc $HOME/.vimrc

echo ".vimrc copied"
echo "⚠️ :PluginInstall"

echo ":source ..."