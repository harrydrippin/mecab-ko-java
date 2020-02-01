package org.chasen.mecab;

import java.io.File;

public class NativeLibraryLoader {
    public static void loadLibrary() {
        String targetFolder = "/lib";
        String libraryFileName = "libMeCab";
        if (System.getProperty("os.name").indexOf("mac") >= 0) {
            libraryFileName += ".dylib";
        } else {
            libraryFileName = ".so";
        }
        
        File libraryFile = new File(targetFolder, libraryFileName);
        if (libraryFile.exists()) {
            try {
                System.load(libraryFile.getAbsolutePath());
            } catch (Exception e) {
                System.out.println("Exception was occurred while loading library file");
                e.printStackTrace();
                System.exit(1);
            }
        }
    }
}