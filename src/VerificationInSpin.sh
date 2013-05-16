#!/bin/bash

SPEC=$1

spin -a $SPEC

#open $SPEC

gcc -DMEMLIM=1024 -O2 -DXUSAFE -w -o pan pan.c
./pan -m10000  -Nn>output.txt

#open output.txt

spin -t -r -s $SPEC>>output.txt

