#!/bin/sh

echo "List changelist..."
echo

cd $1 && git ls-files -v . | grep ^S
