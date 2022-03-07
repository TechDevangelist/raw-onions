#!/bin/sh
/usr/bin/find . -type d -empty -not -path "./.git/*" -exec /usr/bin/touch {}/.gitkeep \;
