#!/bin/sh

GIT_CLONE_REPO=${GIT_CLONE_REPO:-}
GIT_CLONE_BRANCH=${GIT_CLONE_BRANCH:-}
GIT_CLONE_DEST=${GIT_CLONE_DEST:-}
GIT_CLONE_REV=${GIT_CLONE_REV:-}

# Ensure directory exists
mkdir -p $GIT_CLONE_DEST
cd $GIT_CLONE_DEST

# Clone the repository
git clone --no-checkout -b $GIT_CLONE_BRANCH $GIT_CLONE_REPO $GIT_CLONE_DEST

# Fetch branch
git fetch origin $GIT_CLONE_BRANCH

# Reset to revision
git reset --hard $GIT_CLONE_REV
