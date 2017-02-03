alias ls='/bin/ls -FG'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias ks='/bin/ls -FG'
alias be='bundle exec'
alias g='git'
alias gco='git co'
alias gcom='git commit'
alias gbr='git br'
alias gst='git st'
alias gl='git l'
alias gd='git diff'
alias gd1='git diff HEAD~'
alias gd2='git diff HEAD~2'
alias check='php ~/phpcs.phar --standard=PSR2'
alias retouch='php ~/phpcbf.phar --standard=PSR2'
alias appup='sh ~/laravel_start.sh'
export LSCOLORS=gxfxcxdxbxegedabagacad
eval "$(rbenv init -)"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"

#cd next ls
function cdls() {
  \cd $1;
  ls;
}

# ブランチの表示
source ~/git-prompt.sh
source ~/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '

# 現在のブランチをpullする
alias gp='git pull origin $(git rev-parse --abbrev-ref HEAD)'
