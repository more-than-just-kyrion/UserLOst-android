package com.undatech.opaque.util;

import android.os.Process;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class LogcatReader {
    private static final int LOGCAT_MAX_LINES = 1000;
    public static String TAG = "LogcatReader";
    private List<String> logcatCommand;

    public LogcatReader() {
        this(false);
    }

    public LogcatReader(boolean z) {
        ArrayList arrayList = new ArrayList();
        this.logcatCommand = arrayList;
        arrayList.add("logcat");
        this.logcatCommand.add("-d");
        if (z) {
            int iMyPid = Process.myPid();
            this.logcatCommand.add("--pid");
            this.logcatCommand.add(Integer.toString(iMyPid));
        }
    }

    public String getMyLogcat(int i) {
        ArrayList arrayList = new ArrayList(1000);
        StringBuilder sb = new StringBuilder(1000);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ProcessBuilder(new String[0]).command(this.logcatCommand).start().getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                arrayList.add(line + StringUtils.LF);
            }
        } catch (IOException e) {
            Log.e(TAG, "Error obtaining output from logcat");
            e.printStackTrace();
        }
        for (int iMax = Math.max(arrayList.size() - 1000, 0); iMax < arrayList.size(); iMax++) {
            sb.append((String) arrayList.get(iMax));
        }
        return sb.toString();
    }
}
