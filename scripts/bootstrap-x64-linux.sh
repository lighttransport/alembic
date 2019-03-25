#!/bin/bash

CMAKE_BIN=cmake

rm -rf build-x64

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=RelWidhDebInfo \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/alembic-x64 \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DALEMBIC_SHARED_LIBS=Off \
  -Bbuild-x64 -H.
