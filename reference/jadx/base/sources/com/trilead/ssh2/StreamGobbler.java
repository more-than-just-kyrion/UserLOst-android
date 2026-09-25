package com.trilead.ssh2;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class StreamGobbler extends InputStream {
    private InputStream is;
    private GobblerThread t;
    private Object synchronizer = new Object();
    private boolean isEOF = false;
    private boolean isClosed = false;
    private IOException exception = null;
    private byte[] buffer = new byte[2048];
    private int read_pos = 0;
    private int write_pos = 0;

    class GobblerThread extends Thread {
        GobblerThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr = new byte[8192];
            while (true) {
                try {
                    int i = StreamGobbler.this.is.read(bArr);
                    synchronized (StreamGobbler.this.synchronizer) {
                        if (i <= 0) {
                            StreamGobbler.this.isEOF = true;
                            StreamGobbler.this.synchronizer.notifyAll();
                            return;
                        }
                        try {
                            if (StreamGobbler.this.buffer.length - StreamGobbler.this.write_pos < i) {
                                int i2 = StreamGobbler.this.write_pos - StreamGobbler.this.read_pos;
                                int i3 = i2 + i;
                                byte[] bArr2 = StreamGobbler.this.buffer;
                                if (i3 > StreamGobbler.this.buffer.length) {
                                    int i4 = i3 / 3;
                                    if (i4 < 256) {
                                        i4 = 256;
                                    }
                                    if (i4 > 8192) {
                                        i4 = 8192;
                                    }
                                    bArr2 = new byte[i3 + i4];
                                }
                                if (i2 > 0) {
                                    System.arraycopy(StreamGobbler.this.buffer, StreamGobbler.this.read_pos, bArr2, 0, i2);
                                }
                                StreamGobbler.this.buffer = bArr2;
                                StreamGobbler.this.read_pos = 0;
                                StreamGobbler.this.write_pos = i2;
                            }
                            System.arraycopy(bArr, 0, StreamGobbler.this.buffer, StreamGobbler.this.write_pos, i);
                            StreamGobbler.this.write_pos += i;
                            StreamGobbler.this.synchronizer.notifyAll();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (IOException e) {
                    synchronized (StreamGobbler.this.synchronizer) {
                        StreamGobbler.this.exception = e;
                        StreamGobbler.this.synchronizer.notifyAll();
                        return;
                    }
                }
            }
        }
    }

    public StreamGobbler(InputStream inputStream) {
        this.is = inputStream;
        GobblerThread gobblerThread = new GobblerThread();
        this.t = gobblerThread;
        gobblerThread.setDaemon(true);
        this.t.start();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        synchronized (this.synchronizer) {
            if (this.isClosed) {
                throw new IOException("This StreamGobbler is closed.");
            }
            while (true) {
                int i = this.read_pos;
                if (i == this.write_pos) {
                    IOException iOException = this.exception;
                    if (iOException != null) {
                        throw iOException;
                    }
                    if (this.isEOF) {
                        return -1;
                    }
                    try {
                        this.synchronizer.wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    byte[] bArr = this.buffer;
                    this.read_pos = i + 1;
                    return bArr[i] & 255;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int i;
        synchronized (this.synchronizer) {
            if (this.isClosed) {
                throw new IOException("This StreamGobbler is closed.");
            }
            i = this.write_pos - this.read_pos;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.synchronizer) {
            if (this.isClosed) {
                return;
            }
            this.isClosed = true;
            this.isEOF = true;
            this.synchronizer.notifyAll();
            this.is.close();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        bArr.getClass();
        if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0 || i > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        synchronized (this.synchronizer) {
            if (this.isClosed) {
                throw new IOException("This StreamGobbler is closed.");
            }
            while (true) {
                int i4 = this.read_pos;
                int i5 = this.write_pos;
                if (i4 == i5) {
                    IOException iOException = this.exception;
                    if (iOException != null) {
                        throw iOException;
                    }
                    if (this.isEOF) {
                        return -1;
                    }
                    try {
                        this.synchronizer.wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    int i6 = i5 - i4;
                    if (i6 <= i2) {
                        i2 = i6;
                    }
                    System.arraycopy(this.buffer, i4, bArr, i, i2);
                    this.read_pos += i2;
                    return i2;
                }
            }
        }
    }
}
