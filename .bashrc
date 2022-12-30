#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[34m\w \e[0m\$ '

export EDITOR=nvim

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Run pfetch at startup
pfetch

# Run a random colorscript at startup
#/usr/local/bin/Color-Scripts/color-scripts/colorscript.sh random

# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
export PROJECT_HOME=$HOME/Devel
export PATH="/home/richard/.local/bin:$PATH"
source /usr/bin/virtualenvwrapper.sh

