#!/bin/bash
set -e
echo "Building app..."
mkdir -p dist
# simulate build artifact
echo "Hello from build at $(date)" > dist/hello.txt
tar -czf dist/app-${BUILD_NUMBER:-local}.tar.gz -C dist hello.txt
echo "Build artifact created: dist/app-${BUILD_NUMBER:-local}.tar.gz"
