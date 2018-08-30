#! /bin/bash

echo 'Downloading'
curl -o Unity.pkg https://download.unity3d.com/download_unity/f2cce2a5991f/MacEditorInstaller/Unity-2017.4.10f1.pkg || exit 1

echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target / || exit 1

rm Unity.pkg
