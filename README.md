# Kristofbc's dotfiles
* I maintain this repository with my current configuration.
* Steal it, i'm fine with it.

## What about the previous files?
I’ve declared dotfiles bankruptcy last March since 90% of the stuff weren’t used. 
What I've learned: a base configuration is a great starter, but after a while you should create your own that fits your needs.

## Installation
```bash
$ sh bootstrap.sh
```
NOTE: to exclude file in the bootstraping process use:
```bash
$ sh exclude file1 file2 file3
```

## `.dot.*` files
These files are software specific. i.e:
```bash
.dot.nvm # For NVM
.dot.pyenv # For pyenv
```
I prefer to have specific configurations for a software in a distinct file instead of having one big file with multiple configurations.

### Disclaimer
A lot of things in this repository were taken from others, credits are given to these authors.
