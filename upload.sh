#!/bin/bash

echo "This script is used to upload data to Github"

git add *
git commit -m "{$1}"
git push origin master

exit 0
