#!/bin/sh

set -e

#if OS is linux or is not set
if [ "$TRAVIS_OS_NAME" = linux -o -z "$TRAVIS_OS_NAME" ]; then
    mkdir build 
    cd build
    cmake -DNON_INTERACTIVE_BUILD:BOOL=TRUE ..
    make -k
elif [ "$TRAVIS_OS_NAME" = osx ]; then
    mkdir build
    cd build
    cmake .. -GXcode
    xcodebuild
fi
