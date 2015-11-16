#!/bin/bash

DIR=`pwd`

FILES=`ls -a | grep -v link | egrep -v '.git$' | egrep -v '^\.+$' | grep -v README`

for f in $FILES
do
  ln -sf $DIR/$f $HOME/$f
  echo symlink created from $DIR/$f to ~/$f
done
