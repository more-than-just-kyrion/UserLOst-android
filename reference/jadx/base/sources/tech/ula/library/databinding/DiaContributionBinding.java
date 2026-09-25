package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DiaContributionBinding implements ViewBinding {
    public final SeekBar amountSeekBar;
    public final TextView amountTextView;
    public final TextView chosenAmountTextView;
    public final RadioGroup frequencyRadioGroup;
    public final TextView frequencyTextView;
    public final RadioButton monthlyRadioButton;
    public final RadioButton oneTimeRadioButton;
    public final Button processButton;
    private final LinearLayout rootView;
    public final RadioButton yearlyRadioButton;

    private DiaContributionBinding(LinearLayout rootView, SeekBar amountSeekBar, TextView amountTextView, TextView chosenAmountTextView, RadioGroup frequencyRadioGroup, TextView frequencyTextView, RadioButton monthlyRadioButton, RadioButton oneTimeRadioButton, Button processButton, RadioButton yearlyRadioButton) {
        this.rootView = rootView;
        this.amountSeekBar = amountSeekBar;
        this.amountTextView = amountTextView;
        this.chosenAmountTextView = chosenAmountTextView;
        this.frequencyRadioGroup = frequencyRadioGroup;
        this.frequencyTextView = frequencyTextView;
        this.monthlyRadioButton = monthlyRadioButton;
        this.oneTimeRadioButton = oneTimeRadioButton;
        this.processButton = processButton;
        this.yearlyRadioButton = yearlyRadioButton;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DiaContributionBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DiaContributionBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dia_contribution, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DiaContributionBinding bind(View rootView) {
        int i = R.id.amountSeekBar;
        SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, i);
        if (seekBar != null) {
            i = R.id.amountTextView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = R.id.chosenAmountTextView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView2 != null) {
                    i = R.id.frequencyRadioGroup;
                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                    if (radioGroup != null) {
                        i = R.id.frequencyTextView;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView3 != null) {
                            i = R.id.monthlyRadioButton;
                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                            if (radioButton != null) {
                                i = R.id.oneTimeRadioButton;
                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                if (radioButton2 != null) {
                                    i = R.id.processButton;
                                    Button button = (Button) ViewBindings.findChildViewById(rootView, i);
                                    if (button != null) {
                                        i = R.id.yearlyRadioButton;
                                        RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                        if (radioButton3 != null) {
                                            return new DiaContributionBinding((LinearLayout) rootView, seekBar, textView, textView2, radioGroup, textView3, radioButton, radioButton2, button, radioButton3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
