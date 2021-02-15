#!/usr/bin/env sh

ZK_PATH="/Users/abel/wiki"

cd "$ZK_PATH"

git pull

CHANGES_EXIST="$(git status --porcelain | wc -l)"

if [ "$CHANGES_EXIST" -eq 0 ]; then
exit 0
fi

git pull
git add .
git commit -m "Last Sync: $(date +"%Y-%m-%d %H:%M:%S")"
git push
