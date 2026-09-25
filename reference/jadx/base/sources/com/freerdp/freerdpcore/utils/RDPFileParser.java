package com.freerdp.freerdpcore.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class RDPFileParser {
    private static final int MAX_ERRORS = 20;
    private static final int MAX_LINES = 500;
    private HashMap<String, Object> options;

    public RDPFileParser() {
        init();
    }

    public RDPFileParser(String str) throws IOException {
        init();
        parse(str);
    }

    private void init() {
        this.options = new HashMap<>();
    }

    public void parse(String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
        int i = 0;
        int i2 = 0;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return;
            }
            i++;
            if (i2 > 20 || i > 500) {
                bufferedReader.close();
                throw new IOException("Parsing limits exceeded");
            }
            String[] strArrSplit = line.split(":", 3);
            if (strArrSplit.length == 3) {
                if (strArrSplit[1].equals("s")) {
                    this.options.put(strArrSplit[0].toLowerCase(Locale.ENGLISH), strArrSplit[2]);
                } else if (strArrSplit[1].equals("i")) {
                    try {
                        this.options.put(strArrSplit[0].toLowerCase(Locale.ENGLISH), Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                    } catch (NumberFormatException unused) {
                        i2++;
                    }
                } else if (strArrSplit[1].equals("b")) {
                }
            }
            i2++;
        }
    }

    public String getString(String str) {
        if (this.options.get(str) instanceof String) {
            return (String) this.options.get(str);
        }
        return null;
    }

    public Integer getInteger(String str) {
        if (this.options.get(str) instanceof Integer) {
            return (Integer) this.options.get(str);
        }
        return null;
    }
}
