package org.apache.commons.compress.compressors.pack200;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.HashMap;
import java.util.Map;
import java.util.jar.JarFile;
import java.util.jar.JarOutputStream;
import org.apache.commons.compress.java.util.jar.Pack200;

/* JADX INFO: loaded from: classes3.dex */
public class Pack200Utils {
    public static void normalize(File file) throws IOException {
        normalize(file, file, null);
    }

    public static void normalize(File file, File file2) throws IOException {
        normalize(file, file2, null);
    }

    public static void normalize(File file, File file2, Map<String, String> map) throws IOException {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(Pack200.Packer.SEGMENT_LIMIT, "-1");
        Path pathCreateTempFile = Files.createTempFile("commons-compress", "pack200normalize", new FileAttribute[0]);
        try {
            OutputStream outputStreamNewOutputStream = Files.newOutputStream(pathCreateTempFile, new OpenOption[0]);
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    Pack200.Packer packerNewPacker = Pack200.newPacker();
                    packerNewPacker.properties().putAll(map);
                    packerNewPacker.pack(jarFile, outputStreamNewOutputStream);
                    jarFile.close();
                    if (outputStreamNewOutputStream != null) {
                        outputStreamNewOutputStream.close();
                    }
                    Pack200.Unpacker unpackerNewUnpacker = Pack200.newUnpacker();
                    JarOutputStream jarOutputStream = new JarOutputStream(Files.newOutputStream(file2.toPath(), new OpenOption[0]));
                    try {
                        unpackerNewUnpacker.unpack(pathCreateTempFile.toFile(), jarOutputStream);
                        jarOutputStream.close();
                        Files.delete(pathCreateTempFile);
                    } catch (Throwable th) {
                        try {
                            jarOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        jarFile.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                if (outputStreamNewOutputStream != null) {
                    try {
                        outputStreamNewOutputStream.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        } catch (Throwable th7) {
            Files.delete(pathCreateTempFile);
            throw th7;
        }
    }

    public static void normalize(File file, Map<String, String> map) throws IOException {
        normalize(file, file, map);
    }

    private Pack200Utils() {
    }
}
