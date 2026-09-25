.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/libraries/vision/visionkit/pipeline/zzdu;

.field private zzh:Z

.field private zzi:Lcom/google/android/libraries/vision/visionkit/pipeline/zzj;

.field private zzj:Lcom/google/android/libraries/vision/visionkit/pipeline/zzfi;

.field private zzk:Lcom/google/android/libraries/vision/visionkit/pipeline/zzg;

.field private zzl:I

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zze:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzm:B

    return-void
.end method

.method public static zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;Lcom/google/android/libraries/vision/visionkit/pipeline/zzfi;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzj:Lcom/google/android/libraries/vision/visionkit/pipeline/zzfi;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;Lcom/google/android/libraries/vision/visionkit/pipeline/zzg;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzk:Lcom/google/android/libraries/vision/visionkit/pipeline/zzg;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;Lcom/google/android/libraries/vision/visionkit/pipeline/zzdu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzg:Lcom/google/android/libraries/vision/visionkit/pipeline/zzdu;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;Lcom/google/android/libraries/vision/visionkit/pipeline/zzj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzi:Lcom/google/android/libraries/vision/visionkit/pipeline/zzj;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzl:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzm:B

    return-object v0

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzce;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;-><init>()V

    return-object p1

    .line 2
    :cond_4
    const-string v7, "zzk"

    const-string v8, "zzl"

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzj"

    const-string v6, "zzi"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    const-string p3, "\u0001\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0001\u0001\u1409\u0000\u0002\u1007\u0001\u0003\u1009\u0003\u0004\u1009\u0002\u0005:\u0000\u0006:\u0000\u0007\u1009\u0004\u0008\u1004\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzm:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzi()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zze:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzf:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zze:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzf:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Z
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzd:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
