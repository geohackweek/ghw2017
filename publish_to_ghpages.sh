#!/bin/sh

DIR=$(dirname "$0")
SITE_DIR="public/"

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf $SITE_DIR
mkdir -p $SITE_DIR
git worktree prune
rm -rf .git/worktrees/$SITE_DIR

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages $SITE_DIR origin/gh-pages

echo "Removing existing files"
rm -rf $SITE_DIR/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd $SITE_DIR && git add --all && git commit -m "Publishing to gh-pages (publish_to_ghpages.sh)" && cd ../..
