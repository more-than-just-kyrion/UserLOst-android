package tech.ula.library;

import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CameraActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0014J\u0012\u0010\u001b\u001a\u00020\u00142\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0012\u0010\u001e\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u000e\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\f¨\u0006!"}, d2 = {"Ltech/ula/library/CameraActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "REQUEST_IMAGE_CAPTURE", "", "getREQUEST_IMAGE_CAPTURE", "()I", "currentPhotoName", "", "getCurrentPhotoName", "()Ljava/lang/String;", "setCurrentPhotoName", "(Ljava/lang/String;)V", "currentPhotoPath", "getCurrentPhotoPath", "setCurrentPhotoPath", "createImageFile", "Ljava/io/File;", "name", "dispatchTakePictureIntent", "", "intent", "Landroid/content/Intent;", "onActivityResult", "requestCode", "resultCode", "data", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "sendResult", "code", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CameraActivity extends AppCompatActivity {
    private final int REQUEST_IMAGE_CAPTURE = 1;
    public String currentPhotoName;
    public String currentPhotoPath;

    public final String getCurrentPhotoPath() {
        String str = this.currentPhotoPath;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentPhotoPath");
        return null;
    }

    public final void setCurrentPhotoPath(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentPhotoPath = str;
    }

    public final String getCurrentPhotoName() {
        String str = this.currentPhotoName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentPhotoName");
        return null;
    }

    public final void setCurrentPhotoName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentPhotoName = str;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null || !StringsKt.equals$default(intent.getType(), "take_picture", false, 2, null)) {
            return;
        }
        dispatchTakePictureIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.camera_activity);
        if (getIntent() != null) {
            Intent intent = getIntent();
            if (StringsKt.equals$default(intent != null ? intent.getType() : null, "take_picture", false, 2, null)) {
                Intent intent2 = getIntent();
                Intrinsics.checkNotNullExpressionValue(intent2, "getIntent(...)");
                dispatchTakePictureIntent(intent2);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == this.REQUEST_IMAGE_CAPTURE && resultCode == -1) {
            sendResult(0);
        } else {
            sendResult(1);
        }
        finish();
    }

    public final int getREQUEST_IMAGE_CAPTURE() {
        return this.REQUEST_IMAGE_CAPTURE;
    }

    public final File createImageFile(String name) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        File file = new File(new File(getExternalFilesDir(null), "Intents"), name);
        file.createNewFile();
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        setCurrentPhotoPath(absolutePath);
        setCurrentPhotoName(name);
        return file;
    }

    public final void dispatchTakePictureIntent(Intent intent) {
        File fileCreateImageFile;
        Intrinsics.checkNotNullParameter(intent, "intent");
        String stringExtra = intent.getStringExtra("cameraRequest");
        if (stringExtra != null) {
            Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
            ComponentName componentNameResolveActivity = intent2.resolveActivity(getPackageManager());
            if (componentNameResolveActivity != null) {
                Intrinsics.checkNotNull(componentNameResolveActivity);
                try {
                    fileCreateImageFile = createImageFile(stringExtra);
                } catch (IOException unused) {
                    sendResult(-1);
                    fileCreateImageFile = null;
                }
                if (fileCreateImageFile != null) {
                    CameraActivity cameraActivity = this;
                    Uri uriForFile = FileProvider.getUriForFile(cameraActivity, tech.ula.customlibrary.BuildConfig.PROVIDER_AUTHORITY, fileCreateImageFile);
                    Intrinsics.checkNotNullExpressionValue(uriForFile, "getUriForFile(...)");
                    intent2.putExtra("output", uriForFile);
                    startActivityForResult(intent2, this.REQUEST_IMAGE_CAPTURE);
                    SharedPreferences sharedPreferences = cameraActivity.getSharedPreferences(cameraActivity.getPackageName() + "_preferences", 0);
                    Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putBoolean("photo_pending", true);
                    editorEdit.apply();
                    return;
                }
                return;
            }
            return;
        }
        sendResult(-1);
    }

    public final void sendResult(int code) {
        File file = new File(getExternalFilesDir(null), "Intents");
        File file2 = new File(file, ".cameraResponse.txt");
        File file3 = new File(file, "cameraResponse.txt");
        FilesKt.writeText$default(file2, String.valueOf(code), null, 2, null);
        file2.renameTo(file3);
        CameraActivity cameraActivity = this;
        SharedPreferences sharedPreferences = cameraActivity.getSharedPreferences(cameraActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean("photo_pending", false);
        editorEdit.apply();
        finish();
    }
}
