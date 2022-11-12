#!/usr/bin/env sh

echo "Pre-commit hook in action"

cd back back || exit

scripts/run-tests.sh

if [ $? -ne 0 ]; then
 echo "Tests failed!"
 exit 1
fi