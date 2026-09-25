package tech.ula.library.provider;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsProvider;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.i18n.MessageBundle;
import tech.ula.customlibrary.R;
import tech.ula.library.utils.UlaFiles;

/* JADX INFO: compiled from: UlaDocProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J&\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u001b\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u001e\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010!\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010#\u001a\u00020$H\u0016J\"\u0010%\u001a\u00020&2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u00052\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J3\u0010*\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0010\u0010+\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010,\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0002\u0010-J)\u0010.\u001a\u00020\u00162\b\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0010\u0010+\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0005\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010/J\u001f\u00100\u001a\u00020\u00162\u0010\u0010+\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0005\u0018\u00010\u0004H\u0016¢\u0006\u0002\u00101R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u00062"}, d2 = {"Ltech/ula/library/provider/UlaDocProvider;", "Landroid/provider/DocumentsProvider;", "()V", "defaultDocumentProjection", "", "", "[Ljava/lang/String;", "defaultRootProjection", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "getUlaFiles", "()Ltech/ula/library/utils/UlaFiles;", "ulaFiles$delegate", "Lkotlin/Lazy;", "addToCursor", "", "result", "Landroid/database/MatrixCursor;", "docId", "file", "Ljava/io/File;", "addUlaRoots", "Landroid/database/Cursor;", "createDocument", "parentDocumentId", "mimeType", "displayName", "deleteDocument", "documentId", "getDocIdForFile", "getDocumentType", "getFileForDocId", "getMimeType", "includeDocId", "includeFile", "onCreate", "", "openDocument", "Landroid/os/ParcelFileDescriptor;", "mode", "signal", "Landroid/os/CancellationSignal;", "queryChildDocuments", "projection", "sortOrder", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "queryDocument", "(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;", "queryRoots", "([Ljava/lang/String;)Landroid/database/Cursor;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UlaDocProvider extends DocumentsProvider {
    private final String[] defaultRootProjection = {"root_id", "flags", "icon", MessageBundle.TITLE_ENTRY, "document_id", "available_bytes"};
    private final String[] defaultDocumentProjection = {"document_id", "mime_type", "_display_name", "last_modified", "flags", "_size"};

    /* JADX INFO: renamed from: ulaFiles$delegate, reason: from kotlin metadata */
    private final Lazy ulaFiles = LazyKt.lazy(new Function0<UlaFiles>() { // from class: tech.ula.library.provider.UlaDocProvider$ulaFiles$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final UlaFiles invoke() {
            Context context = this.this$0.getContext();
            Intrinsics.checkNotNull(context);
            Context context2 = this.this$0.getContext();
            Intrinsics.checkNotNull(context2);
            String nativeLibraryDir = context2.getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            return new UlaFiles(context, nativeLibraryDir, null, 4, null);
        }
    });

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    private final UlaFiles getUlaFiles() {
        return (UlaFiles) this.ulaFiles.getValue();
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryRoots(String[] projection) {
        Cursor cursorAddUlaRoots;
        if (projection == null) {
            projection = this.defaultRootProjection;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        return (getContext() == null || (cursorAddUlaRoots = addUlaRoots(matrixCursor)) == null) ? matrixCursor : cursorAddUlaRoots;
    }

    @Override // android.provider.DocumentsProvider
    public ParcelFileDescriptor openDocument(String docId, String mode, CancellationSignal signal) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(mode, "mode");
        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(getFileForDocId(docId), ParcelFileDescriptor.parseMode(mode));
        Intrinsics.checkNotNullExpressionValue(parcelFileDescriptorOpen, "open(...)");
        return parcelFileDescriptorOpen;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryDocument(String docId, String[] projection) {
        if (projection == null) {
            projection = this.defaultDocumentProjection;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        if (docId == null) {
            docId = "";
        }
        includeDocId(matrixCursor, docId);
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryChildDocuments(String parentDocumentId, String[] projection, String sortOrder) {
        if (parentDocumentId == null) {
            parentDocumentId = "";
        }
        File fileForDocId = getFileForDocId(parentDocumentId);
        if (projection == null) {
            projection = this.defaultDocumentProjection;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        File[] fileArrListFiles = fileForDocId.listFiles();
        if (fileArrListFiles != null) {
            Intrinsics.checkNotNull(fileArrListFiles);
            for (File file : fileArrListFiles) {
                Intrinsics.checkNotNull(file);
                includeFile(matrixCursor, file);
            }
        }
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public String getDocumentType(String documentId) {
        if (documentId == null) {
            documentId = "";
        }
        return getMimeType(getFileForDocId(documentId));
    }

    @Override // android.provider.DocumentsProvider
    public String createDocument(String parentDocumentId, String mimeType, String displayName) throws FileNotFoundException {
        if (displayName == null) {
            return "";
        }
        if (parentDocumentId == null) {
            parentDocumentId = "";
        }
        try {
            File file = new File(getFileForDocId(parentDocumentId), displayName);
            file.createNewFile();
            file.setWritable(true);
            file.setReadable(true);
            return getDocIdForFile(file);
        } catch (Exception unused) {
            throw new FileNotFoundException("Failed to create " + displayName);
        }
    }

    @Override // android.provider.DocumentsProvider
    public void deleteDocument(String documentId) {
        if (documentId == null) {
            return;
        }
        getFileForDocId(documentId).delete();
    }

    private final Cursor addUlaRoots(MatrixCursor result) {
        File emulatedUserDir = getUlaFiles().getEmulatedUserDir();
        MatrixCursor.RowBuilder rowBuilderNewRow = result.newRow();
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        rowBuilderNewRow.add(MessageBundle.TITLE_ENTRY, context.getString(R.string.app_name) + " INTERNAL");
        rowBuilderNewRow.add("root_id", getDocIdForFile(emulatedUserDir));
        rowBuilderNewRow.add("document_id", getDocIdForFile(emulatedUserDir));
        rowBuilderNewRow.add("flags", 1);
        rowBuilderNewRow.add("icon", Integer.valueOf(tech.ula.library.R.mipmap.ic_launcher));
        rowBuilderNewRow.add("available_bytes", Long.valueOf(emulatedUserDir.getFreeSpace()));
        File sdCardUserDir = getUlaFiles().getSdCardUserDir();
        if (sdCardUserDir != null) {
            MatrixCursor.RowBuilder rowBuilderNewRow2 = result.newRow();
            Context context2 = getContext();
            Intrinsics.checkNotNull(context2);
            rowBuilderNewRow2.add(MessageBundle.TITLE_ENTRY, context2.getString(R.string.app_name) + " SDCARD");
            rowBuilderNewRow2.add("root_id", getDocIdForFile(sdCardUserDir));
            rowBuilderNewRow2.add("document_id", getDocIdForFile(sdCardUserDir));
            rowBuilderNewRow2.add("flags", 1);
            rowBuilderNewRow2.add("icon", Integer.valueOf(tech.ula.library.R.mipmap.ic_launcher));
            rowBuilderNewRow2.add("available_bytes", Long.valueOf(sdCardUserDir.getFreeSpace()));
        }
        return result;
    }

    private final String getDocIdForFile(File file) {
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    private final File getFileForDocId(String docId) {
        return new File(docId);
    }

    private final void includeDocId(MatrixCursor result, String docId) {
        if (Intrinsics.areEqual(docId, "")) {
            return;
        }
        addToCursor(result, docId, getFileForDocId(docId));
    }

    private final void includeFile(MatrixCursor result, File file) {
        if (file.exists()) {
            addToCursor(result, getDocIdForFile(file), file);
        }
    }

    private final void addToCursor(MatrixCursor result, String docId, File file) {
        int i;
        if (file.isDirectory() && file.canWrite()) {
            i = 8;
        } else {
            i = file.canWrite() ? 6 : 0;
        }
        String mimeType = getMimeType(file);
        if (StringsKt.startsWith$default(mimeType, "image/", false, 2, (Object) null)) {
            i |= 1;
        }
        MatrixCursor.RowBuilder rowBuilderNewRow = result.newRow();
        rowBuilderNewRow.add("document_id", docId);
        rowBuilderNewRow.add("_display_name", file.getName());
        rowBuilderNewRow.add("_size", Long.valueOf(file.length()));
        rowBuilderNewRow.add("mime_type", mimeType);
        rowBuilderNewRow.add("last_modified", Long.valueOf(file.lastModified()));
        rowBuilderNewRow.add("flags", Integer.valueOf(i));
        rowBuilderNewRow.add("icon", Integer.valueOf(tech.ula.library.R.mipmap.ic_launcher));
    }

    private final String getMimeType(File file) {
        String mimeTypeFromExtension;
        if (file.isDirectory()) {
            return "vnd.android.document/directory";
        }
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String strSubstringAfterLast$default = StringsKt.substringAfterLast$default(name, '.', (String) null, 2, (Object) null);
        return (Intrinsics.areEqual(strSubstringAfterLast$default, "") || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strSubstringAfterLast$default)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }
}
