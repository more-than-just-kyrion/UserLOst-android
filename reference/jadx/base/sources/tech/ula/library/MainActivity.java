package tech.ula.library;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.StatFs;
import android.speech.SpeechRecognizer;
import android.util.DisplayMetrics;
import android.view.DisplayCutout;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.navigation.ActivityKt;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.Navigation;
import androidx.navigation.ui.NavigationUI;
import com.freerdp.freerdpcore.services.HistoryDB;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.gson.Gson;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.Serializable;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.spongycastle.i18n.ErrorBundle;
import tech.ula.library.databinding.ActivityMainBinding;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.entities.DisplayPreferences;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Flavor;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.ServiceTypePreferences;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.remote.GithubApiClient;
import tech.ula.library.model.repositories.AssetRepository;
import tech.ula.library.model.repositories.DownloadMetadata;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.model.state.AppsStartupFsm;
import tech.ula.library.model.state.SessionStartupFsm;
import tech.ula.library.ui.AppsListFragment;
import tech.ula.library.ui.FilesystemListFragment;
import tech.ula.library.ui.InstallWizardFragment;
import tech.ula.library.ui.SessionListFragment;
import tech.ula.library.utils.AssetDownloader;
import tech.ula.library.utils.AssetFileClearer;
import tech.ula.library.utils.AvfCompatibility;
import tech.ula.library.utils.BillingManager;
import tech.ula.library.utils.BreadcrumbType;
import tech.ula.library.utils.BusyboxExecutor;
import tech.ula.library.utils.CollectionOptInPrompter;
import tech.ula.library.utils.ContributionPrompter;
import tech.ula.library.utils.CredentialValidationStatus;
import tech.ula.library.utils.CredentialValidator;
import tech.ula.library.utils.DownloadManagerWrapper;
import tech.ula.library.utils.ExtensionsKt;
import tech.ula.library.utils.FilesystemManager;
import tech.ula.library.utils.IllegalStateHandler;
import tech.ula.library.utils.NotificationConstructor;
import tech.ula.library.utils.PermissionHandler;
import tech.ula.library.utils.PreferenceGetter;
import tech.ula.library.utils.ProotDebugLogger;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.StorageCalculator;
import tech.ula.library.utils.UlaBreadcrumb;
import tech.ula.library.utils.UlaFiles;
import tech.ula.library.utils.UserFeedbackPrompter;
import tech.ula.library.utils.preferences.AppsPreferences;
import tech.ula.library.utils.preferences.AssetPreferences;
import tech.ula.library.viewmodel.ActiveSessionsMustBeDeactivated;
import tech.ula.library.viewmodel.AppDisplayPreferencesRequired;
import tech.ula.library.viewmodel.AppServiceTypePreferenceRequired;
import tech.ula.library.viewmodel.CanOnlyStartSingleSession;
import tech.ula.library.viewmodel.CheckingForAssetsUpdates;
import tech.ula.library.viewmodel.ClearingSupportFiles;
import tech.ula.library.viewmodel.CopyingDownloads;
import tech.ula.library.viewmodel.DownloadProgress;
import tech.ula.library.viewmodel.FetchingAssetLists;
import tech.ula.library.viewmodel.FilesystemCredentialsRequired;
import tech.ula.library.viewmodel.FilesystemFlavorRequired;
import tech.ula.library.viewmodel.IllegalState;
import tech.ula.library.viewmodel.LargeDownloadRequired;
import tech.ula.library.viewmodel.LowStorageAcknowledgementRequired;
import tech.ula.library.viewmodel.MainActivityViewModel;
import tech.ula.library.viewmodel.MainActivityViewModelFactory;
import tech.ula.library.viewmodel.ProgressBarOperationComplete;
import tech.ula.library.viewmodel.ProgressBarUpdateState;
import tech.ula.library.viewmodel.SessionCanBePrepared;
import tech.ula.library.viewmodel.SessionCanBeRestarted;
import tech.ula.library.viewmodel.SessionCanBeStarted;
import tech.ula.library.viewmodel.StartingSetup;
import tech.ula.library.viewmodel.State;
import tech.ula.library.viewmodel.UserContributionCheckRequired;
import tech.ula.library.viewmodel.UserFeedbackCheckRequired;
import tech.ula.library.viewmodel.UserInputRequiredState;
import tech.ula.library.viewmodel.UserPaymentRequired;
import tech.ula.library.viewmodel.VerifyingAvailableStorage;
import tech.ula.library.viewmodel.VerifyingFilesystem;
import tech.ula.library.viewmodel.WaitingForInput;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ª\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0014*\u0002%@\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010U\u001a\u00020<2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\nH\u0016J\b\u0010X\u001a\u00020<H\u0002J\u0010\u0010Y\u001a\u00020<2\u0006\u0010Z\u001a\u00020[H\u0002J\b\u0010\\\u001a\u00020<H\u0016J\u0010\u0010]\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\b\u0010`\u001a\u00020<H\u0002J\u0010\u0010a\u001a\u00020<2\u0006\u0010b\u001a\u00020*H\u0002J\b\u0010c\u001a\u00020<H\u0002J\u0016\u0010d\u001a\u00020<2\f\u0010e\u001a\b\u0012\u0004\u0012\u00020g0fH\u0002J\b\u0010h\u001a\u00020<H\u0002J\u0010\u0010i\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\b\u0010j\u001a\u00020<H\u0002J\b\u0010k\u001a\u00020<H\u0002J\u0010\u0010l\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\u0010\u0010m\u001a\u00020<2\u0006\u0010n\u001a\u00020oH\u0002J\n\u0010p\u001a\u0004\u0018\u00010\u0019H\u0002J\b\u0010q\u001a\u00020<H\u0002J\u000e\u0010r\u001a\u00020\u00192\u0006\u0010s\u001a\u00020*J\u0010\u0010t\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\b\u0010u\u001a\u00020<H\u0002J\b\u0010v\u001a\u00020<H\u0002J\b\u0010w\u001a\u00020<H\u0002J\u0010\u0010x\u001a\u00020<2\u0006\u0010y\u001a\u00020zH\u0002J\u0010\u0010{\u001a\u00020<2\u0006\u0010y\u001a\u00020|H\u0002J\b\u0010}\u001a\u00020<H\u0002J\b\u0010~\u001a\u00020<H\u0002J\u0011\u0010\u007f\u001a\u00020<2\u0007\u0010\u0080\u0001\u001a\u00020DH\u0002J\u0012\u0010\u0081\u0001\u001a\u00020<2\u0007\u0010y\u001a\u00030\u0082\u0001H\u0002J\t\u0010\u0083\u0001\u001a\u00020<H\u0002J&\u0010\u0084\u0001\u001a\u00020<2\u0007\u0010\u0085\u0001\u001a\u00020*2\u0007\u0010\u0086\u0001\u001a\u00020*2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010[H\u0014J\u0015\u0010\u0088\u0001\u001a\u00020<2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0014J\u0013\u0010\u008b\u0001\u001a\u00020\n2\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0016J\t\u0010\u008e\u0001\u001a\u00020<H\u0014J\u0013\u0010\u008f\u0001\u001a\u00020<2\b\u0010Z\u001a\u0004\u0018\u00010[H\u0014J\u0013\u0010\u0090\u0001\u001a\u00020\n2\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0016J4\u0010\u0093\u0001\u001a\u00020<2\u0007\u0010\u0085\u0001\u001a\u00020*2\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020\u00190\u0095\u00012\b\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0016¢\u0006\u0003\u0010\u0098\u0001J\t\u0010\u0099\u0001\u001a\u00020<H\u0014J\t\u0010\u009a\u0001\u001a\u00020<H\u0014J\t\u0010\u009b\u0001\u001a\u00020<H\u0014J\t\u0010\u009c\u0001\u001a\u00020\nH\u0016J\u0013\u0010\u009d\u0001\u001a\u00020<2\b\u0010\u009e\u0001\u001a\u00030\u009f\u0001H\u0002J\u0011\u0010 \u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\t\u0010¡\u0001\u001a\u00020<H\u0002J\u0011\u0010¢\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\t\u0010£\u0001\u001a\u00020<H\u0002J\t\u0010¤\u0001\u001a\u00020<H\u0002J\u0011\u0010¥\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0016J\t\u0010¦\u0001\u001a\u00020<H\u0002J\t\u0010§\u0001\u001a\u00020<H\u0002J\u001b\u0010¨\u0001\u001a\u00020<2\u0007\u0010©\u0001\u001a\u00020\u00192\u0007\u0010ª\u0001\u001a\u00020\u0019H\u0002J\u0011\u0010«\u0001\u001a\u00020<2\b\u0010¬\u0001\u001a\u00030\u00ad\u0001J\u0012\u0010®\u0001\u001a\u00020<2\u0007\u0010¯\u0001\u001a\u00020*H\u0002J\u0012\u0010®\u0001\u001a\u00020<2\u0007\u0010°\u0001\u001a\u00020\u0019H\u0002J\u0011\u0010±\u0001\u001a\u00020<2\u0006\u0010^\u001a\u00020_H\u0002J\t\u0010²\u0001\u001a\u00020<H\u0016J\t\u0010³\u0001\u001a\u00020<H\u0016J\u0012\u0010´\u0001\u001a\u00020<2\u0007\u0010µ\u0001\u001a\u00020\u0019H\u0016J\u001b\u0010¶\u0001\u001a\u00020<2\u0007\u0010·\u0001\u001a\u00020\u00192\u0007\u0010µ\u0001\u001a\u00020\u0019H\u0002J\u0007\u0010¸\u0001\u001a\u00020<J\u0007\u0010¹\u0001\u001a\u00020<J\u0010\u0010º\u0001\u001a\u00020<2\u0007\u0010»\u0001\u001a\u00020\nJ$\u0010¼\u0001\u001a\u00020\n2\u0007\u0010½\u0001\u001a\u00020\u00192\u0007\u0010¾\u0001\u001a\u00020\u00192\u0007\u0010¿\u0001\u001a\u00020\u0019H\u0002J\t\u0010À\u0001\u001a\u00020\nH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0010\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u0019X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0010\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010!\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0004\n\u0002\u0010&R\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082D¢\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u0010\u001a\u0004\b-\u0010.R\u001b\u00100\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\u0010\u001a\u0004\b2\u00103R\u001b\u00105\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010\u0010\u001a\u0004\b7\u00108R\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010=\u001a\b\u0012\u0004\u0012\u00020<0;X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u00020@X\u0082\u0004¢\u0006\u0004\n\u0002\u0010AR\u0014\u0010B\u001a\b\u0012\u0004\u0012\u00020D0CX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010E\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\u0010\u001a\u0004\bG\u0010HR\u001b\u0010J\u001a\u00020K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010\u0010\u001a\u0004\bL\u0010MR\u001b\u0010O\u001a\u00020P8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bS\u0010\u0010\u001a\u0004\bQ\u0010RR\u000e\u0010T\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006Á\u0001"}, d2 = {"Ltech/ula/library/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Ltech/ula/library/ui/SessionListFragment$SessionSelection;", "Ltech/ula/library/ui/AppsListFragment$AppSelection;", "Ltech/ula/library/ui/FilesystemListFragment$FilesystemListProgress;", "Ltech/ula/library/ui/InstallWizardFragment$CompanionAppSetupListener;", "()V", "VM_MEMORY_FLOOR_MB", "", "autoStarted", "", "billingManager", "Ltech/ula/library/utils/BillingManager;", "getBillingManager", "()Ltech/ula/library/utils/BillingManager;", "billingManager$delegate", "Lkotlin/Lazy;", "binding", "Ltech/ula/library/databinding/ActivityMainBinding;", "busyboxExecutor", "Ltech/ula/library/utils/BusyboxExecutor;", "getBusyboxExecutor", "()Ltech/ula/library/utils/BusyboxExecutor;", "busyboxExecutor$delegate", "className", "", "getClassName", "()Ljava/lang/String;", "contributionPrompter", "Ltech/ula/library/utils/ContributionPrompter;", "getContributionPrompter", "()Ltech/ula/library/utils/ContributionPrompter;", "contributionPrompter$delegate", "currentFragmentDisplaysProgressDialog", "customDialog", "Landroid/app/AlertDialog;", "downloadBroadcastReceiver", "tech/ula/library/MainActivity$downloadBroadcastReceiver$1", "Ltech/ula/library/MainActivity$downloadBroadcastReceiver$1;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/SentryLogger;", "micPermissionRequestCode", "", "navController", "Landroidx/navigation/NavController;", "getNavController", "()Landroidx/navigation/NavController;", "navController$delegate", "notificationManager", "Ltech/ula/library/utils/NotificationConstructor;", "getNotificationManager", "()Ltech/ula/library/utils/NotificationConstructor;", "notificationManager$delegate", "optInPrompter", "Ltech/ula/library/utils/CollectionOptInPrompter;", "getOptInPrompter", "()Ltech/ula/library/utils/CollectionOptInPrompter;", "optInPrompter$delegate", "proFeatureDeclined", "Lkotlin/Function0;", "", "proFeaturePaid", "progressBarIsVisible", "serverServiceBroadcastReceiver", "tech/ula/library/MainActivity$serverServiceBroadcastReceiver$1", "Ltech/ula/library/MainActivity$serverServiceBroadcastReceiver$1;", "stateObserver", "Landroidx/lifecycle/Observer;", "Ltech/ula/library/viewmodel/State;", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "getUlaFiles", "()Ltech/ula/library/utils/UlaFiles;", "ulaFiles$delegate", "userFeedbackPrompter", "Ltech/ula/library/utils/UserFeedbackPrompter;", "getUserFeedbackPrompter", "()Ltech/ula/library/utils/UserFeedbackPrompter;", "userFeedbackPrompter$delegate", "viewModel", "Ltech/ula/library/viewmodel/MainActivityViewModel;", "getViewModel", "()Ltech/ula/library/viewmodel/MainActivityViewModel;", "viewModel$delegate", "waitingForExtractionStatus", "appHasBeenSelected", "app", "Ltech/ula/library/model/entities/App;", "autoStart", "checkForAppIntent", "intent", "Landroid/content/Intent;", "companionAppSetupComplete", "displayAvfDiskCorruptedDialog", "session", "Ltech/ula/library/model/entities/Session;", "displayClearSupportFilesDialog", "displayCompanionAppUpdateDialog", "wizardDestination", "displayLowStorageDialog", "displayNetworkChoicesDialog", "downloadsToContinue", "", "Ltech/ula/library/model/repositories/DownloadMetadata;", "displayProgressBar", "displayQemuDiskCorruptedDialog", "getCameraInfo", "getCredentials", "getDisplayPreferences", "getFlavor", "file", "Ljava/io/File;", "getMacAddr", "getNetInfo", "getRandPassword", "n", "getServiceTypePreference", "getUserContribution", "getUserFeedback", "handleClearSupportFiles", "handleIllegalState", "state", "Ltech/ula/library/viewmodel/IllegalState;", "handleProgressBarUpdateState", "Ltech/ula/library/viewmodel/ProgressBarUpdateState;", "handleSessionHasBeenActivated", "handleSessionIsReady", "handleStateUpdate", "newState", "handleUserInputState", "Ltech/ula/library/viewmodel/UserInputRequiredState;", "killProgressBar", "onActivityResult", "requestCode", "resultCode", "data", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "menu", "Landroid/view/Menu;", "onDestroy", "onNewIntent", "onOptionsItemSelected", HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM, "Landroid/view/MenuItem;", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onResume", "onStart", "onStop", "onSupportNavigateUp", "prepareSession", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "prepareSessionForStart", "requestMicPermissions", "restartRunningSession", "sendWikiIntent", "sendXsdlIntentToSetDisplayNumberAndExpectResult", "sessionHasBeenSelected", "setNavStartDestination", "setProgressDialogNavListeners", "showDialog", "dialogType", JsonMarshaller.MESSAGE, "showProFeaturesRequiredDialog", "activity", "Landroid/app/Activity;", "showToast", "resId", "content", "startSession", "stopProgressFromFilesystemList", "updateFilesystemDeleteProgress", "updateFilesystemExportProgress", ErrorBundle.DETAIL_ENTRY, "updateProgressBar", "step", "userHasCompletedContribution", "userHasCompletedFeedback", "userHasCompletedPayment", "paid", "validateCredentials", "username", Constants.testpassword, "vncPassword", "wifiIsEnabled", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MainActivity extends AppCompatActivity implements SessionListFragment.SessionSelection, AppsListFragment.AppSelection, FilesystemListFragment.FilesystemListProgress, InstallWizardFragment.CompanionAppSetupListener {
    private boolean autoStarted;
    private ActivityMainBinding binding;
    private boolean currentFragmentDisplaysProgressDialog;
    private AlertDialog customDialog;
    private boolean progressBarIsVisible;
    private boolean waitingForExtractionStatus;
    private final String className = "MainActivity";
    private final long VM_MEMORY_FLOOR_MB = 256;
    private Function0<Unit> proFeatureDeclined = new Function0<Unit>() { // from class: tech.ula.library.MainActivity$proFeatureDeclined$1
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }
    };
    private Function0<Unit> proFeaturePaid = new Function0<Unit>() { // from class: tech.ula.library.MainActivity$proFeaturePaid$1
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }
    };
    private final int micPermissionRequestCode = 1111;
    private final SentryLogger logger = new SentryLogger();

    /* JADX INFO: renamed from: ulaFiles$delegate, reason: from kotlin metadata */
    private final Lazy ulaFiles = LazyKt.lazy(new Function0<UlaFiles>() { // from class: tech.ula.library.MainActivity$ulaFiles$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final UlaFiles invoke() {
            MainActivity mainActivity = this.this$0;
            MainActivity mainActivity2 = mainActivity;
            String nativeLibraryDir = mainActivity.getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            return new UlaFiles(mainActivity2, nativeLibraryDir, null, 4, null);
        }
    });

    /* JADX INFO: renamed from: busyboxExecutor$delegate, reason: from kotlin metadata */
    private final Lazy busyboxExecutor = LazyKt.lazy(new Function0<BusyboxExecutor>() { // from class: tech.ula.library.MainActivity$busyboxExecutor$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final BusyboxExecutor invoke() {
            MainActivity mainActivity = this.this$0;
            SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return new BusyboxExecutor(this.this$0.getUlaFiles(), new ProotDebugLogger(sharedPreferences, this.this$0.getUlaFiles()), null, 4, null);
        }
    });

    /* JADX INFO: renamed from: navController$delegate, reason: from kotlin metadata */
    private final Lazy navController = LazyKt.lazy(new Function0<NavController>() { // from class: tech.ula.library.MainActivity$navController$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final NavController invoke() {
            return ActivityKt.findNavController(this.this$0, R.id.nav_host_fragment);
        }
    });

    /* JADX INFO: renamed from: notificationManager$delegate, reason: from kotlin metadata */
    private final Lazy notificationManager = LazyKt.lazy(new Function0<NotificationConstructor>() { // from class: tech.ula.library.MainActivity$notificationManager$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final NotificationConstructor invoke() {
            return new NotificationConstructor(this.this$0);
        }
    });

    /* JADX INFO: renamed from: userFeedbackPrompter$delegate, reason: from kotlin metadata */
    private final Lazy userFeedbackPrompter = LazyKt.lazy(new Function0<UserFeedbackPrompter>() { // from class: tech.ula.library.MainActivity$userFeedbackPrompter$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final UserFeedbackPrompter invoke() {
            return new UserFeedbackPrompter(this.this$0);
        }
    });

    /* JADX INFO: renamed from: optInPrompter$delegate, reason: from kotlin metadata */
    private final Lazy optInPrompter = LazyKt.lazy(new Function0<CollectionOptInPrompter>() { // from class: tech.ula.library.MainActivity$optInPrompter$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CollectionOptInPrompter invoke() {
            return new CollectionOptInPrompter(this.this$0);
        }
    });

    /* JADX INFO: renamed from: billingManager$delegate, reason: from kotlin metadata */
    private final Lazy billingManager = LazyKt.lazy(new Function0<BillingManager>() { // from class: tech.ula.library.MainActivity$billingManager$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final BillingManager invoke() {
            MainActivity mainActivity = this.this$0;
            return new BillingManager(mainActivity, mainActivity.getContributionPrompter().getOnEntitledSubPurchases(), this.this$0.getContributionPrompter().getOnEntitledInAppPurchases(), this.this$0.getContributionPrompter().getOnPurchase(), this.this$0.getContributionPrompter().getOnFlowComplete(), this.this$0.getContributionPrompter().getOnSubscriptionSupportedChecked());
        }
    });

    /* JADX INFO: renamed from: contributionPrompter$delegate, reason: from kotlin metadata */
    private final Lazy contributionPrompter = LazyKt.lazy(new Function0<ContributionPrompter>() { // from class: tech.ula.library.MainActivity$contributionPrompter$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ContributionPrompter invoke() {
            return new ContributionPrompter(this.this$0);
        }
    });
    private final MainActivity$downloadBroadcastReceiver$1 downloadBroadcastReceiver = new BroadcastReceiver() { // from class: tech.ula.library.MainActivity$downloadBroadcastReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            long longExtra = intent.getLongExtra("extra_download_id", -1L);
            if (longExtra == -1) {
                return;
            }
            this.this$0.getViewModel().submitCompletedDownloadId(longExtra);
        }
    };
    private final MainActivity$serverServiceBroadcastReceiver$1 serverServiceBroadcastReceiver = new MainActivity$serverServiceBroadcastReceiver$1(this);
    private final Observer<State> stateObserver = new Observer() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda17
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            MainActivity.stateObserver$lambda$1(this.f$0, (State) obj);
        }
    };

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel = LazyKt.lazy(new Function0<MainActivityViewModel>() { // from class: tech.ula.library.MainActivity$viewModel$2
        {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        public final MainActivityViewModel invoke() {
            UlaDatabase companion = UlaDatabase.INSTANCE.getInstance(this.this$0);
            AssetPreferences assetPreferences = new AssetPreferences(this.this$0);
            GithubApiClient githubApiClient = new GithubApiClient(this.this$0.getUlaFiles(), null, null, 6, null);
            String path = this.this$0.getFilesDir().getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            UlaFiles ulaFiles = this.this$0.getUlaFiles();
            MainActivity mainActivity = this.this$0;
            SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            AssetRepository assetRepository = new AssetRepository(path, ulaFiles, assetPreferences, sharedPreferences, githubApiClient, null, null, 96, null);
            FilesystemManager filesystemManager = new FilesystemManager(this.this$0.getUlaFiles(), this.this$0.getBusyboxExecutor(), null, 4, null);
            StorageCalculator storageCalculator = new StorageCalculator(new StatFs(this.this$0.getFilesDir().getPath()));
            Object systemService = this.this$0.getSystemService("download");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
            return (MainActivityViewModel) ViewModelProviders.of(this.this$0, new MainActivityViewModelFactory(new AppsStartupFsm(companion, filesystemManager, this.this$0.getUlaFiles(), null, 8, null), new SessionStartupFsm(companion, assetRepository, filesystemManager, new AssetDownloader(assetPreferences, new DownloadManagerWrapper((DownloadManager) systemService, this.this$0), this.this$0.getUlaFiles()), storageCalculator, 0 == true ? 1 : 0, 32, null))).get(MainActivityViewModel.class);
        }
    });

    public final String getClassName() {
        return this.className;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UlaFiles getUlaFiles() {
        return (UlaFiles) this.ulaFiles.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BusyboxExecutor getBusyboxExecutor() {
        return (BusyboxExecutor) this.busyboxExecutor.getValue();
    }

    private final NavController getNavController() {
        return (NavController) this.navController.getValue();
    }

    private final NotificationConstructor getNotificationManager() {
        return (NotificationConstructor) this.notificationManager.getValue();
    }

    private final UserFeedbackPrompter getUserFeedbackPrompter() {
        return (UserFeedbackPrompter) this.userFeedbackPrompter.getValue();
    }

    private final CollectionOptInPrompter getOptInPrompter() {
        return (CollectionOptInPrompter) this.optInPrompter.getValue();
    }

    public final BillingManager getBillingManager() {
        return (BillingManager) this.billingManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ContributionPrompter getContributionPrompter() {
        return (ContributionPrompter) this.contributionPrompter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stateObserver$lambda$1(MainActivity this$0, State state) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.logger.addBreadcrumb(new UlaBreadcrumb(this$0.className, BreadcrumbType.ObservedState.INSTANCE, String.valueOf(state)));
        if (state != null) {
            this$0.handleStateUpdate(state);
        }
    }

    public final MainActivityViewModel getViewModel() {
        return (MainActivityViewModel) this.viewModel.getValue();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (StringsKt.equals$default(intent != null ? intent.getType() : null, "settings", false, 2, null)) {
            MainActivity mainActivity = this;
            SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            if (sharedPreferences.getBoolean("pref_hide_settings", false)) {
                return;
            }
            getNavController().navigate(R.id.settings_fragment);
            return;
        }
        if (intent != null) {
            checkForAppIntent(intent);
        }
        autoStart();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityMainBinding activityMainBindingInflate = ActivityMainBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityMainBindingInflate, "inflate(...)");
        this.binding = activityMainBindingInflate;
        if (activityMainBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBindingInflate = null;
        }
        ConstraintLayout root = activityMainBindingInflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        ActivityMainBinding activityMainBinding = this.binding;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        setSupportActionBar(activityMainBinding.toolbar);
        getNotificationManager().createServiceNotificationChannel();
        setNavStartDestination();
        setProgressDialogNavListeners();
        ActivityMainBinding activityMainBinding2 = this.binding;
        if (activityMainBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding2 = null;
        }
        BottomNavigationView bottomNavView = activityMainBinding2.bottomNavView;
        Intrinsics.checkNotNullExpressionValue(bottomNavView, "bottomNavView");
        NavigationUI.setupWithNavController(bottomNavView, getNavController());
        getViewModel().getState().observe(this, this.stateObserver);
        UlaFiles ulaFiles = getUlaFiles();
        MainActivity mainActivity = this;
        SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        new PreferenceGetter(ulaFiles, sharedPreferences).fetchXML();
        Intent intent = getIntent();
        if (StringsKt.equals$default(intent != null ? intent.getType() : null, "settings", false, 2, null)) {
            SharedPreferences sharedPreferences2 = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
            if (sharedPreferences2.getBoolean("pref_hide_settings", false)) {
                return;
            }
            getNavController().navigate(R.id.settings_fragment);
            return;
        }
        Intent intent2 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent2, "getIntent(...)");
        checkForAppIntent(intent2);
        autoStart();
    }

    private final void checkForAppIntent(Intent intent) {
        SharedPreferences sharedPreferences = getSharedPreferences("apps", 0);
        if (intent.getExtras() != null) {
            Bundle extras = intent.getExtras();
            Intrinsics.checkNotNull(extras);
            if (extras.getSerializable("env") != null) {
                Bundle extras2 = intent.getExtras();
                Intrinsics.checkNotNull(extras2);
                Serializable serializable = extras2.getSerializable("env");
                Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>");
                MainActivity mainActivity = this;
                SharedPreferences sharedPreferences2 = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
                Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
                SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                editorEdit.putString("env", new Gson().toJson((HashMap) serializable));
                editorEdit.apply();
            }
            Bundle extras3 = intent.getExtras();
            Intrinsics.checkNotNull(extras3);
            if (extras3.getParcelable("app") != null) {
                Bundle extras4 = intent.getExtras();
                Intrinsics.checkNotNull(extras4);
                Parcelable parcelable = extras4.getParcelable("app");
                Intrinsics.checkNotNull(parcelable);
                SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                editorEdit2.putString("AutoApp", new Gson().toJson((App) parcelable));
                editorEdit2.apply();
            }
        }
    }

    private final void setNavStartDestination() {
        NavGraph navGraphInflate = getNavController().getNavInflater().inflate(R.navigation.nav_graph);
        navGraphInflate.setStartDestination(R.id.app_list_fragment);
        getNavController().setGraph(navGraphInflate);
        BottomNavigationView bottomNavigationView = (BottomNavigationView) findViewById(R.id.bottom_nav_view);
        MainActivity mainActivity = this;
        SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        if (sharedPreferences.getBoolean("pref_hide_sessions_filesystems", false)) {
            bottomNavigationView.setVisibility(8);
        } else {
            bottomNavigationView.setVisibility(0);
        }
    }

    private final void setProgressDialogNavListeners() {
        getNavController().addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda3
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public final void onDestinationChanged(NavController navController, NavDestination navDestination, Bundle bundle) {
                MainActivity.setProgressDialogNavListeners$lambda$4(this.f$0, navController, navDestination, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setProgressDialogNavListeners$lambda$4(MainActivity this$0, NavController navController, NavDestination destination, Bundle bundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(navController, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        boolean z = Intrinsics.areEqual(destination.getLabel(), this$0.getString(R.string.sessions)) || Intrinsics.areEqual(destination.getLabel(), this$0.getString(R.string.apps)) || Intrinsics.areEqual(destination.getLabel(), this$0.getString(R.string.filesystems));
        this$0.currentFragmentDisplaysProgressDialog = z;
        if (!z) {
            this$0.killProgressBar();
        } else if (this$0.progressBarIsVisible) {
            this$0.displayProgressBar();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        return getNavController().navigateUp();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        getMenuInflater().inflate(R.menu.menu_options, menu);
        MainActivity mainActivity = this;
        SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        if (!sharedPreferences.getBoolean("pref_hide_settings", false)) {
            return true;
        }
        menu.removeItem(R.id.settings_fragment);
        return true;
    }

    private final String getMacAddr() {
        try {
            ArrayList<NetworkInterface> list = Collections.list(NetworkInterface.getNetworkInterfaces());
            Intrinsics.checkNotNullExpressionValue(list, "list(...)");
            for (NetworkInterface networkInterface : list) {
                if (StringsKt.equals(networkInterface.getName(), "wlan0", true)) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return UUID.randomUUID().toString();
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hardwareAddress) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String str = String.format("%02X:", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                        sb.append(str);
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    String string = sb.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    return StringsKt.replace$default(string, ":", "", false, 4, (Object) null);
                }
            }
        } catch (Exception unused) {
        }
        return UUID.randomUUID().toString();
    }

    private final void getCameraInfo() {
        MainActivity mainActivity = this;
        boolean zIsRecognitionAvailable = SpeechRecognizer.isRecognitionAvailable(mainActivity);
        int i = 0;
        SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt("camera_supported", getPackageManager().hasSystemFeature("android.hardware.camera.any") ? 1 : 0);
        if (zIsRecognitionAvailable && getPackageManager().hasSystemFeature("android.hardware.microphone")) {
            i = 1;
        }
        editorEdit.putInt("microphone_supported", i);
        editorEdit.apply();
    }

    private final void getNetInfo() {
        Network activeNetwork;
        LinkProperties linkProperties;
        MainActivity mainActivity = this;
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(mainActivity, ConnectivityManager.class);
        if (connectivityManager != null && (activeNetwork = connectivityManager.getActiveNetwork()) != null && (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) != null) {
            List<InetAddress> dnsServers = linkProperties.getDnsServers();
            Intrinsics.checkNotNullExpressionValue(dnsServers, "getDnsServers(...)");
            String domains = linkProperties.getDomains();
            SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (dnsServers.size() > 0) {
                editorEdit.putString("current_dns0", dnsServers.get(0).toString());
            }
            if (dnsServers.size() > 1) {
                editorEdit.putString("current_dns1", dnsServers.get(1).toString());
            }
            if (domains != null && StringsKt.trim((CharSequence) domains).toString().length() != 0) {
                editorEdit.putString("search_domains", StringsKt.replace$default(domains, ",", " ", false, 4, (Object) null));
            }
            editorEdit.apply();
        }
        SharedPreferences sharedPreferences2 = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
        if (sharedPreferences2.contains("unique_id")) {
            return;
        }
        SharedPreferences sharedPreferences3 = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences3, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit2 = sharedPreferences3.edit();
        editorEdit2.putString("unique_id", "android-" + getMacAddr());
        editorEdit2.apply();
    }

    private final void autoStart() {
        MainActivity mainActivity = this;
        SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        if (sharedPreferences.getBoolean("photo_pending", false)) {
            File file = new File(getExternalFilesDir(null), "Intents");
            File file2 = new File(file, ".cameraResponse.txt");
            File file3 = new File(file, "cameraResponse.txt");
            FilesKt.writeText$default(file2, "1", null, 2, null);
            file2.renameTo(file3);
            SharedPreferences sharedPreferences2 = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
            SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
            editorEdit.putBoolean("photo_pending", false);
            editorEdit.apply();
        }
        String string = getSharedPreferences("apps", 0).getString("AutoApp", " ");
        if (string == null || string.compareTo(" ") == 0) {
            return;
        }
        App app = (App) new Gson().fromJson(string, App.class);
        if (app.getSupportsStandalone() == null) {
            app.setSupportsStandalone("false");
        }
        this.autoStarted = true;
        Intrinsics.checkNotNull(app);
        appHasBeenSelected(app, true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        MainActivity mainActivity = this;
        LocalBroadcastManager.getInstance(mainActivity).registerReceiver(this.serverServiceBroadcastReceiver, new IntentFilter(ServerService.SERVER_SERVICE_RESULT));
        if (Build.VERSION.SDK_INT >= 26) {
            registerReceiver(this.downloadBroadcastReceiver, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
        } else {
            registerReceiver(this.downloadBroadcastReceiver, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        }
        if (this.waitingForExtractionStatus) {
            Intent intentPutExtra = new Intent(mainActivity, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, NotificationCompat.CATEGORY_STATUS);
            Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
            startService(intentPutExtra);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getBillingManager().querySubPurchases();
        getBillingManager().queryInAppPurchases();
        getViewModel().handleOnResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        getBillingManager().destroy();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemId() == R.id.terms_and_conditions) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("")));
        }
        if (item.getItemId() == R.id.option_wiki) {
            sendWikiIntent();
        }
        if (item.getItemId() == R.id.clear_support_files) {
            displayClearSupportFilesDialog();
        }
        return NavigationUI.onNavDestinationSelected(item, Navigation.findNavController(this, R.id.nav_host_fragment)) || super.onOptionsItemSelected(item);
    }

    private final void sendWikiIntent() {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("")));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.serverServiceBroadcastReceiver);
        unregisterReceiver(this.downloadBroadcastReceiver);
    }

    @Override // tech.ula.library.ui.AppsListFragment.AppSelection
    public void appHasBeenSelected(App app, boolean autoStart) {
        Intrinsics.checkNotNullParameter(app, "app");
        if (!app.getSupportsStandalone().equals("false")) {
            try {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + app.getSupportsStandalone())));
                return;
            } catch (ActivityNotFoundException unused) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + app.getSupportsStandalone())));
                return;
            }
        }
        getNetInfo();
        getCameraInfo();
        SharedPreferences sharedPreferences = getSharedPreferences("apps", 0);
        boolean z = sharedPreferences.getBoolean("askConnectType", false);
        if (z) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putBoolean("askConnectType", false);
            editorEdit.apply();
        }
        boolean z2 = sharedPreferences.getBoolean("askDisplayPreferences", false);
        if (z2) {
            SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
            editorEdit2.putBoolean("askDisplayPreferences", false);
            editorEdit2.apply();
        }
        if (!PermissionHandler.INSTANCE.permissionsAreGranted(this)) {
            PermissionHandler.INSTANCE.showPermissionsNecessaryDialog(this, false);
            MainActivityViewModel.waitForPermissions$default(getViewModel(), app, null, z, z2, 2, null);
        } else {
            getViewModel().submitAppSelection(app, autoStart, z, z2);
        }
    }

    @Override // tech.ula.library.ui.SessionListFragment.SessionSelection
    public void sessionHasBeenSelected(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        getNetInfo();
        getCameraInfo();
        if (!PermissionHandler.INSTANCE.permissionsAreGranted(this)) {
            PermissionHandler.INSTANCE.showPermissionsNecessaryDialog(this, false);
            MainActivityViewModel.waitForPermissions$default(getViewModel(), null, session, false, false, 1, null);
        } else {
            getViewModel().submitSessionSelection(session);
        }
    }

    @Override // tech.ula.library.ui.InstallWizardFragment.CompanionAppSetupListener
    public void companionAppSetupComplete() {
        getViewModel().companionAppSetupComplete();
    }

    private final void handleStateUpdate(State newState) {
        if (newState instanceof WaitingForInput) {
            killProgressBar();
            return;
        }
        if (newState instanceof CanOnlyStartSingleSession) {
            String string = getString(R.string.single_session_supported, new Object[]{getString(tech.ula.customlibrary.R.string.app_name)});
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            showToast(string);
            getViewModel().handleUserInputCancelled();
            return;
        }
        if (newState instanceof SessionCanBePrepared) {
            prepareSession(((SessionCanBePrepared) newState).getFilesystem());
            return;
        }
        if (newState instanceof SessionCanBeStarted) {
            prepareSessionForStart(((SessionCanBeStarted) newState).getSession());
            return;
        }
        if (newState instanceof SessionCanBeRestarted) {
            restartRunningSession(((SessionCanBeRestarted) newState).getSession());
            return;
        }
        if (newState instanceof IllegalState) {
            handleIllegalState((IllegalState) newState);
        } else if (newState instanceof UserInputRequiredState) {
            handleUserInputState((UserInputRequiredState) newState);
        } else {
            if (!(newState instanceof ProgressBarUpdateState)) {
                throw new NoWhenBranchMatchedException();
            }
            handleProgressBarUpdateState((ProgressBarUpdateState) newState);
        }
    }

    private final void prepareSessionForStart(Session session) {
        String string = getString(R.string.progress_starting);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        updateProgressBar(string, "");
        if ((session.getServiceType() instanceof ServiceType.Xsdl) && Build.VERSION.SDK_INT > 27) {
            session.setServiceType(ServiceType.Vnc.INSTANCE);
        }
        ServiceType serviceType = session.getServiceType();
        if (Intrinsics.areEqual(serviceType, ServiceType.Xsdl.INSTANCE)) {
            getViewModel().setLastSelectedSession(session);
            sendXsdlIntentToSetDisplayNumberAndExpectResult();
        } else if (Intrinsics.areEqual(serviceType, ServiceType.Vnc.INSTANCE)) {
            startSession(session);
        } else {
            startSession(session);
        }
    }

    private final void prepareSession(Filesystem filesystem) {
        this.waitingForExtractionStatus = true;
        Intent intentPutExtra = new Intent(this, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "prepare").putExtra("filesystem", filesystem);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        startService(intentPutExtra);
    }

    private final void startSession(Session session) {
        this.waitingForExtractionStatus = true;
        Intent intentPutExtra = new Intent(this, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "start").putExtra("session", session);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        startService(intentPutExtra);
    }

    private final void sendXsdlIntentToSetDisplayNumberAndExpectResult() {
        try {
            try {
                startActivityForResult(new Intent("android.intent.action.MAIN", Uri.parse("x11://give.me.display:4721")), 1);
            } catch (ActivityNotFoundException unused) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=x.org.server")));
            }
        } catch (Exception unused2) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=x.org.server")));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (data != null) {
            Session lastSelectedSession = getViewModel().getLastSelectedSession();
            String stringExtra = data.getStringExtra("run");
            if (stringExtra == null) {
                stringExtra = "";
            }
            Intrinsics.checkNotNull(stringExtra);
            if (!Intrinsics.areEqual(lastSelectedSession.getServiceType(), ServiceType.Xsdl.INSTANCE) || stringExtra.length() <= 0) {
                return;
            }
            startSession(lastSelectedSession);
        }
    }

    private final void restartRunningSession(Session session) {
        Intent intentPutExtra = new Intent(this, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "restartRunningSession").putExtra("session", session);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        startService(intentPutExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSessionIsReady() {
        this.waitingForExtractionStatus = false;
        getViewModel().submitExtractionResult(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSessionHasBeenActivated() {
        getViewModel().handleSessionHasBeenActivated();
        killProgressBar();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.handleSessionHasBeenActivated$lambda$15(this.f$0);
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSessionHasBeenActivated$lambda$15(MainActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final void showToast(int resId) {
        String string = getString(resId);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        Toast.makeText(this, string, 1).show();
    }

    private final void showToast(String content) {
        Toast.makeText(this, content, 1).show();
    }

    public final String getRandPassword(int n) {
        Random random = new Random(System.nanoTime());
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < n; i++) {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(random.nextInt("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".length())));
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final void handleUserInputState(UserInputRequiredState state) {
        if (state instanceof LowStorageAcknowledgementRequired) {
            displayLowStorageDialog();
            return;
        }
        if (state instanceof UserFeedbackCheckRequired) {
            if (getUserFeedbackPrompter().viewShouldBeShown()) {
                getUserFeedback();
                return;
            } else {
                getViewModel().userFeedbackChecked();
                return;
            }
        }
        if (state instanceof UserContributionCheckRequired) {
            if (getContributionPrompter().canAskForPurchase()) {
                if (getContributionPrompter().hasMadeInAppPurchase() || getContributionPrompter().hasMadeSubPurchase()) {
                    getViewModel().userContributionChecked();
                    return;
                } else {
                    getUserContribution();
                    return;
                }
            }
            getViewModel().userContributionChecked();
            return;
        }
        if (state instanceof FilesystemFlavorRequired) {
            File file = new File(getFilesDir() + "/apps/" + (getViewModel().getLastSelectedApp().getName() + "/flavors.txt"));
            if (!file.exists()) {
                MainActivityViewModel.submitFilesystemFlavor$default(getViewModel(), "default", false, null, 4, null);
                return;
            } else {
                getFlavor(file);
                return;
            }
        }
        if (state instanceof UserPaymentRequired) {
            if (getContributionPrompter().hasMadeInAppPurchase() || getContributionPrompter().hasMadeSubPurchase()) {
                getViewModel().submitUserPayment();
                return;
            }
            this.proFeaturePaid = new Function0<Unit>() { // from class: tech.ula.library.MainActivity.handleUserInputState.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivity.this.getViewModel().submitUserPayment();
                }
            };
            this.proFeatureDeclined = new Function0<Unit>() { // from class: tech.ula.library.MainActivity.handleUserInputState.2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivity.this.getViewModel().handleUserInputCancelled();
                }
            };
            getContributionPrompter().setPurchaseRequired(true);
            getBillingManager().startPurchaseFlow(BillingManager.Sku.PRO_FEATURES);
            return;
        }
        if (state instanceof FilesystemCredentialsRequired) {
            getViewModel().submitFilesystemCredentials(tech.ula.customlibrary.BuildConfig.DEFAULT_USERNAME, getRandPassword(8), getRandPassword(8));
            return;
        }
        if (state instanceof AppServiceTypePreferenceRequired) {
            getServiceTypePreference(((AppServiceTypePreferenceRequired) state).getSession());
            return;
        }
        if (state instanceof AppDisplayPreferencesRequired) {
            getDisplayPreferences(((AppDisplayPreferencesRequired) state).getSession());
            return;
        }
        if (state instanceof LargeDownloadRequired) {
            if (wifiIsEnabled()) {
                getViewModel().startAssetDownloads(((LargeDownloadRequired) state).getDownloadRequirements());
                return;
            } else {
                displayNetworkChoicesDialog(((LargeDownloadRequired) state).getDownloadRequirements());
                return;
            }
        }
        if (!(state instanceof ActiveSessionsMustBeDeactivated)) {
            throw new NoWhenBranchMatchedException();
        }
        int i = R.string.general_error_title;
        String string = getString(R.string.deactivate_sessions);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        ExtensionsKt.displayGenericErrorDialog$default(this, i, string, null, 4, null);
    }

    private final void handleIllegalState(IllegalState state) {
        MainActivity mainActivity = this;
        String string = getString(R.string.illegal_state_github_message, new Object[]{IllegalStateHandler.INSTANCE.getLocalizationData(state).getString(mainActivity)});
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        new AlertDialog.Builder(mainActivity).setMessage(string).setTitle(getString(R.string.illegal_state_title, new Object[]{getString(tech.ula.customlibrary.R.string.app_name)})).setPositiveButton(R.string.button_ok, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void showDialog(String dialogType, String message) {
        switch (dialogType.hashCode()) {
            case -1843443970:
                if (dialogType.equals("avfDiskCorrupted")) {
                    killProgressBar();
                    displayAvfDiskCorruptedDialog(getViewModel().getLastSelectedSession());
                    break;
                }
                break;
            case -1502591580:
                if (dialogType.equals("qemuUpdateAvailable")) {
                    displayCompanionAppUpdateDialog(R.id.qemu_install_wizard_fragment);
                    break;
                }
                break;
            case -1173290733:
                if (dialogType.equals("qemuRunnerNotInstalled")) {
                    MainActivityViewModel.waitForPermissions$default(getViewModel(), null, getViewModel().getLastSelectedSession(), false, false, 1, null);
                    getNavController().navigate(R.id.qemu_install_wizard_fragment);
                    break;
                }
                break;
            case -1131044054:
                if (dialogType.equals("extractionCompleteFailure")) {
                    String string = getString(R.string.progress_starting);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    String string2 = getString(R.string.error_filesystem_extraction);
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    this.waitingForExtractionStatus = false;
                    updateProgressBar(string, string2);
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity.showDialog$lambda$17(this.f$0);
                        }
                    }, 3000L);
                    break;
                }
                break;
            case -1119971686:
                if (dialogType.equals("extractionStarted")) {
                    String string3 = getString(R.string.progress_starting);
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                    String string4 = getString(R.string.progress_setting_up_filesystem);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    updateProgressBar(string3, string4);
                    break;
                }
                break;
            case -1024218277:
                if (dialogType.equals("playStoreMissingForClient")) {
                    int i = R.string.alert_need_client_app_title;
                    String string5 = getString(R.string.alert_need_client_app_message);
                    Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                    ExtensionsKt.displayGenericErrorDialog$default(this, i, string5, null, 4, null);
                    break;
                }
                break;
            case -961949453:
                if (dialogType.equals("qemuDiskCorrupted")) {
                    killProgressBar();
                    displayQemuDiskCorruptedDialog(getViewModel().getLastSelectedSession());
                    break;
                }
                break;
            case -152747142:
                if (dialogType.equals("avfSessionStartFailed")) {
                    killProgressBar();
                    getViewModel().handleUserInputCancelled();
                    int i2 = R.string.general_error_title;
                    String string6 = getString(R.string.avf_session_start_failed);
                    Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                    ExtensionsKt.displayGenericErrorDialog$default(this, i2, string6, null, 4, null);
                    break;
                }
                break;
            case 102421177:
                if (dialogType.equals("extractionStatus")) {
                    String string7 = getString(R.string.progress_starting);
                    Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
                    updateProgressBar(string7, message);
                    break;
                }
                break;
            case 857657084:
                if (dialogType.equals("unhandledSessionServiceType")) {
                    int i3 = R.string.general_error_title;
                    String string8 = getString(R.string.illegal_state_unhandled_session_service_type);
                    Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
                    ExtensionsKt.displayGenericErrorDialog$default(this, i3, string8, null, 4, null);
                    break;
                }
                break;
            case 1046125032:
                if (dialogType.equals("avfRunnerNotInstalled")) {
                    MainActivityViewModel.waitForPermissions$default(getViewModel(), null, getViewModel().getLastSelectedSession(), false, false, 1, null);
                    getNavController().navigate(R.id.avf_install_wizard_fragment);
                    break;
                }
                break;
            case 1460354347:
                if (dialogType.equals("clientStarting")) {
                    String string9 = getString(R.string.progress_starting);
                    Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
                    String string10 = getString(R.string.progress_starting_client);
                    Intrinsics.checkNotNullExpressionValue(string10, "getString(...)");
                    updateProgressBar(string9, string10);
                    break;
                }
                break;
            case 1487110307:
                if (dialogType.equals("serverStarting")) {
                    String string11 = getString(R.string.progress_starting);
                    Intrinsics.checkNotNullExpressionValue(string11, "getString(...)");
                    String string12 = getString(R.string.progress_starting_server);
                    Intrinsics.checkNotNullExpressionValue(string12, "getString(...)");
                    updateProgressBar(string11, string12);
                    break;
                }
                break;
            case 1784702191:
                if (dialogType.equals("avfUpdateAvailable")) {
                    displayCompanionAppUpdateDialog(R.id.avf_install_wizard_fragment);
                    break;
                }
                break;
            case 1922804389:
                if (dialogType.equals("qemuSessionStartFailed")) {
                    killProgressBar();
                    getViewModel().handleUserInputCancelled();
                    int i4 = R.string.general_error_title;
                    String string13 = getString(R.string.qemu_session_start_failed);
                    Intrinsics.checkNotNullExpressionValue(string13, "getString(...)");
                    ExtensionsKt.displayGenericErrorDialog$default(this, i4, string13, null, 4, null);
                    break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDialog$lambda$17(MainActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.killProgressBar();
    }

    private final void displayAvfDiskCorruptedDialog(final Session session) {
        new AlertDialog.Builder(this).setTitle(R.string.avf_disk_corrupted_title).setMessage(R.string.avf_disk_corrupted_message).setPositiveButton(R.string.avf_disk_corrupted_repair_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda22
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayAvfDiskCorruptedDialog$lambda$18(this.f$0, session, dialogInterface, i);
            }
        }).setNeutralButton(R.string.button_cancel, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda30
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayAvfDiskCorruptedDialog$lambda$19(this.f$0, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayAvfDiskCorruptedDialog$lambda$18(MainActivity this$0, Session session, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(session, "$session");
        dialogInterface.dismiss();
        Intent intentPutExtra = new Intent(this$0, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "repairAvf").putExtra("session", session);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        this$0.startService(intentPutExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayAvfDiskCorruptedDialog$lambda$19(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.getViewModel().handleUserInputCancelled();
    }

    private final void displayQemuDiskCorruptedDialog(final Session session) {
        new AlertDialog.Builder(this).setTitle(R.string.avf_disk_corrupted_title).setMessage(R.string.avf_disk_corrupted_message).setPositiveButton(R.string.avf_disk_corrupted_repair_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda26
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayQemuDiskCorruptedDialog$lambda$20(this.f$0, session, dialogInterface, i);
            }
        }).setNeutralButton(R.string.button_cancel, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda27
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayQemuDiskCorruptedDialog$lambda$21(this.f$0, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayQemuDiskCorruptedDialog$lambda$20(MainActivity this$0, Session session, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(session, "$session");
        dialogInterface.dismiss();
        Intent intentPutExtra = new Intent(this$0, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "repairQemu").putExtra("session", session);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        this$0.startService(intentPutExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayQemuDiskCorruptedDialog$lambda$21(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.getViewModel().handleUserInputCancelled();
    }

    private final void displayCompanionAppUpdateDialog(final int wizardDestination) {
        new AlertDialog.Builder(this).setTitle(R.string.companion_app_update_title).setMessage(R.string.companion_app_update_message).setCancelable(false).setPositiveButton(R.string.companion_app_update_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayCompanionAppUpdateDialog$lambda$22(this.f$0, wizardDestination, dialogInterface, i);
            }
        }).setNeutralButton(R.string.button_cancel, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayCompanionAppUpdateDialog$lambda$23(this.f$0, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayCompanionAppUpdateDialog$lambda$22(MainActivity this$0, int i, DialogInterface dialogInterface, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        MainActivityViewModel.waitForPermissions$default(this$0.getViewModel(), null, this$0.getViewModel().getLastSelectedSession(), false, false, 1, null);
        this$0.getNavController().navigate(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayCompanionAppUpdateDialog$lambda$23(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.getViewModel().handleUserInputCancelled();
    }

    private final void displayClearSupportFilesDialog() {
        new AlertDialog.Builder(this).setMessage(R.string.alert_clear_support_files_message).setTitle(R.string.alert_clear_support_files_title).setPositiveButton(R.string.alert_clear_support_files_clear_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda24
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayClearSupportFilesDialog$lambda$24(this.f$0, dialogInterface, i);
            }
        }).setNeutralButton(R.string.button_cancel, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda25
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayClearSupportFilesDialog$lambda$24(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleClearSupportFiles();
        dialogInterface.dismiss();
    }

    private final void handleClearSupportFiles() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new C02121(new AssetFileClearer(getUlaFiles(), SetsKt.plus(new AppsPreferences(this).getDistributionsList(), "support"), getBusyboxExecutor(), null, 8, null), null), 3, null);
    }

    /* JADX INFO: renamed from: tech.ula.library.MainActivity$handleClearSupportFiles$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.MainActivity$handleClearSupportFiles$1", f = "MainActivity.kt", i = {}, l = {1037}, m = "invokeSuspend", n = {}, s = {})
    static final class C02121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AssetFileClearer $assetFileClearer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02121(AssetFileClearer assetFileClearer, Continuation<? super C02121> continuation) {
            super(2, continuation);
            this.$assetFileClearer = assetFileClearer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainActivity.this.new C02121(this.$assetFileClearer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (MainActivity.this.getViewModel().handleClearSupportFiles(this.$assetFileClearer, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == this.micPermissionRequestCode) {
            return;
        }
        if (PermissionHandler.INSTANCE.permissionsWereGranted(requestCode, grantResults)) {
            getViewModel().permissionsHaveBeenGranted();
        } else {
            PermissionHandler.INSTANCE.showPermissionsNecessaryDialog(this, true);
        }
    }

    private final void handleProgressBarUpdateState(ProgressBarUpdateState state) {
        if (state instanceof StartingSetup) {
            String string = getString(R.string.progress_start_step);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            updateProgressBar(string, "");
            return;
        }
        if (state instanceof FetchingAssetLists) {
            String string2 = getString(R.string.progress_fetching_asset_lists);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            updateProgressBar(string2, "");
            return;
        }
        if (state instanceof CheckingForAssetsUpdates) {
            String string3 = getString(R.string.progress_checking_for_required_updates);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            updateProgressBar(string3, "");
            return;
        }
        if (state instanceof DownloadProgress) {
            String string4 = getString(R.string.progress_downloading);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            DownloadProgress downloadProgress = (DownloadProgress) state;
            String string5 = getString(R.string.progress_downloading_out_of, new Object[]{Integer.valueOf(downloadProgress.getNumComplete()), Integer.valueOf(downloadProgress.getNumTotal())});
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            updateProgressBar(string4, string5);
            return;
        }
        if (state instanceof CopyingDownloads) {
            String string6 = getString(R.string.progress_copying_downloads);
            Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
            updateProgressBar(string6, "");
            return;
        }
        if (state instanceof VerifyingFilesystem) {
            String string7 = getString(R.string.progress_verifying_assets);
            Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
            updateProgressBar(string7, "");
        } else if (state instanceof VerifyingAvailableStorage) {
            String string8 = getString(R.string.progress_verifying_sufficient_storage);
            Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
            updateProgressBar(string8, "");
        } else if (state instanceof ClearingSupportFiles) {
            String string9 = getString(R.string.progress_clearing_support_files);
            Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
            updateProgressBar(string9, "");
        } else {
            if (!(state instanceof ProgressBarOperationComplete)) {
                throw new NoWhenBranchMatchedException();
            }
            killProgressBar();
        }
    }

    @Override // tech.ula.library.ui.FilesystemListFragment.FilesystemListProgress
    public void updateFilesystemExportProgress(String details) {
        Intrinsics.checkNotNullParameter(details, "details");
        String string = getString(R.string.progress_exporting_filesystem);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        updateProgressBar(string, details);
    }

    @Override // tech.ula.library.ui.FilesystemListFragment.FilesystemListProgress
    public void updateFilesystemDeleteProgress() {
        String string = getString(R.string.progress_deleting_filesystem);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        updateProgressBar(string, "");
    }

    @Override // tech.ula.library.ui.FilesystemListFragment.FilesystemListProgress
    public void stopProgressFromFilesystemList() {
        killProgressBar();
    }

    private final void displayProgressBar() {
        if (this.currentFragmentDisplaysProgressDialog && !this.progressBarIsVisible) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            ActivityMainBinding activityMainBinding = this.binding;
            ActivityMainBinding activityMainBinding2 = null;
            if (activityMainBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding = null;
            }
            activityMainBinding.layoutProgress.setAnimation(alphaAnimation);
            ActivityMainBinding activityMainBinding3 = this.binding;
            if (activityMainBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding3 = null;
            }
            activityMainBinding3.layoutProgress.setVisibility(0);
            ActivityMainBinding activityMainBinding4 = this.binding;
            if (activityMainBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding4 = null;
            }
            activityMainBinding4.layoutProgress.setFocusable(true);
            ActivityMainBinding activityMainBinding5 = this.binding;
            if (activityMainBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityMainBinding2 = activityMainBinding5;
            }
            activityMainBinding2.layoutProgress.setClickable(true);
            this.progressBarIsVisible = true;
        }
    }

    private final void updateProgressBar(String step, String details) {
        displayProgressBar();
        ActivityMainBinding activityMainBinding = this.binding;
        ActivityMainBinding activityMainBinding2 = null;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        activityMainBinding.textSessionListProgressStep.setText(step);
        ActivityMainBinding activityMainBinding3 = this.binding;
        if (activityMainBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityMainBinding2 = activityMainBinding3;
        }
        activityMainBinding2.textSessionListProgressDetails.setText(details);
    }

    private final void killProgressBar() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200L);
        ActivityMainBinding activityMainBinding = this.binding;
        ActivityMainBinding activityMainBinding2 = null;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        activityMainBinding.layoutProgress.setAnimation(alphaAnimation);
        ActivityMainBinding activityMainBinding3 = this.binding;
        if (activityMainBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding3 = null;
        }
        activityMainBinding3.layoutProgress.setVisibility(8);
        ActivityMainBinding activityMainBinding4 = this.binding;
        if (activityMainBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding4 = null;
        }
        activityMainBinding4.layoutProgress.setFocusable(false);
        ActivityMainBinding activityMainBinding5 = this.binding;
        if (activityMainBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityMainBinding2 = activityMainBinding5;
        }
        activityMainBinding2.layoutProgress.setClickable(false);
        this.progressBarIsVisible = false;
        this.waitingForExtractionStatus = false;
    }

    private final boolean wifiIsEnabled() {
        Object systemService = getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Network[] allNetworks = connectivityManager.getAllNetworks();
        Intrinsics.checkNotNullExpressionValue(allNetworks, "getAllNetworks(...)");
        for (Network network : allNetworks) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                return true;
            }
        }
        return false;
    }

    private final void displayNetworkChoicesDialog(final List<DownloadMetadata> downloadsToContinue) {
        new AlertDialog.Builder(this).setMessage(R.string.alert_wifi_disabled_message).setTitle(R.string.alert_wifi_disabled_title).setPositiveButton(R.string.alert_wifi_disabled_continue_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda31
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayNetworkChoicesDialog$lambda$26(this.f$0, downloadsToContinue, dialogInterface, i);
            }
        }).setNegativeButton(R.string.alert_wifi_disabled_turn_on_wifi_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda32
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayNetworkChoicesDialog$lambda$27(this.f$0, dialogInterface, i);
            }
        }).setNeutralButton(R.string.alert_wifi_disabled_cancel_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda33
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.displayNetworkChoicesDialog$lambda$28(this.f$0, dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda34
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.displayNetworkChoicesDialog$lambda$29(this.f$0, dialogInterface);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayNetworkChoicesDialog$lambda$26(MainActivity this$0, List downloadsToContinue, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(downloadsToContinue, "$downloadsToContinue");
        dialogInterface.dismiss();
        this$0.getViewModel().startAssetDownloads(downloadsToContinue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayNetworkChoicesDialog$lambda$27(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.startActivity(new Intent("android.net.wifi.PICK_WIFI_NETWORK"));
        this$0.getViewModel().handleUserInputCancelled();
        this$0.killProgressBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayNetworkChoicesDialog$lambda$28(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.getViewModel().handleUserInputCancelled();
        this$0.killProgressBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayNetworkChoicesDialog$lambda$29(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().handleUserInputCancelled();
        this$0.killProgressBar();
    }

    private final void getUserFeedback() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(getLayoutInflater().inflate(R.layout.dia_place_holder, (ViewGroup) null));
        builder.setCancelable(true);
        AlertDialog alertDialogCreate = builder.create();
        this.customDialog = alertDialogCreate;
        Intrinsics.checkNotNull(alertDialogCreate);
        alertDialogCreate.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda23
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.getUserFeedback$lambda$30(this.f$0, dialogInterface);
            }
        });
        AlertDialog alertDialog = this.customDialog;
        Intrinsics.checkNotNull(alertDialog);
        alertDialog.show();
        UserFeedbackPrompter userFeedbackPrompter = getUserFeedbackPrompter();
        AlertDialog alertDialog2 = this.customDialog;
        Intrinsics.checkNotNull(alertDialog2);
        View viewFindViewById = alertDialog2.findViewById(R.id.layout_user_prompt_insert);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        userFeedbackPrompter.showView((ViewGroup) viewFindViewById);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUserFeedback$lambda$30(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().userFeedbackChecked();
    }

    public final void userHasCompletedFeedback() {
        AlertDialog alertDialog = this.customDialog;
        Intrinsics.checkNotNull(alertDialog);
        alertDialog.dismiss();
        getViewModel().userFeedbackChecked();
    }

    public final void showProFeaturesRequiredDialog(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String string = activity.getString(R.string.alert_pro_features_request_message);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        builder.setMessage(string).setTitle(activity.getString(R.string.alert_pro_features_request_title)).setPositiveButton(R.string.button_yes, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.showProFeaturesRequiredDialog$lambda$31(this.f$0, dialogInterface, i);
            }
        }).setNegativeButton(R.string.button_no, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.showProFeaturesRequiredDialog$lambda$32(this.f$0, dialogInterface, i);
            }
        }).setNeutralButton(R.string.button_never, new DialogInterface.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.showProFeaturesRequiredDialog$lambda$33(this.f$0, dialogInterface, i);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.showProFeaturesRequiredDialog$lambda$34(this.f$0, dialogInterface);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        this.customDialog = alertDialogCreate;
        Intrinsics.checkNotNull(alertDialogCreate);
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$31(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBillingManager().startPurchaseFlow(BillingManager.Sku.PRO_FEATURES);
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$32(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().userContributionChecked();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$33(MainActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().userContributionChecked();
        this$0.getContributionPrompter().setCanAskForPurchase(false);
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$34(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().userContributionChecked();
    }

    private final void getUserContribution() {
        showProFeaturesRequiredDialog(this);
    }

    public final void userHasCompletedContribution() {
        AlertDialog alertDialog = this.customDialog;
        Intrinsics.checkNotNull(alertDialog);
        alertDialog.dismiss();
        getViewModel().userContributionChecked();
    }

    public final void userHasCompletedPayment(boolean paid) {
        if (paid) {
            this.proFeaturePaid.invoke();
        } else {
            this.proFeatureDeclined.invoke();
        }
    }

    private final void getFlavor(File file) {
        MainActivity mainActivity = this;
        AlertDialog.Builder builder = new AlertDialog.Builder(mainActivity);
        View viewInflate = getLayoutInflater().inflate(R.layout.dia_app_select_flavor, (ViewGroup) null);
        Intrinsics.checkNotNull(viewInflate);
        View viewFindViewById = viewInflate.findViewById(R.id.radio_filesystem_flavor_preference);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        RadioGroup radioGroup = (RadioGroup) viewFindViewById;
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(file), Charsets.UTF_8);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            String text = TextStreamsKt.readText(bufferedReader);
            CloseableKt.closeFinally(bufferedReader, null);
            List<String> listLines = StringsKt.lines(StringsKt.trim((CharSequence) text).toString());
            final ArrayList arrayList = new ArrayList();
            List listDrop = CollectionsKt.drop(listLines, 1);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listDrop, 10));
            Iterator it = listDrop.iterator();
            while (it.hasNext()) {
                List listSplit$default = StringsKt.split$default((CharSequence) it.next(), new String[]{", "}, false, 0, 6, (Object) null);
                String str = (String) listSplit$default.get(0);
                String str2 = (String) listSplit$default.get(1);
                String str3 = (String) listSplit$default.get(2);
                arrayList.add(new Flavor(str, str2, Boolean.parseBoolean(str3)));
                RadioButton radioButton = new RadioButton(mainActivity);
                radioButton.setId(View.generateViewId());
                radioButton.setText(str2);
                if (Boolean.parseBoolean(str3)) {
                    radioButton.setText(((Object) radioButton.getText()) + " (Pro)");
                }
                radioButton.setChecked(str.equals("default"));
                radioGroup.addView(radioButton);
                arrayList2.add(Unit.INSTANCE);
            }
            boolean zIsDeviceCapable = AvfCompatibility.INSTANCE.isDeviceCapable(mainActivity);
            if (zIsDeviceCapable) {
                View viewFindViewById2 = viewInflate.findViewById(R.id.text_title_execution_type);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
                ((TextView) viewFindViewById2).setVisibility(0);
                View viewFindViewById3 = viewInflate.findViewById(R.id.radio_execution_type_preference);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
                ((RadioGroup) viewFindViewById3).setVisibility(0);
            }
            if (!zIsDeviceCapable) {
                View viewFindViewById4 = viewInflate.findViewById(R.id.radio_avf_preference);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
                ((RadioButton) viewFindViewById4).setVisibility(8);
            }
            View viewFindViewById5 = viewInflate.findViewById(R.id.radio_qemu_preference);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
            ((RadioButton) viewFindViewById5).setVisibility(8);
            builder.setView(viewInflate);
            builder.setCancelable(true);
            builder.setPositiveButton(R.string.button_continue, (DialogInterface.OnClickListener) null);
            final AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda35
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    MainActivity.getFlavor$lambda$39(alertDialogCreate, arrayList, this, dialogInterface);
                }
            });
            alertDialogCreate.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda36
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    MainActivity.getFlavor$lambda$40(this.f$0, dialogInterface);
                }
            });
            alertDialogCreate.show();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(bufferedReader, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getFlavor$lambda$39(final AlertDialog alertDialog, final ArrayList flavors, final MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(flavors, "$flavors");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.getFlavor$lambda$39$lambda$38(alertDialog, flavors, this$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getFlavor$lambda$39$lambda$38(AlertDialog alertDialog, ArrayList flavors, MainActivity this$0, View view) {
        ExecutionType executionType;
        Intrinsics.checkNotNullParameter(flavors, "$flavors");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String string = ((RadioButton) alertDialog.findViewById(((RadioGroup) alertDialog.findViewById(R.id.radio_filesystem_flavor_preference)).getCheckedRadioButtonId())).getText().toString();
        int checkedRadioButtonId = ((RadioGroup) alertDialog.findViewById(R.id.radio_execution_type_preference)).getCheckedRadioButtonId();
        if (checkedRadioButtonId == R.id.radio_avf_preference) {
            executionType = ExecutionType.AVF;
        } else {
            executionType = checkedRadioButtonId == R.id.radio_qemu_preference ? ExecutionType.QEMU : ExecutionType.PROOT;
        }
        alertDialog.dismiss();
        String strReplace$default = StringsKt.replace$default(string, " (Pro)", "", false, 4, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : flavors) {
            if (((Flavor) obj).getDisplayName().equals(strReplace$default)) {
                arrayList.add(obj);
            }
        }
        Flavor flavor = (Flavor) CollectionsKt.single((List) arrayList);
        this$0.getViewModel().submitFilesystemFlavor(flavor.getReleaseName(), flavor.isPaid(), executionType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getFlavor$lambda$40(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().handleUserInputCancelled();
    }

    private final void getCredentials() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(getLayoutInflater().inflate(R.layout.dia_app_credentials, (ViewGroup) null));
        builder.setCancelable(true);
        builder.setPositiveButton(R.string.button_continue, (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        this.customDialog = alertDialogCreate;
        Intrinsics.checkNotNull(alertDialogCreate);
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                MainActivity.getCredentials$lambda$42(this.f$0, dialogInterface);
            }
        });
        AlertDialog alertDialog = this.customDialog;
        Intrinsics.checkNotNull(alertDialog);
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.getCredentials$lambda$43(this.f$0, dialogInterface);
            }
        });
        AlertDialog alertDialog2 = this.customDialog;
        Intrinsics.checkNotNull(alertDialog2);
        alertDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCredentials$lambda$42(final MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AlertDialog alertDialog = this$0.customDialog;
        Intrinsics.checkNotNull(alertDialog);
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.getCredentials$lambda$42$lambda$41(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCredentials$lambda$42$lambda$41(MainActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AlertDialog alertDialog = this$0.customDialog;
        Intrinsics.checkNotNull(alertDialog);
        View viewFindViewById = alertDialog.findViewById(R.id.text_input_username);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        String strValueOf = String.valueOf(((TextInputEditText) viewFindViewById).getText());
        AlertDialog alertDialog2 = this$0.customDialog;
        Intrinsics.checkNotNull(alertDialog2);
        View viewFindViewById2 = alertDialog2.findViewById(R.id.text_input_password);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        String strValueOf2 = String.valueOf(((TextInputEditText) viewFindViewById2).getText());
        AlertDialog alertDialog3 = this$0.customDialog;
        Intrinsics.checkNotNull(alertDialog3);
        View viewFindViewById3 = alertDialog3.findViewById(R.id.text_input_vnc_password);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        String strValueOf3 = String.valueOf(((TextInputEditText) viewFindViewById3).getText());
        if (this$0.validateCredentials(strValueOf, strValueOf2, strValueOf3)) {
            AlertDialog alertDialog4 = this$0.customDialog;
            Intrinsics.checkNotNull(alertDialog4);
            alertDialog4.dismiss();
            this$0.getViewModel().submitFilesystemCredentials(strValueOf, strValueOf2, strValueOf3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCredentials$lambda$43(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().handleUserInputCancelled();
    }

    private final void displayLowStorageDialog() {
        int i = R.string.alert_storage_low_title;
        String string = getString(R.string.alert_storage_low_message, new Object[]{getString(tech.ula.customlibrary.R.string.app_name)});
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        ExtensionsKt.displayGenericErrorDialog(this, i, string, new Function0<Unit>() { // from class: tech.ula.library.MainActivity.displayLowStorageDialog.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                MainActivity.this.getViewModel().lowAvailableStorageAcknowledged();
            }
        });
    }

    private final void getDisplayPreferences(final Session session) {
        DisplayCutout cutout;
        Object systemService = getApplicationContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        floatRef.element = displayMetrics.heightPixels;
        final Ref.FloatRef floatRef2 = new Ref.FloatRef();
        floatRef2.element = displayMetrics.widthPixels;
        final Ref.FloatRef floatRef3 = new Ref.FloatRef();
        floatRef3.element = session.getDisplayScaling();
        if (Build.VERSION.SDK_INT >= 29 && (cutout = windowManager.getDefaultDisplay().getCutout()) != null) {
            floatRef.element -= cutout.getSafeInsetBottom() + cutout.getSafeInsetTop();
            floatRef2.element -= cutout.getSafeInsetLeft() + cutout.getSafeInsetRight();
        }
        if (floatRef.element > floatRef2.element) {
            float f = floatRef2.element;
            floatRef2.element = floatRef.element;
            floatRef.element = f;
        }
        if (floatRef2.element > 10000.0f) {
            floatRef.element = (floatRef.element * 10000.0f) / floatRef2.element;
            floatRef2.element = 10000.0f;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(getLayoutInflater().inflate(R.layout.dia_app_display_preferences, (ViewGroup) null));
        builder.setCancelable(true);
        builder.setPositiveButton(R.string.button_continue, (DialogInterface.OnClickListener) null);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                MainActivity.getDisplayPreferences$lambda$46(alertDialogCreate, session, floatRef, floatRef2, floatRef3, this, dialogInterface);
            }
        });
        alertDialogCreate.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.getDisplayPreferences$lambda$47(this.f$0, dialogInterface);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getDisplayPreferences$lambda$46(final AlertDialog alertDialog, Session session, final Ref.FloatRef height, final Ref.FloatRef width, final Ref.FloatRef scaling, final MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(session, "$session");
        Intrinsics.checkNotNullParameter(height, "$height");
        Intrinsics.checkNotNullParameter(width, "$width");
        Intrinsics.checkNotNullParameter(scaling, "$scaling");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(alertDialog);
        AlertDialog alertDialog2 = alertDialog;
        View viewFindViewById = alertDialog2.findViewById(R.id.text_geometry_value);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        final TextView textView = (TextView) viewFindViewById;
        View viewFindViewById2 = alertDialog2.findViewById(R.id.radio_orientation_preference);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        final RadioGroup radioGroup = (RadioGroup) viewFindViewById2;
        View viewFindViewById3 = alertDialog2.findViewById(R.id.scaling_factor_spinner);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        final Spinner spinner = (Spinner) viewFindViewById3;
        View viewFindViewById4 = alertDialog2.findViewById(R.id.checkbox_lock_orientation);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        final CheckBox checkBox = (CheckBox) viewFindViewById4;
        View viewFindViewById5 = alertDialog2.findViewById(R.id.checkbox_remember_graphical_preferences);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
        final CheckBox checkBox2 = (CheckBox) viewFindViewById5;
        int count = spinner.getCount();
        int i = 0;
        for (int i2 = 0; i2 < count; i2++) {
            if (Float.parseFloat(spinner.getItemAtPosition(i2).toString()) == session.getDisplayScaling()) {
                i = i2;
            }
        }
        spinner.setSelection(i);
        checkBox.setChecked(session.getDisplayLocked());
        checkBox2.setChecked(false);
        if (session.getDisplayOrientation() == 2) {
            radioGroup.check(R.id.landscape_radio_button);
            if (height.element > width.element) {
                float f = width.element;
                width.element = height.element;
                height.element = f;
            }
        } else {
            radioGroup.check(R.id.portrait_radio_button);
            if (height.element < width.element) {
                float f2 = width.element;
                width.element = height.element;
                height.element = f2;
            }
        }
        textView.setText(((int) (width.element / scaling.element)) + "px x " + ((int) (height.element / scaling.element)) + "px");
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda28
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i3) {
                MainActivity.getDisplayPreferences$lambda$46$lambda$44(height, width, textView, scaling, radioGroup2, i3);
            }
        });
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: tech.ula.library.MainActivity$getDisplayPreferences$1$2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                scaling.element = Float.parseFloat(spinner.getSelectedItem().toString());
                textView.setText(((int) (width.element / scaling.element)) + "px x " + ((int) (height.element / scaling.element)) + "px");
            }
        });
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.getDisplayPreferences$lambda$46$lambda$45(alertDialog, scaling, width, height, radioGroup, checkBox, checkBox2, this$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getDisplayPreferences$lambda$46$lambda$44(Ref.FloatRef height, Ref.FloatRef width, TextView text_geometry_value, Ref.FloatRef scaling, RadioGroup radioGroup, int i) {
        Intrinsics.checkNotNullParameter(height, "$height");
        Intrinsics.checkNotNullParameter(width, "$width");
        Intrinsics.checkNotNullParameter(text_geometry_value, "$text_geometry_value");
        Intrinsics.checkNotNullParameter(scaling, "$scaling");
        if (i == R.id.landscape_radio_button) {
            if (height.element > width.element) {
                float f = width.element;
                width.element = height.element;
                height.element = f;
            }
        } else if (height.element < width.element) {
            float f2 = width.element;
            width.element = height.element;
            height.element = f2;
        }
        text_geometry_value.setText(((int) (width.element / scaling.element)) + "px x " + ((int) (height.element / scaling.element)) + "px");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getDisplayPreferences$lambda$46$lambda$45(AlertDialog alertDialog, Ref.FloatRef scaling, Ref.FloatRef width, Ref.FloatRef height, RadioGroup radio_orientation_preference, CheckBox checkbox_lock_orientation, CheckBox checkbox_remember_graphical_preferences, MainActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(scaling, "$scaling");
        Intrinsics.checkNotNullParameter(width, "$width");
        Intrinsics.checkNotNullParameter(height, "$height");
        Intrinsics.checkNotNullParameter(radio_orientation_preference, "$radio_orientation_preference");
        Intrinsics.checkNotNullParameter(checkbox_lock_orientation, "$checkbox_lock_orientation");
        Intrinsics.checkNotNullParameter(checkbox_remember_graphical_preferences, "$checkbox_remember_graphical_preferences");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        alertDialog.dismiss();
        DisplayPreferences displayPreferences = new DisplayPreferences(0, false, 0.0f, false, null, 31, null);
        displayPreferences.setScaling(scaling.element);
        displayPreferences.setGeometry(((int) (width.element / scaling.element)) + "x" + ((int) (height.element / scaling.element)));
        if (radio_orientation_preference.getCheckedRadioButtonId() == R.id.landscape_radio_button) {
            displayPreferences.setOrientation(2);
        } else {
            displayPreferences.setOrientation(1);
        }
        displayPreferences.setLocked(checkbox_lock_orientation.isChecked());
        displayPreferences.setRemember(checkbox_remember_graphical_preferences.isChecked());
        this$0.getViewModel().submitAppDisplayPreferences(displayPreferences);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getDisplayPreferences$lambda$47(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().handleUserInputCancelled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestMicPermissions() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != 0) {
            requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, this.micPermissionRequestCode);
        }
    }

    private final void getServiceTypePreference(final Session session) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(getLayoutInflater().inflate(R.layout.dia_app_select_client, (ViewGroup) null));
        builder.setCancelable(true);
        builder.setPositiveButton(R.string.button_continue, (DialogInterface.OnClickListener) null);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                MainActivity.getServiceTypePreference$lambda$51(alertDialogCreate, this, session, dialogInterface);
            }
        });
        alertDialogCreate.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.getServiceTypePreference$lambda$52(this.f$0, dialogInterface);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getServiceTypePreference$lambda$51(final AlertDialog alertDialog, final MainActivity this$0, Session session, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(session, "$session");
        Intrinsics.checkNotNull(alertDialog);
        AlertDialog alertDialog2 = alertDialog;
        View viewFindViewById = alertDialog2.findViewById(R.id.ssh_radio_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        final RadioButton radioButton = (RadioButton) viewFindViewById;
        View viewFindViewById2 = alertDialog2.findViewById(R.id.vnc_radio_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        final RadioButton radioButton2 = (RadioButton) viewFindViewById2;
        View viewFindViewById3 = alertDialog2.findViewById(R.id.checkbox_sound_support);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        final CheckBox checkBox = (CheckBox) viewFindViewById3;
        View viewFindViewById4 = alertDialog2.findViewById(R.id.checkbox_mic_support);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        final CheckBox checkBox2 = (CheckBox) viewFindViewById4;
        View viewFindViewById5 = alertDialog2.findViewById(R.id.checkbox_share_storage);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
        final CheckBox checkBox3 = (CheckBox) viewFindViewById5;
        View viewFindViewById6 = alertDialog2.findViewById(R.id.checkbox_use_all_cores);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(...)");
        final CheckBox checkBox4 = (CheckBox) viewFindViewById6;
        View viewFindViewById7 = alertDialog2.findViewById(R.id.text_vm_memory_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(...)");
        final TextView textView = (TextView) viewFindViewById7;
        View viewFindViewById8 = alertDialog2.findViewById(R.id.seekbar_vm_memory);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(...)");
        final SeekBar seekBar = (SeekBar) viewFindViewById8;
        View viewFindViewById9 = alertDialog2.findViewById(R.id.checkbox_remember_service_type_preferences);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(...)");
        final CheckBox checkBox5 = (CheckBox) viewFindViewById9;
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda14
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.getServiceTypePreference$lambda$51$lambda$48(this.f$0, checkBox, compoundButton, z);
            }
        });
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda15
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.getServiceTypePreference$lambda$51$lambda$49(this.f$0, checkBox2, compoundButton, z);
            }
        });
        if (!this$0.getViewModel().getLastSelectedApp().getSupportsCli()) {
            radioButton.setEnabled(false);
            radioButton.setAlpha(0.5f);
        }
        if (Intrinsics.areEqual(session.getServiceType(), ServiceType.Ssh.INSTANCE)) {
            radioButton.setChecked(true);
        }
        if (Intrinsics.areEqual(session.getServiceType(), ServiceType.Vnc.INSTANCE)) {
            radioButton2.setChecked(true);
        }
        if (session.getSoundSupport()) {
            checkBox.setChecked(true);
        }
        if (session.getMicSupport()) {
            checkBox2.setChecked(true);
        }
        ExecutionType executionType = this$0.getViewModel().getLastSelectedFilesystem().getExecutionType();
        checkBox3.setVisibility(executionType == ExecutionType.PROOT ? 8 : 0);
        checkBox3.setChecked(session.getShareStorage());
        boolean z = executionType == ExecutionType.AVF;
        checkBox4.setVisibility(z ? 0 : 8);
        textView.setVisibility(z ? 0 : 8);
        seekBar.setVisibility(z ? 0 : 8);
        checkBox4.setText(this$0.getString(R.string.prompt_use_all_cores, new Object[]{Integer.valueOf(Runtime.getRuntime().availableProcessors())}));
        checkBox4.setChecked(session.getCpuAllCores());
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        Object systemService = this$0.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        long j = memoryInfo.totalMem / ((long) 1048576);
        final long jCoerceAtMost = RangesKt.coerceAtMost(this$0.VM_MEMORY_FLOOR_MB, j);
        seekBar.setMax(RangesKt.coerceAtLeast((int) (j - jCoerceAtMost), 0));
        long memoryMb = session.getMemoryMb() > 0 ? session.getMemoryMb() : RangesKt.coerceIn(j / ((long) 2), jCoerceAtMost, j);
        seekBar.setProgress(RangesKt.coerceIn((int) (memoryMb - jCoerceAtMost), 0, seekBar.getMax()));
        getServiceTypePreference$lambda$51$updateMemoryLabel(textView, this$0, memoryMb);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: tech.ula.library.MainActivity$getServiceTypePreference$1$3
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
                MainActivity.getServiceTypePreference$lambda$51$updateMemoryLabel(textView, this$0, jCoerceAtMost + ((long) progress));
            }
        });
        checkBox5.setChecked(false);
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.MainActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.getServiceTypePreference$lambda$51$lambda$50(alertDialog, checkBox2, checkBox, checkBox3, checkBox4, seekBar, jCoerceAtMost, checkBox5, radioButton, radioButton2, this$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getServiceTypePreference$lambda$51$lambda$48(MainActivity this$0, final CheckBox soundSupport, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(soundSupport, "$soundSupport");
        if (!z || this$0.getContributionPrompter().hasMadeInAppPurchase() || this$0.getContributionPrompter().hasMadeSubPurchase()) {
            return;
        }
        this$0.getContributionPrompter().setPurchaseRequired(true);
        this$0.proFeaturePaid = new Function0<Unit>() { // from class: tech.ula.library.MainActivity$getServiceTypePreference$1$1$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this$0.proFeatureDeclined = new Function0<Unit>() { // from class: tech.ula.library.MainActivity$getServiceTypePreference$1$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                soundSupport.setChecked(false);
            }
        };
        this$0.getBillingManager().startPurchaseFlow(BillingManager.Sku.PRO_FEATURES);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getServiceTypePreference$lambda$51$lambda$49(final MainActivity this$0, final CheckBox micSupport, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(micSupport, "$micSupport");
        if (z) {
            if (!this$0.getContributionPrompter().hasMadeInAppPurchase() && !this$0.getContributionPrompter().hasMadeSubPurchase()) {
                this$0.getContributionPrompter().setPurchaseRequired(true);
                this$0.proFeaturePaid = new Function0<Unit>() { // from class: tech.ula.library.MainActivity$getServiceTypePreference$1$2$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        this.this$0.requestMicPermissions();
                    }
                };
                this$0.proFeatureDeclined = new Function0<Unit>() { // from class: tech.ula.library.MainActivity$getServiceTypePreference$1$2$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        micSupport.setChecked(false);
                    }
                };
                this$0.getBillingManager().startPurchaseFlow(BillingManager.Sku.PRO_FEATURES);
                return;
            }
            this$0.requestMicPermissions();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getServiceTypePreference$lambda$51$updateMemoryLabel(TextView textView, MainActivity mainActivity, long j) {
        textView.setText(mainActivity.getString(R.string.prompt_vm_memory, new Object[]{Long.valueOf(j), Double.valueOf(j / 1024.0d)}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getServiceTypePreference$lambda$51$lambda$50(AlertDialog alertDialog, CheckBox micSupport, CheckBox soundSupport, CheckBox shareStorage, CheckBox useAllCores, SeekBar vmMemorySeekBar, long j, CheckBox checkbox_remember_service_type_preferences, RadioButton sshTypePreference, RadioButton vncTypePreference, MainActivity this$0, View view) {
        ServiceType.Unselected unselected;
        Intrinsics.checkNotNullParameter(micSupport, "$micSupport");
        Intrinsics.checkNotNullParameter(soundSupport, "$soundSupport");
        Intrinsics.checkNotNullParameter(shareStorage, "$shareStorage");
        Intrinsics.checkNotNullParameter(useAllCores, "$useAllCores");
        Intrinsics.checkNotNullParameter(vmMemorySeekBar, "$vmMemorySeekBar");
        Intrinsics.checkNotNullParameter(checkbox_remember_service_type_preferences, "$checkbox_remember_service_type_preferences");
        Intrinsics.checkNotNullParameter(sshTypePreference, "$sshTypePreference");
        Intrinsics.checkNotNullParameter(vncTypePreference, "$vncTypePreference");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        alertDialog.dismiss();
        ServiceTypePreferences serviceTypePreferences = new ServiceTypePreferences(null, false, false, false, 0L, false, false, 127, null);
        serviceTypePreferences.setMicSupport(micSupport.isChecked());
        serviceTypePreferences.setSoundSupport(soundSupport.isChecked());
        serviceTypePreferences.setShareStorage(shareStorage.isChecked());
        serviceTypePreferences.setCpuAllCores(useAllCores.isChecked());
        serviceTypePreferences.setMemoryMb(((long) vmMemorySeekBar.getProgress()) + j);
        serviceTypePreferences.setRemember(checkbox_remember_service_type_preferences.isChecked());
        if (sshTypePreference.isChecked()) {
            unselected = ServiceType.Ssh.INSTANCE;
        } else {
            unselected = vncTypePreference.isChecked() ? ServiceType.Vnc.INSTANCE : ServiceType.Unselected.INSTANCE;
        }
        serviceTypePreferences.setServiceType(unselected);
        this$0.getViewModel().submitAppServiceTypePreferences(serviceTypePreferences);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getServiceTypePreference$lambda$52(MainActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().handleUserInputCancelled();
    }

    private final boolean validateCredentials(String username, String password, String vncPassword) {
        String[] stringArray = getResources().getStringArray(R.array.blacklisted_usernames);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        CredentialValidator credentialValidator = new CredentialValidator();
        CredentialValidationStatus credentialValidationStatusValidateUsername = credentialValidator.validateUsername(username, stringArray);
        CredentialValidationStatus credentialValidationStatusValidatePassword = credentialValidator.validatePassword(password);
        CredentialValidationStatus credentialValidationStatusValidateVncPassword = credentialValidator.validateVncPassword(vncPassword);
        if (!credentialValidationStatusValidateUsername.getCredentialIsValid()) {
            Toast.makeText(this, credentialValidationStatusValidateUsername.getErrorMessageId(), 1).show();
            return false;
        }
        if (!credentialValidationStatusValidatePassword.getCredentialIsValid()) {
            Toast.makeText(this, credentialValidationStatusValidatePassword.getErrorMessageId(), 1).show();
            return false;
        }
        if (credentialValidationStatusValidateVncPassword.getCredentialIsValid()) {
            return true;
        }
        Toast.makeText(this, credentialValidationStatusValidateVncPassword.getErrorMessageId(), 1).show();
        return false;
    }
}
