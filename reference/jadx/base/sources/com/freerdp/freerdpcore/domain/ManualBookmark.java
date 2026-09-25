package com.freerdp.freerdpcore.domain;

import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;
import com.iiordanov.bVNC.Constants;

/* JADX INFO: loaded from: classes.dex */
public class ManualBookmark extends BookmarkBase {
    public static final Parcelable.Creator<ManualBookmark> CREATOR = new Parcelable.Creator<ManualBookmark>() { // from class: com.freerdp.freerdpcore.domain.ManualBookmark.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManualBookmark createFromParcel(Parcel parcel) {
            return new ManualBookmark(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManualBookmark[] newArray(int i) {
            return new ManualBookmark[i];
        }
    };
    private boolean enableGatewaySettings;
    private GatewaySettings gatewaySettings;
    private String hostname;
    private int port;

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ManualBookmark(Parcel parcel) {
        super(parcel);
        this.type = 1;
        this.hostname = parcel.readString();
        this.port = parcel.readInt();
        this.enableGatewaySettings = parcel.readInt() == 1;
        this.gatewaySettings = (GatewaySettings) parcel.readParcelable(GatewaySettings.class.getClassLoader());
    }

    public ManualBookmark() {
        init();
    }

    private void init() {
        this.type = 1;
        this.hostname = "";
        this.port = Constants.DEFAULT_RDP_PORT;
        this.enableGatewaySettings = false;
        this.gatewaySettings = new GatewaySettings();
    }

    public String getHostname() {
        return this.hostname;
    }

    public void setHostname(String str) {
        this.hostname = str;
    }

    public int getPort() {
        return this.port;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public boolean getEnableGatewaySettings() {
        return this.enableGatewaySettings;
    }

    public void setEnableGatewaySettings(boolean z) {
        this.enableGatewaySettings = z;
    }

    public GatewaySettings getGatewaySettings() {
        return this.gatewaySettings;
    }

    public void setGatewaySettings(GatewaySettings gatewaySettings) {
        this.gatewaySettings = gatewaySettings;
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.hostname);
        parcel.writeInt(this.port);
        parcel.writeInt(this.enableGatewaySettings ? 1 : 0);
        parcel.writeParcelable(this.gatewaySettings, i);
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase
    public void writeToSharedPreferences(SharedPreferences sharedPreferences) {
        super.writeToSharedPreferences(sharedPreferences);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("bookmark.hostname", this.hostname);
        editorEdit.putInt("bookmark.port", this.port);
        editorEdit.putBoolean("bookmark.enable_gateway_settings", this.enableGatewaySettings);
        editorEdit.putString("bookmark.gateway_hostname", this.gatewaySettings.getHostname());
        editorEdit.putInt("bookmark.gateway_port", this.gatewaySettings.getPort());
        editorEdit.putString("bookmark.gateway_username", this.gatewaySettings.getUsername());
        editorEdit.putString("bookmark.gateway_password", this.gatewaySettings.getPassword());
        editorEdit.putString("bookmark.gateway_domain", this.gatewaySettings.getDomain());
        editorEdit.commit();
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase
    public void readFromSharedPreferences(SharedPreferences sharedPreferences) {
        super.readFromSharedPreferences(sharedPreferences);
        this.hostname = sharedPreferences.getString("bookmark.hostname", "");
        this.port = sharedPreferences.getInt("bookmark.port", Constants.DEFAULT_RDP_PORT);
        this.enableGatewaySettings = sharedPreferences.getBoolean("bookmark.enable_gateway_settings", false);
        this.gatewaySettings.setHostname(sharedPreferences.getString("bookmark.gateway_hostname", ""));
        this.gatewaySettings.setPort(sharedPreferences.getInt("bookmark.gateway_port", 443));
        this.gatewaySettings.setUsername(sharedPreferences.getString("bookmark.gateway_username", ""));
        this.gatewaySettings.setPassword(sharedPreferences.getString("bookmark.gateway_password", ""));
        this.gatewaySettings.setDomain(sharedPreferences.getString("bookmark.gateway_domain", ""));
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase
    public Object clone() {
        return super.clone();
    }

    public static class GatewaySettings implements Parcelable {
        public static final Parcelable.Creator<GatewaySettings> CREATOR = new Parcelable.Creator<GatewaySettings>() { // from class: com.freerdp.freerdpcore.domain.ManualBookmark.GatewaySettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GatewaySettings createFromParcel(Parcel parcel) {
                return new GatewaySettings(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GatewaySettings[] newArray(int i) {
                return new GatewaySettings[i];
            }
        };
        private String domain;
        private String hostname;
        private String password;
        private int port;
        private String username;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public GatewaySettings() {
            this.hostname = "";
            this.port = 443;
            this.username = "";
            this.password = "";
            this.domain = "";
        }

        public GatewaySettings(Parcel parcel) {
            this.hostname = parcel.readString();
            this.port = parcel.readInt();
            this.username = parcel.readString();
            this.password = parcel.readString();
            this.domain = parcel.readString();
        }

        public String getHostname() {
            return this.hostname;
        }

        public void setHostname(String str) {
            this.hostname = str;
        }

        public int getPort() {
            return this.port;
        }

        public void setPort(int i) {
            this.port = i;
        }

        public String getUsername() {
            return this.username;
        }

        public void setUsername(String str) {
            this.username = str;
        }

        public String getPassword() {
            return this.password;
        }

        public void setPassword(String str) {
            this.password = str;
        }

        public String getDomain() {
            return this.domain;
        }

        public void setDomain(String str) {
            this.domain = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.hostname);
            parcel.writeInt(this.port);
            parcel.writeString(this.username);
            parcel.writeString(this.password);
            parcel.writeString(this.domain);
        }
    }
}
