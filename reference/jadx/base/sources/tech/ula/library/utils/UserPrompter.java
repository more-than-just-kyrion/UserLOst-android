package tech.ula.library.utils;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.MainActivity;
import tech.ula.library.R;

/* JADX INFO: compiled from: UserPrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\bf\u0018\u00002\u00020\u0001J\u0010\u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020$H\u0016J\b\u00103\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000eR\u0018\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0012\u0010\u0013\u001a\u00020\u0014X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000eR\u0018\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\nR\u0014\u0010\u001d\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u000eR\u0012\u0010\u001f\u001a\u00020 X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u001a\u0010#\u001a\u0004\u0018\u00010$X¦\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u000eR\u0014\u0010+\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b,\u0010\u000eR\u0018\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b.\u0010\nR\u0014\u0010/\u001a\u00020\f8gX¦\u0004¢\u0006\u0006\u001a\u0004\b0\u0010\u000e¨\u00064"}, d2 = {"Ltech/ula/library/utils/UserPrompter;", "", "altInitialPosFlow", "", "getAltInitialPosFlow", "()Z", "finishedAction", "Lkotlin/Function0;", "", "getFinishedAction", "()Lkotlin/jvm/functions/Function0;", "initialNegBtnText", "", "getInitialNegBtnText", "()I", "initialPosBtnText", "getInitialPosBtnText", "initialPositiveBtnAction", "getInitialPositiveBtnAction", "initialPrompt", "", "getInitialPrompt", "()Ljava/lang/String;", "primaryNegBtnText", "getPrimaryNegBtnText", "primaryPosBtnText", "getPrimaryPosBtnText", "primaryPositiveBtnAction", "getPrimaryPositiveBtnAction", "primaryRequest", "getPrimaryRequest", "savedActivity", "Ltech/ula/library/MainActivity;", "getSavedActivity", "()Ltech/ula/library/MainActivity;", "savedViewGroup", "Landroid/view/ViewGroup;", "getSavedViewGroup", "()Landroid/view/ViewGroup;", "setSavedViewGroup", "(Landroid/view/ViewGroup;)V", "secondaryNegBtnText", "getSecondaryNegBtnText", "secondaryPosBtnText", "getSecondaryPosBtnText", "secondaryPositiveBtnAction", "getSecondaryPositiveBtnAction", "secondaryRequest", "getSecondaryRequest", "showView", "viewGroup", "viewShouldBeShown", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface UserPrompter {
    boolean getAltInitialPosFlow();

    Function0<Unit> getFinishedAction();

    int getInitialNegBtnText();

    int getInitialPosBtnText();

    Function0<Unit> getInitialPositiveBtnAction();

    String getInitialPrompt();

    int getPrimaryNegBtnText();

    int getPrimaryPosBtnText();

    Function0<Unit> getPrimaryPositiveBtnAction();

    int getPrimaryRequest();

    /* JADX INFO: renamed from: getSavedActivity */
    MainActivity getActivity();

    ViewGroup getSavedViewGroup();

    int getSecondaryNegBtnText();

    int getSecondaryPosBtnText();

    Function0<Unit> getSecondaryPositiveBtnAction();

    int getSecondaryRequest();

    void setSavedViewGroup(ViewGroup viewGroup);

    void showView(ViewGroup viewGroup);

    boolean viewShouldBeShown();

    /* JADX INFO: compiled from: UserPrompter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void showView(final UserPrompter userPrompter, ViewGroup viewGroup) {
            Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
            userPrompter.setSavedViewGroup(viewGroup);
            final View viewInflate = userPrompter.getActivity().getLayoutInflater().inflate(R.layout.layout_user_prompt, (ViewGroup) null);
            final TextView textView = (TextView) viewInflate.findViewById(R.id.text_prompt);
            final Button button = (Button) viewInflate.findViewById(R.id.btn_positive_response);
            final Button button2 = (Button) viewInflate.findViewById(R.id.btn_negative_response);
            textView.setText(userPrompter.getInitialPrompt());
            button.setText(userPrompter.getActivity().getString(userPrompter.getInitialPosBtnText()));
            button.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.UserPrompter$DefaultImpls$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserPrompter.DefaultImpls.showView$lambda$2(userPrompter, viewInflate, textView, button, button2, view);
                }
            });
            button2.setText(userPrompter.getActivity().getString(userPrompter.getInitialNegBtnText()));
            button2.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.UserPrompter$DefaultImpls$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserPrompter.DefaultImpls.showView$lambda$5(textView, userPrompter, button, button2, viewInflate, view);
                }
            });
            ViewGroup savedViewGroup = userPrompter.getSavedViewGroup();
            Intrinsics.checkNotNull(savedViewGroup);
            savedViewGroup.addView(viewInflate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void showView$lambda$2(final UserPrompter this$0, final View view, TextView textView, Button button, Button button2, View view2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (this$0.getAltInitialPosFlow()) {
                this$0.getInitialPositiveBtnAction().invoke();
                ViewGroup savedViewGroup = this$0.getSavedViewGroup();
                Intrinsics.checkNotNull(savedViewGroup);
                savedViewGroup.removeView(view);
                return;
            }
            textView.setText(this$0.getActivity().getString(this$0.getPrimaryRequest()));
            button.setText(this$0.getActivity().getString(this$0.getPrimaryPosBtnText()));
            button.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.UserPrompter$DefaultImpls$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    UserPrompter.DefaultImpls.showView$lambda$2$lambda$0(this$0, view, view3);
                }
            });
            button2.setText(this$0.getActivity().getString(this$0.getPrimaryNegBtnText()));
            button2.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.UserPrompter$DefaultImpls$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    UserPrompter.DefaultImpls.showView$lambda$2$lambda$1(this$0, view, view3);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void showView$lambda$2$lambda$0(UserPrompter this$0, View view, View view2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getPrimaryPositiveBtnAction().invoke();
            this$0.getFinishedAction().invoke();
            ViewGroup savedViewGroup = this$0.getSavedViewGroup();
            Intrinsics.checkNotNull(savedViewGroup);
            savedViewGroup.removeView(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void showView$lambda$2$lambda$1(UserPrompter this$0, View view, View view2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getFinishedAction().invoke();
            ViewGroup savedViewGroup = this$0.getSavedViewGroup();
            Intrinsics.checkNotNull(savedViewGroup);
            savedViewGroup.removeView(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void showView$lambda$5(TextView textView, final UserPrompter this$0, Button button, Button button2, final View view, View view2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            textView.setText(this$0.getActivity().getString(this$0.getSecondaryRequest()));
            button.setText(this$0.getActivity().getString(this$0.getSecondaryPosBtnText()));
            button.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.UserPrompter$DefaultImpls$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    UserPrompter.DefaultImpls.showView$lambda$5$lambda$3(this$0, view, view3);
                }
            });
            button2.setText(this$0.getActivity().getString(this$0.getSecondaryNegBtnText()));
            button2.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.UserPrompter$DefaultImpls$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    UserPrompter.DefaultImpls.showView$lambda$5$lambda$4(this$0, view, view3);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void showView$lambda$5$lambda$3(UserPrompter this$0, View view, View view2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getSecondaryPositiveBtnAction().invoke();
            this$0.getFinishedAction().invoke();
            ViewGroup savedViewGroup = this$0.getSavedViewGroup();
            Intrinsics.checkNotNull(savedViewGroup);
            savedViewGroup.removeView(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void showView$lambda$5$lambda$4(UserPrompter this$0, View view, View view2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getFinishedAction().invoke();
            ViewGroup savedViewGroup = this$0.getSavedViewGroup();
            Intrinsics.checkNotNull(savedViewGroup);
            savedViewGroup.removeView(view);
        }
    }
}
