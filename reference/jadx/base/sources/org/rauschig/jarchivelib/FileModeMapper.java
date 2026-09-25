package org.rauschig.jarchivelib;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.logging.Logger;
import org.apache.commons.lang3.SystemProperties;

/* JADX INFO: loaded from: classes3.dex */
abstract class FileModeMapper {
    private static final Logger LOG = Logger.getLogger(FileModeMapper.class.getCanonicalName());
    private org.apache.commons.compress.archivers.ArchiveEntry archiveEntry;

    public interface ChmodCommand {
        void chmod(int i, File file) throws Exception;
    }

    public abstract void map(File file) throws IOException;

    public FileModeMapper(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
        this.archiveEntry = archiveEntry;
    }

    public org.apache.commons.compress.archivers.ArchiveEntry getArchiveEntry() {
        return this.archiveEntry;
    }

    public static void map(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry, File file) throws IOException {
        create(archiveEntry).map(file);
    }

    public static FileModeMapper create(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
        if (System.getProperty(SystemProperties.OS_NAME).toLowerCase().startsWith("windows")) {
            return new FallbackFileModeMapper(archiveEntry);
        }
        return new UnixPermissionMapper(archiveEntry);
    }

    public static class FallbackFileModeMapper extends FileModeMapper {
        @Override // org.rauschig.jarchivelib.FileModeMapper
        public void map(File file) throws IOException {
        }

        @Override // org.rauschig.jarchivelib.FileModeMapper
        public /* bridge */ /* synthetic */ org.apache.commons.compress.archivers.ArchiveEntry getArchiveEntry() {
            return super.getArchiveEntry();
        }

        public FallbackFileModeMapper(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
            super(archiveEntry);
        }
    }

    public static class UnixPermissionMapper extends FileModeMapper {
        public static final int UNIX_PERMISSION_MASK = 511;

        @Override // org.rauschig.jarchivelib.FileModeMapper
        public /* bridge */ /* synthetic */ org.apache.commons.compress.archivers.ArchiveEntry getArchiveEntry() {
            return super.getArchiveEntry();
        }

        public UnixPermissionMapper(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
            super(archiveEntry);
        }

        @Override // org.rauschig.jarchivelib.FileModeMapper
        public void map(File file) throws IOException {
            int mode = getMode() & 511;
            if (mode > 0) {
                chmod(mode, file);
            }
        }

        public int getMode() throws IOException {
            return AttributeAccessor.create(getArchiveEntry()).getMode();
        }

        public ChmodCommand getChmodCommand() {
            return new FileSystemPreferencesReflectionChmodCommand();
        }

        private void chmod(int i, File file) throws IOException {
            try {
                getChmodCommand().chmod(i, file);
            } catch (Exception e) {
                FileModeMapper.LOG.warning("Could not set file permissions of " + file + ". Exception was: " + e.getMessage());
            }
        }
    }

    public static class FileSystemPreferencesReflectionChmodCommand implements ChmodCommand {
        private static Method method;

        @Override // org.rauschig.jarchivelib.FileModeMapper.ChmodCommand
        public void chmod(int i, File file) throws Exception {
            getMethod().invoke(null, file.getAbsolutePath(), Integer.valueOf(i));
        }

        private Method getMethod() throws Exception {
            if (method == null) {
                Method declaredMethod = Class.forName("java.util.prefs.FileSystemPreferences").getDeclaredMethod("chmod", String.class, Integer.TYPE);
                method = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            return method;
        }
    }

    public static class RuntimeExecChmodCommand implements ChmodCommand {
        @Override // org.rauschig.jarchivelib.FileModeMapper.ChmodCommand
        public void chmod(int i, File file) throws Exception {
            Runtime.getRuntime().exec("chmod " + Integer.toOctalString(i) + " " + file.getAbsolutePath());
        }
    }
}
