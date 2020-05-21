# shellcheck shell=bash
SHELL="bash"

# Executes commands for all shells
# shellcheck source=.profile
[[ -e ~/.profile ]] && source "$HOME"/.profile

# echo "~/.bash_profile" 1>&2
export CLICOLOR=1

# shellcheck source=.bashrc
[[ -f ~/.bashrc ]] && source "$HOME"/.bashrc

# Apple Terminal sources a script fro keybinding, so adding this for iTerm I copied from \
# an Apple Terminal `keybind -L` output (partially)
# shellcheck source=.inputrc
[[ $ITERM_SHELL_INTEGRATION_INSTALLED = "Yes" ]] && [[ -r "$HOME"/.inputrc ]] && bind -f "$HOME"/.inputrc

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
  export LESSOPEN="| /usr/local/bin/lesspipe.sh %s 2>&-"
# zsh achieves this in one of its modules so adding here for bash.

# eval "$(pyenv init -)" #Addressed in ~/.profile now
# pyenv virtualenvwrapper

# perlbrew
# shellcheck source=perl5/perlbrew/etc/bashrc
source "$HOME"/perl5/perlbrew/etc/bashrc
