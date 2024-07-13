#!/bin/bash

# Fix issue with locales 2.37-16, from miatooll port
cat << EOF > /etc/default/locale
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
EOF

# Remove extrepos
rm -f /etc/apt/trusted.gpg.d/droidian-bootstrap.gpg
rm -f /var/lib/extrepo/keys/vayu.asc
rm -f /etc/apt/sources.list.d/extrepo_vayu.sources

# Nuke /etc/apt/sources.list
> /etc/apt/sources.list

# Finally update again
apt update

exit 0
