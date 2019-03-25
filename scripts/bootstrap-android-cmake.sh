#!/bin/bash

## Please edit android sdk/ndk/cmake path
ANDROID_SDK_ROOT=$HOME/Android/Sdk/
ANDROID_NDK_ROOT=$HOME/Android/Sdk/ndk-bundle
CMAKE_BIN=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/cmake

rm -rf build-android

# For ninja build
# -DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/ninja \

$CMAKE_BIN \
-DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
-DANDROID_ABI=arm64-v8a \
-DANDROID_NATIVE_API_LEVEL=28 \
-DANDROID_STL=c++_static \
-Bbuild-android -H.
