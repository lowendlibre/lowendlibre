#!/bin/sh

set -e

cd pmbootstrap
git format-patch origin/master..HEAD -o ../patches
cd ..