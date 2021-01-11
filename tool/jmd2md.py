### I DO NOT USE SHEBANG ###
# Python 2系非対応

# jmd2md.py : jmdファイルをmdファイルに変換するスクリプト
#
# jmdファイルの連続する行の改行を無くします。
# GitHubのmdフォーマットはその解釈をカスタマイズできないため独自mdフォーマットを
# jmdファイルとし、jmdファイルからmdへの変換を自動化します。
#
# <使用方法>
# python3 jmd2md.py <input-file> <output-file>
#

import sys

fi = open(sys.argv[1], 'r')
lines = fi.readlines()
fi.close()

next_lines = lines[1:] + [False]

fo = open(sys.argv[2], 'w')
for line, next_line in zip(lines, next_lines):
    ignore_newline = True
    if line == '\n': ignore_newline = False
    if line[0] == '#': ignore_newline = False
    if line[0] == '*': ignore_newline = False
    if next_line == '\n': ignore_newline = False
    if ignore_newline:
        fo.write(line[:-1])
    else:
        fo.write(line)
fo.close()

