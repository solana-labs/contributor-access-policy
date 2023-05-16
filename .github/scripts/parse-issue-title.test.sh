#!/usr/bin/env bash

here=$(dirname "$0")

check() {
  local test_name=$1
  local title=$2
  local expected_privilege=$3
  local expected_repository=$4

  # shellcheck source=.github/scripts/parse-issue-title.sh
  source "$here"/parse-issue-title.sh "$title" 2>&1

  if [[ "$PRIVILEGE" != "$expected_privilege" ]]; then
    echo "❌ $test_name privilege: got: $PRIVILEGE, want: $expected_privilege"
    exit 1
  fi

  if [[ "$REPOSITORY" != "$expected_repository" ]]; then
    echo "❌ $test_name repository: got: $REPOSITORY, want: $expected_repository"
    exit 1
  fi

  echo "✅ $test_name"
}

check_include() {
  local test_name=$1
  local title=$2
  local want=$3

  # shellcheck source=.github/scripts/parse-issue-title.sh
  got=$(source "$here"/parse-issue-title.sh "$title" 2>&1)

  if [[ ! "$got" =~ $want ]]; then
    cat <<EOF
❌ $test_name print unexpected error message
want: $want
got: $got
EOF
  fi

  if [[ "$PRIVILEGE" != "" ]]; then
    echo "❌ $test_name privilege should be empty"
    exit 1
  fi

  if [[ "$REPOSITORY" != "" ]]; then
    echo "❌ $test_name repository handle should be empty"
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
  input="Request Triage access for yihau to the Solana Labs Monorepo"
  check "expected intput #1" "$input" "Triage" "Solana Labs Monorepo"
)

(
  input="Request Write access for austbot to the SPL repository"
  check "expected intput #2" "$input" "Write" "SPL repository"
)
