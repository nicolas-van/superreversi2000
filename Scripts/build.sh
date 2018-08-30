#! /bin/bash

# Example build script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# Change this the name of your project. This will be the name of the final executables as well.
project="ci-build"

ls -al ./

echo Attempting to build $project for OS X
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -force-free \
  -logFile /dev/stdout \
  -buildOSXUniversalPlayer "./Build/osx/$project.app" \
  -quit || exit 1
