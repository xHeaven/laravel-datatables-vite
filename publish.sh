#!/usr/bin/env bash

version=0.5.3

echo "Publishing version $version"

git add .
git commit -am "chore: release $version :rocket:"
npm version $version
git push origin main && git push origin main --tags

npm publish
