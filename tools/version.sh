

#!/bin/bash
set -e
set -o pipefail

if [ "$#" -lt 1 ]; then
    echo "USAGE: $0 <branch or version>"
    echo
    echo   E.g. $0 release-2020-03-03
    echo   E.g. $0 16.8
    exit 1
fi

function get_version() {
    BRANCH="$1"

    # Major is the number of weekly releases including this branch.
    if [[ $BRANCH == release* ]]; then
      BRANCH_PREFIX=release-
    elif [[ $BRANCH == fe-release* ]]; then
        BRANCH_PREFIX=fe-release-
    else
      exit 2
    fi

    MAJOR=$(git branch -a | grep "remotes/origin/${BRANCH_PREFIX}[[:digit:]]\{4\}-[[:digit:]]\{2\}-[[:digit:]]\{2\}$" | grep -n $BRANCH | cut -f1 -d:)

    if [ -z "$MAJOR" ]; then
        exit 2
    fi

    # Minor is the number of commits (i.e. cherry-picks) on the branch.
    MINOR=$(git log master..remotes/origin/$BRANCH | grep -c ^commit || true)

    echo "$MAJOR.$MINOR"
}

function get_branch() {
    VERSION="$1"

    IFS="." read MAJOR MINOR <<< "$VERSION"

    BRANCH=$(git branch -a | grep /release | head -$MAJOR | tail -1)

    if [ -z "$BRANCH" ]; then
        exit 2
    fi

    COMMIT=$(git log master..$BRANCH | grep ^commit | tail -$MINOR | head -1 | cut -d ' ' -f 2)

    echo "$BRANCH $COMMIT"
    echo
    echo "To view:"
    echo
    echo -e "\tgit log master..$COMMIT"
}

if [ -z "$(echo $1 | grep \\.)" ]; then
    get_version "$@"
else
    get_branch "$@"
fi