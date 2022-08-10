#!/bin/bash

script_dir=$(dirname $(realpath "$0"))
echo "script_dir $script_dir"
branch=$(git rev-parse --quiet --abbrev-ref HEAD)
echo "STABLE_GIT_BRANCH $branch"
echo "STABLE_GIT_COMMIT $(git rev-parse $branch)"
git diff-index --quiet HEAD --
echo "STABLE_GIT_IS_DIRTY $?"
version=$($script_dir/version.sh $branch)
echo "STABLE_FULL_VERSION $version"
