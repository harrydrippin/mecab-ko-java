#!/bin/sh

PACKAGE=org/chasen/mecab

build_jar() {
    cp MeCabLoader.java org/chasen/mecab/MeCabLoader.java
    javac $PACKAGE/*.java
    jar cfv MeCab.jar $PACKAGE/*.class lib/libMeCab.dylib lib/libMeCab.so
}

build_jar