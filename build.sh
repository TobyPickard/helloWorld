#!/bin/sh

pip install nbdev

cd ${1}
nbdev_build_lib
nbdev_build_docs

git add . -A

git commit -m "Updating library and docs"
git push

make pypi