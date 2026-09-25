package com.trilead.ssh2.channel;

import com.iiordanov.bVNC.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class StreamForwarder extends Thread {
    final byte[] buffer = new byte[Constants.SOCKET_CONN_TIMEOUT];
    final Channel c;
    final InputStream is;
    final String mode;
    final OutputStream os;
    final Socket s;
    final StreamForwarder sibling;

    StreamForwarder(Channel channel, StreamForwarder streamForwarder, Socket socket, InputStream inputStream, OutputStream outputStream, String str) {
        this.is = inputStream;
        this.os = outputStream;
        this.mode = str;
        this.c = channel;
        this.sibling = streamForwarder;
        this.s = socket;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Socket socket;
        while (true) {
            try {
                try {
                    int i = this.is.read(this.buffer);
                    if (i <= 0) {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    } else {
                        this.os.write(this.buffer, 0, i);
                        this.os.flush();
                    }
                } catch (Throwable th) {
                    try {
                        this.os.close();
                    } catch (IOException unused2) {
                    }
                    try {
                        this.is.close();
                    } catch (IOException unused3) {
                    }
                    if (this.sibling != null) {
                        while (this.sibling.isAlive()) {
                            try {
                                this.sibling.join();
                            } catch (InterruptedException unused4) {
                            }
                        }
                        try {
                            this.c.cm.closeChannel(this.c, "StreamForwarder (" + this.mode + ") is cleaning up the connection", true);
                        } catch (IOException unused5) {
                        }
                    }
                    Socket socket2 = this.s;
                    if (socket2 != null) {
                        try {
                            socket2.close();
                            throw th;
                        } catch (IOException unused6) {
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                try {
                    this.c.cm.closeChannel(this.c, "Closed due to exception in StreamForwarder (" + this.mode + "): " + e.getMessage(), true);
                } catch (IOException unused7) {
                }
                try {
                    this.os.close();
                } catch (IOException unused8) {
                }
                try {
                    this.is.close();
                } catch (IOException unused9) {
                }
                if (this.sibling != null) {
                    while (this.sibling.isAlive()) {
                        try {
                            this.sibling.join();
                        } catch (InterruptedException unused10) {
                        }
                    }
                    try {
                        this.c.cm.closeChannel(this.c, "StreamForwarder (" + this.mode + ") is cleaning up the connection", true);
                    } catch (IOException unused11) {
                    }
                }
                socket = this.s;
                if (socket == null) {
                    return;
                }
            }
        }
        this.os.close();
        try {
            this.is.close();
        } catch (IOException unused12) {
        }
        if (this.sibling != null) {
            while (this.sibling.isAlive()) {
                try {
                    this.sibling.join();
                } catch (InterruptedException unused13) {
                }
            }
            try {
                this.c.cm.closeChannel(this.c, "StreamForwarder (" + this.mode + ") is cleaning up the connection", true);
            } catch (IOException unused14) {
            }
        }
        socket = this.s;
        if (socket == null) {
            return;
        }
        try {
            socket.close();
        } catch (IOException unused15) {
        }
    }
}
