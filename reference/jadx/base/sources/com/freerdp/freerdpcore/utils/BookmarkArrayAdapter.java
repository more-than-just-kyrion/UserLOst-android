package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ConnectionReference;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import com.freerdp.freerdpcore.domain.PlaceholderBookmark;
import com.freerdp.freerdpcore.presentation.BookmarkActivity;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BookmarkArrayAdapter extends ArrayAdapter<BookmarkBase> {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public BookmarkArrayAdapter(Context context, int i, List<BookmarkBase> list) {
        super(context, i, list);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        String placeholderReference;
        if (view == null) {
            view = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.bookmark_list_item, (ViewGroup) null);
        }
        BookmarkBase item = getItem(i);
        TextView textView = (TextView) view.findViewById(R.id.bookmark_text1);
        TextView textView2 = (TextView) view.findViewById(R.id.bookmark_text2);
        ImageView imageView = (ImageView) view.findViewById(R.id.bookmark_icon2);
        textView.setText(item.getLabel());
        imageView.setVisibility(0);
        if (item.getType() == 1) {
            textView2.setText(((ManualBookmark) item.get()).getHostname());
            placeholderReference = ConnectionReference.getManualBookmarkReference(item.getId());
            imageView.setImageResource(R.drawable.icon_star_on);
        } else if (item.getType() == 2) {
            textView2.setText(" ");
            placeholderReference = ConnectionReference.getHostnameReference(item.getLabel());
            imageView.setImageResource(R.drawable.icon_star_off);
        } else if (item.getType() == 3) {
            textView2.setText(" ");
            placeholderReference = ConnectionReference.getPlaceholderReference(((PlaceholderBookmark) item.get()).getName());
            imageView.setVisibility(8);
        } else {
            placeholderReference = "";
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.freerdp.freerdpcore.utils.BookmarkArrayAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Bundle bundle = new Bundle();
                bundle.putString("conRef", view2.getTag().toString());
                Intent intent = new Intent(BookmarkArrayAdapter.this.getContext(), (Class<?>) BookmarkActivity.class);
                intent.putExtras(bundle);
                BookmarkArrayAdapter.this.getContext().startActivity(intent);
            }
        });
        view.setTag(placeholderReference);
        imageView.setTag(placeholderReference);
        return view;
    }

    public void addItems(List<BookmarkBase> list) {
        Iterator<BookmarkBase> it = list.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public void replaceItems(List<BookmarkBase> list) {
        clear();
        Iterator<BookmarkBase> it = list.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public void remove(long j) {
        for (int i = 0; i < getCount(); i++) {
            BookmarkBase item = getItem(i);
            if (item.getId() == j) {
                remove(item);
                return;
            }
        }
    }
}
