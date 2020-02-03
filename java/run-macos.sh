#!/bin/sh

INCLUDE=$JAVA_HOME/include
PACKAGE=org/chasen/mecab

build_lib_macos() {
    mkdir -p $PACKAGE/native/macos
    g++ -O1 -c -fpic MeCab_wrap.cxx  $(mecab-config --cflags) -I$INCLUDE -I$INCLUDE/darwin
    g++ -shared MeCab_wrap.o -o $PACKAGE/native/macos/libMeCab.so -Wl,-rpath,./ $(mecab-config --libs)}

build_lib_macos