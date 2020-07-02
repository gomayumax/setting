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

# 履歴のインクリメンタルサーチ
function peco-history() {
  local tac
  whence tac &> /dev/null tac \
    && tac="tac" \
    || tac="tail -r"
  BUFFER=$(history -n 1 | eval $tac | peco --query "$LBUFFER" --prompt "HISTORY>")
  CURSOR=$#BUFFER
}

zle -N peco-history
bindkey '^r' peco-history


# 履歴
# ※ zsh の history は fc -l のエイリアス
[ -z $HISTFILE ] && HISTFILE=$HOME/.zsh_history

HISTSIZE=10000 # メモリへの保存件数
SAVEHIST=10000 # ファイルへの保存件数

setopt extended_history       # タイムスタンプと実行時間を記録
setopt hist_expire_dups_first # 削除時に重複する履歴から削除
setopt hist_ignore_all_dups   # 重複するコマンドは履歴に記録しない
setopt hist_ignore_space      # スペースから始まるコマンドは無視
setopt hist_verify            # 補完時に編集可能にする
setopt hist_reduce_blanks     # 重複スペースは除去して履歴に記録する
setopt inc_append_history     # インクリメンタルサーチに追加
setopt share_history          # 端末間で履歴を共有

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
