export USER=melissa
if [ "$HOME" -eq "/Users/Melissa" ]; then
  export HOME=/Users/$USER
fi
export TEAM=release
export PATH=$PATH:$HOME/bin

source $HOME/git-completion.bash

if [ -e $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

#  show git branch in terminal prompt
function parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:(\1)/'
}

# This is taken directly out of the RVM ps1_functions
# (https://github.com/wayneeseguin/rvm/blob/master/contrib/ps1_functions), because I prefer it
# over the __git_ps1 SHOWDIRTYSTATE symbols - I like that this tells you
# what was deleted in addition to added.
ps1_git_status()
{
  local git_status="$(git status 2>/dev/null)"

  [[ "${git_status}" = *deleted* ]]                    && printf "%s" "-"
  [[ "${git_status}" = *Untracked[[:space:]]files:* ]] && printf "%s" "+"
  [[ "${git_status}" = *modified:* ]]                  && printf "%s" "*"
}

PS1="[\$?] \[\033[0;32m\]\u@\h:\[\033[0;96m\]\w\[\033[0;93m\]\$(parse_git_branch)\[\033[0m\]$ "

# for packaging and stuff
# display ls colors
export CLICOLOR=1

# export editor
export EDITOR=vim

# lots of history
export HISTSIZE=1000000
export HISTFILESIZE=1000000000

alias be="bundle exec"
alias bi="bundle install"
alias bootstrap="rake package:implode package:bootstrap"
alias uber_build="rake pl:jenkins:uber_build --trace"
alias uber_ship="rake pl:jenkins:uber_ship --trace"

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'
