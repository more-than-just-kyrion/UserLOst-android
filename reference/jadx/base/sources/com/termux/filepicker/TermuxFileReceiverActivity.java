package com.termux.filepicker;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import android.util.Patterns;
import com.termux.app.DialogUtils;
import com.termux.app.TermuxService;
import com.termux.terminal.EmulatorDebug;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TermuxFileReceiverActivity extends Activity {
    boolean mFinishOnDismissNameDialog = true;
    static final String TERMUX_RECEIVEDIR = TermuxService.filesPath + "/home/downloads";
    static final String EDITOR_PROGRAM = TermuxService.homePath + "/bin/termux-file-editor";
    static final String URL_OPENER_PROGRAM = TermuxService.homePath + "/bin/termux-url-opener";

    static boolean isSharedTextAnUrl(String str) {
        return Patterns.WEB_URL.matcher(str).matches() || Pattern.matches("magnet:\\?xt=urn:btih:.*?", str);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Intent intent = getIntent();
        String action = intent.getAction();
        String type = intent.getType();
        String scheme = intent.getScheme();
        if ("android.intent.action.SEND".equals(action) && type != null) {
            String stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
            Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
            if (stringExtra == null) {
                if (uri != null) {
                    handleContentUri(uri, intent.getStringExtra("android.intent.extra.TITLE"));
                    return;
                } else {
                    showErrorDialogAndQuit("Send action without content - nothing to save.");
                    return;
                }
            }
            if (isSharedTextAnUrl(stringExtra)) {
                handleUrlAndFinish(stringExtra);
                return;
            }
            String stringExtra2 = intent.getStringExtra("android.intent.extra.SUBJECT");
            if (stringExtra2 == null) {
                stringExtra2 = intent.getStringExtra("android.intent.extra.TITLE");
            }
            if (stringExtra2 != null) {
                stringExtra2 = stringExtra2 + ".txt";
            }
            promptNameAndSave(new ByteArrayInputStream(stringExtra.getBytes(StandardCharsets.UTF_8)), stringExtra2);
            return;
        }
        if ("content".equals(scheme)) {
            handleContentUri(intent.getData(), intent.getStringExtra("android.intent.extra.TITLE"));
            return;
        }
        if ("file".equals(scheme)) {
            File file = new File(intent.getData().getPath());
            try {
                promptNameAndSave(new FileInputStream(file), file.getName());
                return;
            } catch (FileNotFoundException e) {
                showErrorDialogAndQuit("Cannot open file: " + e.getMessage() + ".");
                return;
            }
        }
        showErrorDialogAndQuit("Unable to receive any file or URL.");
    }

    void showErrorDialogAndQuit(String str) {
        this.mFinishOnDismissNameDialog = false;
        new AlertDialog.Builder(this).setMessage(str).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.termux.filepicker.TermuxFileReceiverActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showErrorDialogAndQuit$0(dialogInterface);
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.termux.filepicker.TermuxFileReceiverActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$showErrorDialogAndQuit$1(dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showErrorDialogAndQuit$0(DialogInterface dialogInterface) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showErrorDialogAndQuit$1(DialogInterface dialogInterface, int i) {
        finish();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0033  */
    void handleContentUri(Uri uri, String str) {
        int columnIndex;
        String string;
        try {
            Cursor cursorQuery = getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (!cursorQuery.moveToFirst() || (columnIndex = cursorQuery.getColumnIndex("_display_name")) < 0) {
                        string = null;
                    } else {
                        string = cursorQuery.getString(columnIndex);
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } else {
                string = null;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            if (string != null) {
                str = string;
            }
            promptNameAndSave(getContentResolver().openInputStream(uri), str);
        } catch (Exception e) {
            showErrorDialogAndQuit("Unable to handle shared content:\n\n" + e.getMessage());
            Log.e(EmulatorDebug.LOG_TAG, "handleContentUri(uri=" + uri + ") failed", e);
        }
    }

    void promptNameAndSave(final InputStream inputStream, String str) {
        DialogUtils.textInput(this, com.termux.R.string.file_received_title, str, com.termux.R.string.file_received_edit_button, new DialogUtils.TextSetListener() { // from class: com.termux.filepicker.TermuxFileReceiverActivity$$ExternalSyntheticLambda2
            @Override // com.termux.app.DialogUtils.TextSetListener
            public final void onTextSet(String str2) {
                this.f$0.lambda$promptNameAndSave$2(inputStream, str2);
            }
        }, com.termux.R.string.file_received_open_folder_button, new DialogUtils.TextSetListener() { // from class: com.termux.filepicker.TermuxFileReceiverActivity$$ExternalSyntheticLambda3
            @Override // com.termux.app.DialogUtils.TextSetListener
            public final void onTextSet(String str2) {
                this.f$0.lambda$promptNameAndSave$3(inputStream, str2);
            }
        }, R.string.cancel, new DialogUtils.TextSetListener() { // from class: com.termux.filepicker.TermuxFileReceiverActivity$$ExternalSyntheticLambda4
            @Override // com.termux.app.DialogUtils.TextSetListener
            public final void onTextSet(String str2) {
                this.f$0.lambda$promptNameAndSave$4(str2);
            }
        }, new DialogInterface.OnDismissListener() { // from class: com.termux.filepicker.TermuxFileReceiverActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$promptNameAndSave$5(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$promptNameAndSave$2(InputStream inputStream, String str) {
        File fileSaveStreamWithName = saveStreamWithName(inputStream, str);
        if (fileSaveStreamWithName == null) {
            return;
        }
        String str2 = EDITOR_PROGRAM;
        File file = new File(str2);
        if (!file.isFile()) {
            showErrorDialogAndQuit("The following file does not exist:\n$HOME/bin/termux-file-editor\n\nCreate this file as a script or a symlink - it will be called with the received file as only argument.");
            return;
        }
        file.setExecutable(true);
        Intent intent = new Intent(TermuxService.ACTION_EXECUTE, new Uri.Builder().scheme("file").path(str2).build());
        intent.setClass(this, TermuxService.class);
        intent.putExtra(TermuxService.EXTRA_ARGUMENTS, new String[]{fileSaveStreamWithName.getAbsolutePath()});
        startService(intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$promptNameAndSave$3(InputStream inputStream, String str) {
        if (saveStreamWithName(inputStream, str) == null) {
            return;
        }
        Intent intent = new Intent(TermuxService.ACTION_EXECUTE);
        intent.putExtra(TermuxService.EXTRA_CURRENT_WORKING_DIRECTORY, TERMUX_RECEIVEDIR);
        intent.setClass(this, TermuxService.class);
        startService(intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$promptNameAndSave$4(String str) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$promptNameAndSave$5(DialogInterface dialogInterface) {
        if (this.mFinishOnDismissNameDialog) {
            finish();
        }
    }

    public File saveStreamWithName(InputStream inputStream, String str) {
        File file = new File(TERMUX_RECEIVEDIR);
        if (!file.isDirectory() && !file.mkdirs()) {
            showErrorDialogAndQuit("Cannot create directory: " + file.getAbsolutePath());
            return null;
        }
        try {
            File file2 = new File(file, str);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i > 0) {
                        fileOutputStream.write(bArr, 0, i);
                    } else {
                        fileOutputStream.close();
                        return file2;
                    }
                    showErrorDialogAndQuit("Error saving file:\n\n" + e);
                    Log.e(EmulatorDebug.LOG_TAG, "Error saving file", e);
                    return null;
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            showErrorDialogAndQuit("Error saving file:\n\n" + e);
            Log.e(EmulatorDebug.LOG_TAG, "Error saving file", e);
            return null;
        }
    }

    void handleUrlAndFinish(String str) {
        String str2 = URL_OPENER_PROGRAM;
        File file = new File(str2);
        if (!file.isFile()) {
            showErrorDialogAndQuit("The following file does not exist:\n$HOME/bin/termux-url-opener\n\nCreate this file as a script or a symlink - it will be called with the shared URL as only argument.");
            return;
        }
        file.setExecutable(true);
        Intent intent = new Intent(TermuxService.ACTION_EXECUTE, new Uri.Builder().scheme("file").path(str2).build());
        intent.setClass(this, TermuxService.class);
        intent.putExtra(TermuxService.EXTRA_ARGUMENTS, new String[]{str});
        startService(intent);
        finish();
    }
}
