#!/bin/bash

# matplotlibの$DISPLAYが未定義エラー対策
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi

if [ ! -d ~/.config/matplotlib ]; then
  mkdir ~/.config/matplotlib
fi

cp /usr/local/lib/python2.7/dist-packages/matplotlib/mpl-data/matplotlibrc ~/.config/matplotlib/matplotlibrc.bak
FILENAME=~/.config/matplotlib/matplotlibrc

sed 's/backend\s*:\s*tkagg/backend      : Agg/ig' ${FILENAME}.bak >${FILENAME}
rm ${FILENAME}.bak