package org.apache.commons.compress.utils;

import java.io.File;
import java.nio.file.Path;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes3.dex */
public class FileNameUtils {
    public static String getBaseName(Path path) {
        Path fileName;
        if (path == null || (fileName = path.getFileName()) == null) {
            return null;
        }
        return FilenameUtils.removeExtension(fileName.toString());
    }

    @Deprecated
    public static String getBaseName(String str) {
        if (str == null) {
            return null;
        }
        return FilenameUtils.removeExtension(new File(str).getName());
    }

    public static String getExtension(Path path) {
        Path fileName;
        if (path == null || (fileName = path.getFileName()) == null) {
            return null;
        }
        return FilenameUtils.getExtension(fileName.toString());
    }

    @Deprecated
    public static String getExtension(String str) {
        return FilenameUtils.getExtension(str);
    }
}
