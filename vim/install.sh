#!/bin/sh
#
# Vim
#
# Install required dependencies for Vim

# Check for .vim
if ! [ -d $HOME/.vim/bundle/Vundle.vim ]
then
	echo ''
  	echo 'Installing Vundle for you.'
	echo "› git clone git@github.com:VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim"
  	git clone git@github.com:VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

exit 0
