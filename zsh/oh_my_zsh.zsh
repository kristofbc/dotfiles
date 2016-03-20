if [ -d $HOME/.oh-my-zsh ]
then
	# shortcut to this dotfiles path is $ZSH
	export ZSH=$HOME/.oh-my-zsh

	# Set name of the theme to load.
	# Look in ~/.oh-my-zsh/themes/
	# Optionally, if you set this to "random", it'll load a random theme each
	# time that oh-my-zsh is loaded.
	export ZSH_THEME="avit"

	source $ZSH/oh-my-zsh.sh
	#
	# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
	# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
	# Example format: plugins=(rails git textmate ruby lighthouse)
	# Add wisely, as too many plugins slow down shell startup.
	plugins=(git)

fi
