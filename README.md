# dotfiles

# セットアップ手順
1. HomeBrewのインストール
``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Git のインストールと設定
``` sh
brew install git
git config --global user.name <名前>
git config --global user.email <メール>
```

3. GitHub に ssh-key を設定
```sh
cd ~/.ssh # ディレクトリがなければ作る
ssh-keygen -t rsa
pbcopy < <キーの名前>.pub
```

4. このリポジトリをクローン

5. symbol.sh を実行

6. install_brewfile.sh を実行

# AppStoreからインストールする必要のあるアプリ
- RunCat
- SafeInCloud
- LINE
- lol