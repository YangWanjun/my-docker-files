#!/bin/bash

if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi

mv ~/IPAexfont00301 ~/.fonts/

fc-cache -fv

# Matplotlibの文字化け対応
FILENAME=~/.config/matplotlib/matplotlibrc
cp ${FILENAME} ${FILENAME}.bak
sed 's/#font.family\s*:\s*sans-serif/font.family          : IPAexGothic/ig' ${FILENAME}.bak >${FILENAME}
rm ${FILENAME}.bak
