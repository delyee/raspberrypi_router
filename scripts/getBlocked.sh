#!/bin/sh
dir=/tmp/lst
mkdir -p $dir
echo "Downloading lists of blocked addresses..."
curl -z $dir/subnet.lst https://antifilter.download/list/subnet.lst --output $dir/subnet.lst
curl -z $dir/ipsum.lst https://antifilter.download/list/ipsum.lst --output $dir/ipsum.lst
echo "Restarting firewall..."
#/etc/init.d/firewall restart
