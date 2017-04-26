# ZSH path - Using oh-my-zsh
ZSH=$HOME/.oh-my-zsh

# Terminal base theme
ZSH_THEME="robbyrussell"

# Load configuration files
# ~/.localrc is excluded from the git repository
# ~/.dot.* load specific configurations per project
for file in ~/.{exports,aliases,dot.*,localrc}; do
	if [ -r "$file" ] && [ -f "$file" ]	 
	then
		source "$file";
	fi
done;
unset file;

# Enabled plugins
plugins=(git)

# Oh-my-zsh configuration
source $ZSH/oh-my-zsh.sh
