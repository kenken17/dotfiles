#!/bin/sh

echo "Clear changelist..."
echo

cd $1 && git ls-files -v | grep -i ^S | cut -c 3- | tr '\012' '\000' | xargs -0 git update-index --no-skip-worktree

