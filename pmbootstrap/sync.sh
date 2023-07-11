#!/bin/sh

set -e

cd upstream_pmbootstrap
git pull
cd ..

rm -rf pmbootstrap

cp -r upstream_pmbootstrap ./pmbootstrap

if [ -f pmbootstrap.patch ]
then
	patch -p1 -ruN -d pmbootstrap < pmbootstrap.patch
fi
