#!/bin/sh

set -e

ORIGINAL_CWD=`pwd`
SCRIPT_CWD=`dirname $0`

$SCRIPT_CWD/update.sh

if [ ! -d $SCRIPT_CWD/pmbootstrap ]
then
	echo "Failed to find pmbootstrap! Please run setup.sh first!"
	exit 1
fi

cd $SCRIPT_CWD/pmbootstrap
git reset --hard origin/master
git pull
git am ../patches/*.patch --no-gpg-sign
cd ..

$SCRIPT_CWD/update.sh
