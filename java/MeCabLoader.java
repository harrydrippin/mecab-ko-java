package org.chasen.mecab;

import java.io.File;

public class MeCabLoader {
    public static void initialize() {
        System.out.println("Loading MeCab library...");
        String targetFolder = "/lib";
        String libraryFileName = "libMeCab";
        if (System.getProperty("os.name").indexOf("mac") >= 0) {
            System.out.println("Environment macOS detected.");
            libraryFileName += ".dylib";
        } else {
            System.out.println("Environment Linux detected.");
            libraryFileName = ".so";
        }
        
        File libraryFile = new File(targetFolder, libraryFileName);
        if (libraryFile.exists()) {
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
}