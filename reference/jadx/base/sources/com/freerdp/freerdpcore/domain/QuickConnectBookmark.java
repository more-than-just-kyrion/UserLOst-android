package com.freerdp.freerdpcore.domain;

import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class QuickConnectBookmark extends ManualBookmark {
    public static final Parcelable.Creator<QuickConnectBookmark> CREATOR = new Parcelable.Creator<QuickConnectBookmark>() { // from class: com.freerdp.freerdpcore.domain.QuickConnectBookmark.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QuickConnectBookmark createFromParcel(Parcel parcel) {
            return new QuickConnectBookmark(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QuickConnectBookmark[] newArray(int i) {
            return new QuickConnectBookmark[i];
        }
    };

    @Override // com.freerdp.freerdpcore.domain.ManualBookmark, com.freerdp.freerdpcore.domain.BookmarkBase, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public QuickConnectBookmark(Parcel parcel) {
        super(parcel);
        this.type = 2;
    }

    public QuickConnectBookmark() {
        this.type = 2;
    }

    @Override // com.freerdp.freerdpcore.domain.ManualBookmark, com.freerdp.freerdpcore.domain.BookmarkBase, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    @Override // com.freerdp.freerdpcore.domain.ManualBookmark, com.freerdp.freerdpcore.domain.BookmarkBase
    public void writeToSharedPreferences(SharedPreferences sharedPreferences) {
        super.writeToSharedPreferences(sharedPreferences);
    }

    @Override // com.freerdp.freerdpcore.domain.ManualBookmark, com.freerdp.freerdpcore.domain.BookmarkBase
    public void readFromSharedPreferences(SharedPreferences sharedPreferences) {
        super.readFromSharedPreferences(sharedPreferences);
    }

    @Override // com.freerdp.freerdpcore.domain.ManualBookmark, com.freerdp.freerdpcore.domain.BookmarkBase
    public Object clone() {
        return super.clone();
    }
}
