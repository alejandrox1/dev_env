#!/usr/bin/env bash
set -e

# We have to reinstall Git as the one from xcode sucks.
brew install git bash-completion

cat << EOF >> $HOME/.bash_profile 

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
EOF
