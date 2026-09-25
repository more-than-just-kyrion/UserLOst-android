package org.apache.commons.compress.changes;

import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* JADX INFO: loaded from: classes3.dex */
final class Change<E extends ArchiveEntry> {
    private final E entry;
    private final InputStream inputStream;
    private final boolean replaceMode;
    private final String targetFileName;
    private final ChangeType type;

    enum ChangeType {
        DELETE,
        ADD,
        MOVE,
        DELETE_DIR
    }

    Change(E e, InputStream inputStream, boolean z) {
        this.entry = (E) Objects.requireNonNull(e, "archiveEntry");
        this.inputStream = (InputStream) Objects.requireNonNull(inputStream, "inputStream");
        this.type = ChangeType.ADD;
        this.targetFileName = null;
        this.replaceMode = z;
    }

    Change(String str, ChangeType changeType) {
        this.targetFileName = (String) Objects.requireNonNull(str, "fileName");
        this.type = changeType;
        this.inputStream = null;
        this.entry = null;
        this.replaceMode = true;
    }

    E getEntry() {
        return this.entry;
    }

    InputStream getInputStream() {
        return this.inputStream;
    }

    String getTargetFileName() {
        return this.targetFileName;
    }

    ChangeType getType() {
        return this.type;
    }

    boolean isReplaceMode() {
        return this.replaceMode;
    }
}
