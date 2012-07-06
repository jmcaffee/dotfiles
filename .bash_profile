#!/bin/bash
# .bash_profile

# NOTE:
# .bash_profile is executed for login shells (ie. SSH), while .bashrc is
# executed for non-login, interactive shells.
#
# If you are looking to set variables or other settings that are available
# in any terminal instance, placing them into .bashrc is the better bet.
# .bash_profile will call .bashrc upon login, and .bashrc will
# be called if a new terminal instance is opened.
#
# See http://joshstaiger.org/archives/2005/07/bash_profile_vs.html


# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# set PATH so it inludes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi
# PATH=$PATH:$HOME/bin

export PATH
unset USERNAME
