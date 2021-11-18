#!/bin/sh
echo HelloWorld
echo ${1}

cd ${1}

nbdev_build_lib
nbdev_build_docs

git add . -A
git commit -m 'Updating library and docs'