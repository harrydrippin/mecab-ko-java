#!/bin/sh

PACKAGE=org/chasen/mecab

build_jar() {
    cp NativeLibraryLoader.java org/chasen/mecab/NativeLibraryLoader.java
    sed -e s/\{/\{\ static\ \{\ NativeLibraryLoader.loadLibrary\(\)\;\ \}/g org/chasen/mecab/MecabJNI.java > org/chasen/mecab/MecabJNI.java
    javac $PACKAGE/*.java
    jar cfv MeCab.jar $PACKAGE/*.class lib/libMeCab.dylib lib/libMeCab.so
}

build_jar