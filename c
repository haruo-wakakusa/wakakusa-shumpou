#!/bin/sh

if [ $# -ne 1 ]; then
  echo "コミット時のコメントを指定して下さい" 1>&2
  exit 1
fi

git add --all
git commit -m $1
git push https://haruo-wakakusa@github.com/haruo-wakakusa/wakakusa-shumpou.git master
