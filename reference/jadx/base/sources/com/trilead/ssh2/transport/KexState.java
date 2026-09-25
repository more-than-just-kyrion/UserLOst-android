package com.trilead.ssh2.transport;

import com.trilead.ssh2.DHGexParameters;
import com.trilead.ssh2.crypto.dh.DhGroupExchange;
import com.trilead.ssh2.crypto.dh.GenericDhExchange;
import com.trilead.ssh2.packets.PacketKexInit;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class KexState {
    public byte[] H;
    public BigInteger K;
    public DHGexParameters dhgexParameters;
    public DhGroupExchange dhgx;
    public GenericDhExchange dhx;
    public String hashAlgo;
    public byte[] hostkey;
    public PacketKexInit localKEX;
    public NegotiatedParameters np;
    public PacketKexInit remoteKEX;
    public int state = 0;
}
