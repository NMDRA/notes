# Path to your oh-my-bash installation.
export OSH=/home/nimendra/scripts/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font" 

source $OSH/oh-my-bash.sh

# User configuration

### EXPORT
export TERM="xterm-256color"                      # getting proper colors
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries
export ALTERNATE_EDITOR=""                        # setting for emacsclient
#export EDITOR=/usr/bin/nano
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="most"

 # # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
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


export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus



#Fetch
fetch.sh

#Bash Insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

#theFuck
eval "$(thefuck --alias)"

shopt -s cdspell


[ -f ~/.config/fzf/fzf.bash ] && source ~/.config/fzf/fzf.bash

export FZF_DEFAULT_OPTS='--black --height 95% --border=rounded'

export FZF_DEFAULT_COMMAND="fd -H |sed 's@^\./@@'"

export FZF_ALT_C_COMMAND="fd -H |sed 's@\./@@'"

export FZF_CTRL_T_COMMAND="fd |sed 's@^\./@@'"
