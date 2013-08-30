# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

function cond_source () {
  [ -f $1 ] && . $1
}
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

cond_source ~/dotfiles/bash/ubuntu.bash

if [[ $- =~ i ]]; then
  # commands
  for file in $HOME/dotfiles/bash/commands/*; do
    cond_source $file
  done
  # completion
  for file in $HOME/dotfiles/bash/completion/*; do
    cond_source $file
  done

  # shell behavior
  cond_source $HOME/dotfiles/bash/shell.bash

  # prompt
  cond_source $HOME/dotfiles/bash/prompt.bash

fi


# Making solarized work with tmux
alias tmux="TERM=screen-256color-bce tmux"
alias vi='vim'
alias be='bundle exec'
alias brc='vim ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias trc='vim ~/.tmux.conf'
alias src='source ~/.bashrc'

PATH=$PATH:~/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
