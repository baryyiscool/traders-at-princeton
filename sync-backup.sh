#!/bin/bash
# Copies the current site to the backup address, https://tradersatprinceton.github.io.
# Run from the repository root after pushing a change: ./sync-backup.sh
# Needs push access to tradersatprinceton/tradersatprinceton.github.io.
set -euo pipefail
main="https://tradersatprinceton.com"
backup="https://tradersatprinceton.github.io"
src=$(git rev-parse --short HEAD)
name=$(git config user.name); email=$(git config user.email)
tmp=$(mktemp -d)
git archive HEAD | tar -x -C "$tmp"
cd "$tmp"
rm -rf CNAME .claude sync-backup.sh
# The copy names itself as the address, so search engines can list it too.
perl -pi -e "s#\Q$main\E#$backup#g" index.html robots.txt sitemap.xml
printf 'This is a backup copy of %s, kept so the site can be opened on networks that block newly registered domains. Do not edit it here; changes are made in baryyiscool/traders-at-princeton and copied over with sync-backup.sh.\n' "$main" > README.md
git init -q -b main
git add -A
git -c user.name="$name" -c user.email="$email" commit -q -m "Copy of traders-at-princeton at $src"
git push -q -f https://github.com/tradersatprinceton/tradersatprinceton.github.io.git main
echo "Backup updated from $src"
