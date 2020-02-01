#!/bin/sh

INCLUDE=$JAVA_HOME/include
PACKAGE=org/chasen/mecab

build_lib_macos() {
    mkdir -p lib/macos
    g++ -O1 -c -fpic MeCab_wrap.cxx  $(mecab-config --cflags) -I$INCLUDE -I$INCLUDE/darwin
    g++ -dynamiclib  MeCab_wrap.o -o lib/macos/libMeCab.dylib $(mecab-config --libs)
}

build_lib_macos