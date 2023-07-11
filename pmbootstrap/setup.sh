#!/bin/sh

set -e

ORIGINAL_CWD=`pwd`
SCRIPT_CWD=`dirname $0`

if [ ! -d $SCRIPT_CWD/pmbootstrap ]
then
	git clone https://gitlab.com/postmarketos/pmbootstrap.git $SCRIPT_CWD/pmbootstrap
fi

cd $SCRIPT_CWD/pmbootstrap
git am ../patches/*.patch --no-gpg-sign
cd ..
