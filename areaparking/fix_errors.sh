#!/bin/sh

# django.contrib.gis.geos.error.GEOSException: Could not parse version info string "3.6.2-CAPI-1.10.2 4d2925d6"
FILENAME=/usr/local/lib/python3.6/site-packages/django/contrib/gis/geos/libgeos.py
mv ${FILENAME} ${FILENAME}.bak
sed "s|geos_version().decode()|geos_version().decode().split(' ')[0]|g" ${FILENAME}.bak >${FILENAME}
rm ${FILENAME}.bak
