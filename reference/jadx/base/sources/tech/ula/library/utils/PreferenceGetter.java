package tech.ula.library.utils;

import android.content.SharedPreferences;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: PreferenceGetter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ltech/ula/library/utils/PreferenceGetter;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "sharedPreferences", "Landroid/content/SharedPreferences;", "(Ltech/ula/library/utils/UlaFiles;Landroid/content/SharedPreferences;)V", "getSharedPreferences", "()Landroid/content/SharedPreferences;", "getUlaFiles", "()Ltech/ula/library/utils/UlaFiles;", "xmlFetch", "", "fetchXML", "", "parseXml", "inputStream", "Ljava/io/InputStream;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PreferenceGetter {
    private final SharedPreferences sharedPreferences;
    private final UlaFiles ulaFiles;
    private boolean xmlFetch;

    public PreferenceGetter(UlaFiles ulaFiles, SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.ulaFiles = ulaFiles;
        this.sharedPreferences = sharedPreferences;
    }

    public final UlaFiles getUlaFiles() {
        return this.ulaFiles;
    }

    public final SharedPreferences getSharedPreferences() {
        return this.sharedPreferences;
    }

    public final void parseXml(InputStream inputStream) throws XmlPullParserException, IOException {
        int i;
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            int i2 = 1;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
            XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            String text = "";
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != i2; eventType = xmlPullParserNewPullParser.next()) {
                String name = xmlPullParserNewPullParser.getName();
                if (eventType != 2) {
                    if (eventType != 3) {
                        if (eventType == 4) {
                            text = xmlPullParserNewPullParser.getText();
                            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                        }
                    } else if (StringsKt.equals(name, "pref_custom_apps_enabled", true)) {
                        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
                        editorEdit.putBoolean("pref_custom_apps_enabled", Boolean.parseBoolean(text));
                        editorEdit.apply();
                    } else if (StringsKt.equals(name, "pref_apps", true)) {
                        SharedPreferences.Editor editorEdit2 = this.sharedPreferences.edit();
                        editorEdit2.putString("pref_apps", text);
                        editorEdit2.apply();
                    } else if (StringsKt.equals(name, "pref_custom_filesystem_enabled", true)) {
                        SharedPreferences.Editor editorEdit3 = this.sharedPreferences.edit();
                        editorEdit3.putBoolean("pref_custom_filesystem_enabled", Boolean.parseBoolean(text));
                        editorEdit3.apply();
                    } else if (StringsKt.equals(name, "pref_filesystem", true)) {
                        SharedPreferences.Editor editorEdit4 = this.sharedPreferences.edit();
                        editorEdit4.putString("pref_filesystem", text);
                        editorEdit4.apply();
                    } else if (StringsKt.equals(name, "pref_custom_hostname_enabled", true)) {
                        SharedPreferences.Editor editorEdit5 = this.sharedPreferences.edit();
                        editorEdit5.putBoolean("pref_custom_hostname_enabled", Boolean.parseBoolean(text));
                        editorEdit5.apply();
                    } else if (StringsKt.equals(name, "pref_hostname", true)) {
                        SharedPreferences.Editor editorEdit6 = this.sharedPreferences.edit();
                        editorEdit6.putString("pref_hostname", text);
                        editorEdit6.apply();
                    } else if (StringsKt.equals(name, "pref_custom_dns_enabled", true)) {
                        SharedPreferences.Editor editorEdit7 = this.sharedPreferences.edit();
                        editorEdit7.putBoolean("pref_custom_dns_enabled", Boolean.parseBoolean(text));
                        editorEdit7.apply();
                    } else if (StringsKt.equals(name, "pref_dns", true)) {
                        SharedPreferences.Editor editorEdit8 = this.sharedPreferences.edit();
                        editorEdit8.putString("pref_dns", text);
                        editorEdit8.apply();
                    } else {
                        i = 1;
                        if (StringsKt.equals(name, "pref_hide_settings", true)) {
                            SharedPreferences.Editor editorEdit9 = this.sharedPreferences.edit();
                            editorEdit9.putBoolean("pref_hide_settings", Boolean.parseBoolean(text));
                            editorEdit9.apply();
                        }
                    }
                    i = 1;
                } else {
                    i = 1;
                    text = "";
                }
                i2 = i;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    public final void fetchXML() {
        try {
            if (this.xmlFetch) {
                return;
            }
            File file = new File(this.ulaFiles.getFilesDir().getAbsolutePath() + "/preferences.xml");
            if (file.exists()) {
                parseXml(new FileInputStream(file));
                this.xmlFetch = true;
                return;
            }
            File file2 = new File(this.ulaFiles.getEmulatedScopedDir().getAbsolutePath() + "/preferences.xml");
            if (file2.exists()) {
                parseXml(new FileInputStream(file2));
                this.xmlFetch = true;
                return;
            }
            if (this.ulaFiles.getDocumentsDir() != null) {
                File file3 = new File(this.ulaFiles.getDocumentsDir().getAbsolutePath() + "/Relag/preferences.xml");
                if (file3.exists()) {
                    parseXml(new FileInputStream(file3));
                    this.xmlFetch = true;
                    return;
                }
            }
            this.xmlFetch = true;
        } catch (Exception unused) {
            this.xmlFetch = true;
        }
    }
}
