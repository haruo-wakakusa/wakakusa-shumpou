#!/bin/sh

find . \
| grep -v '\.git' \
| grep '\.jmd' \
| sed -E 's/(.*)\.jmd$/\1.jmd \1.md/' \
| xargs -L 1 ./tool/renew.sh

