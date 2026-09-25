package com.ksmaze.android.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.ListPreference;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes2.dex */
public class ListPreferenceMultiSelect extends ListPreference {
    private static final String SEPARATOR = " , ";
    private boolean[] mClickedDialogEntryIndices;

    public static String[] parseStoredValue(CharSequence charSequence) {
        if (charSequence == null || "".equals(charSequence)) {
            return null;
        }
        return ((String) charSequence).split(SEPARATOR);
    }

    public ListPreferenceMultiSelect(Context context) {
        this(context, null);
    }

    public ListPreferenceMultiSelect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mClickedDialogEntryIndices = new boolean[getEntries().length];
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        CharSequence[] entryValues = getEntryValues();
        if (!z || entryValues == null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < entryValues.length; i++) {
            if (this.mClickedDialogEntryIndices[i]) {
                stringBuffer.append(entryValues[i]).append(SEPARATOR);
            }
        }
        if (callChangeListener(stringBuffer)) {
            String string = stringBuffer.toString();
            if (string.length() > 0) {
                string = string.substring(0, string.length() - SEPARATOR.length());
            }
            setValue(string);
        }
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        CharSequence[] entries = getEntries();
        CharSequence[] entryValues = getEntryValues();
        if (entries == null || entryValues == null || entries.length != entryValues.length) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array which are both the same length");
        }
        restoreCheckedEntries();
        builder.setMultiChoiceItems(entries, this.mClickedDialogEntryIndices, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.ksmaze.android.preference.ListPreferenceMultiSelect.1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialogInterface, int i, boolean z) {
                ListPreferenceMultiSelect.this.mClickedDialogEntryIndices[i] = z;
            }
        });
    }

    private void restoreCheckedEntries() {
        CharSequence[] entryValues = getEntryValues();
        String[] storedValue = parseStoredValue(getValue());
        if (storedValue != null) {
            for (String str : storedValue) {
                String strTrim = str.trim();
                for (int i = 0; i < entryValues.length; i++) {
                    if (entryValues[i].equals(strTrim)) {
                        this.mClickedDialogEntryIndices[i] = true;
                        break;
                    }
                }
            }
        }
    }

    @Override // android.preference.ListPreference
    public void setEntries(CharSequence[] charSequenceArr) {
        super.setEntries(charSequenceArr);
        this.mClickedDialogEntryIndices = new boolean[charSequenceArr.length];
    }
}
