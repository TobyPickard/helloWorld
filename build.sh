#!/bin/sh

pip install nbdev

cd $1

nbdev_build_lib
nbdev_build_docs

git add . -A

git commit -m "Updating library and docs. Time:2021-12-02 11:43:37.149192, Version:9.1"
git push

echo Process done