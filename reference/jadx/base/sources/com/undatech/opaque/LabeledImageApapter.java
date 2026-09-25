package com.undatech.opaque;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.undatech.remoteClientUi.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LabeledImageApapter extends BaseAdapter {
    private static final String TAG = "LabeledImageApapter";
    private Context context;
    String[] filter;
    private int numCols;
    private String defaultLabel = "Untitled";
    List<Connection> filteredConnectionsByPosition = new ArrayList();

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public LabeledImageApapter(Context context, Map<String, Connection> map, String[] strArr, int i) {
        this.numCols = 2;
        this.context = context;
        this.numCols = i;
        this.filter = strArr;
        if (map != null) {
            for (Connection connection : map.values()) {
                boolean z = true;
                for (String str : this.filter) {
                    if (!connection.getLabel().toLowerCase().contains(str)) {
                        z = false;
                    }
                }
                if (z) {
                    this.filteredConnectionsByPosition.add(connection);
                }
            }
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
        Connection connection = this.filteredConnectionsByPosition.get(i);
        String label = connection.getLabel();
        Log.d(TAG, "Now setting label at position: " + i + " to: " + label);
        int width = ((GridView) ((Activity) this.context).findViewById(R.id.gridView)).getWidth() / this.numCols;
        if (view == null) {
            view = layoutInflater.inflate(R.layout.grid_item, (ViewGroup) null);
        }
        view.setLayoutParams(new AbsListView.LayoutParams(width, width));
        TextView textView = (TextView) view.findViewById(R.id.grid_item_text);
        if ("".equals(label)) {
            textView.setText(this.defaultLabel);
        } else {
            textView.setText(label);
        }
        String str = this.context.getFilesDir() + "/" + connection.getScreenshotFilename();
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(R.id.grid_item_image);
        if (new File(str).exists()) {
            Log.d(TAG, "Setting screenshot from file " + str);
            appCompatImageView.setImageBitmap(BitmapFactory.decodeFile(str));
        } else {
            appCompatImageView.setImageResource(R.drawable.ic_screen_black_48dp);
            appCompatImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        ((TextView) view.findViewById(R.id.grid_item_id)).setText(connection.getRuntimeId());
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<Connection> list = this.filteredConnectionsByPosition;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.filteredConnectionsByPosition.get(i);
    }
}
