package com.trilead.ssh2;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionInfo {
    public String clientToServerCompressionAlgorithm;
    public String clientToServerCryptoAlgorithm;
    public String clientToServerMACAlgorithm;
    public String keyExchangeAlgorithm;
    public int keyExchangeCounter = 0;
    public byte[] serverHostKey;
    public String serverHostKeyAlgorithm;
    public String serverToClientCompressionAlgorithm;
    public String serverToClientCryptoAlgorithm;
    public String serverToClientMACAlgorithm;
}
