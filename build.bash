#! /bin/bash

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
-batchmode \
-nographics \
-silent-crashes \
-force-free \
-logFile /dev/stdout \
-executeMethod WebGLBuilder.build \
-quit || exit 1
