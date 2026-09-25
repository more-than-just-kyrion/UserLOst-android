package com.freerdp.freerdpcore.application;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.services.LibFreeRDP;

/* JADX INFO: loaded from: classes.dex */
public class SessionState implements Parcelable {
    public static final Parcelable.Creator<SessionState> CREATOR = new Parcelable.Creator<SessionState>() { // from class: com.freerdp.freerdpcore.application.SessionState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SessionState createFromParcel(Parcel parcel) {
            return new SessionState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SessionState[] newArray(int i) {
            return new SessionState[i];
        }
    };
    private BookmarkBase bookmark;
    private long instance;
    private Uri openUri;
    private BitmapDrawable surface;
    private LibFreeRDP.UIEventListener uiEventListener;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SessionState(Parcel parcel) {
        this.instance = parcel.readLong();
        this.bookmark = (BookmarkBase) parcel.readParcelable(null);
        this.openUri = (Uri) parcel.readParcelable(null);
        this.surface = new BitmapDrawable((Bitmap) parcel.readParcelable(null));
    }

    public SessionState(long j, BookmarkBase bookmarkBase) {
        this.instance = j;
        this.bookmark = bookmarkBase;
        this.openUri = null;
        this.uiEventListener = null;
    }

    public SessionState(long j, Uri uri) {
        this.instance = j;
        this.bookmark = null;
        this.openUri = uri;
        this.uiEventListener = null;
    }

    public void connect(Context context) {
        BookmarkBase bookmarkBase = this.bookmark;
        if (bookmarkBase != null) {
            LibFreeRDP.setConnectionInfo(context, this.instance, bookmarkBase);
        } else {
            LibFreeRDP.setConnectionInfo(context, this.instance, this.openUri);
        }
        LibFreeRDP.connect(this.instance);
    }

    public long getInstance() {
        return this.instance;
    }

    public BookmarkBase getBookmark() {
        return this.bookmark;
    }

    public Uri getOpenUri() {
        return this.openUri;
    }

    public LibFreeRDP.UIEventListener getUIEventListener() {
        return this.uiEventListener;
    }

    public void setUIEventListener(LibFreeRDP.UIEventListener uIEventListener) {
        this.uiEventListener = uIEventListener;
    }

    public BitmapDrawable getSurface() {
        return this.surface;
    }

    public void setSurface(BitmapDrawable bitmapDrawable) {
        this.surface = bitmapDrawable;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.instance);
        parcel.writeParcelable(this.bookmark, i);
        parcel.writeParcelable(this.openUri, i);
        parcel.writeParcelable(this.surface.getBitmap(), i);
    }
}
