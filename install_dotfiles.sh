#!/bin/bash
# Install dotfiles
#

cd ~
if [ -f .bash_profile ]; then
    mv .bash_profile .bash_profile.old
fi

if [ -f .bashrc ]; then
    mv .bashrc .bashrc.old
fi

if [ -f .bash_aliases ]; then
    mv .bash_aliases .bash_aliases.old
fi

if [ -f .bash_logout ]; then
    mv .bash_logout .bash_logout.old
fi

# Create links to the dotfiles version
ln -s dotfiles/.bash_profile .bash_profile
ln -s dotfiles/.bashrc .bashrc
ln -s dotfiles/.bash_aliases .bash_aliases
ln -s dotfiles/.bash_logout .bash_logout

