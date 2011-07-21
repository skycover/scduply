#!/bin/sh
set -e
if [ -z "$1" ]; then
  target=/usr/local/bin
  mtarget=/usr/local/share/man/man1
elif [ -d "$1" ]; then
  target="$1"
else
  echo "Usage $0 'install-path' [man-path]"
  exit 1
fi
echo install to $target
mkdir -p $target
cp scduply "$target"
if [ -n "$2" ]; then
  mtarget="$2"
fi
if [ -n "$mtarget" ]; then
  echo install man to $mtarget
  mkdir -p $mtarget
  cp scduply.1 "$mtarget"
fi
