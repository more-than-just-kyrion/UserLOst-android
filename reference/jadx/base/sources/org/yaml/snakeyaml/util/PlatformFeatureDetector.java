package org.yaml.snakeyaml.util;

import org.apache.commons.lang3.SystemProperties;

/* JADX INFO: loaded from: classes3.dex */
public class PlatformFeatureDetector {
    private Boolean isRunningOnAndroid = null;

    public boolean isRunningOnAndroid() {
        if (this.isRunningOnAndroid == null) {
            String property = System.getProperty(SystemProperties.JAVA_RUNTIME_NAME);
            this.isRunningOnAndroid = Boolean.valueOf(property != null && property.startsWith("Android Runtime"));
        }
        return this.isRunningOnAndroid.booleanValue();
    }
}
