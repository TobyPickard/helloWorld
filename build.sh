#!/bin/sh

pip install nbdev

cd $1

nbdev_build_lib
nbdev_build_docs

git add . -A

git commit -m "Updating library and docs. Time:2021-12-02 11:41:12.245466, Version:9.0"
git push

echo Process done