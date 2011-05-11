#!/bin/sh

echo "SVN DIFF MERGE"
echo "$@"

#shift 5

echo /usr/bin/opendiff "$1" "$2" -ancestor "$3"
#sleep 30
#/usr/bin/opendiff "$1" "$2" -ancestor "$3"

