package com.trilead.ssh2;

/* JADX INFO: loaded from: classes2.dex */
public class SFTPv3FileAttributes {
    public Long size = null;
    public Integer uid = null;
    public Integer gid = null;
    public Integer permissions = null;
    public Long atime = null;
    public Long mtime = null;

    public boolean isDirectory() {
        Integer num = this.permissions;
        return (num == null || (num.intValue() & 16384) == 0) ? false : true;
    }

    public boolean isRegularFile() {
        Integer num = this.permissions;
        return (num == null || (num.intValue() & 32768) == 0) ? false : true;
    }

    public boolean isSymlink() {
        Integer num = this.permissions;
        return (num == null || (num.intValue() & 40960) == 0) ? false : true;
    }

    public String getOctalPermissions() {
        Integer num = this.permissions;
        if (num == null) {
            return null;
        }
        String string = Integer.toString(num.intValue() & 65535, 8);
        StringBuffer stringBuffer = new StringBuffer();
        for (int length = 7 - string.length(); length > 0; length--) {
            stringBuffer.append('0');
        }
        stringBuffer.append(string);
        return stringBuffer.toString();
    }
}
