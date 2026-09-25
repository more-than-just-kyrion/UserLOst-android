.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;


# instance fields
.field private zzd:J

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzd:J

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbha;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgz;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;-><init>()V

    return-object p1

    .line 2
    :cond_3
    const-string p1, "zzd"

    const-string p2, "zze"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhb;->zzd:J

    return-wide v0
.end method
