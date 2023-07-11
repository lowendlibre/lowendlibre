#!/bin/sh

set -e

ORIGINAL_CWD=`pwd`
SCRIPT_CWD=`dirname $0`

if [ ! -d $SCRIPT_CWD/pmbootstrap ]
then
	echo "Failed to find pmbootstrap! Please run setup.sh first!"
	exit 1
fi

cd $SCRIPT_CWD/pmbootstrap
git format-patch origin/master..HEAD -o ../patches
cd ..