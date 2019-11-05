#!/bin/bash

if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi

mv ~/IPAexfont00401 ~/.fonts/

fc-cache -fv
