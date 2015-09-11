#!/bin/sh
function prompto {
  python ~/.dotfiles/bash/prompt.py
}
export PS1="\u@\h \w\[\e[0;32m\]\$(parse_git_branch)\[\e[0m\] \$(prompto)  "
