#!/bin/sh

pip install nbdev

cd $1

nbdev_build_lib
nbdev_build_docs

git add . -A

git commit -m "Updating library and docs. Time:2021-12-01 14:53:12.119188, Version:7.8"
git push

echo Process done