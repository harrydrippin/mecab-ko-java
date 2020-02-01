#!/bin/sh

PACKAGE=org/chasen/mecab

build_jar() {
    javac $PACKAGE/*.java
    jar cfv MeCab.jar $PACKAGE/*.class lib/macos/libMeCab.dylib lib/linux/libMeCab.so
}