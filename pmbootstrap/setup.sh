#!/bin/sh

set -e

if [ ! -d pmbootstrap ]
then
	git clone https://gitlab.com/postmarketos/pmbootstrap.git
fi

cd pmbootstrap
git am ../patches/*.patch --no-gpg-sign
cd ..
