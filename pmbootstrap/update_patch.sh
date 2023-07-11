#!/bin/sh

set -e

diff -ruN upstream_pmbootstrap pmbootstrap > pmbootstrap.patch
