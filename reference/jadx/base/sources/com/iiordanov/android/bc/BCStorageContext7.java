package com.iiordanov.android.bc;

import android.os.Environment;
import com.iiordanov.bVNC.MainConfiguration;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class BCStorageContext7 implements IBCStorageContext {
    @Override // com.iiordanov.android.bc.IBCStorageContext
    public File getExternalStorageDir(MainConfiguration mainConfiguration, String str) {
        File file = new File(Environment.getExternalStorageDirectory(), "Android/data/" + mainConfiguration.getPackageName() + "/files");
        if (str != null) {
            file = new File(file, str);
        }
        file.mkdirs();
        return file;
    }
}
