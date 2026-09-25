package com.iiordanov.util;

import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class RandomString {
    private Random r = new Random();

    public String randomString(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i; i3++) {
            sb.append((char) (this.r.nextInt(i2) + 32));
        }
        return sb.toString();
    }

    public String randomString(int i) {
        return randomString(i, 95);
    }

    public String randomLowerCaseString(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append((char) (this.r.nextInt(25) + 97));
        }
        return sb.toString();
    }
}
