# Corporate SSL handshake work-around
# export NODE_TLS_REJECT_UNAUTHORIZED=0
#echo '~.bashrc'

export HISTSIZE=50000
export SAVEHIST=50000
# export HOMEBREW_CASK_OPTS=--require-sha

alias install=ginstall

# added by travis gem
#[ -f /Users/ryan/.travis/travis.sh ] && source /Users/ryan/.travis/travis.sh

# set editor
export EDITOR="micro"
export VISUAL="mvim --remote-tab"
# pip config set to avoid warning about depreciated output mode
export PIP_FORMAT=columns
SHELL="bash"; export SHELL

# This was included in a perlbrew tutorial
# eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

[ -f "$HOME"/.path_bash ] && PATH="$PATH:$($HOME/.path_bash)"

# perlbrew init
# shellcheck disable=2069
# shellcheck source=perl5/perlbrew/etc/bashrc
source "$HOME"/perl5/perlbrew/etc/bashrc

# Initialize nvm
NVM_DIR="$HOME"/.nvm; export NVM_DIR
# shellcheck source=.nvm/nvm.sh
source "$HOME"/.nvm/nvm.sh

# Iterm2 shell integration
# shellcheck source=.iterm2_shell_integration.bash
[[ -f "$HOME/.iterm2_shell_integration.bash" ]] && source "$HOME/.iterm2_shell_integration.bash"
   # . "$HOME"/.iterm2_shell_integration.
# elif [ -n "$BASH_VERSION" ]; then
   # . "${HOME}/.iterm2_shell_integration.bash"
# fi

# FzF Completions
# shellcheck source=.fzf.bash
[ -f "$HOME"/.fzf.bash ] && source "$HOME"/.fzf.bash

# completions for bash
if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
  # shellcheck source=/usr/local/etc/bash_completion
  . "$(brew --prefix)"/etc/bash_completion
fi

## Ruby
# rbenv init (path & completions)
# if [[ -n "$RBENV" ]]; then
#   eval "$(rbenv init -)"
#   if [ -f "${RBENV_DIR:-$HOME}/.rbenv}" ]; then
#     PATH=("${RBENV_DIR:-$HOME}/.rbenv:$PATH")
#   fi
# else

# chruby
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  # chruby auto version from .ruby-version at project root
  source /usr/local/opt/chruby/share/chruby/auto.sh

# Lunchy completions
#LUNCHY_DIR="$(dirname "`gem which lunchy`")"/../extras
#if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
#  # shellcheck source=.rbenv/versions/2.5.0-dev/lib/ruby/gems/2.5.0/gems/lunchy-0.10.4/lib/../extras
#  . $LUNCHY_DIR/lunchy-completion.bash
#fi

# echo "testcmd"
# dirname ${BASH_SOURCE:-$0}
