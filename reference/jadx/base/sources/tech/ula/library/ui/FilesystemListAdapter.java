package tech.ula.library.ui;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.utils.AppDetails;

/* JADX INFO: compiled from: FilesystemListAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\tH\u0016J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Ltech/ula/library/ui/FilesystemListAdapter;", "Landroid/widget/BaseAdapter;", "activity", "Landroid/app/Activity;", "items", "", "Ltech/ula/library/model/entities/Filesystem;", "(Landroid/app/Activity;Ljava/util/List;)V", "getCount", "", "getItem", "position", "getItemId", "", "getView", "Landroid/view/View;", "convertView", "parent", "Landroid/view/ViewGroup;", "ViewHolder", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemListAdapter extends BaseAdapter {
    private Activity activity;
    private List<Filesystem> items;

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    /* JADX INFO: compiled from: FilesystemListAdapter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Ltech/ula/library/ui/FilesystemListAdapter$ViewHolder;", "", "row", "Landroid/view/View;", "(Landroid/view/View;)V", "imageViewType", "Landroid/widget/ImageView;", "getImageViewType", "()Landroid/widget/ImageView;", "setImageViewType", "(Landroid/widget/ImageView;)V", "textViewName", "Landroid/widget/TextView;", "getTextViewName", "()Landroid/widget/TextView;", "setTextViewName", "(Landroid/widget/TextView;)V", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class ViewHolder {
        private ImageView imageViewType;
        private TextView textViewName;

        public ViewHolder(View row) {
            Intrinsics.checkNotNullParameter(row, "row");
            View viewFindViewById = row.findViewById(R.id.image_list_item_filesystem_type);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            this.imageViewType = (ImageView) viewFindViewById;
            View viewFindViewById2 = row.findViewById(R.id.text_filesystem_name);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
            this.textViewName = (TextView) viewFindViewById2;
        }

        public final ImageView getImageViewType() {
            return this.imageViewType;
        }

        public final void setImageViewType(ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.imageViewType = imageView;
        }

        public final TextView getTextViewName() {
            return this.textViewName;
        }

        public final void setTextViewName(TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.textViewName = textView;
        }
    }

    public FilesystemListAdapter(Activity activity, List<Filesystem> items) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(items, "items");
        this.activity = activity;
        this.items = items;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder;
        if (convertView == null) {
            Object systemService = this.activity.getSystemService("layout_inflater");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            convertView = ((LayoutInflater) systemService).inflate(R.layout.list_item_filesystem, parent, false);
            viewHolder = new ViewHolder(convertView);
            if (convertView != null) {
                convertView.setTag(viewHolder);
            }
        } else {
            Object tag = convertView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type tech.ula.library.ui.FilesystemListAdapter.ViewHolder");
            viewHolder = (ViewHolder) tag;
        }
        Filesystem filesystem = this.items.get(position);
        String path = this.activity.getFilesDir().getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        Resources resources = this.activity.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        viewHolder.getImageViewType().setImageURI(new AppDetails(path, resources).findIconUri(filesystem.getDistributionType()));
        viewHolder.getTextViewName().setText(filesystem.getName());
        Intrinsics.checkNotNull(convertView, "null cannot be cast to non-null type android.view.View");
        return convertView;
    }

    @Override // android.widget.Adapter
    public Filesystem getItem(int position) {
        return this.items.get(position);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.items.size();
    }
}
