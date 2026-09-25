package com.freerdp.freerdpcore.domain;

import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class PlaceholderBookmark extends BookmarkBase {
    public static final Parcelable.Creator<PlaceholderBookmark> CREATOR = new Parcelable.Creator<PlaceholderBookmark>() { // from class: com.freerdp.freerdpcore.domain.PlaceholderBookmark.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaceholderBookmark createFromParcel(Parcel parcel) {
            return new PlaceholderBookmark(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaceholderBookmark[] newArray(int i) {
            return new PlaceholderBookmark[i];
        }
    };
    private String name;

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PlaceholderBookmark(Parcel parcel) {
        super(parcel);
        this.type = 3;
        this.name = parcel.readString();
    }

    public PlaceholderBookmark() {
        this.type = 3;
        this.name = "";
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.name);
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase
    public void writeToSharedPreferences(SharedPreferences sharedPreferences) {
        super.writeToSharedPreferences(sharedPreferences);
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase
    public void readFromSharedPreferences(SharedPreferences sharedPreferences) {
        super.readFromSharedPreferences(sharedPreferences);
    }

    @Override // com.freerdp.freerdpcore.domain.BookmarkBase
    public Object clone() {
        return super.clone();
    }
}
