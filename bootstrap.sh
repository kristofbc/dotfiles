#!/usr/bin/env bash

# Original from https://github.com/mathiasbynens/dotfiles bootstrap.sh

function testSyncDotfiles() {
	mkdir .test;
	rsync --exclude-from "bootstrap-exclude.txt" -avh --no-perms . .test;
	rm -rf .test;
}

function syncDotfiles() {
	rsync --exclude-from "bootstrap-exclude.txt" -avh --no-perms . ~;
	source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	syncDotfiles;
elif [ "$1" == "--test" -o "$1" == "-t" ]; then
	echo "Dotfiles syncing dry-run";
	testSyncDotfiles;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		syncDotfiles;
	fi;
fi;
unset syncDotfiles;
unset testSyncDotfiles;
