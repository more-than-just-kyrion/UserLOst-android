package com.iiordanov.pubkeygenerator;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.ClipboardManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import org.apache.http.protocol.HTTP;

/* JADX INFO: loaded from: classes2.dex */
public class GeneratePubkeyActivity extends Activity implements OnEntropyGatheredListener {
    static final int DEFAULT_BITS_DSA = 1024;
    static final int DEFAULT_BITS_RSA = 2048;
    static final int MAX_BITS_DSA = 1024;
    static final int MAX_BITS_RSA = 4096;
    static final int MIN_BITS_DSA = 512;
    static final int MIN_BITS_RSA = 768;
    public static final String TAG = "GeneratePubkeyActivity";
    private SeekBar bitsSlider;
    private EditText bitsText;
    ClipboardManager cm;
    private Button copy;
    private Button decrypt;
    private byte[] entropy;
    private Dialog entropyDialog;
    private EditText file_name;
    private Button generate;
    private Button importKey;
    private RadioGroup keyTypeGroup;
    private String passphrase;
    private EditText password1;
    private ProgressDialog progress;
    private String publicKeySSHFormat;
    private Button save;
    private Button share;
    private String sshPrivKey;
    private String sshPubKey;
    private LayoutInflater inflater = null;
    private String keyType = PubkeyDatabase.KEY_TYPE_RSA;
    private int minBits = MIN_BITS_RSA;
    private int bits = 2048;
    private boolean recovered = false;
    private KeyPair kp = null;
    private Handler handler = new Handler() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.10
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            GeneratePubkeyActivity.this.progress.setMessage(GeneratePubkeyActivity.this.getResources().getText(R.string.generated));
            GeneratePubkeyActivity.this.progress.dismiss();
            GeneratePubkeyActivity.this.finish();
        }
    };
    private final Runnable mKeyGen = new Runnable() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.11
        @Override // java.lang.Runnable
        public void run() {
            try {
                SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
                secureRandom.setSeed(GeneratePubkeyActivity.this.entropy);
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(GeneratePubkeyActivity.this.keyType);
                keyPairGenerator.initialize(GeneratePubkeyActivity.this.bits, secureRandom);
                GeneratePubkeyActivity.this.converToBase64AndSendIntent(keyPairGenerator.generateKeyPair());
            } catch (Exception e) {
                Log.e(GeneratePubkeyActivity.TAG, "Could not generate key pair");
                e.printStackTrace();
            }
            GeneratePubkeyActivity.this.handler.sendEmptyMessage(0);
        }
    };
    private final TextWatcher textChecker = new TextWatcher() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.12
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            GeneratePubkeyActivity.this.checkEntries();
        }
    };

    private int measureNumberOfSetBits(byte b) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            if ((b & 1) == 1) {
                i++;
            }
            b = (byte) (b >> 1);
        }
        return i;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.act_generatepubkey);
        this.cm = (ClipboardManager) getSystemService("clipboard");
        this.keyTypeGroup = (RadioGroup) findViewById(R.id.key_type);
        this.bitsText = (EditText) findViewById(R.id.bits);
        this.bitsSlider = (SeekBar) findViewById(R.id.bits_slider);
        this.file_name = (EditText) findViewById(R.id.file_name);
        this.password1 = (EditText) findViewById(R.id.password);
        this.generate = (Button) findViewById(R.id.generate);
        this.share = (Button) findViewById(R.id.share);
        this.decrypt = (Button) findViewById(R.id.decrypt);
        this.copy = (Button) findViewById(R.id.copy);
        this.save = (Button) findViewById(R.id.save);
        this.importKey = (Button) findViewById(R.id.importKey);
        this.inflater = LayoutInflater.from(this);
        this.password1.addTextChangedListener(this.textChecker);
        this.sshPrivKey = getIntent().getStringExtra("PrivateKey");
        this.passphrase = this.password1.getText().toString();
        String str = this.sshPrivKey;
        if (str != null && str.length() != 0) {
            decryptAndRecoverKey();
        } else {
            Toast.makeText(getBaseContext(), getString(R.string.key_not_generated_yet), 1).show();
        }
        this.keyTypeGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                if (i == R.id.rsa) {
                    GeneratePubkeyActivity.this.minBits = GeneratePubkeyActivity.MIN_BITS_RSA;
                    GeneratePubkeyActivity.this.bitsSlider.setEnabled(true);
                    GeneratePubkeyActivity.this.bitsSlider.setProgress(2048);
                    GeneratePubkeyActivity.this.bitsSlider.setMax(4096 - GeneratePubkeyActivity.this.minBits);
                    GeneratePubkeyActivity.this.bitsText.setText(String.valueOf(2048));
                    GeneratePubkeyActivity.this.bitsText.setEnabled(true);
                    GeneratePubkeyActivity.this.keyType = PubkeyDatabase.KEY_TYPE_RSA;
                    return;
                }
                if (i == R.id.dsa) {
                    GeneratePubkeyActivity.this.minBits = 512;
                    GeneratePubkeyActivity.this.bitsSlider.setEnabled(true);
                    GeneratePubkeyActivity.this.bitsSlider.setProgress(1024);
                    GeneratePubkeyActivity.this.bitsSlider.setMax(1024 - GeneratePubkeyActivity.this.minBits);
                    GeneratePubkeyActivity.this.bitsText.setText(String.valueOf(1024));
                    GeneratePubkeyActivity.this.bitsText.setEnabled(true);
                    GeneratePubkeyActivity.this.keyType = PubkeyDatabase.KEY_TYPE_DSA;
                }
            }
        });
        this.bitsSlider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                int i2 = i % 8;
                if (i2 > 0) {
                    i += 8 - i2;
                }
                GeneratePubkeyActivity generatePubkeyActivity = GeneratePubkeyActivity.this;
                generatePubkeyActivity.bits = generatePubkeyActivity.minBits + i;
                GeneratePubkeyActivity.this.bitsText.setText(String.valueOf(GeneratePubkeyActivity.this.bits));
            }
        });
        this.bitsText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                try {
                    GeneratePubkeyActivity generatePubkeyActivity = GeneratePubkeyActivity.this;
                    generatePubkeyActivity.bits = Integer.parseInt(generatePubkeyActivity.bitsText.getText().toString());
                    if (GeneratePubkeyActivity.this.bits < GeneratePubkeyActivity.this.minBits) {
                        GeneratePubkeyActivity generatePubkeyActivity2 = GeneratePubkeyActivity.this;
                        generatePubkeyActivity2.bits = generatePubkeyActivity2.minBits;
                        GeneratePubkeyActivity.this.bitsText.setText(String.valueOf(GeneratePubkeyActivity.this.bits));
                    }
                } catch (NumberFormatException unused) {
                    GeneratePubkeyActivity.this.bits = 2048;
                    GeneratePubkeyActivity.this.bitsText.setText(String.valueOf(GeneratePubkeyActivity.this.bits));
                }
                GeneratePubkeyActivity.this.bitsSlider.setProgress(GeneratePubkeyActivity.this.bits - GeneratePubkeyActivity.this.minBits);
            }
        });
        this.generate.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GeneratePubkeyActivity.this.hideSoftKeyboard(view);
                GeneratePubkeyActivity.this.startEntropyGather();
            }
        });
        this.decrypt.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GeneratePubkeyActivity.this.hideSoftKeyboard(view);
                GeneratePubkeyActivity.this.decryptAndRecoverKey();
            }
        });
        this.share.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GeneratePubkeyActivity.this.hideSoftKeyboard(view);
                String str2 = Build.MODEL;
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType(HTTP.PLAIN_TEXT_TYPE);
                intent.putExtra("android.intent.extra.TEXT", GeneratePubkeyActivity.this.publicKeySSHFormat);
                GeneratePubkeyActivity.this.startActivity(Intent.createChooser(intent, "Share Pubkey"));
            }
        });
        this.copy.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GeneratePubkeyActivity.this.hideSoftKeyboard(view);
                GeneratePubkeyActivity.this.cm.setText(GeneratePubkeyActivity.this.publicKeySSHFormat);
                Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.copied_to_clipboard), 0).show();
            }
        });
        this.save.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GeneratePubkeyActivity.this.hideSoftKeyboard(view);
                String string = GeneratePubkeyActivity.this.file_name.getText().toString();
                if (string.length() == 0) {
                    Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.enter_filename), 0).show();
                    return;
                }
                File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                File file = new File(externalStoragePublicDirectory, string);
                String str2 = externalStoragePublicDirectory.getName() + "/" + string;
                try {
                    externalStoragePublicDirectory.mkdirs();
                    file.createNewFile();
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
                    outputStreamWriter.append((CharSequence) GeneratePubkeyActivity.this.publicKeySSHFormat);
                    outputStreamWriter.close();
                    fileOutputStream.close();
                    Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.success_writing_file) + str2, 1).show();
                } catch (IOException e) {
                    Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.error_writing_file) + str2, 1).show();
                    Log.e(GeneratePubkeyActivity.TAG, "Failed to output file " + str2);
                    e.printStackTrace();
                }
            }
        });
        this.importKey.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.pubkeygenerator.GeneratePubkeyActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GeneratePubkeyActivity.this.hideSoftKeyboard(view);
                String string = GeneratePubkeyActivity.this.file_name.getText().toString();
                if (string.length() == 0) {
                    Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.error_importing), 1).show();
                    return;
                }
                String str2 = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + "/" + string;
                try {
                    String file = GeneratePubkeyActivity.readFile(str2);
                    try {
                        GeneratePubkeyActivity generatePubkeyActivity = GeneratePubkeyActivity.this;
                        generatePubkeyActivity.passphrase = generatePubkeyActivity.password1.getText().toString();
                        GeneratePubkeyActivity generatePubkeyActivity2 = GeneratePubkeyActivity.this;
                        GeneratePubkeyActivity.this.converToBase64AndSendIntent(PubkeyUtils.tryImportingPemAndPkcs8(generatePubkeyActivity2, file, generatePubkeyActivity2.passphrase));
                        Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.success_importing), 1).show();
                        GeneratePubkeyActivity.this.finish();
                    } catch (Exception e) {
                        e.printStackTrace();
                        Log.e(GeneratePubkeyActivity.TAG, "Failed to decode key.");
                        Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), e.getLocalizedMessage(), 1).show();
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                    Log.e(GeneratePubkeyActivity.TAG, "Failed to read key from file: " + str2);
                    Toast.makeText(GeneratePubkeyActivity.this.getBaseContext(), GeneratePubkeyActivity.this.getString(R.string.error_reading_file) + str2, 1).show();
                }
            }
        });
    }

    public void hideSoftKeyboard(View view) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public boolean decryptAndRecoverKey() {
        boolean z;
        String string = this.password1.getText().toString();
        this.passphrase = string;
        if (this.recovered) {
            z = true;
        } else {
            KeyPair keyPairDecryptAndRecoverKeyPair = PubkeyUtils.decryptAndRecoverKeyPair(this.sshPrivKey, string);
            this.kp = keyPairDecryptAndRecoverKeyPair;
            z = false;
            if (keyPairDecryptAndRecoverKeyPair != null) {
                try {
                    this.publicKeySSHFormat = PubkeyUtils.convertToOpenSSHFormat(keyPairDecryptAndRecoverKeyPair.getPublic(), null);
                    z = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (z) {
                this.recovered = true;
            }
        }
        if (this.recovered) {
            Toast.makeText(getBaseContext(), getString(R.string.success_decrypting), 1).show();
        } else {
            Toast.makeText(getBaseContext(), getString(R.string.error_decrypting_key), 1).show();
        }
        checkEntries();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkEntries() {
        if (this.recovered) {
            this.share.setEnabled(true);
            this.copy.setEnabled(true);
            this.save.setEnabled(true);
            this.decrypt.setEnabled(false);
            return;
        }
        this.share.setEnabled(false);
        this.copy.setEnabled(false);
        this.save.setEnabled(false);
        if (this.sshPrivKey.length() != 0) {
            this.decrypt.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startEntropyGather() {
        View viewInflate = this.inflater.inflate(R.layout.dia_gatherentropy, (ViewGroup) null, false);
        ((EntropyView) viewInflate.findViewById(R.id.entropy)).addOnEntropyGatheredListener(this);
        EntropyDialog entropyDialog = new EntropyDialog(this, viewInflate);
        this.entropyDialog = entropyDialog;
        entropyDialog.show();
    }

    @Override // com.iiordanov.pubkeygenerator.OnEntropyGatheredListener
    public void onEntropyGathered(byte[] bArr) {
        if (bArr == null) {
            finish();
            return;
        }
        this.entropy = (byte[]) bArr.clone();
        int iMeasureNumberOfSetBits = 0;
        for (int i = 0; i < 20; i++) {
            iMeasureNumberOfSetBits += measureNumberOfSetBits(this.entropy[i]);
        }
        Log.d(TAG, "Entropy distribution=" + ((int) ((((double) iMeasureNumberOfSetBits) * 100.0d) / 160.0d)) + "%");
        Log.d(TAG, "entropy gathered; attemping to generate key...");
        startKeyGen();
    }

    private void startKeyGen() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.progress = progressDialog;
        progressDialog.setMessage(getResources().getText(R.string.generating));
        this.progress.setIndeterminate(true);
        this.progress.setCancelable(false);
        this.progress.show();
        Thread thread = new Thread(this.mKeyGen);
        thread.setName("KeyGen");
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String readFile(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        try {
            FileChannel channel = fileInputStream.getChannel();
            return Charset.defaultCharset().decode(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size())).toString();
        } finally {
            fileInputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void converToBase64AndSendIntent(KeyPair keyPair) throws Exception {
        PrivateKey privateKey = keyPair.getPrivate();
        PublicKey publicKey = keyPair.getPublic();
        String string = this.password1.getText().toString();
        Log.d(TAG, "private: " + PubkeyUtils.formatKey(privateKey));
        Log.d(TAG, "public: " + PubkeyUtils.formatKey(publicKey));
        this.sshPrivKey = Base64.encodeToString(PubkeyUtils.getEncodedPrivate(privateKey, string), 0);
        this.sshPubKey = Base64.encodeToString(PubkeyUtils.getEncodedPublic(publicKey), 0);
        Intent intent = new Intent();
        intent.putExtra("PrivateKey", this.sshPrivKey);
        intent.putExtra("PublicKey", this.sshPubKey);
        setResult(-1, intent);
    }
}
