#!/bin/sh

git submodule update --init
for d in heirloom-libcommon heirloom-libuxre
do
  (cd "$d" && ./autogen.sh)
done

aclocal
autoheader
automake -a
autoconf
