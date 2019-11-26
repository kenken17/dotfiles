#!/bin/sh

echo "Move $1 to changelist"
echo

git update-index --skip-worktree $1
