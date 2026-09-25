package tech.ula.library.utils;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.rauschig.jarchivelib.Archiver;
import org.rauschig.jarchivelib.ArchiverFactory;

/* JADX INFO: compiled from: AssetDownloader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltech/ula/library/utils/ArchiveFactoryWrapper;", "", "()V", "createArchiver", "Lorg/rauschig/jarchivelib/Archiver;", "archiverType", "Ljava/io/File;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ArchiveFactoryWrapper {
    public final Archiver createArchiver(File archiverType) {
        Intrinsics.checkNotNullParameter(archiverType, "archiverType");
        Archiver archiverCreateArchiver = ArchiverFactory.createArchiver(archiverType);
        Intrinsics.checkNotNullExpressionValue(archiverCreateArchiver, "createArchiver(...)");
        return archiverCreateArchiver;
    }
}
