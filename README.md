dotfiles
========

My linux dot files.

Install
---------------------------------------

$ cd ~
$ git clone https://github.com/jmcaffee/dotfiles.git

Run the install script:
$ dotfiles/install_dotfiles.sh

or do it yourself:
Make links to the pertinent files

$ ln -s dotfiles/.bashrc .bashrc
$ ln -s dotfiles/.bash_aliases .bash_aliases
$ ln -s dotfiles/.bash_logout .bash_logout

If you'd like to see a customized welcome message at login,
copy the welcome.example script to dotfiles/welcome.sh

Modify it to your liking.

If .bashrc finds the welcome.sh script, it will run it after it
has completed.
