#!/bin/sh

#
# このファイルはリポジトリの更新を自動化するためのスクリプトファイルです。
# このファイルではコミット、リモートリポジトリの更新を行います。
# このファイルはGithubのユーザー名の入力を省略しますがパスワードの入力は
# 省略しません(セキュリティ上の懸念のため)。
#
# <使用方法>
# (bashシェル。作業開始時。init.shはcコマンドを登録します。)
# source init.sh
# (コミットを行う時に入力)
# c "何らかのコメント"
#

if [ $# -ne 1 ]; then
  echo "コミット時のコメントを指定して下さい" 1>&2
  exit 1
fi

# .jmd -> .md への変換
./tool/find_jmd.sh

git add --all
git commit -m $1
git push https://haruo-wakakusa@github.com/haruo-wakakusa/wakakusa-shumpou.git master
