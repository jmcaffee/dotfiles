#!/bin/bash
# Install dotfiles
#

bkupdir=dotfile_backups
cd ~
mkdir $bkupdir

echo "Backing up existing .bash* files to ~/$bkupdir"

# If link exists, just delete it
# else, if file exists, back it up.
if [ -L .bash_profile ]; then
    rm .bash_profile
elif [ -f .bash_profile ]; then
    mv .bash_profile $bkupdir/.bash_profile
fi

if [ -L .bashrc ]; then
    rm .bashrc
elif [ -f .bashrc ]; then
    mv .bashrc $bkupdir/.bashrc
fi

if [ -L .bash_aliases ]; then
    rm .bash_aliases
elif [ -f .bash_aliases ]; then
    mv .bash_aliases $bkupdir/.bash_aliases
fi

if [ -L .bash_exports ]; then
    rm .bash_exports
elif [ -f .bash_exports ]; then
    mv .bash_exports $bkupdir/.bash_exports
fi

if [ -L .bash_logout ]; then
    rm .bash_logout
elif [ -f .bash_logout ]; then
    mv .bash_logout $bkupdir/.bash_logout
fi

echo "Creating links to dotfiles"

# Create links to the dotfiles version
ln -s dotfiles/.bash_profile .bash_profile
ln -s dotfiles/.bashrc .bashrc
ln -s dotfiles/.bash_aliases .bash_aliases
ln -s dotfiles/.bash_exports .bash_exports
ln -s dotfiles/.bash_logout .bash_logout

localbashfiles=.bashrc.d
echo "Creating $localbashfiles dir."
echo "Files in this directory will be sourced when .bashrc is read."
echo "These files are sources AFTER the standard .bash* files so"
echo "your settings can override anything set prior."
echo
echo "Place any environment specific files in this directory."

mkdir $localbashfiles
