#!/bin/sh
set -e
if [ -z "$1" ]; then
  prefix=/usr/local
elif [ -d "$1" ]; then
  prefix="$1"
else
  echo "Usage $0 [install-prefix]"
  exit 1
fi
target=$prefix/bin
mtarget=$prefix/share/man/man1
dtarget=$prefix/share/doc/scduply
echo install to $target
mkdir -p $target
cp scduply "$target"
echo install man to $mtarget
mkdir -p $mtarget
cp scduply.1 "$mtarget"
echo install docs to $dtarget
mkdir -p $dtarget
for i in CHANGES README; do cp $i "$dtarget"; done
