#!/bin/sh

set -e

if [ ! -d upstream_pmbootstrap ]
then
	git clone https://gitlab.com/postmarketos/pmbootstrap.git upstream_pmbootstrap
fi

if [ ! -d pmbootstrap ]
then
	cp -r upstream_pmbootstrap ./pmbootstrap
fi

if [ -f pmbootstrap.patch ]
then
	patch -p1 -ruN -d pmbootstrap < pmbootstrap.patch
fi
