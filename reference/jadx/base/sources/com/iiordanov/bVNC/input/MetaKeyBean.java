package com.iiordanov.bVNC.input;

import androidx.core.view.InputDeviceCompat;
import com.antlersoft.android.dbimpl.NewInstance;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.apache.commons.codec.language.Soundex;
import org.apache.http.message.TokenParser;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public class MetaKeyBean extends AbstractMetaKeyBean implements Comparable<MetaKeyBean> {
    public static final NewInstance<MetaKeyBean> NEW;
    public static final ArrayList<MetaKeyBase> allKeys;
    public static final String[] allKeysNames;
    public static final MetaKeyBean keyArrowDown;
    public static final MetaKeyBean keyArrowLeft;
    public static final MetaKeyBean keyArrowRight;
    public static final MetaKeyBean keyArrowUp;
    public static final MetaKeyBean keyCtrlAltDel;
    public static final HashMap<Integer, MetaKeyBase> keysByKeyCode;
    public static final HashMap<Integer, MetaKeyBase> keysByKeySym;
    public static final HashMap<Integer, MetaKeyBase> keysByMouseButton;
    private boolean _regenDesc;

    static {
        ArrayList<MetaKeyBase> arrayList = new ArrayList<>();
        allKeys = arrayList;
        arrayList.add(new MetaKeyBase("Hangul", 65329));
        arrayList.add(new MetaKeyBase("Hangul_Start", 65330));
        arrayList.add(new MetaKeyBase("Hangul_End", 65331));
        arrayList.add(new MetaKeyBase("Hangul_Hanja", 65332));
        arrayList.add(new MetaKeyBase("Kana_Shift", 65326));
        arrayList.add(new MetaKeyBase("Right_Alt", 65514));
        arrayList.add(new MetaKeyBase("Left_Alt", 65513));
        arrayList.add(new MetaKeyBase("Left_Control", 65507));
        arrayList.add(new MetaKeyBase("Right_Control", 65508));
        arrayList.add(new MetaKeyBase("Left_Shift", 65505));
        arrayList.add(new MetaKeyBase("Right_Shift", 65506));
        arrayList.add(new MetaKeyBase("Left_Super", 65515));
        arrayList.add(new MetaKeyBase("Right_Super", 65516));
        arrayList.add(new MetaKeyBase(1, "Mouse Left"));
        arrayList.add(new MetaKeyBase(2, "Mouse Middle"));
        arrayList.add(new MetaKeyBase(4, "Mouse Right"));
        arrayList.add(new MetaKeyBase(16, "Mouse Scroll Down"));
        arrayList.add(new MetaKeyBase(8, "Mouse Scroll Up"));
        arrayList.add(new MetaKeyBase("Home", 65360));
        arrayList.add(new MetaKeyBase("Arrow Left", 65361));
        arrayList.add(new MetaKeyBase("Arrow Up", 65362));
        arrayList.add(new MetaKeyBase("Arrow Right", 65363));
        arrayList.add(new MetaKeyBase("Arrow Down", 65364));
        arrayList.add(new MetaKeyBase("Page Up", 65365));
        arrayList.add(new MetaKeyBase("Page Down", 65366));
        arrayList.add(new MetaKeyBase("End", 65367));
        arrayList.add(new MetaKeyBase("Insert", 65379));
        arrayList.add(new MetaKeyBase("Delete", 65535, 67));
        arrayList.add(new MetaKeyBase("Delete Forward", 65535, 112));
        arrayList.add(new MetaKeyBase("Num Lock", 65407));
        arrayList.add(new MetaKeyBase("Break", 65387));
        arrayList.add(new MetaKeyBase("Scroll Lock", CipherSuite.DRAFT_TLS_ECDHE_PSK_WITH_AES_128_OCB));
        arrayList.add(new MetaKeyBase("Print Scrn/Sys Rq", 65377));
        arrayList.add(new MetaKeyBase("Escape", 65307));
        arrayList.add(new MetaKeyBase("Enter", 65293, 66));
        arrayList.add(new MetaKeyBase("Tab", 65289, 61));
        arrayList.add(new MetaKeyBase("BackSpace", 65288));
        arrayList.add(new MetaKeyBase("Space", 32, 62));
        StringBuilder sb = new StringBuilder(" ");
        for (int i = 0; i < 26; i++) {
            sb.setCharAt(0, (char) (i + 65));
            allKeys.add(new MetaKeyBase(sb.toString(), i + 97, i + 29));
        }
        for (int i2 = 0; i2 < 10; i2++) {
            int i3 = i2 + 48;
            sb.setCharAt(0, (char) i3);
            allKeys.add(new MetaKeyBase(sb.toString(), i3, i2 + 7));
        }
        int i4 = 0;
        while (i4 < 12) {
            sb.setLength(0);
            sb.append('F');
            if (i4 < 9) {
                sb.append(TokenParser.SP);
            }
            int i5 = i4 + 1;
            sb.append(Integer.toString(i5));
            allKeys.add(new MetaKeyBase(sb.toString(), i4 + 65470));
            i4 = i5;
        }
        ArrayList<MetaKeyBase> arrayList2 = allKeys;
        Collections.sort(arrayList2);
        allKeysNames = new String[arrayList2.size()];
        keysByKeyCode = new HashMap<>();
        keysByMouseButton = new HashMap<>();
        keysByKeySym = new HashMap<>();
        int i6 = 0;
        while (true) {
            String[] strArr = allKeysNames;
            if (i6 < strArr.length) {
                MetaKeyBase metaKeyBase = allKeys.get(i6);
                strArr[i6] = metaKeyBase.name;
                if (metaKeyBase.isKeyEvent) {
                    keysByKeyCode.put(Integer.valueOf(metaKeyBase.keyEvent), metaKeyBase);
                }
                if (metaKeyBase.isMouse) {
                    keysByMouseButton.put(Integer.valueOf(metaKeyBase.mouseButtons), metaKeyBase);
                } else {
                    keysByKeySym.put(Integer.valueOf(metaKeyBase.keySym), metaKeyBase);
                }
                i6++;
            } else {
                NEW = new NewInstance<MetaKeyBean>() { // from class: com.iiordanov.bVNC.input.MetaKeyBean.1
                    @Override // com.antlersoft.android.dbimpl.NewInstance
                    public MetaKeyBean get() {
                        return new MetaKeyBean();
                    }
                };
                keyCtrlAltDel = new MetaKeyBean(0L, InputDeviceCompat.SOURCE_TOUCHSCREEN, keysByKeyCode.get(67));
                HashMap<Integer, MetaKeyBase> map = keysByKeySym;
                keyArrowLeft = new MetaKeyBean(0L, 0, map.get(65361));
                keyArrowUp = new MetaKeyBean(0L, 0, map.get(65362));
                keyArrowRight = new MetaKeyBean(0L, 0, map.get(65363));
                keyArrowDown = new MetaKeyBean(0L, 0, map.get(65364));
                return;
            }
        }
    }

    MetaKeyBean() {
    }

    public MetaKeyBean(MetaKeyBean metaKeyBean) {
        this._regenDesc = true;
        if (metaKeyBean.isMouseClick()) {
            setMouseButtons(metaKeyBean.getMouseButtons());
        } else {
            setKeySym(metaKeyBean.getKeySym());
        }
        setMetaListId(metaKeyBean.getMetaListId());
        setMetaFlags(metaKeyBean.getMetaFlags());
    }

    public MetaKeyBean(long j, int i, MetaKeyBase metaKeyBase) {
        setMetaListId(j);
        setKeyBase(metaKeyBase);
        setMetaFlags(i);
        this._regenDesc = true;
    }

    @Override // com.iiordanov.bVNC.input.AbstractMetaKeyBean, com.iiordanov.bVNC.input.IMetaKey
    public String getKeyDesc() {
        MetaKeyBase metaKeyBase;
        if (this._regenDesc) {
            synchronized (this) {
                if (this._regenDesc) {
                    StringBuilder sb = new StringBuilder();
                    int metaFlags = getMetaFlags();
                    if ((metaFlags & 1) != 0) {
                        sb.append("Shift");
                    }
                    if ((metaFlags & 4096) != 0) {
                        if (sb.length() > 0) {
                            sb.append(Soundex.SILENT_MARKER);
                        }
                        sb.append("Ctrl");
                    }
                    if ((metaFlags & 2) != 0) {
                        if (sb.length() > 0) {
                            sb.append(Soundex.SILENT_MARKER);
                        }
                        sb.append("Alt");
                    }
                    if ((metaFlags & 131072) != 0) {
                        if (sb.length() > 0) {
                            sb.append(Soundex.SILENT_MARKER);
                        }
                        sb.append("Super");
                    }
                    if (sb.length() > 0) {
                        sb.append(TokenParser.SP);
                    }
                    if (isMouseClick()) {
                        metaKeyBase = keysByMouseButton.get(Integer.valueOf(getMouseButtons()));
                    } else {
                        metaKeyBase = keysByKeySym.get(Integer.valueOf(getKeySym()));
                    }
                    sb.append(metaKeyBase.name);
                    setKeyDesc(sb.toString());
                }
            }
        }
        return super.getKeyDesc();
    }

    @Override // com.iiordanov.bVNC.input.AbstractMetaKeyBean
    public void setKeyDesc(String str) {
        super.setKeyDesc(str);
        this._regenDesc = false;
    }

    @Override // com.iiordanov.bVNC.input.AbstractMetaKeyBean
    public void setKeySym(int i) {
        if (i != getKeySym() || isMouseClick()) {
            setMouseClick(false);
            this._regenDesc = true;
            super.setKeySym(i);
        }
    }

    @Override // com.iiordanov.bVNC.input.AbstractMetaKeyBean
    public void setMetaFlags(int i) {
        if (i != getMetaFlags()) {
            this._regenDesc = true;
            super.setMetaFlags(i);
        }
    }

    @Override // com.iiordanov.bVNC.input.AbstractMetaKeyBean
    public void setMouseButtons(int i) {
        if (i == getMouseButtons() && isMouseClick()) {
            return;
        }
        setMouseClick(true);
        this._regenDesc = true;
        super.setMouseButtons(i);
    }

    public void setKeyBase(MetaKeyBase metaKeyBase) {
        if (metaKeyBase.isMouse) {
            setMouseButtons(metaKeyBase.mouseButtons);
        } else {
            setKeySym(metaKeyBase.keySym);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof MetaKeyBean) {
            return getKeyDesc().equals(((MetaKeyBean) obj).getKeyDesc());
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(MetaKeyBean metaKeyBean) {
        return getKeyDesc().compareTo(metaKeyBean.getKeyDesc());
    }
}
