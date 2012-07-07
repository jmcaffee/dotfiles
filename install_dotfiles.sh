#!/bin/bash
# Install dotfiles
#

cd ~
# If link exists, just delete it
# else, if file exists, back it up.
if [ -L .bash_profile ]; then
    rm .bash_profile
elif [ -f .bash_profile ]; then
    mv .bash_profile .bash_profile.old
fi

if [ -L .bashrc ]; then
    rm .bashrc
elif [ -f .bashrc ]; then
    mv .bashrc .bashrc.old
fi

if [ -L .bash_aliases ]; then
    rm .bash_aliases
elif [ -f .bash_aliases ]; then
    mv .bash_aliases .bash_aliases.old
fi

if [ -L .bash_exports ]; then
    rm .bash_exports
elif [ -f .bash_exports ]; then
    mv .bash_exports .bash_exports.old
fi

if [ -L .bash_logout ]; then
    rm .bash_logout
elif [ -f .bash_logout ]; then
    mv .bash_logout .bash_logout.old
fi

# Create links to the dotfiles version
ln -s dotfiles/.bash_profile .bash_profile
ln -s dotfiles/.bashrc .bashrc
ln -s dotfiles/.bash_aliases .bash_aliases
ln -s dotfiles/.bash_exports .bash_exports
ln -s dotfiles/.bash_logout .bash_logout

