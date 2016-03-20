#!/bin/sh
#
# Oh-my-zsh
#
# Install the excellent robbyrussell/oh-my-zsh framework for zsh prompt

# Check for oh-my-zsh
if ! [ -d $HOME/.oh-my-zsh ]
then
	curl -fsSL "https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh"
fi

exit 0
