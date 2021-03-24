#!/usr/bin/env bash

# Backup existing config files if they exist
BACKUP_DIR=~/dotfiles.bak
[ -d $BACKUP_DIR ] || mkdir $BACKUP_DIR

[ -f ~/.bashrc ]        && mv -f ~/.bashrc        $BACKUP_DIR
[ -f ~/.vimrc ]         && mv -f ~/.vimrc         $BACKUP_DIR
[ -f ~/.vimrc.bundles ] && mv -f ~/.vimrc.bundles $BACKUP_DIR
[ -f ~/.tmux.conf ]     && mv -f ~/.tmux.conf     $BACKUP_DIR
[ -f ~/.bash_aliases ]  && mv -f ~/.bash_aliases  $BACKUP_DIR
[ -f ~/.gitconfig ]  	&& mv -f ~/.gitconfig     $BACKUP_DIR

# Remove symbolic links to target files if they exist
[ -L ~/.bashrc ]        && rm ~/.bashrc
[ -L ~/.vimrc ]         && rm ~/.vimrc
[ -L ~/.vimrc.bundles ] && rm ~/.vimrc.bundles
[ -L ~/.tmux ]          && rm ~/.tmux.conf
[ -L ~/.bash_aliases ]  && rm ~/.bash_aliases
[ -L ~/.gitconfig ]  	&& rm ~/.gitconfig

# Symlink config files with target files
ln -s ~/dotfiles/bashrc         ~/.bashrc
ln -s ~/dotfiles/vimrc          ~/.vimrc
ln -s ~/dotfiles/vimrc.bundles  ~/.vimrc.bundles
ln -s ~/dotfiles/tmux.conf      ~/.tmux.conf
ln -s ~/dotfiles/aliases        ~/.bash_aliases
ln -s ~/dotfiles/gitconfig      ~/.gitconfig

# Update the shell
[ -f ~/.bashrc ] && source ~/.bashrc
