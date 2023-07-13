#!/bin/sh

set -e

ORIGINAL_CWD=`pwd`
SCRIPT_CWD=`dirname $0`

if [ ! -d $SCRIPT_CWD/pmbootstrap ]
then
	git clone https://git.sr.ht/~postmarketos/pmbootstrap $SCRIPT_CWD/pmbootstrap
fi

if [ -d $SCRIPT_CWD/patches ]
then
	cd $SCRIPT_CWD/pmbootstrap
	git am ../patches/*.patch --no-gpg-sign
	cd $ORIGINAL_CWD
fi
