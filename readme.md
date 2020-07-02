# クリーンインストール手順
## OSのインストラーをダウンロードする
めっちゃ時間かかる2時間って出てた

## アプリケーション一覧を用意する

[https://github.com/hoto17296/dotfiles/blob/master/setup/Brewfile.sh:embed:cite]

秘伝のタレを教えてもらった  
アプリでもbrewでとれるものがあるので  
その辺をリストアップしてbrewでinstallするようにしておく

あとapp storeのアプリケーションなら
```:bash
mas install 1333542190  # 1Password 7
```

のような感じでidで取れるそうな
知らなかった

[https://www.softantenna.com/wp/mac/mas-cli/:embed:cite]

## 様々なファイルのバックアップを取る

### karabinar-Elementsの設定ファイルを避けておく

[https://karabiner-elements.pqrs.org/:embed:cite]

キーバインドの割当とかを設定しているアプリ

設定ファイルである
`/Users/goma/.config/karabiner/karabiner.json` のバックアップとっておく 

#### ~/.config 余談
.configってすごい設定ファイル感あるなー（小並

ということで調べてみたら以下の記事に出会った

[https://kiririmode.hatenablog.jp/entry/20180404/1522843531:embed:cite]

> 設定ファイルの格納ディレクトリは、$XDG_CONFIG_HOME という環境変数に定義することになっていて、これが空か未定義の場合に $HOME/.config が使われることになっています。

へーとなっており、$HOME配下がドットファイルで汚れるのが嫌という気持ちがあるので
.configを使っていきたい

今回は実現できないけど`.config/` 配下をgit管理したいなーと思った

しかし`.config/` 配下はアプリケーションが勝手にファイルを作ったりするだろうから
管理するものを決めて(ホワイトリストを作って)管理していきたい （夢



## クリーンインストールあと
### brew をいれる
### brewでさまざまをinstallする

[https://github.com/gomayumax/setting/blob/master/setup/brew_install.sh:embed:cite]

### hyperの設定をする

`$HOME` 配下にhyper.jsonを置く
これでターミナルの設定完了

グッバイ、デフォルトのターミナル
ここから慣れたターミナルhyperでいく

### karabiner-element の設定をする
上記リポジトリにある `karabinar.json` を `~/.config/karabiner/`に置く

キーボードのアクセス権限みたいなのを丁寧に設定していく

これで日本語と英語の切り替えが快適になった、よっし

### dein.vimを入れる

quick startの手順にそってやる

[https://github.com/Shougo/dein.vim#quick-start:embed:cite]

vimおけ


### gitのブランチを表示するようにする
参考: 
[https://qiita.com/m_yukio/items/16841e5da44fe3e9ba43:embed:cite]



```
mkdir .zsh
% curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.zsh/git-completion.zsh
% curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.zsh/git-prompt.sh
```

### phpstorm
認証と設定ファイル読み込み


