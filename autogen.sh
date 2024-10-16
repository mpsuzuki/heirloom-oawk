#!/bin/sh

git submodule update --init
for d in heirloom-libcommon heirloom-libuxre
do
  (cd "$d" && ./autogen.sh)
done

aclocal -Iheirloom-libcommon -Iheirloom-libuxre
autoheader
automake -a
autoconf
