#!/bin/bash

# ls
alias ll='ls -lF'
alias la='ls -alF'
alias l='ls -CF'

# git
alias gits='git st'
alias g='git'

# vscode
if command -v code &> /dev/null; then
    alias cdiff='code -d'
fi