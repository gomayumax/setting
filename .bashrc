alias ls='/bin/ls -FG'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias ks='/bin/ls -FG'
alias be='bundle exec'
alias g='git'
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
