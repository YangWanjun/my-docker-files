#!/bin/sh

# 日本語設定
if [[ ! -d ~/.fonts ]]; then
  mkdir ~/.fonts
fi

mv ~/IPAexfont00301 ~/.fonts/

fc-cache -fv
