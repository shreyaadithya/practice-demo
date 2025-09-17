#!/bin/bash
set -e
echo "Running unit tests..."
# simple "test": check that hello file exists
if [ -f dist/hello.txt ]; then
  echo "UNIT TESTS: PASS"
  exit 0
else
  echo "UNIT TESTS: FAIL - artifact missing"
  exit 1
fi
