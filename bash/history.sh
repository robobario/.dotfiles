#!/bin/bash
shopt -s histappend
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoredups
HISTIGNORE='ls:bg:fg:history'
shopt -s cmdhist
PROMPT_COMMAND='history -a'

