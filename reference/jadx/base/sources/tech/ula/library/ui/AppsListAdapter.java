package tech.ula.library.ui;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.bcpg.SecretKeyPacket;
import tech.ula.library.R;
import tech.ula.library.model.entities.App;
import tech.ula.library.utils.AppDetails;

/* JADX INFO: compiled from: AppsListAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000256B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u0017H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nH\u0002J\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0018\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001aH\u0016J\u0010\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u0002H\u0016J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nH\u0002J\u0018\u0010*\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0002H\u0002J \u0010+\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0018\u0010,\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0018\u0010-\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0002H\u0002J \u0010.\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0014\u0010/\u001a\u00020\u001f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u0017J\u0014\u00100\u001a\u00020\u001f2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\n0\u0017J\f\u00102\u001a\u00020\u001f*\u00020\nH\u0002J\f\u00103\u001a\u000204*\u00020\nH\u0002R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Ltech/ula/library/ui/AppsListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Ltech/ula/library/ui/AppsListAdapter$ViewHolder;", "activity", "Landroid/app/Activity;", "clickHandler", "Ltech/ula/library/ui/AppsListAdapter$AppsClickHandler;", "(Landroid/app/Activity;Ltech/ula/library/ui/AppsListAdapter$AppsClickHandler;)V", "activeApps", "Ljava/util/ArrayList;", "Ltech/ula/library/model/entities/App;", "Lkotlin/collections/ArrayList;", "apps", "", "contextMenuItem", "getContextMenuItem", "()Ltech/ula/library/model/entities/App;", "setContextMenuItem", "(Ltech/ula/library/model/entities/App;)V", "firstDisplayCategory", "", "unselectedApp", "getActiveAppsDiff", "", "newActiveApps", "getItemCount", "", "getItemId", "", "position", "insertAppIntoView", "", "app", "onBindViewHolder", "viewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onViewDetachedFromWindow", "holder", "removeAppFromView", "setAppActivity", "setItemAnimation", "setItemDetails", "setItemListeners", "setSeparator", "updateActiveApps", "updateApps", "newApps", "displayedAnimation", "hasBeenAnimated", "", "AppsClickHandler", "ViewHolder", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final ArrayList<App> activeApps;
    private final Activity activity;
    private final List<App> apps;
    private final AppsClickHandler clickHandler;
    private App contextMenuItem;
    private final String firstDisplayCategory;
    private final App unselectedApp;

    /* JADX INFO: compiled from: AppsListAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Ltech/ula/library/ui/AppsListAdapter$AppsClickHandler;", "", "createContextMenu", "", "menu", "Landroid/view/Menu;", "onClick", "app", "Ltech/ula/library/model/entities/App;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface AppsClickHandler {
        void createContextMenu(Menu menu);

        void onClick(App app);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    public AppsListAdapter(Activity activity, AppsClickHandler clickHandler) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(clickHandler, "clickHandler");
        this.activity = activity;
        this.clickHandler = clickHandler;
        this.activeApps = new ArrayList<>();
        this.apps = new ArrayList();
        this.firstDisplayCategory = "distribution";
        App app = new App("unselected", null, null, false, false, null, false, 0L, SecretKeyPacket.USAGE_SHA1, null);
        this.unselectedApp = app;
        this.contextMenuItem = app;
    }

    /* JADX INFO: compiled from: AppsListAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010¨\u0006\u001d"}, d2 = {"Ltech/ula/library/ui/AppsListAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "row", "Landroid/view/View;", "(Landroid/view/View;)V", "appDetails", "Landroidx/constraintlayout/widget/ConstraintLayout;", "getAppDetails", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "setAppDetails", "(Landroidx/constraintlayout/widget/ConstraintLayout;)V", "appName", "Landroid/widget/TextView;", "getAppName", "()Landroid/widget/TextView;", "setAppName", "(Landroid/widget/TextView;)V", "imageView", "Landroid/widget/ImageView;", "getImageView", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "separator", "getSeparator", "setSeparator", "separatorText", "getSeparatorText", "setSeparatorText", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private ConstraintLayout appDetails;
        private TextView appName;
        private ImageView imageView;
        private ConstraintLayout separator;
        private TextView separatorText;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View row) {
            super(row);
            Intrinsics.checkNotNullParameter(row, "row");
            this.separator = (ConstraintLayout) row.findViewById(R.id.app_list_separator);
            this.separatorText = (TextView) row.findViewById(R.id.list_item_separator_text);
            this.appDetails = (ConstraintLayout) row.findViewById(R.id.layout_app_details);
            this.imageView = (ImageView) row.findViewById(R.id.apps_icon);
            this.appName = (TextView) row.findViewById(R.id.apps_name);
        }

        public final ConstraintLayout getSeparator() {
            return this.separator;
        }

        public final void setSeparator(ConstraintLayout constraintLayout) {
            this.separator = constraintLayout;
        }

        public final TextView getSeparatorText() {
            return this.separatorText;
        }

        public final void setSeparatorText(TextView textView) {
            this.separatorText = textView;
        }

        public final ConstraintLayout getAppDetails() {
            return this.appDetails;
        }

        public final void setAppDetails(ConstraintLayout constraintLayout) {
            this.appDetails = constraintLayout;
        }

        public final ImageView getImageView() {
            return this.imageView;
        }

        public final void setImageView(ImageView imageView) {
            this.imageView = imageView;
        }

        public final TextView getAppName() {
            return this.appName;
        }

        public final void setAppName(TextView textView) {
            this.appName = textView;
        }
    }

    public final App getContextMenuItem() {
        return this.contextMenuItem;
    }

    public final void setContextMenuItem(App app) {
        Intrinsics.checkNotNullParameter(app, "<set-?>");
        this.contextMenuItem = app;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_app, parent, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
        return new ViewHolder(viewInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int position) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        App app = this.apps.get(position);
        setSeparator(app, position, viewHolder);
        setItemDetails(app, viewHolder);
        setAppActivity(app, viewHolder);
        setItemListeners(app, viewHolder);
        setItemAnimation(app, position, viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.apps.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.clearAnimation();
    }

    public final void updateApps(List<App> newApps) {
        Intrinsics.checkNotNullParameter(newApps, "newApps");
        List<App> list = newApps;
        Iterator it = CollectionsKt.minus((Iterable) this.apps, (Iterable) list).iterator();
        while (it.hasNext()) {
            removeAppFromView((App) it.next());
        }
        Iterator it2 = CollectionsKt.minus((Iterable) list, (Iterable) this.apps).iterator();
        while (it2.hasNext()) {
            insertAppIntoView((App) it2.next());
        }
    }

    public final void updateActiveApps(List<App> newActiveApps) {
        Intrinsics.checkNotNullParameter(newActiveApps, "newActiveApps");
        Iterator<App> it = getActiveAppsDiff(newActiveApps).iterator();
        while (it.hasNext()) {
            notifyItemChanged(this.apps.indexOf(it.next()));
        }
        this.activeApps.clear();
        this.activeApps.addAll(newActiveApps);
    }

    private final void setSeparator(App app, int position, ViewHolder viewHolder) {
        if (position > 0 && Intrinsics.areEqual(this.apps.get(position - 1).getCategory(), app.getCategory())) {
            ConstraintLayout separator = viewHolder.getSeparator();
            if (separator == null) {
                return;
            }
            separator.setVisibility(8);
            return;
        }
        ConstraintLayout separator2 = viewHolder.getSeparator();
        if (separator2 == null) {
            return;
        }
        separator2.setVisibility(0);
    }

    private final void setItemDetails(App app, ViewHolder viewHolder) {
        String path = this.activity.getFilesDir().getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        Resources resources = this.activity.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        AppDetails appDetails = new AppDetails(path, resources);
        TextView appName = viewHolder.getAppName();
        if (appName != null) {
            appName.setText(StringsKt.capitalize(app.getName()));
        }
        TextView separatorText = viewHolder.getSeparatorText();
        if (separatorText != null) {
            separatorText.setText(StringsKt.capitalize(app.getCategory()));
        }
        ImageView imageView = viewHolder.getImageView();
        if (imageView != null) {
            imageView.setImageURI(appDetails.findIconUri(app.getName()));
        }
    }

    private final void setAppActivity(App app, ViewHolder viewHolder) {
        int i;
        if (this.activeApps.contains(app)) {
            i = R.color.colorAccent;
        } else {
            i = R.color.colorPrimaryDark;
        }
        ConstraintLayout appDetails = viewHolder.getAppDetails();
        if (appDetails != null) {
            appDetails.setBackgroundResource(i);
        }
    }

    private final void setItemListeners(final App app, ViewHolder viewHolder) {
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.AppsListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AppsListAdapter.setItemListeners$lambda$0(this.f$0, app, view);
            }
        });
        viewHolder.itemView.setOnCreateContextMenuListener(new View.OnCreateContextMenuListener() { // from class: tech.ula.library.ui.AppsListAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnCreateContextMenuListener
            public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
                AppsListAdapter.setItemListeners$lambda$1(this.f$0, app, contextMenu, view, contextMenuInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setItemListeners$lambda$0(AppsListAdapter this$0, App app, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(app, "$app");
        this$0.clickHandler.onClick(app);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setItemListeners$lambda$1(AppsListAdapter this$0, App app, ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(app, "$app");
        this$0.contextMenuItem = app;
        AppsClickHandler appsClickHandler = this$0.clickHandler;
        Intrinsics.checkNotNull(contextMenu);
        appsClickHandler.createContextMenu(contextMenu);
    }

    private final void setItemAnimation(App app, int position, ViewHolder viewHolder) {
        if (hasBeenAnimated(app)) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.activity, R.anim.item_animation_from_right);
        animationLoadAnimation.setStartOffset(((long) position) * 5);
        viewHolder.itemView.setAnimation(animationLoadAnimation);
        displayedAnimation(app);
    }

    private final void insertAppIntoView(App app) {
        Activity activity = this.activity;
        SharedPreferences sharedPreferences = activity.getSharedPreferences(activity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        if (sharedPreferences.getBoolean("pref_hide_distributions", false) && Intrinsics.areEqual(app.getCategory(), this.firstDisplayCategory)) {
            return;
        }
        int i = -CollectionsKt.binarySearch$default(this.apps, app, ComparisonsKt.compareBy(new Function1<App, Comparable<?>>() { // from class: tech.ula.library.ui.AppsListAdapter$insertAppIntoView$foundIndex$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Comparable<?> invoke(App it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!Intrinsics.areEqual(it.getCategory(), this.this$0.firstDisplayCategory));
            }
        }, new Function1<App, Comparable<?>>() { // from class: tech.ula.library.ui.AppsListAdapter$insertAppIntoView$foundIndex$2
            @Override // kotlin.jvm.functions.Function1
            public final Comparable<?> invoke(App it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getCategory();
            }
        }, new Function1<App, Comparable<?>>() { // from class: tech.ula.library.ui.AppsListAdapter$insertAppIntoView$foundIndex$3
            @Override // kotlin.jvm.functions.Function1
            public final Comparable<?> invoke(App it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getName();
            }
        }), 0, 0, 12, null);
        int i2 = i - 1;
        this.apps.add(i2, app);
        notifyItemInserted(i2);
        notifyItemChanged(i);
    }

    private final void removeAppFromView(App app) {
        int iIndexOf = this.apps.indexOf(app);
        if (iIndexOf != -1) {
            this.apps.remove(iIndexOf);
            notifyItemRemoved(iIndexOf);
        }
    }

    private final List<App> getActiveAppsDiff(List<App> newActiveApps) {
        List<App> list = newActiveApps;
        List<App> listMinus = CollectionsKt.minus((Iterable) list, (Iterable) this.activeApps);
        return !listMinus.isEmpty() ? listMinus : CollectionsKt.minus((Iterable) this.activeApps, (Iterable) list);
    }

    private final boolean hasBeenAnimated(App app) {
        return this.activity.getSharedPreferences("apps", 0).getBoolean(app.getName() + "HasBeenAnimated", false);
    }

    private final void displayedAnimation(App app) {
        SharedPreferences.Editor editorEdit = this.activity.getSharedPreferences("apps", 0).edit();
        editorEdit.putBoolean(app.getName() + "HasBeenAnimated", true);
        editorEdit.apply();
    }
}
