#!/bin/sh

INCLUDE=$JAVA_HOME/include
PACKAGE=org/chasen/mecab

build_lib_linux() {
    mkdir -p lib/linux
    g++ -O1 -c -fpic MeCab_wrap.cxx  $(mecab-config --cflags) -I$INCLUDE -I$INCLUDE/linux
    g++ -shared  MeCab_wrap.o -o lib/linux/libMeCab.so $(mecab-config --libs)
}

build_lib_linux