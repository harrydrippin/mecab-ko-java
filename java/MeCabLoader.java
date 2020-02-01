package org.chasen.mecab;

import java.io.File;

public class MeCabLoader {
    public static synchronized void initialize(String osName) {
        System.out.println("Loading MeCab library...");
        String targetFolder = "/lib";
        String libraryFileName = "libMeCab";
        if (osName.indexOf("Mac") >= 0) {
            System.out.println("Environment macOS detected.");
            libraryFileName += ".dylib";
        } else {
            System.out.println("Environment Linux detected.");
            libraryFileName = ".so";
        }
        
        File libraryFile = new File(targetFolder, libraryFileName);
        try {
            System.load(libraryFile.getAbsolutePath());
            System.out.println("MeCab was successfully loaded.");
        } catch (Exception e) {
            System.out.println("Exception was occurred while loading library file");
            e.printStackTrace();
            System.exit(1);
        }
    }
}