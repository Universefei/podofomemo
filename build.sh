#!/usr/bin/env bash

cd build

cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="../installFile" ../podofoSRC
make
make install

