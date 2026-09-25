package com.trilead.ssh2;

import com.trilead.ssh2.packets.PacketExtInfo;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ExtensionInfo {
    private final Set<String> signatureAlgorithmsAccepted;

    public Set<String> getSignatureAlgorithmsAccepted() {
        return this.signatureAlgorithmsAccepted;
    }

    public static ExtensionInfo fromPacketExtInfo(PacketExtInfo packetExtInfo) {
        String str = packetExtInfo.getExtNameToValue().get("server-sig-algs");
        if (str == null) {
            return new ExtensionInfo(Collections.emptySet());
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, str.split(","));
        return new ExtensionInfo(hashSet);
    }

    public static ExtensionInfo noExtInfoSeen() {
        return new ExtensionInfo(Collections.emptySet());
    }

    private ExtensionInfo(Set<String> set) {
        this.signatureAlgorithmsAccepted = Collections.unmodifiableSet(set);
    }
}
