#!/bin/sh

pip install nbdev

cd $1

nbdev_build_lib
nbdev_build_docs

git add . -A

git commit -m "Updating library and docs. Time:2021-12-01 10:59:39.590376, Version:4.1"
git push

echo Process done