#!/bin/sh

./update.sh

cd pmbootstrap
git reset --hard origin/master
git pull
git am ../patches/*.patch --no-gpg-sign
cd ..
