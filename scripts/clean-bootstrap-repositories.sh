#!/bin/bash

# Remove extrepos
rm -f /etc/apt/trusted.gpg.d/droidian-bootstrap.gpg

# Nuke /etc/apt/sources.list
> /etc/apt/sources.list

# Finally update again
apt update

exit 0
