#!/bin/sh

pip install nbdev

cd $1

nbdev_build_lib
nbdev_build_docs

git add . -A

git commit -m "Updating library and docs. Time:2021-12-02 11:18:26.907314, Version:8.9"
git push

echo Process done