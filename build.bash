#! /bin/bash

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
-batchmode \
-nographics \
-silent-crashes \
-force-free \
-logFile /dev/stdout \
-buildOSXUniversalPlayer "./Build/osx/launcher.app" \
-quit || exit 1
