package com.iiordanov.util;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: loaded from: classes2.dex */
public class CustomClientConfigFileReader {
    private static final String TAG = "ConfigFileReader";
    private Map<String, Map> configData;

    public CustomClientConfigFileReader(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        this.configData = (Map) new Yaml().load(bufferedReader);
        try {
            bufferedReader.close();
        } catch (IOException e) {
            Log.e(TAG, "Error closing config reader.");
            e.printStackTrace();
        }
    }

    public Map<String, Map> getConfigData() {
        return this.configData;
    }
}
