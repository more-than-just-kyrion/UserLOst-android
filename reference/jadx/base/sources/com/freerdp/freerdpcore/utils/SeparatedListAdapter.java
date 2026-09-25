package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import com.freerdp.freerdpcore.R;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SeparatedListAdapter extends BaseAdapter {
    public static final int TYPE_SECTION_HEADER = 0;
    public final ArrayAdapter<String> headers;
    public final Map<String, Adapter> sections = new LinkedHashMap();

    public boolean areAllItemsSelectable() {
        return false;
    }

    public SeparatedListAdapter(Context context) {
        this.headers = new ArrayAdapter<>(context, R.layout.list_header);
    }

    public void addSection(String str, Adapter adapter) {
        this.headers.add(str);
        this.sections.put(str, adapter);
    }

    public void setSectionTitle(int i, String str) {
        String item = this.headers.getItem(i);
        this.headers.remove(item);
        this.headers.insert(str, i);
        Adapter adapter = this.sections.get(item);
        this.sections.remove(item);
        this.sections.put(str, adapter);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        for (int i2 = 0; i2 < this.headers.getCount(); i2++) {
            String item = this.headers.getItem(i2);
            Adapter adapter = this.sections.get(item);
            if (adapter.getCount() > 0) {
                int count = adapter.getCount() + 1;
                if (i == 0) {
                    return item;
                }
                if (i < count) {
                    return adapter.getItem(i - 1);
                }
                i -= count;
            }
        }
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int count = 0;
        for (Adapter adapter : this.sections.values()) {
            count += adapter.getCount() > 0 ? adapter.getCount() + 1 : 0;
        }
        return count;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        Iterator<Adapter> it = this.sections.values().iterator();
        int viewTypeCount = 1;
        while (it.hasNext()) {
            viewTypeCount += it.next().getViewTypeCount();
        }
        return viewTypeCount;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int viewTypeCount = 1;
        for (int i2 = 0; i2 < this.headers.getCount(); i2++) {
            Adapter adapter = this.sections.get(this.headers.getItem(i2));
            if (adapter.getCount() > 0) {
                int count = adapter.getCount() + 1;
                if (i == 0) {
                    return 0;
                }
                if (i < count) {
                    return viewTypeCount + adapter.getItemViewType(i - 1);
                }
                i -= count;
                viewTypeCount += adapter.getViewTypeCount();
            }
        }
        return -1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItemViewType(i) != 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.headers.getCount(); i3++) {
            Adapter adapter = this.sections.get(this.headers.getItem(i3));
            if (adapter.getCount() > 0) {
                int count = adapter.getCount() + 1;
                if (i == 0) {
                    return this.headers.getView(i2, view, viewGroup);
                }
                if (i < count) {
                    return adapter.getView(i - 1, null, viewGroup);
                }
                i -= count;
            }
            i2++;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        for (int i2 = 0; i2 < this.headers.getCount(); i2++) {
            Adapter adapter = this.sections.get(this.headers.getItem(i2));
            if (adapter.getCount() > 0) {
                int count = adapter.getCount() + 1;
                if (i < count) {
                    return adapter.getItemId(i - 1);
                }
                i -= count;
            }
        }
        return -1L;
    }

    public String getSectionForPosition(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.headers.getCount(); i3++) {
            String item = this.headers.getItem(i3);
            Adapter adapter = this.sections.get(item);
            if (adapter.getCount() > 0) {
                int count = adapter.getCount() + 1;
                if (i >= i2 && i < i2 + count) {
                    return item.toString();
                }
                i2 += count;
            }
        }
        return null;
    }
}
