alias ff='file=$(fd --type f --exclude '*.png' --exclude '*.jpg' --exclude '*.svg' | fzf) && vim $file'
alias gg='target=$(cd ~/development && find . -maxdepth 2 -type d | fzf) && cd ~/development/$target'
alias work='cd ~/development'
alias gs='git status'
