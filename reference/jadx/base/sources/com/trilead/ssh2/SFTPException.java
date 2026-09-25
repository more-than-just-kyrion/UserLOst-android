package com.trilead.ssh2;

import com.trilead.ssh2.sftp.ErrorCodes;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class SFTPException extends IOException {
    private static final long serialVersionUID = 578654644222421811L;
    private final int sftpErrorCode;
    private final String sftpErrorMessage;

    private static String constructMessage(String str, int i) {
        String[] description = ErrorCodes.getDescription(i);
        if (description == null) {
            return str + " (UNKNOW SFTP ERROR CODE)";
        }
        return str + " (" + description[0] + ": " + description[1] + ")";
    }

    SFTPException(String str, int i) {
        super(constructMessage(str, i));
        this.sftpErrorMessage = str;
        this.sftpErrorCode = i;
    }

    public String getServerErrorMessage() {
        return this.sftpErrorMessage;
    }

    public int getServerErrorCode() {
        return this.sftpErrorCode;
    }

    public String getServerErrorCodeSymbol() {
        String[] description = ErrorCodes.getDescription(this.sftpErrorCode);
        if (description == null) {
            return "UNKNOW SFTP ERROR CODE " + this.sftpErrorCode;
        }
        return description[0];
    }

    public String getServerErrorCodeVerbose() {
        String[] description = ErrorCodes.getDescription(this.sftpErrorCode);
        if (description == null) {
            return "The error code " + this.sftpErrorCode + " is unknown.";
        }
        return description[1];
    }
}
