# dotfiles

My linux dot files.

## Install
- - -

	$ cd ~
	$ git clone ssh://git@github.com/jmcaffee/dotfiles.git

Run the install script:

	$ dotfiles/install_dotfiles.sh

or do it yourself:

	# Make links to the pertinent files

	$ ln -s dotfiles/.bashrc .bashrc
	$ ln -s dotfiles/.bash_aliases .bash_aliases
	$ ln -s dotfiles/.bash_logout .bash_logout

#### Backups

The install script creates a directory to backup your existing .bash*
files: `dotfile_backups`

#### Local .bash files

It also creates a directory to place your local .bash* files: `.bashrc.d`

Files in this directory will be sourced when .bashrc is read.
These files are sourced _AFTER_ the standard .bash* files so
your settings can override anything set prior.

Place any environment specific files in this directory.

This is a good place to put files such as .git_aliases

## Welcome Message

If you'd like to see a customized welcome message at login,
copy the `welcome.example` script to `dotfiles/welcome.sh`:

	$ cp dotfiles/welcome.example dotfiles/welcome.sh

Modify it to your liking.

If `.bashrc` finds the `welcome.sh` script, it will run it after it
has completed.

## rbenv

`.bashrc` looks in your $HOME directory for a `.bash_rbenv` file.
It will source this file before anything else if it's found.

I like to export my `RAILS_ENV` in this file.
