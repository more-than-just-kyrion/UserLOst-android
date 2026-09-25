package org.spongycastle.cms;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
interface CMSReadable {
    InputStream getInputStream() throws IOException, CMSException;
}
