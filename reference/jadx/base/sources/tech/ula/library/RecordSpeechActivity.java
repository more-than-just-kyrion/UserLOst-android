package tech.ula.library;

import android.content.Intent;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: RecordSpeechActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0012\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0012\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"Ltech/ula/library/RecordSpeechActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "createSpeechFile", "Ljava/io/File;", "voiceResult", "", "dispatchRecordSpeechIntent", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "intent", "Landroid/content/Intent;", "sendResult", "code", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RecordSpeechActivity extends AppCompatActivity {
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null || !StringsKt.equals$default(intent.getType(), "record_speech", false, 2, null)) {
            return;
        }
        dispatchRecordSpeechIntent();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.record_speech_activity);
        Log.d("RecordSpeech", "onCreate");
        if (getIntent() != null) {
            Intent intent = getIntent();
            if (StringsKt.equals$default(intent != null ? intent.getType() : null, "record_speech", false, 2, null)) {
                dispatchRecordSpeechIntent();
            }
        }
    }

    public final File createSpeechFile(String voiceResult) throws IOException {
        Intrinsics.checkNotNullParameter(voiceResult, "voiceResult");
        File file = new File(new File(getExternalFilesDir(null), "Intents"), "record_speech.txt");
        file.createNewFile();
        FilesKt.writeText$default(file, String.valueOf(voiceResult), null, 2, null);
        return file;
    }

    public final void dispatchRecordSpeechIntent() {
        Log.d("RecordSpeech", "dispatchRecordSpeechIntent");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("calling_package", getPackageName());
        SpeechRecognizer speechRecognizerCreateSpeechRecognizer = SpeechRecognizer.createSpeechRecognizer(getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(speechRecognizerCreateSpeechRecognizer, "createSpeechRecognizer(...)");
        speechRecognizerCreateSpeechRecognizer.setRecognitionListener(new RecognitionListener() { // from class: tech.ula.library.RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1
            @Override // android.speech.RecognitionListener
            public void onResults(Bundle results) throws IOException {
                Intrinsics.checkNotNullParameter(results, "results");
                Log.d("RecordSpeech", "onResults");
                ArrayList<String> stringArrayList = results.getStringArrayList("results_recognition");
                if (stringArrayList == null) {
                    this.this$0.sendResult(1);
                    return;
                }
                this.this$0.createSpeechFile(CollectionsKt.joinToString$default(stringArrayList, " ", null, null, 0, null, null, 62, null));
                this.this$0.sendResult(0);
            }

            @Override // android.speech.RecognitionListener
            public void onReadyForSpeech(Bundle params) {
                Log.d("RecordSpeech", "onReadyForSpeech");
            }

            @Override // android.speech.RecognitionListener
            public void onError(int error) {
                Log.d("RecordSpeech", "onError");
                if (error == 6 || error == 7) {
                    this.this$0.sendResult(1);
                } else {
                    this.this$0.sendResult(-1);
                }
            }

            @Override // android.speech.RecognitionListener
            public void onBeginningOfSpeech() {
                Log.d("RecordSpeech", "onBeginningOfSpeech");
            }

            @Override // android.speech.RecognitionListener
            public void onBufferReceived(byte[] buffer) {
                Log.d("RecordSpeech", "onBufferReceived");
            }

            @Override // android.speech.RecognitionListener
            public void onEndOfSpeech() {
                Log.d("RecordSpeech", "onEndOfSpeech");
            }

            @Override // android.speech.RecognitionListener
            public void onEvent(int eventType, Bundle params) {
                Log.d("RecordSpeech", "onEvent");
            }

            @Override // android.speech.RecognitionListener
            public void onPartialResults(Bundle partialResults) {
                Log.d("RecordSpeech", "onPartialResults");
            }

            @Override // android.speech.RecognitionListener
            public void onRmsChanged(float rmsdB) {
                Log.d("RecordSpeech", "onRmsChanged");
            }
        });
        speechRecognizerCreateSpeechRecognizer.startListening(intent);
    }

    public final void sendResult(int code) {
        File file = new File(getExternalFilesDir(null), "Intents");
        File file2 = new File(file, ".cameraResponse.txt");
        File file3 = new File(file, "cameraResponse.txt");
        FilesKt.writeText$default(file2, String.valueOf(code), null, 2, null);
        file2.renameTo(file3);
        finish();
    }
}
