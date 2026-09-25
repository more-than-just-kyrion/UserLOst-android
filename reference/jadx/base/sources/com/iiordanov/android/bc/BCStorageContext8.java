package com.iiordanov.android.bc;

import com.iiordanov.bVNC.MainConfiguration;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class BCStorageContext8 implements IBCStorageContext {
    BCStorageContext8() {
    }

    @Override // com.iiordanov.android.bc.IBCStorageContext
    public File getExternalStorageDir(MainConfiguration mainConfiguration, String str) {
        return mainConfiguration.getExternalFilesDir(str);
    }
}
