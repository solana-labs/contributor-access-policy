#!/usr/bin/env bash

set -e

export GITHUB_HANDLE
export DISCORD_HANDLE

body=$1
: "${body:?}"

body=${body//$'\r'/}
body=${body//$'\n'/}
body=${body//$'\r\n'/}

regex="### GitHub Username[\r|\n|\r\n]*([0-9a-zA-Z-]*)[\r|\n|\r\n]*### Discord ID[\r|\n|\r\n]*(.{3,32}#[0-9]{4})"
if [[ ! $body =~ $regex ]]; then
  echo "unexpected pattern"
  exit 1
fi

GITHUB_HANDLE="${BASH_REMATCH[1]}"
DISCORD_HANDLE="${BASH_REMATCH[2]}"
