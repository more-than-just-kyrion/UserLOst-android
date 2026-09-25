package com.iiordanov.pubkeygenerator;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;

/* JADX INFO: loaded from: classes2.dex */
public class VolumePreference extends DialogPreference implements SeekBar.OnSeekBarChangeListener {
    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public VolumePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setupLayout(context, attributeSet);
    }

    public VolumePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setupLayout(context, attributeSet);
    }

    private void setupLayout(Context context, AttributeSet attributeSet) {
        setPersistent(true);
    }

    @Override // android.preference.DialogPreference
    protected View onCreateDialogView() {
        SeekBar seekBar = new SeekBar(getContext());
        seekBar.setMax(100);
        seekBar.setProgress((int) (getPersistedFloat(0.25f) * 100.0f));
        seekBar.setPadding(10, 10, 10, 10);
        seekBar.setOnSeekBarChangeListener(this);
        return seekBar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        persistFloat(i / 100.0f);
    }
}
