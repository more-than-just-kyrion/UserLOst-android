package com.trilead.ssh2;

import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Vector;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public class SFTPv3Client {
    String charsetName;
    final Connection conn;
    final PrintStream debug;
    boolean flag_closed;
    InputStream is;
    int next_request_id;
    OutputStream os;
    int protocol_version;
    HashMap server_extensions;
    final Session sess;

    @Deprecated
    public SFTPv3Client(Connection connection, PrintStream printStream) throws IOException {
        this.flag_closed = false;
        this.protocol_version = 0;
        this.server_extensions = new HashMap();
        this.next_request_id = 1000;
        this.charsetName = null;
        if (connection == null) {
            throw new IllegalArgumentException("Cannot accept null argument!");
        }
        this.conn = connection;
        this.debug = printStream;
        if (printStream != null) {
            printStream.println("Opening session and starting SFTP subsystem.");
        }
        Session sessionOpenSession = connection.openSession();
        this.sess = sessionOpenSession;
        sessionOpenSession.startSubSystem("sftp");
        this.is = sessionOpenSession.getStdout();
        this.os = new BufferedOutputStream(sessionOpenSession.getStdin(), 2048);
        if (this.is == null) {
            throw new IOException("There is a problem with the streams of the underlying channel.");
        }
        init();
    }

    public SFTPv3Client(Connection connection) throws IOException {
        this(connection, null);
    }

    public void setCharset(String str) throws IOException {
        if (str == null) {
            this.charsetName = str;
            return;
        }
        try {
            Charset.forName(str);
            this.charsetName = str;
        } catch (Exception e) {
            throw new IOException("This charset is not supported", e);
        }
    }

    public String getCharset() {
        return this.charsetName;
    }

    private final void checkHandleValidAndOpen(SFTPv3FileHandle sFTPv3FileHandle) throws IOException {
        if (sFTPv3FileHandle.client != this) {
            throw new IOException("The file handle was created with another SFTPv3FileHandle instance.");
        }
        if (sFTPv3FileHandle.isClosed) {
            throw new IOException("The file handle is closed.");
        }
    }

    private final void sendMessage(int i, int i2, byte[] bArr, int i3, int i4) throws IOException {
        int i5 = i4 + 1;
        if (i != 1) {
            i5 = i4 + 5;
        }
        this.os.write(i5 >> 24);
        this.os.write(i5 >> 16);
        this.os.write(i5 >> 8);
        this.os.write(i5);
        this.os.write(i);
        if (i != 1) {
            this.os.write(i2 >> 24);
            this.os.write(i2 >> 16);
            this.os.write(i2 >> 8);
            this.os.write(i2);
        }
        this.os.write(bArr, i3, i4);
        this.os.flush();
    }

    private final void sendMessage(int i, int i2, byte[] bArr) throws IOException {
        sendMessage(i, i2, bArr, 0, bArr.length);
    }

    private final void readBytes(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int i3 = this.is.read(bArr, i, i2);
            if (i3 < 0) {
                throw new IOException("Unexpected end of sftp stream.");
            }
            if (i3 == 0 || i3 > i2) {
                throw new IOException("Underlying stream implementation is bogus!");
            }
            i2 -= i3;
            i += i3;
        }
    }

    private final byte[] receiveMessage(int i) throws IOException {
        byte[] bArr = new byte[4];
        readBytes(bArr, 0, 4);
        int i2 = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i2 > i || i2 <= 0) {
            throw new IOException("Illegal sftp packet len: " + i2);
        }
        byte[] bArr2 = new byte[i2];
        readBytes(bArr2, 0, i2);
        return bArr2;
    }

    private final int generateNextRequestID() {
        int i;
        synchronized (this) {
            i = this.next_request_id;
            this.next_request_id = i + 1;
        }
        return i;
    }

    private final void closeHandle(byte[] bArr) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(bArr, 0, bArr.length);
        sendMessage(4, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    private SFTPv3FileAttributes readAttrs(TypesReader typesReader) throws IOException {
        SFTPv3FileAttributes sFTPv3FileAttributes = new SFTPv3FileAttributes();
        int uint32 = typesReader.readUINT32();
        if ((uint32 & 1) != 0) {
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println("SSH_FILEXFER_ATTR_SIZE");
            }
            sFTPv3FileAttributes.size = new Long(typesReader.readUINT64());
        }
        if ((uint32 & 2) != 0) {
            PrintStream printStream2 = this.debug;
            if (printStream2 != null) {
                printStream2.println("SSH_FILEXFER_ATTR_V3_UIDGID");
            }
            sFTPv3FileAttributes.uid = new Integer(typesReader.readUINT32());
            sFTPv3FileAttributes.gid = new Integer(typesReader.readUINT32());
        }
        if ((uint32 & 4) != 0) {
            PrintStream printStream3 = this.debug;
            if (printStream3 != null) {
                printStream3.println("SSH_FILEXFER_ATTR_PERMISSIONS");
            }
            sFTPv3FileAttributes.permissions = new Integer(typesReader.readUINT32());
        }
        if ((uint32 & 8) != 0) {
            PrintStream printStream4 = this.debug;
            if (printStream4 != null) {
                printStream4.println("SSH_FILEXFER_ATTR_V3_ACMODTIME");
            }
            sFTPv3FileAttributes.atime = new Long(((long) typesReader.readUINT32()) & BodyPartID.bodyIdMax);
            sFTPv3FileAttributes.mtime = new Long(((long) typesReader.readUINT32()) & BodyPartID.bodyIdMax);
        }
        if ((uint32 & Integer.MIN_VALUE) != 0) {
            int uint33 = typesReader.readUINT32();
            PrintStream printStream5 = this.debug;
            if (printStream5 != null) {
                printStream5.println("SSH_FILEXFER_ATTR_EXTENDED (" + uint33 + ")");
            }
            while (uint33 > 0) {
                typesReader.readByteString();
                typesReader.readByteString();
                uint33--;
            }
        }
        return sFTPv3FileAttributes;
    }

    public SFTPv3FileAttributes fstat(SFTPv3FileHandle sFTPv3FileHandle) throws IOException {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(sFTPv3FileHandle.fileHandle, 0, sFTPv3FileHandle.fileHandle.length);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_FSTAT...");
            this.debug.flush();
        }
        sendMessage(8, iGenerateNextRequestID, typesWriter.getBytes());
        byte[] bArrReceiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Got REPLY.");
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(bArrReceiveMessage);
        int i = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i == 105) {
            return readAttrs(typesReader);
        }
        if (i != 101) {
            throw new IOException("The SFTP server sent an unexpected packet type (" + i + ")");
        }
        throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
    }

    private SFTPv3FileAttributes statBoth(String str, int i) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_STAT/SSH_FXP_LSTAT...");
            this.debug.flush();
        }
        sendMessage(i, iGenerateNextRequestID, typesWriter.getBytes());
        byte[] bArrReceiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Got REPLY.");
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(bArrReceiveMessage);
        int i2 = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i2 == 105) {
            return readAttrs(typesReader);
        }
        if (i2 != 101) {
            throw new IOException("The SFTP server sent an unexpected packet type (" + i2 + ")");
        }
        throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
    }

    public SFTPv3FileAttributes stat(String str) throws IOException {
        return statBoth(str, 17);
    }

    public SFTPv3FileAttributes lstat(String str) throws IOException {
        return statBoth(str, 7);
    }

    public String readLink(String str) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_READLINK...");
            this.debug.flush();
        }
        sendMessage(19, iGenerateNextRequestID, typesWriter.getBytes());
        byte[] bArrReceiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Got REPLY.");
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(bArrReceiveMessage);
        int i = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i == 104) {
            if (typesReader.readUINT32() != 1) {
                throw new IOException("The server sent an invalid SSH_FXP_NAME packet.");
            }
            return typesReader.readString(this.charsetName);
        }
        if (i != 101) {
            throw new IOException("The SFTP server sent an unexpected packet type (" + i + ")");
        }
        throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
    }

    private void expectStatusOKMessage(int i) throws IOException {
        byte[] bArrReceiveMessage = receiveMessage(34000);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Got REPLY.");
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(bArrReceiveMessage);
        int i2 = typesReader.readByte();
        if (typesReader.readUINT32() != i) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i2 != 101) {
            throw new IOException("The SFTP server sent an unexpected packet type (" + i2 + ")");
        }
        int uint32 = typesReader.readUINT32();
        if (uint32 != 0) {
            throw new SFTPException(typesReader.readString(), uint32);
        }
    }

    public void setstat(String str, SFTPv3FileAttributes sFTPv3FileAttributes) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeBytes(createAttrs(sFTPv3FileAttributes));
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_SETSTAT...");
            this.debug.flush();
        }
        sendMessage(9, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public void fsetstat(SFTPv3FileHandle sFTPv3FileHandle, SFTPv3FileAttributes sFTPv3FileAttributes) throws IOException {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(sFTPv3FileHandle.fileHandle, 0, sFTPv3FileHandle.fileHandle.length);
        typesWriter.writeBytes(createAttrs(sFTPv3FileAttributes));
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_FSETSTAT...");
            this.debug.flush();
        }
        sendMessage(10, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public void createSymlink(String str, String str2) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str2, this.charsetName);
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_SYMLINK...");
            this.debug.flush();
        }
        sendMessage(20, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public String canonicalPath(String str) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_REALPATH...");
            this.debug.flush();
        }
        sendMessage(16, iGenerateNextRequestID, typesWriter.getBytes());
        byte[] bArrReceiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Got REPLY.");
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(bArrReceiveMessage);
        int i = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i == 104) {
            if (typesReader.readUINT32() != 1) {
                throw new IOException("The server sent an invalid SSH_FXP_NAME packet.");
            }
            return typesReader.readString(this.charsetName);
        }
        if (i != 101) {
            throw new IOException("The SFTP server sent an unexpected packet type (" + i + ")");
        }
        throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
    }

    private final Vector scanDirectory(byte[] bArr) throws IOException {
        Vector vector = new Vector();
        while (true) {
            int iGenerateNextRequestID = generateNextRequestID();
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeString(bArr, 0, bArr.length);
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println("Sending SSH_FXP_READDIR...");
                this.debug.flush();
            }
            sendMessage(12, iGenerateNextRequestID, typesWriter.getBytes());
            byte[] bArrReceiveMessage = receiveMessage(65536);
            PrintStream printStream2 = this.debug;
            if (printStream2 != null) {
                printStream2.println("Got REPLY.");
                this.debug.flush();
            }
            TypesReader typesReader = new TypesReader(bArrReceiveMessage);
            int i = typesReader.readByte();
            if (typesReader.readUINT32() != iGenerateNextRequestID) {
                throw new IOException("The server sent an invalid id field.");
            }
            if (i != 104) {
                if (i != 101) {
                    throw new IOException("The SFTP server sent an unexpected packet type (" + i + ")");
                }
                int uint32 = typesReader.readUINT32();
                if (uint32 == 1) {
                    return vector;
                }
                throw new SFTPException(typesReader.readString(), uint32);
            }
            int uint33 = typesReader.readUINT32();
            PrintStream printStream3 = this.debug;
            if (printStream3 != null) {
                printStream3.println("Parsing " + uint33 + " name entries...");
            }
            while (uint33 > 0) {
                SFTPv3DirectoryEntry sFTPv3DirectoryEntry = new SFTPv3DirectoryEntry();
                sFTPv3DirectoryEntry.filename = typesReader.readString(this.charsetName);
                sFTPv3DirectoryEntry.longEntry = typesReader.readString(this.charsetName);
                sFTPv3DirectoryEntry.attributes = readAttrs(typesReader);
                vector.addElement(sFTPv3DirectoryEntry);
                PrintStream printStream4 = this.debug;
                if (printStream4 != null) {
                    printStream4.println("File: '" + sFTPv3DirectoryEntry.filename + "'");
                }
                uint33--;
            }
        }
    }

    private final byte[] openDirectory(String str) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_OPENDIR...");
            this.debug.flush();
        }
        sendMessage(11, iGenerateNextRequestID, typesWriter.getBytes());
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int i = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i != 102) {
            if (i != 101) {
                throw new IOException("The SFTP server sent an unexpected packet type (" + i + ")");
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Got SSH_FXP_HANDLE.");
            this.debug.flush();
        }
        return typesReader.readByteString();
    }

    private final String expandString(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i + i3] & 255;
            if (i4 >= 32 && i4 <= 126) {
                stringBuffer.append((char) i4);
            } else {
                stringBuffer.append("{0x" + Integer.toHexString(i4) + "}");
            }
        }
        return stringBuffer.toString();
    }

    private void init() throws IOException {
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_INIT (3)...");
        }
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeUINT32(3);
        sendMessage(1, 0, typesWriter.getBytes());
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Waiting for SSH_FXP_VERSION...");
        }
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int i = typesReader.readByte();
        if (i != 2) {
            throw new IOException("The server did not send a SSH_FXP_VERSION packet (got " + i + ")");
        }
        int uint32 = typesReader.readUINT32();
        this.protocol_version = uint32;
        PrintStream printStream3 = this.debug;
        if (printStream3 != null) {
            printStream3.println("SSH_FXP_VERSION: protocol_version = " + uint32);
        }
        if (this.protocol_version != 3) {
            throw new IOException("Server version " + this.protocol_version + " is currently not supported");
        }
        while (typesReader.remain() != 0) {
            String string = typesReader.readString();
            byte[] byteString = typesReader.readByteString();
            this.server_extensions.put(string, byteString);
            PrintStream printStream4 = this.debug;
            if (printStream4 != null) {
                printStream4.println("SSH_FXP_VERSION: extension: " + string + " = '" + expandString(byteString, 0, byteString.length) + "'");
            }
        }
    }

    public int getProtocolVersion() {
        return this.protocol_version;
    }

    public void close() {
        this.sess.close();
    }

    public Vector ls(String str) throws IOException {
        byte[] bArrOpenDirectory = openDirectory(str);
        Vector vectorScanDirectory = scanDirectory(bArrOpenDirectory);
        closeHandle(bArrOpenDirectory);
        return vectorScanDirectory;
    }

    public void mkdir(String str, int i) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeUINT32(4);
        typesWriter.writeUINT32(i);
        sendMessage(14, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public void rm(String str) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        sendMessage(13, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public void rmdir(String str) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        sendMessage(15, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public void mv(String str, String str2) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeString(str2, this.charsetName);
        sendMessage(18, iGenerateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(iGenerateNextRequestID);
    }

    public SFTPv3FileHandle openFileRO(String str) throws IOException {
        return openFile(str, 1, null);
    }

    public SFTPv3FileHandle openFileRW(String str) throws IOException {
        return openFile(str, 3, null);
    }

    public SFTPv3FileHandle createFile(String str) throws IOException {
        return createFile(str, null);
    }

    public SFTPv3FileHandle createFile(String str, SFTPv3FileAttributes sFTPv3FileAttributes) throws IOException {
        return openFile(str, 11, sFTPv3FileAttributes);
    }

    public SFTPv3FileHandle createFileTruncate(String str) throws IOException {
        return createFileTruncate(str, null);
    }

    public SFTPv3FileHandle createFileTruncate(String str, SFTPv3FileAttributes sFTPv3FileAttributes) throws IOException {
        return openFile(str, 27, sFTPv3FileAttributes);
    }

    private byte[] createAttrs(SFTPv3FileAttributes sFTPv3FileAttributes) {
        TypesWriter typesWriter = new TypesWriter();
        if (sFTPv3FileAttributes == null) {
            typesWriter.writeUINT32(0);
        } else {
            int i = sFTPv3FileAttributes.size != null ? 1 : 0;
            if (sFTPv3FileAttributes.uid != null && sFTPv3FileAttributes.gid != null) {
                i |= 2;
            }
            if (sFTPv3FileAttributes.permissions != null) {
                i |= 4;
            }
            if (sFTPv3FileAttributes.atime != null && sFTPv3FileAttributes.mtime != null) {
                i |= 8;
            }
            typesWriter.writeUINT32(i);
            if (sFTPv3FileAttributes.size != null) {
                typesWriter.writeUINT64(sFTPv3FileAttributes.size.longValue());
            }
            if (sFTPv3FileAttributes.uid != null && sFTPv3FileAttributes.gid != null) {
                typesWriter.writeUINT32(sFTPv3FileAttributes.uid.intValue());
                typesWriter.writeUINT32(sFTPv3FileAttributes.gid.intValue());
            }
            if (sFTPv3FileAttributes.permissions != null) {
                typesWriter.writeUINT32(sFTPv3FileAttributes.permissions.intValue());
            }
            if (sFTPv3FileAttributes.atime != null && sFTPv3FileAttributes.mtime != null) {
                typesWriter.writeUINT32(sFTPv3FileAttributes.atime.intValue());
                typesWriter.writeUINT32(sFTPv3FileAttributes.mtime.intValue());
            }
        }
        return typesWriter.getBytes();
    }

    private SFTPv3FileHandle openFile(String str, int i, SFTPv3FileAttributes sFTPv3FileAttributes) throws IOException {
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeUINT32(i);
        typesWriter.writeBytes(createAttrs(sFTPv3FileAttributes));
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_OPEN...");
            this.debug.flush();
        }
        sendMessage(3, iGenerateNextRequestID, typesWriter.getBytes());
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int i2 = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i2 != 102) {
            if (i2 != 101) {
                throw new IOException("The SFTP server sent an unexpected packet type (" + i2 + ")");
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println("Got SSH_FXP_HANDLE.");
            this.debug.flush();
        }
        return new SFTPv3FileHandle(this, typesReader.readByteString());
    }

    public int read(SFTPv3FileHandle sFTPv3FileHandle, long j, byte[] bArr, int i, int i2) throws IOException {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        if (i2 > 32768 || i2 <= 0) {
            throw new IllegalArgumentException("invalid len argument");
        }
        int iGenerateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(sFTPv3FileHandle.fileHandle, 0, sFTPv3FileHandle.fileHandle.length);
        typesWriter.writeUINT64(j);
        typesWriter.writeUINT32(i2);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println("Sending SSH_FXP_READ...");
            this.debug.flush();
        }
        sendMessage(5, iGenerateNextRequestID, typesWriter.getBytes());
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int i3 = typesReader.readByte();
        if (typesReader.readUINT32() != iGenerateNextRequestID) {
            throw new IOException("The server sent an invalid id field.");
        }
        if (i3 == 103) {
            PrintStream printStream2 = this.debug;
            if (printStream2 != null) {
                printStream2.println("Got SSH_FXP_DATA...");
                this.debug.flush();
            }
            int uint32 = typesReader.readUINT32();
            if (uint32 < 0 || uint32 > i2) {
                throw new IOException("The server sent an invalid length field.");
            }
            typesReader.readBytes(bArr, i, uint32);
            return uint32;
        }
        if (i3 != 101) {
            throw new IOException("The SFTP server sent an unexpected packet type (" + i3 + ")");
        }
        int uint33 = typesReader.readUINT32();
        if (uint33 == 1) {
            PrintStream printStream3 = this.debug;
            if (printStream3 == null) {
                return -1;
            }
            printStream3.println("Got SSH_FX_EOF.");
            this.debug.flush();
            return -1;
        }
        throw new SFTPException(typesReader.readString(), uint33);
    }

    public void write(SFTPv3FileHandle sFTPv3FileHandle, long j, byte[] bArr, int i, int i2) throws IOException {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        while (i2 > 0) {
            int i3 = i2 <= 32768 ? i2 : 32768;
            int iGenerateNextRequestID = generateNextRequestID();
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeString(sFTPv3FileHandle.fileHandle, 0, sFTPv3FileHandle.fileHandle.length);
            typesWriter.writeUINT64(j);
            typesWriter.writeString(bArr, i, i3);
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println("Sending SSH_FXP_WRITE...");
                this.debug.flush();
            }
            sendMessage(6, iGenerateNextRequestID, typesWriter.getBytes());
            j += (long) i3;
            i += i3;
            i2 -= i3;
            TypesReader typesReader = new TypesReader(receiveMessage(34000));
            int i4 = typesReader.readByte();
            if (typesReader.readUINT32() != iGenerateNextRequestID) {
                throw new IOException("The server sent an invalid id field.");
            }
            if (i4 != 101) {
                throw new IOException("The SFTP server sent an unexpected packet type (" + i4 + ")");
            }
            int uint32 = typesReader.readUINT32();
            if (uint32 != 0) {
                throw new SFTPException(typesReader.readString(), uint32);
            }
        }
    }

    public void closeFile(SFTPv3FileHandle sFTPv3FileHandle) throws IOException {
        if (sFTPv3FileHandle == null) {
            throw new IllegalArgumentException("the handle argument may not be null");
        }
        try {
            if (!sFTPv3FileHandle.isClosed) {
                closeHandle(sFTPv3FileHandle.fileHandle);
            }
        } finally {
            sFTPv3FileHandle.isClosed = true;
        }
    }
}
