#!/bin/bash
# Auto pull the latest code from the Git repository
REPO_PATH="/path/to/repo"
BRANCH="main"
cd $REPO_PATH
git pull origin $BRANCH
echo "Code pulled from $BRANCH branch."