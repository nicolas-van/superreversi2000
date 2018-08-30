#! /bin/sh

BASE_URL=https://netstorage.unity3d.com/unity
HASH=3071d1717b71
VERSION=2018.2.5f1

download() {
  file=$1
  url="$BASE_URL/$HASH/$package"

  echo "Downloading from $url: "
  curl -o `basename "$package"` "$url" || return 1
}

install() {
  package=$1
  download "$package" || return 1

  echo "Installing "`basename "$package"`
  sudo installer -dumplog -package `basename "$package"` -target / || return 1
}

# See $BASE_URL/$HASH/unity-$VERSION-$PLATFORM.ini for complete list
# of available packages, where PLATFORM is `osx` or `win`

install "MacEditorInstaller/Unity-$VERSION.pkg" || exit 1
#install "MacEditorTargetInstaller/UnitySetup-Mac-Support-for-Editor-$VERSION.pkg" || exit 1
