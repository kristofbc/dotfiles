# ZSH path - Using oh-my-zsh
ZSH=$HOME/.oh-my-zsh

# Terminal base theme
ZSH_THEME="robbyrussell"

# Enabled plugins
plugins=(git)

# Oh-my-zsh configuration
source $ZSH/oh-my-zsh.sh

# Load configuration files
# ~/.localrc is excluded from the git repository
# ~/.dot.* is a specific set of dotfiles configuration for a program
for file in ~/.{aliases, localrc, dot.*}; do
	if [ -r "$file" ] && [ -f "$file" ]	 
	then
		source "$file";
	fi
done;
unset file;
