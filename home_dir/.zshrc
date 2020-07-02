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
export LSCOLORS=gxfxcxdxbxegedabagacad
# 現在のブランチをpullする
alias gp='git pull origin $(git rev-parse --abbrev-ref HEAD)'

#cd next ls
function cdls() {
  \cd $1;
  ls;
}

# コマンド履歴の保存に関する設定
# 履歴の場所
HISTFILE=~/.zhistory
# 重複するコマンドのhistory削除
setopt hist_ignore_all_dups

# git ブランチ名を表示させる
# https://qiita.com/m_yukio/items/16841e5da44fe3e9ba43
fpath=(~/.zsh $fpath)
 
if [ -f ${HOME}/.zsh/git-completion.zsh ]; then
        zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fi
 
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
        source ${HOME}/.zsh/git-prompt.sh
fi
 
GIT_PS1_SHOWDIRTYSTATE=true
 
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m %c$(__git_ps1 " (%s)")\$%f '


autoload -U compinit
compinit -u
