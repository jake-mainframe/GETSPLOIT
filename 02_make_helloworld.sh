#!/bin/bash

cd ../SOFTWARE/CDEVMVS

git submodule update --init

cd rdrprep
make

cd ../jcc
chmod +x jcc32

cd ../dev
make clean
make
make install