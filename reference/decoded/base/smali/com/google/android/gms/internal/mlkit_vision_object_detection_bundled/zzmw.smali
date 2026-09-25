.class public final Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmw;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmw;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpe;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziu;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztk;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpf;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpi;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzix;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzix;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpg;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzph;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznq;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzho;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzho;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznp;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhn;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzop;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzij;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzij;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzst;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzno;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznn;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqr;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzue;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzic;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzic;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoj;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzif;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzif;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoe;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzib;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqs;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsn;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlt;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzso;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlu;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsm;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzls;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzls;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpp;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzje;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzje;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzud;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpq;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzra;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrd;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzks;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrc;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrb;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzro;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrs;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzry;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzle;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzle;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrv;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzld;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzld;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpo;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjd;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrz;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlg;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsa;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsb;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsc;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzli;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsg;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzll;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzll;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsf;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrl;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzot;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzio;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzio;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrj;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzri;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzky;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrk;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzla;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzla;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsp;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztq;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzms;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzms;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznc;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzha;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzha;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzna;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmz;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznb;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzne;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhc;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznd;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznf;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzng;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhe;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznh;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzni;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznj;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfb;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfd;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfc;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgs;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzor;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzim;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzim;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznr;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdm;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzff;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdl;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoc;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdo;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdn;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzea;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzft;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfu;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdz;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdq;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdp;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzeg;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzef;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzga;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzga;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzeo;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzem;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzge;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzge;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfa;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzez;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzeq;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzep;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzes;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzer;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzty;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztr;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztv;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztu;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzts;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzid;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztx;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzly;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzly;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztw;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztz;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzma;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzma;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztt;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzik;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzik;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzuc;

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzub;

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzua;

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmt;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsy;

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmc;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoq;

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzil;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzil;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzou;

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzip;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzip;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmy;

    .line 96
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzok;

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzig;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzos;

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzin;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzin;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzod;

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzia;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzia;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznt;

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhs;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznu;

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzht;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhr;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzns;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznv;

    .line 103
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhu;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpk;

    .line 104
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzja;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzja;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpj;

    .line 105
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdk;

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztn;

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztp;

    .line 108
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzto;

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmx;

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgu;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznm;

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznl;

    .line 112
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznk;

    .line 113
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqo;

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqq;

    .line 115
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqp;

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzke;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzke;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdy;

    .line 117
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdx;

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqt;

    .line 119
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzki;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzki;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqw;

    .line 120
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqu;

    .line 121
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqv;

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzec;

    .line 123
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzeb;

    .line 124
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztd;

    .line 125
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztc;

    .line 126
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztl;

    .line 127
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmn;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztm;

    .line 128
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmo;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzre;

    .line 129
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkt;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrh;

    .line 130
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrf;

    .line 131
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzku;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzku;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrg;

    .line 132
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzom;

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzii;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzii;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzei;

    .line 134
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzeh;

    .line 135
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 136
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzih;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzih;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzol;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzof;

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzie;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqx;

    .line 138
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqz;

    .line 139
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzko;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqy;

    .line 140
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkn;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzee;

    .line 141
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzed;

    .line 142
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqe;

    .line 143
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjt;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqf;

    .line 144
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzju;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqg;

    .line 145
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdu;

    .line 146
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdt;

    .line 147
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfo;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqb;

    .line 148
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqc;

    .line 149
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqd;

    .line 150
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjs;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzds;

    .line 151
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdr;

    .line 152
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqh;

    .line 153
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqi;

    .line 154
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqj;

    .line 155
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqk;

    .line 156
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdw;

    .line 157
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzdv;

    .line 158
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzfq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzta;

    .line 159
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmd;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsz;

    .line 160
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzme;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzme;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzov;

    .line 161
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zziq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzox;

    .line 162
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzis;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzis;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzow;

    .line 163
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzir;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzir;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoy;

    .line 164
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzit;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzit;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsh;

    .line 165
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzln;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzln;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsi;

    .line 166
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlo;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzew;

    .line 167
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzev;

    .line 168
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzte;

    .line 169
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmi;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 170
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsd;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzse;

    .line 171
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzeu;

    .line 172
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzet;

    .line 173
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztb;

    .line 174
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmf;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqa;

    .line 175
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjh;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpz;

    .line 176
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpw;

    .line 177
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpv;

    .line 178
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpx;

    .line 179
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjn;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpy;

    .line 180
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpu;

    .line 181
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpr;

    .line 182
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpt;

    .line 183
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzjj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzps;

    .line 184
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzji;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzji;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqm;

    .line 185
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzny;

    .line 186
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzql;

    .line 187
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzka;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzka;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzqn;

    .line 188
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzkc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznx;

    .line 189
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznz;

    .line 190
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhy;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsu;

    .line 191
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmb;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsj;

    .line 192
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzth;

    .line 193
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzml;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzml;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsl;

    .line 194
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsk;

    .line 195
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzlq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztf;

    .line 196
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzey;

    .line 197
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgn;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzex;

    .line 198
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgo;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzgo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zztg;

    .line 199
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmk;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzmk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zznw;

    .line 200
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhv;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzhv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
