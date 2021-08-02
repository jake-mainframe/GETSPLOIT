#!/bin/bash

cd ../SOFTWARE/CDEVMVS

git submodule update --init
cd rdrprep
make
cd ../dev
make clean
make
make install