#!/bin/bash

if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi

mv ~/IPAexfont00301 ~/.fonts/

fc-cache -fv
