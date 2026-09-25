package com.iiordanov.bVNC.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.iiordanov.bVNC.ConnectionBean;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.MostRecentBean;
import com.iiordanov.bVNC.Utils;
import com.undatech.remoteClientUi.R;
import net.sqlcipher.database.SQLiteDatabase;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class IntroTextDialog extends Dialog {
    static IntroTextDialog dialog;
    private Database database;
    private boolean donate;
    private PackageInfo packageInfo;

    public static void showIntroTextIfNecessary(Activity activity, Database database, boolean z) {
        try {
            PackageInfo packageInfo = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0);
            MostRecentBean mostRecent = ConnectionBean.getMostRecent(database.getReadableDatabase());
            database.close();
            if (dialog == null && z) {
                if (mostRecent == null || mostRecent.getShowSplashVersion() != packageInfo.versionCode) {
                    IntroTextDialog introTextDialog = new IntroTextDialog(activity, packageInfo, database);
                    dialog = introTextDialog;
                    introTextDialog.show();
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    private IntroTextDialog(Activity activity, PackageInfo packageInfo, Database database) {
        super(activity);
        this.donate = false;
        setOwnerActivity(activity);
        this.packageInfo = packageInfo;
        this.database = database;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String packageName = getContext().getPackageName();
        if (packageName.contains("free")) {
            this.donate = true;
        }
        setContentView(R.layout.intro_dialog);
        getWindow().setLayout(-1, -1);
        String packageName2 = getContext().getPackageName();
        String string = getContext().getResources().getString(R.string.intro_title);
        if (Utils.isRdp(packageName2)) {
            string = getContext().getResources().getString(R.string.rdp_intro_title);
        } else if (Utils.isSpice(packageName2)) {
            string = getContext().getResources().getString(R.string.spice_intro_title);
        }
        StringBuilder sb = new StringBuilder(string);
        setTitle(sb);
        sb.delete(0, sb.length());
        if (packageName.contains("SPICE")) {
            sb.append(getContext().getResources().getString(R.string.ad_donate_text_spice));
            sb.append("<br>");
            sb.append("<br>");
        } else if (packageName.contains("RDP")) {
            sb.append(getContext().getResources().getString(R.string.ad_donate_text_rdp));
            sb.append("<br>");
            sb.append("<br>");
        }
        sb.append(getContext().getResources().getString(R.string.ad_donate_text0));
        sb.append("<br>");
        sb.append("<br>");
        String donationPackageName = Utils.getDonationPackageName(getContext());
        if (this.donate) {
            sb.append("<a href=\"market://DETAILS?id=" + donationPackageName + "\">" + getContext().getResources().getString(R.string.ad_donate_text1) + "</a>");
            sb.append("<br>");
            sb.append("<br>");
            sb.append(getContext().getResources().getString(R.string.ad_donate_text2));
            sb.append("<br>");
            sb.append("<br>");
            sb.append(getContext().getResources().getString(R.string.ad_donate_text3));
            sb.append(" <a href=\"market://details?id=com.iiordanov.bVNC\">VNC</a>");
            sb.append(", ");
            sb.append("<a href=\"market://details?id=com.iiordanov.aRDP\">RDP</a>");
            sb.append(", ");
            sb.append("<a href=\"market://details?id=com.iiordanov.aSPICE\">SPICE</a>");
            sb.append(", ");
            sb.append("<a href=\"market://details?id=com.undatech.opaque\">oVirt/RHEV</a>");
            sb.append("<br>");
            sb.append("<br>");
        }
        sb.append(getContext().getResources().getString(R.string.intro_header));
        if (Utils.isVnc(packageName2)) {
            sb.append(getContext().getResources().getString(R.string.intro_text));
        } else if (Utils.isRdp(packageName2)) {
            sb.append(getContext().getResources().getString(R.string.rdp_intro_text));
        } else if (Utils.isSpice(packageName2)) {
            sb.append(getContext().getResources().getString(R.string.spice_intro_text));
        }
        sb.append(StringUtils.LF);
        sb.append(getContext().getResources().getString(R.string.intro_version_text));
        TextView textView = (TextView) findViewById(R.id.textIntroText);
        textView.setText(Html.fromHtml(sb.toString()));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        ((Button) findViewById(R.id.buttonCloseIntro)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.IntroTextDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntroTextDialog.this.showAgain(true);
            }
        });
        Button button = (Button) findViewById(R.id.buttonCloseIntroDontShow);
        if (this.donate) {
            button.setVisibility(8);
        } else {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.IntroTextDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroTextDialog.this.showAgain(false);
                }
            });
        }
    }

    @Override // android.app.Dialog
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getOwnerActivity().getMenuInflater().inflate(R.menu.intro_dialog_menu, menu);
        menu.findItem(R.id.itemClose).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.iiordanov.bVNC.dialogs.IntroTextDialog.3
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                IntroTextDialog.this.showAgain(true);
                return true;
            }
        });
        menu.findItem(R.id.itemDontShowAgain).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.iiordanov.bVNC.dialogs.IntroTextDialog.4
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                IntroTextDialog.this.showAgain(false);
                return true;
            }
        });
        return true;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        showAgain(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAgain(boolean z) {
        SQLiteDatabase writableDatabase = this.database.getWritableDatabase();
        MostRecentBean mostRecent = ConnectionBean.getMostRecent(writableDatabase);
        if (mostRecent != null) {
            mostRecent.setShowSplashVersion(!z ? this.packageInfo.versionCode : -1);
            mostRecent.Gen_update(writableDatabase);
        }
        this.database.close();
        dismiss();
        dialog = null;
    }
}
