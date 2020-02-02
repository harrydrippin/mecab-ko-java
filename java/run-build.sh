#!/bin/sh

PACKAGE=org/chasen/mecab

build_jar() {
    cp -f MeCab.java org/chasen/mecab/MeCab.java
    javac $PACKAGE/*.java
    jar cfv MeCab.jar $PACKAGE/*.class lib/libMeCab.dylib lib/libMeCab.so
}

build_jar