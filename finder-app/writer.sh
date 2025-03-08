#!/bin/sh

set -e
set -u

if [ $# -lt 2 ]
then
    echo 'usage: ./writer.sh writefile writestr'
    exit 1
fi

writefile=$1
writestr=$2

writefile_path=$(dirname $writefile)

if ! mkdir -p $writefile_path || ! touch $writefile
then
    echo "Could not create file $writefile"
    exit 1
fi

echo $writestr > $writefile

exit 0
