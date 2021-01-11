#!/bin/sh

# renew.sh <jmd-file> <md-file>
#
# jmdファイルのファイルスタンプがmdファイルのファイルスタンプより新しければ
# mdファイルを更新する。mdファイルがない場合は作成する。

if [ ! -e $2 -o $1 -nt $2 ]; then
    python3 ./tool/jmd2md.py $1 $2
    echo "renew.sh: $2を更新しました." 1>&2
fi

