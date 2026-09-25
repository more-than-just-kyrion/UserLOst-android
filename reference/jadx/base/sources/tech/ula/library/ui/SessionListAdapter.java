package tech.ula.library.ui;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;
import tech.ula.library.utils.AppDetails;

/* JADX INFO: compiled from: SessionListAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001%B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\tJ\b\u0010\u0017\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J$\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\u000bH\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014¨\u0006&"}, d2 = {"Ltech/ula/library/ui/SessionListAdapter;", "Landroid/widget/BaseAdapter;", "activity", "Landroid/app/Activity;", "sessions", "", "Ltech/ula/library/model/entities/Session;", "filesystems", "Ltech/ula/library/model/entities/Filesystem;", "(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V", "ITEM_VIEW_TYPE_COUNT", "", "ITEM_VIEW_TYPE_SEPARATOR", "ITEM_VIEW_TYPE_SESSION", "appsString", "", "customString", "sessionsAndSeparators", "Ltech/ula/library/ui/SessionListItem;", "getSessionsAndSeparators", "()Ljava/util/List;", "sessionsAndSeparators$delegate", "Lkotlin/Lazy;", "getCount", "getItem", "position", "getItemId", "", "getItemViewType", "getView", "Landroid/view/View;", "convertView", "parent", "Landroid/view/ViewGroup;", "getViewTypeCount", "isEnabled", "", "ViewHolder", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionListAdapter extends BaseAdapter {
    private final int ITEM_VIEW_TYPE_COUNT;
    private final int ITEM_VIEW_TYPE_SEPARATOR;
    private final int ITEM_VIEW_TYPE_SESSION;
    private Activity activity;
    private final String appsString;
    private final String customString;
    private final List<Filesystem> filesystems;
    private final List<Session> sessions;

    /* JADX INFO: renamed from: sessionsAndSeparators$delegate, reason: from kotlin metadata */
    private final Lazy sessionsAndSeparators;

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    public SessionListAdapter(Activity activity, List<Session> sessions, List<Filesystem> filesystems) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        Intrinsics.checkNotNullParameter(filesystems, "filesystems");
        this.activity = activity;
        this.sessions = sessions;
        this.filesystems = filesystems;
        this.ITEM_VIEW_TYPE_SEPARATOR = 1;
        this.ITEM_VIEW_TYPE_COUNT = 2;
        String string = activity.getResources().getString(R.string.apps_sessions);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        this.appsString = string;
        String string2 = this.activity.getResources().getString(R.string.custom_sessions);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        this.customString = string2;
        this.sessionsAndSeparators = LazyKt.lazy(new SessionListAdapter$sessionsAndSeparators$2(this));
    }

    /* JADX INFO: compiled from: SessionListAdapter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010¨\u0006\u001a"}, d2 = {"Ltech/ula/library/ui/SessionListAdapter$ViewHolder;", "", "row", "Landroid/view/View;", "(Landroid/view/View;)V", "imageViewFilesystemIcon", "Landroid/widget/ImageView;", "getImageViewFilesystemIcon", "()Landroid/widget/ImageView;", "setImageViewFilesystemIcon", "(Landroid/widget/ImageView;)V", "separatorText", "Landroid/widget/TextView;", "getSeparatorText", "()Landroid/widget/TextView;", "setSeparatorText", "(Landroid/widget/TextView;)V", "textViewFilesystemName", "getTextViewFilesystemName", "setTextViewFilesystemName", "textViewServiceType", "getTextViewServiceType", "setTextViewServiceType", "textViewSessionName", "getTextViewSessionName", "setTextViewSessionName", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class ViewHolder {
        private ImageView imageViewFilesystemIcon;
        private TextView separatorText;
        private TextView textViewFilesystemName;
        private TextView textViewServiceType;
        private TextView textViewSessionName;

        public ViewHolder(View row) {
            Intrinsics.checkNotNullParameter(row, "row");
            this.textViewServiceType = (TextView) row.findViewById(R.id.text_list_item_service_type);
            this.textViewSessionName = (TextView) row.findViewById(R.id.text_list_item_session_name);
            this.textViewFilesystemName = (TextView) row.findViewById(R.id.text_list_item_filesystem_name);
            this.imageViewFilesystemIcon = (ImageView) row.findViewById(R.id.image_list_item_filesystem_icon);
            this.separatorText = (TextView) row.findViewById(R.id.list_item_separator_text);
        }

        public final TextView getTextViewServiceType() {
            return this.textViewServiceType;
        }

        public final void setTextViewServiceType(TextView textView) {
            this.textViewServiceType = textView;
        }

        public final TextView getTextViewSessionName() {
            return this.textViewSessionName;
        }

        public final void setTextViewSessionName(TextView textView) {
            this.textViewSessionName = textView;
        }

        public final TextView getTextViewFilesystemName() {
            return this.textViewFilesystemName;
        }

        public final void setTextViewFilesystemName(TextView textView) {
            this.textViewFilesystemName = textView;
        }

        public final ImageView getImageViewFilesystemIcon() {
            return this.imageViewFilesystemIcon;
        }

        public final void setImageViewFilesystemIcon(ImageView imageView) {
            this.imageViewFilesystemIcon = imageView;
        }

        public final TextView getSeparatorText() {
            return this.separatorText;
        }

        public final void setSeparatorText(TextView textView) {
            this.separatorText = textView;
        }
    }

    private final List<SessionListItem> getSessionsAndSeparators() {
        return (List) this.sessionsAndSeparators.getValue();
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder;
        View viewInflate;
        Object next;
        SessionListItem sessionListItem = getSessionsAndSeparators().get(position);
        if (convertView == null) {
            Object systemService = this.activity.getSystemService("layout_inflater");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            LayoutInflater layoutInflater = (LayoutInflater) systemService;
            if (sessionListItem instanceof SessionItem) {
                viewInflate = layoutInflater.inflate(R.layout.list_item_session, parent, false);
            } else {
                if (!(sessionListItem instanceof SessionSeparatorItem)) {
                    throw new NoWhenBranchMatchedException();
                }
                viewInflate = layoutInflater.inflate(R.layout.list_item_separator, parent, false);
            }
            viewHolder = new ViewHolder(viewInflate);
            if (viewInflate != null) {
                viewInflate.setTag(viewHolder);
            }
        } else {
            Object tag = convertView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type tech.ula.library.ui.SessionListAdapter.ViewHolder");
            viewHolder = (ViewHolder) tag;
            viewInflate = convertView;
        }
        if (sessionListItem instanceof SessionSeparatorItem) {
            TextView separatorText = viewHolder.getSeparatorText();
            if (separatorText != null) {
                separatorText.setText(((SessionSeparatorItem) sessionListItem).getSeparatorText());
            }
        } else if (sessionListItem instanceof SessionItem) {
            Session session = ((SessionItem) sessionListItem).getSession();
            Iterator<T> it = this.filesystems.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((Filesystem) next).getId() != session.getFilesystemId());
            Filesystem filesystem = (Filesystem) next;
            if (filesystem == null) {
                filesystem = new Filesystem(0L, "ERROR", null, null, null, null, null, null, false, null, false, false, false, false, null, 32764, null);
            }
            if (session.getActive()) {
                if (viewInflate != null) {
                    viewInflate.setBackgroundResource(R.color.colorAccent);
                }
            } else if (viewInflate != null) {
                viewInflate.setBackgroundResource(R.color.colorPrimaryDark);
            }
            String path = this.activity.getFilesDir().getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            Resources resources = this.activity.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
            AppDetails appDetails = new AppDetails(path, resources);
            TextView textViewServiceType = viewHolder.getTextViewServiceType();
            if (textViewServiceType != null) {
                textViewServiceType.setText(session.getServiceType().toString());
            }
            TextView textViewSessionName = viewHolder.getTextViewSessionName();
            if (textViewSessionName != null) {
                textViewSessionName.setText(session.getName());
            }
            TextView textViewFilesystemName = viewHolder.getTextViewFilesystemName();
            if (textViewFilesystemName != null) {
                textViewFilesystemName.setText(session.getFilesystemName());
            }
            ImageView imageViewFilesystemIcon = viewHolder.getImageViewFilesystemIcon();
            if (imageViewFilesystemIcon != null) {
                imageViewFilesystemIcon.setImageURI(appDetails.findIconUri(filesystem.getDistributionType()));
            }
        }
        Intrinsics.checkNotNull(viewInflate, "null cannot be cast to non-null type android.view.View");
        return viewInflate;
    }

    @Override // android.widget.Adapter
    public SessionListItem getItem(int position) {
        return getSessionsAndSeparators().get(position);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return getSessionsAndSeparators().size();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.ITEM_VIEW_TYPE_COUNT;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        SessionListItem sessionListItem = getSessionsAndSeparators().get(position);
        if (sessionListItem instanceof SessionItem) {
            return this.ITEM_VIEW_TYPE_SESSION;
        }
        if (sessionListItem instanceof SessionSeparatorItem) {
            return this.ITEM_VIEW_TYPE_SEPARATOR;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int position) {
        SessionListItem sessionListItem = getSessionsAndSeparators().get(position);
        if (sessionListItem instanceof SessionItem) {
            return true;
        }
        if (sessionListItem instanceof SessionSeparatorItem) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }
}
