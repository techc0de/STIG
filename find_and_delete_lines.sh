#!/bin/sh

# find and delete line that has keyword of either 'script' or 'Script'
# excluded file 'cgid.conf'

find /etc/apache2/ -type f ! -name 'cgid.conf' -print0 | xargs -0 sed -i '/^script\|^Script/d'