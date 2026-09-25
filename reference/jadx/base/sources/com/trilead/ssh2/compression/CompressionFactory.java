package com.trilead.ssh2.compression;

import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CompressionFactory {
    private static List<CompressorEntry> compressors;

    private CompressionFactory() {
    }

    private static class CompressorEntry {
        String compressorClass;
        String type;

        private CompressorEntry(String str, String str2) {
            this.type = str;
            this.compressorClass = str2;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        compressors = arrayList;
        arrayList.add(new CompressorEntry("zlib", "com.trilead.ssh2.compression.Zlib"));
        compressors.add(new CompressorEntry("zlib@openssh.com", "com.trilead.ssh2.compression.ZlibOpenSSH"));
        compressors.add(new CompressorEntry(PreferenceConstants.CUSTOM_KEYMAP_DISABLED, ""));
    }

    static void addCompressor(String str, String str2) {
        compressors.add(new CompressorEntry(str, str2));
    }

    public static String[] getDefaultCompressorList() {
        String[] strArr = new String[compressors.size()];
        for (int i = 0; i < compressors.size(); i++) {
            strArr[i] = compressors.get(i).type;
        }
        return strArr;
    }

    public static void checkCompressorList(String[] strArr) {
        for (String str : strArr) {
            getEntry(str);
        }
    }

    public static ICompressor createCompressor(String str) {
        try {
            CompressorEntry entry = getEntry(str);
            if ("".equals(entry.compressorClass)) {
                return null;
            }
            return (ICompressor) Class.forName(entry.compressorClass).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Cannot instantiate " + str);
        }
    }

    private static CompressorEntry getEntry(String str) {
        for (CompressorEntry compressorEntry : compressors) {
            if (compressorEntry.type.equals(str)) {
                return compressorEntry;
            }
        }
        throw new IllegalArgumentException("Unknown algorithm " + str);
    }
}
