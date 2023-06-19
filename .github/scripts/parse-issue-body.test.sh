#!/usr/bin/env bash

here=$(dirname "$0")

check() {
  local test_name=$1
  local body=$2
  local expected_github_handle=$3
  local expected_discord_handle=$4

  # shellcheck source=.github/scripts/parse-issue-body.sh
  source "$here"/parse-issue-body.sh "$body" 2>&1

  if [[ "$GITHUB_HANDLE" != "$expected_github_handle" ]]; then
    echo "❌ $test_name github handle: got: $GITHUB_HANDLE, want: $expected_github_handle"
    exit 1
  fi

  if [[ "$DISCORD_HANDLE" != "$expected_discord_handle" ]]; then
    echo "❌ $test_name discord handle: got: $DISCORD_HANDLE, want: $expected_discord_handle"
    exit 1
  fi

  echo "✅ $test_name"
}

check_include() {
  local test_name=$1
  local body=$2
  local want=$3

  # shellcheck source=.github/scripts/parse-issue-body.sh
  got=$(source "$here"/parse-issue-body.sh "$body" 2>&1)

  if [[ ! "$got" =~ $want ]]; then
    cat <<EOF
❌ $test_name print unexpected error message
want: $want
got: $got
EOF
  fi

  if [[ "$GITHUB_HANDLE" != "" ]]; then
    echo "❌ $test_name github handle should be empty"
    exit 1
  fi

  if [[ "$DISCORD_HANDLE" != "" ]]; then
    echo "❌ $test_name discord handle should be empty"
    exit 1
  fi

  echo "✅ $test_name"
}

(
  input=""
  check_include "empty input" "$input" "parameter null or not set"
)

(
  input="1235"
  check_include "unexpected intput #1" "$input" "unexpected pattern"
)

(
  input=$(
    cat <<EOF
### GitHub Username

yihau

### Discord ID

chido#6488
EOF
  )

  check "expected intput #1" "$input" "yihau" "chido#6488"
)

(
  input=$(
    cat <<EOF
### GitHub Username

yihau

### Discord ID

chido#6488

### Previously approved Triage access request issue

https://github.com/solana-labs/contributor-access-policy/issues/xxx
EOF
  )

  check "expected intput #2" "$input" "yihau" "chido#6488"
)

(
  input=$(
    cat <<EOF
### GitHub Username

yihau

### Discord ID

chido6488
EOF
  )

  check "expected intput #3" "$input" "yihau" "chido6488"
)

(
  input=$(
    cat <<EOF
### GitHub Username

yihau

### Discord ID

chido6488

### Previously approved Triage access request issue

https://github.com/solana-labs/contributor-access-policy/issues/xxx
EOF
  )

  check "expected intput #4" "$input" "yihau" "chido6488"
)