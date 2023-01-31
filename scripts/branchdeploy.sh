#!/bin/bash

set -e
# Important for clean builds on Netlify
if ! git remote | grep -q origin ; then
    git remote add origin https://github.com/dgraph-io/dgraph-docs.git
    git fetch --all
fi

GREEN='\033[32;1m'
RESET='\033[0m'

# script used to build a release branch
# expect the branch to be named release/<version>
# argument is the netlify base url

releaseVersion=$(git rev-parse --abbrev-ref HEAD | sed 's/.*\///')
echo "update on release v1.0"
echo "branchdeploy => '$releaseVersion'"
echo "REPO => '$1'"
echo "BRANCH => '$2'"
echo "HEAD => '$3'"
