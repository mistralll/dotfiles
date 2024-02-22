# バージョン管理
**pyenv** を使用。

インストール可能なPythonのバージョン一覧
```sh
pyenv install -l 
```
バージョンを指定してインストール
```sh
pyenv install 3.12.2
```
インストール済みのバージョンを確認
```sh
pyenv versions
```
プロジェクトディレクトリでバージョンを指定
```sh
pyenv local 3.12.2
```
カレントディレクトリでのバージョンを確認
```sh
pyenv version
```
# 仮想環境
**venv** を使用してpipで汚れるのを防ぎます。venvはpythonの標準機能らしいです。

環境を作成
```sh
python3 -m venv --prompt . .venv
```

環境をアクティベート
```sh
source .venv/bin/activate
```

パッケージのインストール
```sh
pip install hoge
```

インストール済みパッケージの確認
```sh
pip list
```

環境をディアクティベート
```sh
deactivate
```

# venvのパッケージをgitを利用して管理する
.venvはもちろん gitignore する
```.gitignore
/.venv
```

パッケージ一覧を出力
```sh
pip freeze > requirements.txt
```

パッケージを復元

**復元する前に venv の仮想環境に入ること！**
```
(venvの環境名) pip install -r requirements.txt
```

# 参考
[Pythonのパッケージ管理ベストプラクティス](https://qiita.com/c60evaporator/items/b6a7394231d1e768ce64)

[仮想環境のディレクトリを `.venv` にする場合のTips](https://zenn.dev/methane/articles/7175d97bab1cd0)

[venvの情報をgitで管理/共有する](https://www.lisz-works.com/entry/git-venv)