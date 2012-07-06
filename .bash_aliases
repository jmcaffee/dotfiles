# .bash_aliases

## 
# Don't wrap lines
alias nano='nano -w'

alias ping='ping -c 5'

alias more='less'
alias back='cd $OLDPWD'

alias ..='cd ..'

# some more ls aliases
alias ls='ls -al --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'


## FUNCTIONS ##


# ex - archive extractor
# usage: ex 
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       rar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


# roll - archive wrapper
# usage: roll  ./foo ./bar
roll ()
{
  FILE=$1
  case $FILE in
    *.tar.bz2) shift && tar cjf $FILE $* ;;
    *.tar.gz) shift && tar czf $FILE $* ;;
    *.tgz) shift && tar czf $FILE $* ;;
    *.zip) shift && zip $FILE $* ;;
    *.rar) shift && rar $FILE $* ;;
  esac
}


# mktar - tarball wrapper
# usage: mktar 
function mktar() { tar czf "${1%%/}.tar.gz" "${1%%/}/"; }


# mkmine - recursively change ownership to $USER:$USER
# usage:  mkmine, or
#         mkmine 
function mkmine() { sudo chown -R ${USER}:${USER} ${1:-.}; }


# sanitize - set file/directory owner and permissions to normal values (644/755)
# usage: sanitize 
sanitize()
{
  chmod -R u=rwX,go=rX "$@"
  chown -R ${USER}:users "$@"
}



