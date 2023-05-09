#!/usr/bin/env bash

set -e

export PRIVILEGE
export REPOSITORY

title=$1
: "${title:?}"

regex="Request (.*) access for (.*) to the (.*)"
if [[ ! "$title" =~ $regex ]]; then
  echo "unexpected pattern"
  exit 1
fi

PRIVILEGE="${BASH_REMATCH[1]}"
REPOSITORY="${BASH_REMATCH[3]}"
