package tech.ula.library.utils;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import tech.ula.library.R;

/* JADX INFO: compiled from: UserPrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class ContributionPrompter$openContributionView$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ContributionPrompter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContributionPrompter$openContributionView$1(ContributionPrompter contributionPrompter) {
        super(0);
        this.this$0 = contributionPrompter;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        final View viewInflate = this.this$0.getActivity().getLayoutInflater().inflate(R.layout.dia_contribution, (ViewGroup) null);
        final SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.amountSeekBar);
        final TextView textView = (TextView) viewInflate.findViewById(R.id.chosenAmountTextView);
        Button button = (Button) viewInflate.findViewById(R.id.processButton);
        final RadioButton radioButton = (RadioButton) viewInflate.findViewById(R.id.oneTimeRadioButton);
        final RadioButton radioButton2 = (RadioButton) viewInflate.findViewById(R.id.yearlyRadioButton);
        final RadioButton radioButton3 = (RadioButton) viewInflate.findViewById(R.id.monthlyRadioButton);
        radioButton2.setEnabled(this.this$0.subscriptionSupported);
        radioButton3.setEnabled(this.this$0.subscriptionSupported);
        if (seekBar != null) {
            final ContributionPrompter contributionPrompter = this.this$0;
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: tech.ula.library.utils.ContributionPrompter$openContributionView$1.1
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(SeekBar seekBar2) {
                    Intrinsics.checkNotNullParameter(seekBar2, "seekBar");
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(SeekBar seekBar2) {
                    Intrinsics.checkNotNullParameter(seekBar2, "seekBar");
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(SeekBar seekBar2, int progress, boolean fromUser) {
                    Intrinsics.checkNotNullParameter(seekBar2, "seekBar");
                    if (progress == 0) {
                        textView.setText("$1 USD");
                        return;
                    }
                    if (progress == 1) {
                        textView.setText("$5 USD");
                        return;
                    }
                    if (progress == 2) {
                        textView.setText("$10 USD");
                    } else if (progress == 3) {
                        textView.setText("$20 USD");
                    } else {
                        textView.setText(contributionPrompter.getActivity().getString(R.string.contribution_amount_invalid));
                    }
                }
            });
        }
        final ContributionPrompter contributionPrompter2 = this.this$0;
        button.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.utils.ContributionPrompter$openContributionView$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContributionPrompter$openContributionView$1.invoke$lambda$0(seekBar, radioButton, radioButton2, radioButton3, contributionPrompter2, viewInflate, view);
            }
        });
        ViewGroup savedViewGroup = this.this$0.getSavedViewGroup();
        Intrinsics.checkNotNull(savedViewGroup);
        savedViewGroup.addView(viewInflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(SeekBar seekBar, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, ContributionPrompter this$0, View view, View view2) {
        String strConcat;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int progress = seekBar.getProgress();
        if (progress == 0) {
            strConcat = "1us";
        } else if (progress == 1) {
            strConcat = "5us";
        } else if (progress == 2) {
            strConcat = "10us";
        } else if (progress == 3) {
            strConcat = "20us";
        } else {
            strConcat = "invalid";
        }
        if (radioButton.isChecked()) {
            strConcat = strConcat.concat("_onetime");
        } else if (radioButton2.isChecked()) {
            strConcat = strConcat.concat("_yearly");
        } else if (radioButton3.isChecked()) {
            strConcat = strConcat.concat("_monthly");
        }
        this$0.getActivity().getBillingManager().startPurchaseFlow(strConcat);
        ViewGroup savedViewGroup = this$0.getSavedViewGroup();
        Intrinsics.checkNotNull(savedViewGroup);
        savedViewGroup.removeView(view);
    }
}
