.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

.field private final zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Z[IIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzi:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzB(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzD(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzE(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzF(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    aget p1, p1, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzM(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzu()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzi:Z

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzt()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 2
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzp()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zzH(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzr(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzI(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzr(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzJ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzK(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzM(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzN(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzr(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzO(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzQ(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzU()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzR(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzr(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzS(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzT([BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto/16 :goto_2

    .line 5
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto/16 :goto_2

    .line 19
    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    goto/16 :goto_2

    .line 7
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    goto/16 :goto_2

    .line 2
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzh([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    goto/16 :goto_2

    .line 20
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto :goto_1

    .line 11
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto :goto_2

    .line 9
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    :goto_1
    move p0, p2

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzH(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzd(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    :cond_0
    return-object v0
.end method

.method static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;
    .locals 34

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zza:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 23
    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    .line 6
    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 29
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    .line 32
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v25, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v5, v14, :cond_23

    add-int/lit8 v14, v6, 0x1

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v14, 0x1

    .line 34
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v14, v13, :cond_1a

    and-int/lit16 v13, v14, 0x1fff

    shl-int v13, v13, v27

    or-int/2addr v6, v13

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v13, v32

    goto :goto_10

    :cond_1a
    shl-int v13, v14, v27

    or-int/2addr v6, v13

    move/from16 v14, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v13

    move/from16 v14, v27

    :goto_11
    add-int/lit8 v13, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v13, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v14, 0xc

    if-ne v13, v14, :cond_20

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;->zzc()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1e

    if-eqz v2, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 37
    aget-object v9, v15, v9

    aput-object v9, v12, v24

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v14, 0x1

    add-int/lit8 v13, v9, 0x1

    .line 34
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 35
    aget-object v9, v15, v9

    aput-object v9, v12, v28

    :goto_14
    move v9, v13

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    .line 38
    aget-object v13, v15, v6

    .line 39
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    .line 40
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 41
    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 42
    aput-object v13, v15, v6

    .line 43
    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v6, v6, 0x1

    .line 44
    aget-object v14, v15, v6

    move/from16 v28, v2

    .line 45
    instance-of v2, v14, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    .line 46
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 47
    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 48
    aput-object v14, v15, v6

    :goto_17
    move v2, v13

    .line 49
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move v13, v9

    move/from16 v29, v27

    move/from16 v27, v4

    move v9, v6

    const/4 v6, 0x0

    move-object v4, v1

    move/from16 v33, v28

    move-object/from16 v28, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_22

    :cond_23
    move/from16 v32, v13

    add-int/lit8 v13, v9, 0x1

    .line 50
    aget-object v14, v15, v9

    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move/from16 v27, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_2d

    const/16 v4, 0x11

    if-ne v5, v4, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v4, 0x1b

    if-eq v5, v4, :cond_2c

    const/16 v4, 0x31

    if-ne v5, v4, :cond_25

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1a

    :cond_25
    const/16 v4, 0xc

    if-eq v5, v4, :cond_29

    const/16 v4, 0x1e

    if-eq v5, v4, :cond_29

    const/16 v4, 0x2c

    if-ne v5, v4, :cond_26

    goto :goto_18

    :cond_26
    const/16 v4, 0x32

    if-ne v5, v4, :cond_28

    add-int/lit8 v4, v9, 0x2

    add-int/lit8 v28, v21, 0x1

    .line 55
    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    .line 56
    aget-object v13, v15, v13

    add-int v21, v21, v21

    aput-object v13, v12, v21

    if-eqz v2, :cond_27

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v13, v9, 0x3

    .line 57
    aget-object v4, v15, v4

    aput-object v4, v12, v21

    move-object v4, v1

    move/from16 v21, v28

    move-object/from16 v28, v0

    goto :goto_1e

    :cond_27
    move v13, v4

    move/from16 v21, v28

    const/4 v2, 0x0

    move-object/from16 v28, v0

    goto :goto_1d

    :cond_28
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    .line 53
    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;->zzc()I

    move-result v4

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2b

    if-eqz v2, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v4, v1

    const/4 v2, 0x0

    goto :goto_1e

    :cond_2b
    :goto_19
    add-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 54
    aget-object v13, v15, v13

    aput-object v13, v12, v4

    goto :goto_1b

    :cond_2c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v9, v9, 0x2

    .line 65
    :goto_1a
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 52
    aget-object v13, v15, v13

    aput-object v13, v12, v4

    :goto_1b
    move-object v4, v1

    move v13, v9

    goto :goto_1e

    :cond_2d
    :goto_1c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    .line 50
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 51
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v12, v4

    :goto_1d
    move-object v4, v1

    .line 58
    :goto_1e
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v8, 0x1000

    const v9, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v6, 0x1

    .line 59
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v14, 0xd800

    if-lt v6, v14, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_1f
    add-int/lit8 v23, v1, 0x1

    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v14, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    add-int/lit8 v9, v9, 0xd

    move/from16 v1, v23

    goto :goto_1f

    :cond_2e
    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    move/from16 v1, v23

    :cond_2f
    add-int v9, v7, v7

    div-int/lit8 v23, v6, 0x20

    add-int v9, v9, v23

    .line 61
    aget-object v14, v15, v9

    move/from16 v29, v1

    .line 62
    instance-of v1, v14, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    .line 63
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_20

    .line 64
    :cond_30
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 65
    aput-object v14, v15, v9

    :goto_20
    move/from16 v30, v2

    .line 66
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v6, v6, 0x20

    move v9, v1

    goto :goto_21

    :cond_31
    move/from16 v30, v2

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v5, v1, :cond_32

    const/16 v1, 0x31

    if-gt v5, v1, :cond_32

    add-int/lit8 v1, v22, 0x1

    .line 67
    aput v0, v16, v22

    move/from16 v22, v1

    :cond_32
    move/from16 v2, v30

    :goto_22
    add-int/lit8 v1, v20, 0x1

    .line 68
    aput v27, v11, v20

    add-int/lit8 v14, v20, 0x2

    move-object/from16 v27, v3

    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_33

    const/high16 v3, 0x20000000

    goto :goto_23

    :cond_33
    const/4 v3, 0x0

    :goto_23
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_24

    :cond_34
    const/4 v8, 0x0

    :goto_24
    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_25

    :cond_35
    const/4 v2, 0x0

    :goto_25
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v8

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    or-int/2addr v0, v2

    .line 69
    aput v0, v11, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v6, 0x14

    or-int/2addr v0, v9

    .line 70
    aput v0, v11, v14

    move-object v1, v4

    move v9, v13

    move/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move/from16 v4, v29

    move/from16 v13, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v32, v13

    move/from16 v26, v14

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;

    .line 71
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgd;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v32

    move/from16 v13, v26

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Z[IIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;)V

    return-object v0

    .line 72
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgx;

    const/4 v0, 0x0

    .line 73
    throw v0
.end method

.method private static zzn(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzo(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzp(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzq(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzs(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzr(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzs(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zzt(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzu(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzv(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    return-object p1
.end method

.method private final zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    aget v0, v0, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    .line 5
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzz(I)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;->zza(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 14
    new-array v4, v3, [B

    .line 15
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdm;

    const/4 v6, 0x0

    .line 16
    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdm;-><init>([BII)V

    .line 17
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, p2, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcz;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;[B)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzg(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 20
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private final zzz(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    array-length v2, v2

    if-ge v11, v2, :cond_1c

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    add-int/lit8 v5, v11, 0x2

    .line 2
    aget v13, v4, v11

    .line 3
    aget v4, v4, v5

    and-int v5, v4, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v3, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    .line 4
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v5

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v15, v4

    move v14, v0

    move/from16 v16, v1

    move v5, v4

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v2, v10

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeb;->zzJ:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeb;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeb;->zza()I

    move-result v1

    if-lt v3, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeb;->zzW:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeb;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeb;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1a

    .line 7
    :pswitch_0
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 10
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzB(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)I

    move-result v0

    goto/16 :goto_14

    .line 11
    :pswitch_1
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 12
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    .line 15
    :pswitch_2
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 16
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    goto/16 :goto_17

    .line 19
    :pswitch_3
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_19

    .line 21
    :pswitch_4
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_18

    .line 23
    :pswitch_5
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 24
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    .line 27
    :pswitch_6
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 28
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v1

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    goto/16 :goto_17

    .line 31
    :pswitch_7
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_15

    .line 36
    :pswitch_8
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)I

    move-result v0

    goto/16 :goto_14

    .line 39
    :pswitch_9
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 40
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    if-eqz v2, :cond_4

    .line 41
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_15

    .line 45
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzE(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_17

    .line 48
    :pswitch_a
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_16

    .line 50
    :pswitch_b
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_18

    .line 52
    :pswitch_c
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_19

    .line 54
    :pswitch_d
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 55
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 57
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    .line 58
    :pswitch_e
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 59
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 61
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    .line 62
    :pswitch_f
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 63
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 65
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    .line 66
    :pswitch_10
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_18

    .line 68
    :pswitch_11
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_19

    .line 70
    :pswitch_12
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    .line 72
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_12

    .line 74
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v9

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v13, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 76
    :pswitch_13
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 78
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v3, v9

    move v4, v3

    :goto_4
    if-ge v3, v2, :cond_7

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzB(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/2addr v12, v4

    goto/16 :goto_1a

    .line 81
    :pswitch_14
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 85
    :pswitch_15
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 87
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 89
    :pswitch_16
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 91
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 93
    :pswitch_17
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 95
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 97
    :pswitch_18
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 99
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 101
    :pswitch_19
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 103
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 105
    :pswitch_1a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 108
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 110
    :pswitch_1b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 112
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 114
    :pswitch_1c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 116
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_6

    .line 118
    :pswitch_1d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 120
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_6

    .line 122
    :pswitch_1e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 124
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_6

    .line 126
    :pswitch_1f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 128
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 129
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_6

    .line 130
    :pswitch_20
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 132
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 133
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_6

    .line 134
    :pswitch_21
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 136
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_7
    add-int/2addr v12, v1

    goto/16 :goto_1a

    .line 138
    :pswitch_22
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    move v0, v9

    goto/16 :goto_14

    :cond_9
    shl-int/lit8 v2, v13, 0x3

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzj(Ljava/util/List;)I

    move-result v0

    .line 142
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    :goto_9
    mul-int/2addr v1, v2

    goto/16 :goto_17

    .line 143
    :pswitch_23
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    .line 146
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzi(Ljava/util/List;)I

    move-result v0

    .line 147
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_9

    .line 148
    :pswitch_24
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 150
    :pswitch_25
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 152
    :pswitch_26
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    .line 155
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza(Ljava/util/List;)I

    move-result v0

    .line 156
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_9

    .line 157
    :pswitch_27
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 158
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    .line 160
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzk(Ljava/util/List;)I

    move-result v0

    .line 161
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_9

    .line 162
    :pswitch_28
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_7

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    .line 165
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    .line 166
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 168
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v3

    .line 169
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 170
    :pswitch_29
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 171
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_d

    :cond_e
    shl-int/lit8 v3, v13, 0x3

    .line 173
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_b
    if-ge v4, v2, :cond_10

    .line 174
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfc;

    if-eqz v13, :cond_f

    .line 175
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfc;

    .line 176
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfc;->zza()I

    move-result v5

    .line 177
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    goto :goto_c

    .line 178
    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzD(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    :goto_d
    add-int/2addr v12, v3

    goto/16 :goto_1a

    .line 179
    :pswitch_2a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_12

    :cond_11
    shl-int/lit8 v2, v13, 0x3

    .line 181
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfd;

    if-eqz v3, :cond_13

    .line 187
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfd;

    move v3, v9

    :goto_e
    if-ge v3, v1, :cond_19

    .line 188
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfd;->zzc()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    if-eqz v5, :cond_12

    .line 189
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 190
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v4

    .line 191
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_f

    .line 192
    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzE(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    move v3, v9

    :goto_10
    if-ge v3, v1, :cond_19

    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    if-eqz v5, :cond_14

    .line 183
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 184
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v4

    .line 185
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_11

    .line 186
    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzE(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 193
    :pswitch_2b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 194
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_8

    :cond_15
    shl-int/lit8 v1, v13, 0x3

    .line 196
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_14

    .line 197
    :pswitch_2c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 199
    :pswitch_2d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 201
    :pswitch_2e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 202
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_8

    :cond_16
    shl-int/lit8 v2, v13, 0x3

    .line 204
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzf(Ljava/util/List;)I

    move-result v0

    .line 205
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_9

    .line 206
    :pswitch_2f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_8

    :cond_17
    shl-int/lit8 v2, v13, 0x3

    .line 209
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzl(Ljava/util/List;)I

    move-result v0

    .line 210
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto/16 :goto_9

    .line 211
    :pswitch_30
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    :goto_12
    move v2, v9

    goto :goto_13

    :cond_18
    shl-int/lit8 v1, v13, 0x3

    .line 214
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzg(Ljava/util/List;)I

    move-result v2

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 216
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_19
    :goto_13
    add-int/2addr v12, v2

    goto/16 :goto_1a

    .line 217
    :pswitch_31
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto :goto_14

    .line 219
    :pswitch_32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 220
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzd(ILjava/util/List;Z)I

    move-result v0

    :goto_14
    add-int/2addr v12, v0

    goto/16 :goto_1a

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    .line 221
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 222
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 223
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 224
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzB(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)I

    move-result v0

    goto :goto_14

    :pswitch_34
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 226
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 227
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 228
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_35
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 229
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 230
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 231
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 232
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 234
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 236
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_38
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 238
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 239
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 240
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_39
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 242
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 243
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 244
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3a
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 245
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 246
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 247
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 248
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    .line 249
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    :goto_15
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_14

    :pswitch_3b
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 251
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 252
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)I

    move-result v0

    goto/16 :goto_14

    :pswitch_3c
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 254
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    if-eqz v2, :cond_1a

    .line 255
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 256
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 257
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    .line 258
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v2

    goto :goto_15

    .line 259
    :cond_1a
    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 261
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzE(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 262
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 263
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    :goto_16
    add-int/2addr v0, v15

    goto/16 :goto_14

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 265
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 267
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_40
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 269
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 270
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 271
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto :goto_17

    :pswitch_41
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 273
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 274
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 275
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    goto :goto_17

    :pswitch_42
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 277
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 278
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    .line 279
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzG(J)I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    goto/16 :goto_14

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 281
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    :goto_18
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_14

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 283
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_14

    :cond_1b
    :goto_1a
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    .line 284
    :cond_1c
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 285
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zza()I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_1f

    .line 287
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;->zzc()I

    move-result v1

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1b
    if-ge v9, v1, :cond_1d

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;

    .line 288
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgq;

    .line 289
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgq;->zza()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)I

    move-result v2

    add-int v18, v18, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_1d
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;

    .line 290
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1c

    :cond_1e
    add-int v12, v12, v18

    :cond_1f
    return v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v2

    .line 2
    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzS(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza(Z)I

    move-result v2

    goto/16 :goto_3

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzo(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_3

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza(Z)I

    move-result v2

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    :goto_3
    add-int/2addr v1, v2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzD(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v4, v3

    const/4 v1, -0x1

    const v5, 0xfffff

    :goto_0
    const-string v8, "Failed to parse the message."

    const/16 v17, 0x0

    if-ge v0, v14, :cond_78

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v15, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v3, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v36, v3

    move v3, v0

    move/from16 v0, v36

    :goto_1
    ushr-int/lit8 v9, v3, 0x3

    const/4 v10, 0x3

    if-le v9, v1, :cond_2

    div-int/2addr v2, v10

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zze:I

    if-lt v9, v1, :cond_1

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzf:I

    if-gt v9, v1, :cond_1

    .line 4
    invoke-direct {v6, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzs(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    .line 5
    :cond_2
    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzq(I)I

    move-result v1

    :goto_2
    move v2, v1

    const-wide/16 v20, 0x0

    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    move v14, v0

    move/from16 v19, v4

    move/from16 v27, v5

    move-object v1, v7

    move-object/from16 v23, v8

    move v8, v9

    move/from16 v18, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move v6, v13

    move/from16 v28, v16

    const/4 v0, 0x1

    move v12, v3

    goto/16 :goto_53

    :cond_3
    and-int/lit8 v10, v3, 0x7

    .line 259
    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    add-int/lit8 v23, v2, 0x1

    move/from16 v24, v3

    .line 6
    aget v3, v1, v23

    move-object/from16 v23, v8

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v8

    const v18, 0xfffff

    and-int v13, v3, v18

    int-to-long v13, v13

    move/from16 v25, v9

    const/16 v9, 0x11

    move/from16 v26, v3

    if-gt v8, v9, :cond_13

    add-int/lit8 v9, v2, 0x2

    .line 7
    aget v1, v1, v9

    ushr-int/lit8 v9, v1, 0x14

    const/16 v22, 0x1

    shl-int v9, v22, v9

    const v6, 0xfffff

    and-int/2addr v1, v6

    move/from16 v18, v2

    if-eq v1, v5, :cond_6

    if-eq v5, v6, :cond_4

    int-to-long v2, v5

    .line 8
    invoke-virtual {v11, v7, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    if-ne v1, v6, :cond_5

    move/from16 v4, v16

    goto :goto_3

    :cond_5
    int-to-long v2, v1

    .line 9
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v4, v2

    :goto_3
    move/from16 v27, v1

    goto :goto_4

    :cond_6
    move/from16 v27, v5

    :goto_4
    packed-switch v8, :pswitch_data_0

    move-object/from16 v2, p0

    move v3, v0

    move/from16 v8, v18

    const/4 v0, 0x1

    const/4 v1, 0x3

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v1, :cond_12

    shl-int/lit8 v0, v25, 0x3

    or-int/2addr v4, v9

    or-int/lit8 v13, v0, 0x4

    .line 10
    invoke-direct {v2, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v9

    move v1, v8

    move-object v8, v0

    move/from16 v14, v18

    move/from16 v5, v25

    const/16 v18, -0x1

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v3

    move-object v3, v12

    move/from16 v12, p4

    move/from16 p3, v4

    move/from16 v4, p4

    move-object/from16 v14, p6

    .line 12
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    .line 13
    invoke-direct {v2, v7, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v13, p5

    move-object v12, v3

    move v14, v4

    move-object v11, v5

    move v3, v6

    move v0, v8

    move/from16 v5, v27

    move/from16 v4, p3

    move-object v6, v2

    move v2, v1

    move/from16 v1, v25

    goto/16 :goto_0

    :pswitch_0
    if-nez v10, :cond_7

    or-int v8, v4, v9

    .line 14
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v9

    iget-wide v0, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide v4

    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 v10, v18

    move/from16 v6, v24

    move-wide v2, v13

    .line 16
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move v4, v8

    move v0, v9

    move v2, v10

    goto :goto_5

    :cond_7
    move/from16 v10, v18

    move/from16 v6, v24

    move-object/from16 v2, p0

    move v3, v0

    move v8, v4

    move v1, v10

    move-object v5, v11

    const/4 v0, 0x1

    const/16 v18, -0x1

    goto/16 :goto_11

    :pswitch_1
    move/from16 v8, v18

    move/from16 v6, v24

    if-nez v10, :cond_b

    or-int/2addr v4, v9

    .line 17
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result v1

    .line 19
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move v2, v8

    :goto_5
    move/from16 v1, v25

    move/from16 v5, v27

    move-object/from16 v6, p0

    goto/16 :goto_0

    :pswitch_2
    move/from16 v8, v18

    move/from16 v6, v24

    if-nez v10, :cond_a

    .line 20
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    const v18, 0xfffff

    move-object/from16 v5, p0

    .line 21
    invoke-direct {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v2

    const/high16 v3, -0x80000000

    and-int v3, v26, v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 23
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v2

    int-to-long v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzj(ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_9
    :goto_6
    or-int/2addr v4, v9

    .line 22
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :cond_a
    const v18, 0xfffff

    :cond_b
    move-object/from16 v2, p0

    move v3, v0

    goto/16 :goto_d

    :pswitch_3
    move-object/from16 v5, p0

    move/from16 v8, v18

    const/4 v1, 0x2

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v1, :cond_c

    or-int/2addr v4, v9

    .line 24
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v5, p0

    move/from16 v8, v18

    const/4 v1, 0x2

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v1, :cond_c

    or-int/2addr v9, v4

    .line 26
    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    .line 27
    invoke-direct {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    move v3, v0

    move-object v0, v10

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    .line 29
    invoke-direct {v13, v7, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move v3, v6

    move v2, v8

    move v4, v9

    goto/16 :goto_b

    :cond_c
    move v3, v0

    goto/16 :goto_c

    :pswitch_5
    move-object/from16 v5, p0

    move v3, v0

    move/from16 v8, v18

    const/4 v0, 0x2

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v0, :cond_10

    or-int/2addr v4, v9

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzM(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzh([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    goto :goto_7

    .line 31
    :cond_d
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzg([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    .line 30
    :goto_7
    iget-object v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    .line 32
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v5, p0

    move v3, v0

    move/from16 v8, v18

    move/from16 v18, v6

    move/from16 v6, v24

    if-nez v10, :cond_10

    or-int/2addr v4, v9

    .line 33
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    cmp-long v1, v1, v20

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    move/from16 v1, v16

    .line 34
    :goto_8
    invoke-static {v7, v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzm(Ljava/lang/Object;JZ)V

    goto :goto_9

    :pswitch_7
    move-object/from16 v5, p0

    move v3, v0

    move/from16 v8, v18

    const/4 v0, 0x5

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v0, :cond_10

    add-int/lit8 v0, v3, 0x4

    or-int/2addr v4, v9

    .line 35
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_8
    move-object/from16 v5, p0

    move v3, v0

    move/from16 v8, v18

    const/4 v0, 0x1

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v0, :cond_f

    add-int/lit8 v10, v3, 0x8

    or-int/2addr v9, v4

    .line 36
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v20

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide v2, v13

    move-object v13, v5

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_a

    :cond_f
    move-object v2, v5

    goto/16 :goto_f

    :pswitch_9
    move-object/from16 v5, p0

    move v3, v0

    move/from16 v8, v18

    move/from16 v18, v6

    move/from16 v6, v24

    if-nez v10, :cond_10

    or-int/2addr v4, v9

    .line 37
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 38
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_9
    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move v2, v8

    move/from16 v1, v25

    move-object v6, v5

    move/from16 v5, v27

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v5, p0

    move v3, v0

    move/from16 v8, v18

    move/from16 v18, v6

    move/from16 v6, v24

    if-nez v10, :cond_10

    or-int/2addr v9, v4

    .line 39
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v10

    iget-wide v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v13

    move-object v13, v5

    move-wide/from16 v4, v20

    .line 40
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_a
    move/from16 v14, p4

    move v3, v6

    move v2, v8

    move v4, v9

    move v0, v10

    :goto_b
    move-object v6, v13

    move/from16 v1, v25

    move/from16 v5, v27

    move/from16 v13, p5

    goto/16 :goto_0

    :cond_10
    :goto_c
    move-object v2, v5

    goto :goto_d

    :pswitch_b
    move-object/from16 v2, p0

    move v3, v0

    move/from16 v8, v18

    const/4 v0, 0x5

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v0, :cond_11

    add-int/lit8 v0, v3, 0x4

    or-int/2addr v4, v9

    .line 41
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 42
    invoke-static {v7, v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzp(Ljava/lang/Object;JF)V

    goto :goto_e

    :cond_11
    :goto_d
    move v1, v8

    move-object v5, v11

    const/4 v0, 0x1

    goto :goto_10

    :pswitch_c
    move-object/from16 v2, p0

    move v3, v0

    move/from16 v8, v18

    const/4 v0, 0x1

    move/from16 v18, v6

    move/from16 v6, v24

    if-ne v10, v0, :cond_12

    add-int/lit8 v0, v3, 0x8

    or-int/2addr v4, v9

    .line 43
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 44
    invoke-static {v7, v13, v14, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzo(Ljava/lang/Object;JD)V

    :goto_e
    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move/from16 v1, v25

    move/from16 v5, v27

    move-object v6, v2

    move v2, v8

    goto/16 :goto_0

    :cond_12
    :goto_f
    move v1, v8

    move-object v5, v11

    :goto_10
    const/16 v18, -0x1

    move v8, v4

    :goto_11
    move/from16 v4, p4

    move/from16 v28, v1

    move v14, v3

    move-object/from16 v33, v5

    move-object v1, v7

    move/from16 v19, v8

    move-object v7, v12

    move/from16 v8, v25

    :goto_12
    move v12, v6

    move/from16 v6, p5

    goto/16 :goto_53

    :cond_13
    move v3, v0

    move v9, v2

    move/from16 v19, v4

    move/from16 v27, v5

    move-object v2, v6

    move-object v5, v11

    move/from16 v6, v24

    move/from16 v11, v25

    const/16 v18, -0x1

    move/from16 v4, p4

    const/16 v0, 0x1b

    const/16 v24, 0xa

    if-ne v8, v0, :cond_17

    const/4 v0, 0x2

    if-ne v10, v0, :cond_16

    .line 45
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 46
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzc()Z

    move-result v1

    if-nez v1, :cond_15

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->size()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_13

    :cond_14
    add-int v24, v1, v1

    :goto_13
    move/from16 v1, v24

    .line 48
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    .line 49
    invoke-virtual {v5, v7, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object v13, v0

    .line 50
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v8

    move v0, v9

    move v9, v6

    move-object/from16 v10, p2

    move v1, v11

    move v11, v3

    move-object v3, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 51
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    move/from16 v13, p5

    move-object v12, v3

    move v14, v4

    move-object v11, v5

    move v3, v6

    move/from16 v4, v19

    move/from16 v5, v27

    move-object v6, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_0

    :cond_16
    move v8, v4

    move-object/from16 v33, v5

    move/from16 v24, v6

    move/from16 v35, v11

    move-object/from16 v7, v23

    move v11, v9

    move v9, v3

    goto/16 :goto_41

    :cond_17
    move v0, v9

    const-string v9, "Protocol message had invalid UTF-8."

    move/from16 v28, v0

    const-string v0, ""

    const-string v2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    move-object/from16 v29, v5

    const/16 v5, 0x31

    if-gt v8, v5, :cond_56

    move-object/from16 v25, v0

    move/from16 v5, v26

    int-to-long v0, v5

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 52
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v30, v9

    move-object/from16 v9, v26

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 53
    invoke-interface {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzc()Z

    move-result v26

    if-nez v26, :cond_19

    .line 54
    invoke-interface {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->size()I

    move-result v26

    if-nez v26, :cond_18

    goto :goto_14

    :cond_18
    add-int v24, v26, v26

    :goto_14
    move-wide/from16 v31, v0

    move/from16 v0, v24

    .line 55
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    .line 56
    invoke-virtual {v5, v7, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v13, v0

    goto :goto_15

    :cond_19
    move-wide/from16 v31, v0

    move-object v13, v9

    :goto_15
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    packed-switch v8, :pswitch_data_1

    move-object/from16 v14, p0

    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v11, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x3

    const/4 v9, 0x1

    if-ne v10, v0, :cond_53

    and-int/lit8 v0, v6, -0x8

    or-int/lit8 v10, v0, 0x4

    move/from16 v4, v34

    .line 57
    invoke-direct {v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move v2, v5

    move/from16 v3, p4

    move-object/from16 v23, v11

    move v11, v4

    move v4, v10

    move v9, v5

    move-object/from16 v5, p6

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    .line 59
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :pswitch_d
    const/4 v1, 0x2

    if-ne v10, v1, :cond_1c

    .line 63
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 64
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;

    .line 65
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_16
    if-ge v0, v1, :cond_1a

    .line 66
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v8, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 67
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    goto :goto_16

    :cond_1a
    if-ne v0, v1, :cond_1b

    goto/16 :goto_1a

    .line 333
    :cond_1b
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 298
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 299
    throw v0

    :cond_1c
    if-nez v10, :cond_21

    .line 68
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 69
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;

    .line 70
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 71
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    :goto_17
    if-ge v0, v4, :cond_20

    .line 72
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_20

    .line 73
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide v1

    .line 74
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    goto :goto_17

    :pswitch_e
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1f

    .line 75
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 76
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;

    .line 77
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_18
    if-ge v0, v1, :cond_1d

    .line 78
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v5, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 79
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;->zzg(I)V

    goto :goto_18

    :cond_1d
    if-ne v0, v1, :cond_1e

    goto :goto_1a

    .line 299
    :cond_1e
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 300
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 301
    throw v0

    :cond_1f
    if-nez v10, :cond_21

    .line 80
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 81
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;

    .line 82
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;->zzg(I)V

    :goto_19
    if-ge v0, v4, :cond_20

    .line 84
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_20

    .line 85
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result v1

    .line 86
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;->zzg(I)V

    goto :goto_19

    :cond_20
    :goto_1a
    move-object/from16 v14, p0

    move v9, v3

    move v7, v4

    move v8, v11

    move/from16 v11, v28

    move-object/from16 v33, v29

    goto/16 :goto_3b

    :cond_21
    move-object/from16 v14, p0

    move v9, v3

    move v7, v4

    move v8, v11

    move/from16 v11, v28

    move-object/from16 v33, v29

    goto/16 :goto_3a

    :pswitch_f
    const/4 v0, 0x2

    if-ne v10, v0, :cond_22

    .line 87
    invoke-static {v15, v3, v13, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzf([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    move-object/from16 v8, p0

    move/from16 v22, v0

    move v10, v3

    move v7, v4

    move/from16 v14, v28

    move-object/from16 v33, v29

    const/4 v9, 0x1

    goto :goto_1b

    :cond_22
    if-nez v10, :cond_23

    move/from16 v14, v28

    const/4 v1, 0x1

    move v0, v6

    move v9, v1

    move-object/from16 v1, p2

    move-object/from16 v8, p0

    move v2, v3

    move v10, v3

    move/from16 v3, p4

    move v5, v4

    move-object v4, v13

    move v7, v5

    move-object/from16 v33, v29

    move-object/from16 v5, p6

    .line 88
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    move/from16 v22, v0

    .line 89
    :goto_1b
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    move-object/from16 v0, p1

    move v1, v11

    move-object v2, v13

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzn(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;)Ljava/lang/Object;

    move v9, v10

    move/from16 v0, v22

    :goto_1c
    move/from16 v36, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v36

    goto/16 :goto_3b

    :cond_23
    move v7, v4

    move-object/from16 v33, v29

    move-object/from16 v14, p0

    move v9, v3

    move v8, v11

    move/from16 v11, v28

    goto/16 :goto_3a

    :pswitch_10
    move-object/from16 v8, p0

    move v5, v3

    move v7, v4

    move/from16 v14, v28

    move-object/from16 v33, v29

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-ne v10, v1, :cond_2b

    .line 91
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v3, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v3, :cond_2a

    .line 92
    array-length v4, v15

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_29

    if-nez v3, :cond_24

    .line 93
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-interface {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 94
    :cond_24
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzo([BII)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/2addr v1, v3

    :goto_1e
    if-ge v1, v7, :cond_28

    .line 95
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v4, :cond_28

    .line 96
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v3, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v3, :cond_27

    .line 97
    array-length v4, v15

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_26

    if-nez v3, :cond_25

    .line 309
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 98
    invoke-interface {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 99
    :cond_25
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzo([BII)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 97
    :cond_26
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 308
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 309
    throw v0

    .line 96
    :cond_27
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 306
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 307
    throw v1

    :cond_28
    move v0, v1

    move v9, v5

    goto :goto_1c

    .line 92
    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 304
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 305
    throw v0

    .line 91
    :cond_2a
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 302
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 303
    throw v1

    :pswitch_11
    move-object/from16 v8, p0

    move v5, v3

    move v7, v4

    move/from16 v14, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v10, v0, :cond_2b

    .line 100
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    move-object v4, v8

    move-object/from16 v3, v23

    move-object v8, v0

    move v1, v9

    move v9, v6

    move-object/from16 v10, p2

    move v2, v11

    move v11, v5

    move-object v0, v12

    move/from16 v12, p4

    move/from16 v34, v14

    move-object/from16 v14, p6

    .line 101
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    move-object v12, v0

    :goto_1f
    move-object v14, v4

    move v9, v5

    move v0, v8

    move/from16 v11, v34

    move v8, v2

    goto/16 :goto_3b

    :cond_2b
    move v9, v5

    move/from16 v36, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v36

    goto/16 :goto_3a

    :pswitch_12
    move v5, v3

    move v7, v4

    move v2, v11

    move-object/from16 v3, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v1, 0x1

    const/4 v8, 0x2

    move-object/from16 v4, p0

    if-ne v10, v8, :cond_38

    const-wide/32 v8, 0x20000000

    and-long v8, v31, v8

    cmp-long v8, v8, v20

    if-nez v8, :cond_30

    .line 102
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v9, :cond_2f

    if-nez v9, :cond_2c

    move-object/from16 v11, v25

    .line 103
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2c
    move-object/from16 v11, v25

    .line 110
    new-instance v10, Ljava/lang/String;

    .line 104
    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v8, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 105
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/2addr v8, v9

    :goto_21
    if-ge v8, v7, :cond_35

    .line 106
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v9

    iget v10, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v10, :cond_35

    .line 107
    invoke-static {v15, v9, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v9, :cond_2e

    if-nez v9, :cond_2d

    .line 108
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2d
    new-instance v10, Ljava/lang/String;

    .line 109
    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v8, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 110
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 107
    :cond_2e
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 312
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 313
    throw v1

    .line 102
    :cond_2f
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 310
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 311
    throw v1

    :cond_30
    move-object/from16 v11, v25

    .line 111
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v9, :cond_37

    if-nez v9, :cond_31

    .line 112
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_31
    add-int v10, v8, v9

    .line 113
    invoke-static {v15, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhp;->zze([BII)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 317
    new-instance v14, Ljava/lang/String;

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v8, v9, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 115
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    move v8, v10

    :goto_22
    if-ge v8, v7, :cond_35

    .line 116
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v9, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v9, :cond_35

    .line 117
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v1, :cond_34

    if-nez v1, :cond_32

    .line 118
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    add-int v9, v8, v1

    .line 119
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhp;->zze([BII)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 321
    new-instance v10, Ljava/lang/String;

    .line 120
    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v8, v1, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 121
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    move v8, v9

    goto :goto_22

    .line 119
    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    move-object/from16 v9, v30

    .line 320
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 321
    throw v0

    .line 117
    :cond_34
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 318
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 319
    throw v1

    :cond_35
    move-object/from16 v23, v3

    goto/16 :goto_1f

    :cond_36
    move-object/from16 v9, v30

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 316
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 317
    throw v0

    .line 111
    :cond_37
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 314
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 315
    throw v1

    :cond_38
    move v8, v2

    :cond_39
    move-object/from16 v23, v3

    move-object v14, v4

    :goto_23
    move v9, v5

    :goto_24
    move/from16 v11, v34

    goto/16 :goto_3a

    :pswitch_13
    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v3, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    move-object/from16 v4, p0

    if-ne v10, v0, :cond_3d

    .line 122
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 123
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbct;

    .line 124
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_25
    if-ge v0, v1, :cond_3b

    .line 125
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v9, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    cmp-long v9, v9, v20

    if-eqz v9, :cond_3a

    const/4 v9, 0x1

    goto :goto_26

    :cond_3a
    move/from16 v9, v16

    .line 126
    :goto_26
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbct;->zze(Z)V

    goto :goto_25

    :cond_3b
    if-ne v0, v1, :cond_3c

    goto/16 :goto_2d

    .line 301
    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 322
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 323
    throw v0

    :cond_3d
    if-nez v10, :cond_39

    .line 127
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 128
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbct;

    .line 129
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    cmp-long v1, v1, v20

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_27

    :cond_3e
    move/from16 v1, v16

    .line 130
    :goto_27
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbct;->zze(Z)V

    :goto_28
    if-ge v0, v7, :cond_46

    .line 131
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_46

    .line 132
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    cmp-long v1, v1, v20

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_29

    :cond_3f
    move/from16 v1, v16

    .line 133
    :goto_29
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbct;->zze(Z)V

    goto :goto_28

    :pswitch_14
    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v3, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    move-object/from16 v4, p0

    if-ne v10, v0, :cond_42

    .line 134
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 135
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;

    .line 136
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_2a
    if-ge v0, v1, :cond_40

    .line 137
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;->zzg(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2a

    :cond_40
    if-ne v0, v1, :cond_41

    goto/16 :goto_2f

    .line 323
    :cond_41
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 324
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 325
    throw v0

    :cond_42
    const/4 v0, 0x5

    if-ne v10, v0, :cond_39

    add-int/lit8 v0, v5, 0x4

    .line 138
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 139
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;

    .line 140
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;->zzg(I)V

    :goto_2b
    if-ge v0, v7, :cond_46

    .line 141
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_46

    .line 142
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbem;->zzg(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_2b

    :pswitch_15
    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v3, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    move-object/from16 v4, p0

    if-ne v10, v0, :cond_45

    .line 143
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 144
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;

    .line 145
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_2c
    if-ge v0, v1, :cond_43

    .line 146
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_2c

    :cond_43
    if-ne v0, v1, :cond_44

    :goto_2d
    goto :goto_2f

    .line 325
    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 326
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 327
    throw v0

    :cond_45
    const/4 v1, 0x1

    if-ne v10, v1, :cond_39

    add-int/lit8 v0, v5, 0x8

    .line 147
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 148
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;

    .line 149
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    :goto_2e
    if-ge v0, v7, :cond_46

    .line 150
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v2

    iget v9, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v9, :cond_46

    .line 151
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    add-int/lit8 v0, v2, 0x8

    goto :goto_2e

    :pswitch_16
    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v3, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    const/4 v1, 0x1

    move-object/from16 v4, p0

    if-ne v10, v0, :cond_47

    .line 152
    invoke-static {v15, v5, v13, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzf([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    :cond_46
    :goto_2f
    move-object/from16 v23, v3

    move-object v14, v4

    move v9, v5

    :goto_30
    move/from16 v11, v34

    goto/16 :goto_3b

    :cond_47
    if-nez v10, :cond_48

    move v0, v6

    move v9, v1

    move-object/from16 v1, p2

    move v2, v5

    move-object v11, v3

    move/from16 v3, p4

    move-object v14, v4

    move-object v4, v13

    move v10, v5

    move-object/from16 v5, p6

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    move v9, v10

    :goto_31
    move-object/from16 v23, v11

    goto :goto_30

    :cond_48
    move-object v14, v4

    move-object/from16 v23, v3

    goto/16 :goto_23

    :pswitch_17
    move-object/from16 v14, p0

    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v11, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v10, v0, :cond_4b

    .line 154
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 155
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;

    .line 156
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_32
    if-ge v0, v1, :cond_49

    .line 157
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v3, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 158
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    goto :goto_32

    :cond_49
    if-ne v0, v1, :cond_4a

    goto/16 :goto_38

    .line 327
    :cond_4a
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 328
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 329
    throw v0

    :cond_4b
    if-nez v10, :cond_53

    .line 159
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 160
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;

    .line 161
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 162
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    :goto_33
    if-ge v0, v7, :cond_52

    .line 163
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_52

    .line 164
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 165
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfg;->zzg(J)V

    goto :goto_33

    :pswitch_18
    move-object/from16 v14, p0

    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v11, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v10, v0, :cond_4e

    .line 166
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 167
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbec;

    .line 168
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_34
    if-ge v0, v1, :cond_4c

    .line 169
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 170
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbec;->zzg(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_34

    :cond_4c
    if-ne v0, v1, :cond_4d

    goto/16 :goto_38

    .line 329
    :cond_4d
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 330
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 331
    throw v0

    :cond_4e
    const/4 v0, 0x5

    if-ne v10, v0, :cond_53

    add-int/lit8 v0, v5, 0x4

    .line 171
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 172
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbec;

    .line 173
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 174
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbec;->zzg(F)V

    :goto_35
    if-ge v0, v7, :cond_52

    .line 175
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_52

    .line 176
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 177
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbec;->zzg(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_35

    :pswitch_19
    move-object/from16 v14, p0

    move v5, v3

    move v7, v4

    move v8, v11

    move-object/from16 v11, v23

    move/from16 v34, v28

    move-object/from16 v33, v29

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v10, v0, :cond_51

    .line 178
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 179
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbds;

    .line 180
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    add-int/2addr v1, v0

    :goto_36
    if-ge v0, v1, :cond_4f

    .line 181
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 182
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbds;->zzf(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_36

    :cond_4f
    if-ne v0, v1, :cond_50

    goto :goto_38

    .line 350
    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 332
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 333
    throw v0

    :cond_51
    if-ne v10, v9, :cond_53

    add-int/lit8 v0, v5, 0x8

    .line 183
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 184
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbds;

    .line 185
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 186
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbds;->zzf(D)V

    :goto_37
    if-ge v0, v7, :cond_52

    .line 187
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v2, :cond_52

    .line 188
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 189
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbds;->zzf(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_37

    :cond_52
    :goto_38
    move v9, v5

    goto/16 :goto_31

    :goto_39
    if-ge v0, v7, :cond_54

    .line 60
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v2

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ne v6, v1, :cond_54

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v4, v10

    move-object/from16 v5, p6

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    .line 62
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_53
    move v9, v5

    move-object/from16 v23, v11

    goto/16 :goto_24

    :goto_3a
    move v0, v9

    :cond_54
    :goto_3b
    if-eq v0, v9, :cond_55

    move/from16 v13, p5

    move v3, v6

    move v1, v8

    move v2, v11

    move-object v6, v14

    move/from16 v4, v19

    move/from16 v5, v27

    move-object/from16 v11, v33

    move v14, v7

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_55
    move-object/from16 v1, p1

    move v14, v0

    move/from16 v28, v11

    move-object v7, v12

    const/4 v0, 0x1

    goto/16 :goto_12

    :cond_56
    move-object/from16 v4, p0

    move/from16 v24, v6

    move/from16 v25, v11

    move-object/from16 v7, v23

    move/from16 v5, v26

    move/from16 v11, v28

    move-object/from16 v33, v29

    move/from16 v36, v3

    move-object v3, v0

    move-object v0, v9

    move/from16 v9, v36

    const/16 v6, 0x32

    if-ne v8, v6, :cond_62

    const/4 v6, 0x2

    if-ne v10, v6, :cond_61

    .line 177
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 190
    invoke-direct {v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v6, p1

    move/from16 v8, p4

    .line 191
    invoke-virtual {v0, v6, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 192
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;->zza(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 193
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    move-result-object v5

    .line 194
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v0, v6, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v5

    .line 196
    :cond_57
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    move-result-object v10

    .line 197
    move-object v13, v3

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    .line 198
    invoke-static {v15, v9, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-ltz v1, :cond_60

    sub-int v3, v8, v0

    if-gt v1, v3, :cond_60

    add-int v14, v0, v1

    .line 335
    iget-object v1, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzb:Ljava/lang/Object;

    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzd:Ljava/lang/Object;

    move-object v5, v1

    move-object v3, v2

    :goto_3c
    if-ge v0, v14, :cond_5d

    add-int/lit8 v1, v0, 0x1

    .line 199
    aget-byte v0, v15, v0

    if-gez v0, :cond_58

    .line 200
    invoke-static {v0, v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    move/from16 v36, v1

    move v1, v0

    move/from16 v0, v36

    :cond_58
    ushr-int/lit8 v2, v0, 0x3

    move-object/from16 p3, v3

    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_59

    move-object/from16 v2, p3

    move-object v6, v5

    move/from16 v35, v25

    goto :goto_3e

    .line 206
    :cond_59
    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    .line 201
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zza()I

    move-result v2

    if-ne v3, v2, :cond_5a

    iget-object v3, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    iget-object v0, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzd:Ljava/lang/Object;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, p2

    move/from16 v2, p4

    move/from16 v4, v25

    move/from16 v35, v4

    move-object/from16 v4, v23

    move-object v6, v5

    move-object/from16 v5, p6

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzT([BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-object v3, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    move-object/from16 v4, p0

    goto :goto_3f

    :cond_5a
    move-object v6, v5

    move/from16 v35, v25

    goto :goto_3d

    :cond_5b
    move-object v6, v5

    move/from16 v35, v25

    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    .line 204
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zza()I

    move-result v2

    if-ne v3, v2, :cond_5c

    iget-object v3, v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v6, p3

    move-object/from16 v5, p6

    .line 205
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzT([BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-object v5, v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    move-object/from16 v4, p0

    move-object v3, v6

    goto :goto_40

    :cond_5c
    :goto_3d
    move-object/from16 v2, p3

    .line 206
    :goto_3e
    invoke-static {v0, v15, v1, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    move-object/from16 v4, p0

    move-object v3, v2

    :goto_3f
    move-object v5, v6

    :goto_40
    move/from16 v25, v35

    move-object/from16 v6, p1

    goto :goto_3c

    :cond_5d
    move-object v2, v3

    move-object v6, v5

    move/from16 v35, v25

    if-ne v0, v14, :cond_5f

    .line 207
    invoke-interface {v13, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v14, v9, :cond_5e

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v13, p5

    move v2, v11

    move v0, v14

    move/from16 v4, v19

    move/from16 v3, v24

    move/from16 v5, v27

    move-object/from16 v11, v33

    move/from16 v1, v35

    move v14, v8

    goto/16 :goto_0

    :cond_5e
    move-object/from16 v1, p1

    move/from16 v6, p5

    move-object/from16 v23, v7

    goto :goto_42

    .line 205
    :cond_5f
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 336
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 337
    throw v0

    .line 198
    :cond_60
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 334
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 335
    throw v0

    :cond_61
    move/from16 v8, p4

    move/from16 v35, v25

    :goto_41
    move-object/from16 v1, p1

    move/from16 v6, p5

    move-object/from16 v23, v7

    move v14, v9

    :goto_42
    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    const/4 v0, 0x1

    goto/16 :goto_53

    :cond_62
    move/from16 v6, p4

    move/from16 v35, v25

    add-int/lit8 v2, v11, 0x2

    .line 207
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 208
    aget v1, v1, v2

    const v2, 0xfffff

    and-int/2addr v1, v2

    move-object/from16 v25, v3

    int-to-long v2, v1

    packed-switch v8, :pswitch_data_2

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    :goto_43
    move/from16 v12, v24

    move/from16 v8, v35

    :cond_63
    :goto_44
    const/4 v0, 0x1

    goto/16 :goto_51

    :pswitch_1a
    const/4 v1, 0x3

    if-ne v10, v1, :cond_64

    and-int/lit8 v0, v24, -0x8

    or-int/lit8 v13, v0, 0x4

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move/from16 v0, v35

    .line 209
    invoke-direct {v5, v1, v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 210
    invoke-direct {v5, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v3

    move-object v8, v2

    move v4, v9

    move-object v9, v3

    move-object/from16 v10, p2

    move v3, v11

    move v11, v4

    move-object v14, v12

    move/from16 v12, p4

    move-object/from16 v23, v7

    move-object v7, v14

    move-object/from16 v14, p6

    .line 211
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v8

    .line 212
    invoke-direct {v5, v1, v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v28, v3

    move v9, v4

    move v10, v8

    goto :goto_46

    :cond_64
    move-object/from16 v5, p0

    move-object/from16 v23, v7

    move-object v7, v12

    move-object/from16 v1, p1

    move/from16 v28, v11

    goto :goto_43

    :pswitch_1b
    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move v8, v11

    move-object v7, v12

    move/from16 v0, v35

    if-nez v10, :cond_65

    .line 213
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v10

    iget-wide v11, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 214
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v1, v13, v14, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 215
    invoke-virtual {v4, v1, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_1c
    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move v8, v11

    move-object v7, v12

    move/from16 v0, v35

    if-nez v10, :cond_65

    .line 216
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v10

    iget v11, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 217
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v1, v13, v14, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 218
    invoke-virtual {v4, v1, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_45
    move/from16 v28, v8

    :goto_46
    move/from16 v12, v24

    goto/16 :goto_49

    :cond_65
    move/from16 v28, v8

    move/from16 v12, v24

    goto/16 :goto_4b

    :pswitch_1d
    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move v8, v11

    move-object v7, v12

    move/from16 v0, v35

    if-nez v10, :cond_68

    .line 219
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v10

    iget v11, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 220
    invoke-direct {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v12

    if-eqz v12, :cond_67

    invoke-interface {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;->zza(I)Z

    move-result v12

    if-eqz v12, :cond_66

    goto :goto_47

    .line 223
    :cond_66
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v2

    int-to-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v12, v24

    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzj(ILjava/lang/Object;)V

    goto :goto_48

    :cond_67
    :goto_47
    move/from16 v12, v24

    .line 221
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v1, v13, v14, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 222
    invoke-virtual {v4, v1, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :cond_68
    move/from16 v12, v24

    goto/16 :goto_4a

    :pswitch_1e
    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move v8, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v0, v35

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6a

    .line 224
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v10

    iget-object v11, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    .line 225
    invoke-virtual {v4, v1, v13, v14, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 226
    invoke-virtual {v4, v1, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_48
    move/from16 v28, v8

    :goto_49
    move v8, v0

    goto/16 :goto_50

    :pswitch_1f
    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move v8, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v0, v35

    const/4 v11, 0x2

    if-ne v10, v11, :cond_69

    .line 227
    invoke-direct {v5, v1, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v10

    .line 228
    invoke-direct {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    move v11, v0

    move-object v0, v10

    move-object v13, v1

    move-object v1, v2

    const v14, 0xfffff

    move-object/from16 v2, p2

    move v3, v9

    move/from16 v4, p4

    move-object v6, v5

    move-object/from16 v5, p6

    .line 229
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    .line 230
    invoke-direct {v6, v13, v11, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    move v10, v0

    move/from16 v28, v8

    move v8, v11

    move-object v1, v13

    goto/16 :goto_50

    :cond_69
    move-object v6, v5

    :cond_6a
    :goto_4a
    move/from16 v28, v8

    :goto_4b
    move v8, v0

    goto/16 :goto_44

    :pswitch_20
    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    const/4 v11, 0x2

    if-ne v10, v11, :cond_63

    .line 231
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v10

    iget v11, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    if-nez v11, :cond_6b

    move-object/from16 v6, v25

    .line 232
    invoke-virtual {v4, v1, v13, v14, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4d

    :cond_6b
    add-int v6, v10, v11

    const/high16 v24, 0x20000000

    and-int v5, v5, v24

    if-eqz v5, :cond_6d

    .line 233
    invoke-static {v15, v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhp;->zze([BII)Z

    move-result v5

    if-eqz v5, :cond_6c

    goto :goto_4c

    .line 5
    :cond_6c
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 338
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 339
    throw v1

    .line 233
    :cond_6d
    :goto_4c
    new-instance v0, Ljava/lang/String;

    .line 234
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v0, v15, v10, v11, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 235
    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v10, v6

    .line 236
    :goto_4d
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_50

    :pswitch_21
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    if-nez v10, :cond_63

    .line 237
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v5, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    cmp-long v5, v5, v20

    if-eqz v5, :cond_6e

    const/4 v5, 0x1

    goto :goto_4e

    :cond_6e
    move/from16 v5, v16

    .line 238
    :goto_4e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 239
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_22
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    const/4 v0, 0x5

    if-ne v10, v0, :cond_63

    add-int/lit8 v0, v9, 0x4

    .line 240
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_23
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    const/4 v0, 0x1

    if-ne v10, v0, :cond_6f

    add-int/lit8 v0, v9, 0x8

    .line 242
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 243
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :pswitch_24
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    if-nez v10, :cond_63

    .line 244
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget v5, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 245
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 246
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :pswitch_25
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    if-nez v10, :cond_63

    .line 247
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    iget-wide v5, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 248
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 249
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :pswitch_26
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    const/4 v0, 0x5

    if-ne v10, v0, :cond_63

    add-int/lit8 v0, v9, 0x4

    .line 250
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 251
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v1, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 252
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4f
    move v10, v0

    :goto_50
    const/4 v0, 0x1

    goto :goto_52

    :pswitch_27
    move-object/from16 v1, p1

    move-object/from16 v23, v7

    move/from16 v28, v11

    move-object v7, v12

    move/from16 v12, v24

    move/from16 v8, v35

    const/4 v0, 0x1

    if-ne v10, v0, :cond_6f

    add-int/lit8 v5, v9, 0x8

    .line 253
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 254
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v1, v13, v14, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 255
    invoke-virtual {v4, v1, v2, v3, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v10, v5

    goto :goto_52

    :cond_6f
    :goto_51
    move v10, v9

    :goto_52
    if-eq v10, v9, :cond_70

    move-object/from16 v6, p0

    move/from16 v14, p4

    move/from16 v13, p5

    move v0, v10

    move v3, v12

    move/from16 v4, v19

    move/from16 v5, v27

    move/from16 v2, v28

    move-object/from16 v11, v33

    move-object v12, v7

    move-object v7, v1

    move v1, v8

    goto/16 :goto_0

    :cond_70
    move/from16 v6, p5

    move v14, v10

    :goto_53
    if-ne v12, v6, :cond_71

    if-eqz v6, :cond_71

    move-object/from16 v9, p0

    move-object v8, v1

    move/from16 v4, v19

    move/from16 v5, v27

    goto/16 :goto_5b

    :cond_71
    move-object/from16 v13, p0

    .line 347
    iget-boolean v2, v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v2, :cond_77

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    .line 256
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzb:I

    .line 257
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza:I

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    if-eq v2, v3, :cond_77

    iget-object v2, v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    .line 260
    sget v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza:I

    .line 261
    invoke-virtual {v3, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    move-result-object v2

    if-nez v2, :cond_72

    .line 262
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v4

    move v0, v12

    move-object v11, v1

    move-object/from16 v1, p2

    move v2, v14

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 263
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    :goto_54
    move/from16 v22, v8

    move-object v8, v11

    move/from16 v23, v12

    move-object v9, v13

    goto/16 :goto_5a

    :cond_72
    move-object v11, v1

    .line 264
    move-object v1, v11

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    .line 265
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 266
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    .line 267
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    if-eq v3, v4, :cond_76

    .line 268
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_3

    goto :goto_55

    .line 285
    :pswitch_28
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget-wide v3, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 286
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzG(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_55

    .line 287
    :pswitch_29
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 288
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzF(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :goto_55
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    goto/16 :goto_58

    .line 339
    :pswitch_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    .line 350
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_2b
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    goto/16 :goto_59

    .line 272
    :pswitch_2c
    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v3

    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v3

    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 274
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_73

    .line 275
    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 276
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    :cond_73
    move-object v1, v3

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 277
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    goto/16 :goto_54

    :pswitch_2d
    shl-int/lit8 v0, v8, 0x3

    or-int/lit8 v0, v0, 0x4

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v4

    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v9

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 279
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_74

    .line 280
    invoke-interface {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 281
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    :cond_74
    move/from16 v22, v8

    move-object v8, v3

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v14

    move/from16 v23, v12

    move/from16 v12, p4

    move-object v4, v13

    move v13, v0

    move-object/from16 v14, p6

    .line 282
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    move-object v9, v4

    move-object v8, v5

    goto/16 :goto_5a

    :pswitch_2e
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    .line 283
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzg([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    goto/16 :goto_59

    :pswitch_2f
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    .line 289
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    cmp-long v3, v8, v20

    if-eqz v3, :cond_75

    goto :goto_56

    :cond_75
    move/from16 v0, v16

    .line 290
    :goto_56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_58

    :pswitch_30
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    add-int/lit8 v0, v14, 0x4

    .line 291
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_57

    :pswitch_31
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    add-int/lit8 v0, v14, 0x8

    .line 292
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_57

    :pswitch_32
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    .line 293
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_58

    :pswitch_33
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    .line 295
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzm([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v14

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzb:J

    .line 296
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_58

    :pswitch_34
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    add-int/lit8 v0, v14, 0x4

    .line 271
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 272
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    goto :goto_57

    :pswitch_35
    move/from16 v22, v8

    move-object v5, v11

    move/from16 v23, v12

    move-object v4, v13

    add-int/lit8 v0, v14, 0x8

    .line 269
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzq([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 270
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    :goto_57
    move v14, v0

    :goto_58
    move-object/from16 v0, v17

    .line 268
    :goto_59
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 297
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    move-object v9, v4

    move-object v8, v5

    move v0, v14

    goto :goto_5a

    :cond_76
    move-object v4, v13

    .line 348
    invoke-static {v15, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    .line 349
    throw v17

    :cond_77
    move-object v5, v1

    move/from16 v22, v8

    move/from16 v23, v12

    move-object v4, v13

    .line 258
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v8

    move/from16 v0, v23

    move-object/from16 v1, p2

    move v2, v14

    move/from16 v3, p4

    move-object v9, v4

    move-object v4, v8

    move-object v8, v5

    move-object/from16 v5, p6

    .line 259
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v0

    :goto_5a
    move/from16 v14, p4

    move v13, v6

    move-object v12, v7

    move-object v7, v8

    move-object v6, v9

    move/from16 v4, v19

    move/from16 v1, v22

    move/from16 v3, v23

    move/from16 v5, v27

    move/from16 v2, v28

    move-object/from16 v11, v33

    goto/16 :goto_0

    :cond_78
    move/from16 v19, v4

    move/from16 v27, v5

    move-object v9, v6

    move-object/from16 v23, v8

    move-object/from16 v33, v11

    move v6, v13

    move-object v8, v7

    move v14, v0

    move v12, v3

    :goto_5b
    const v0, 0xfffff

    if-eq v5, v0, :cond_79

    int-to-long v0, v5

    move-object/from16 v2, v33

    .line 340
    invoke-virtual {v2, v8, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_79
    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    move v7, v0

    move-object/from16 v3, v17

    :goto_5c
    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    if-ge v7, v0, :cond_7a

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    iget-object v4, v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    .line 341
    aget v2, v0, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    .line 342
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_7a
    if-eqz v3, :cond_7b

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    .line 343
    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    if-nez v6, :cond_7d

    move/from16 v0, p4

    if-ne v14, v0, :cond_7c

    goto :goto_5d

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    move-object/from16 v1, v23

    .line 344
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 345
    throw v0

    :cond_7d
    move/from16 v0, p4

    move-object/from16 v1, v23

    if-gt v14, v0, :cond_7e

    if-ne v12, v6, :cond_7e

    :goto_5d
    return v14

    :cond_7e
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    .line 346
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 347
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_32
        :pswitch_2a
        :pswitch_30
        :pswitch_31
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzF()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzS(I)V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzQ()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 10
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zzc()V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzb()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 8
    aget v2, v2, v1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzi(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzD(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v1

    .line 3
    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzF(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzF(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 5
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->size()I

    move-result v3

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->size()I

    move-result v6

    if-lez v3, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v3

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzE(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzE(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzm(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzp(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzo(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzq(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzp(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzD(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzc()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzq(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    if-gez v0, :cond_d

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_1

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    move-object v3, v8

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    if-ge p2, p3, :cond_17

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    .line 240
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 245
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-nez v0, :cond_2

    move-object v0, v7

    goto :goto_2

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 5
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_b

    if-nez v9, :cond_3

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    move-result-object v9

    .line 9
    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    if-eq v1, v2, :cond_a

    .line 243
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v1, v7

    goto/16 :goto_3

    .line 34
    :pswitch_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzn()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_3

    .line 35
    :pswitch_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_3

    .line 36
    :pswitch_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzm()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_3

    .line 37
    :pswitch_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_3

    .line 241
    :pswitch_4
    const-string p2, "Shouldn\'t reach here."

    new-instance p3, Ljava/lang/IllegalStateException;

    .line 244
    invoke-direct {p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 38
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzj()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_3

    .line 33
    :pswitch_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzp()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v1

    goto/16 :goto_3

    .line 51
    :pswitch_7
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 12
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    if-eqz v2, :cond_5

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v2

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    .line 17
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzU()Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 20
    invoke-virtual {v9, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    move-object v1, v3

    .line 21
    :cond_4
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 14
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzs(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_8
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 22
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    if-eqz v2, :cond_7

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v2

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    .line 27
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzU()Z

    move-result v3

    if-nez v3, :cond_6

    .line 28
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zze()Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 30
    invoke-virtual {v9, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    move-object v1, v3

    .line 31
    :cond_6
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 24
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzr(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 32
    :pswitch_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzt()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 39
    :pswitch_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzQ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    .line 40
    :pswitch_b
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 41
    :pswitch_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzk()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 42
    :pswitch_d
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 43
    :pswitch_e
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzo()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 44
    :pswitch_f
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 45
    :pswitch_10
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzb()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_3

    .line 46
    :pswitch_11
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zza()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 11
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xa

    if-eq v2, v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 48
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 49
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    .line 50
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;->zzW()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;->zzp(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;->zzw()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v1

    :cond_9
    :goto_4
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 51
    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    :cond_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzg()I

    .line 243
    throw v7

    :cond_b
    if-nez v8, :cond_c

    .line 6
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 7
    :cond_c
    invoke-virtual {v6, v8, p2, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    move-object v3, v8

    :goto_5
    iget p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    if-ge p2, p3, :cond_17

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    .line 240
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_c

    .line 52
    :cond_d
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v3

    const v4, 0xfffff

    packed-switch v3, :pswitch_data_1

    if-nez v8, :cond_15

    .line 236
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_9

    .line 191
    :pswitch_12
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 192
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v3

    .line 193
    invoke-interface {p2, v2, v3, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    .line 194
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_13
    and-int/2addr v2, v4

    .line 188
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzn()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 189
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_14
    and-int/2addr v2, v4

    .line 185
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 186
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 187
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_15
    and-int/2addr v2, v4

    .line 182
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzm()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 183
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 184
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_16
    and-int/2addr v2, v4

    .line 179
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzh()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 180
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 181
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 195
    :pswitch_17
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zze()I

    move-result v3

    .line 196
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    .line 199
    :cond_e
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_f
    :goto_6
    and-int/2addr v2, v4

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 198
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_18
    and-int/2addr v2, v4

    .line 176
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzj()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 177
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 178
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_19
    and-int/2addr v2, v4

    .line 174
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzp()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 175
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 200
    :pswitch_1a
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 201
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v3

    .line 202
    invoke-interface {p2, v2, v3, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    .line 203
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 204
    :pswitch_1b
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;)V

    .line 205
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1c
    and-int/2addr v2, v4

    .line 171
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzQ()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    int-to-long v4, v2

    .line 172
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 173
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1d
    and-int/2addr v2, v4

    .line 168
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 169
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 170
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1e
    and-int/2addr v2, v4

    .line 165
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzk()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 166
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 167
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1f
    and-int/2addr v2, v4

    .line 162
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 163
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 164
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_20
    and-int/2addr v2, v4

    .line 159
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 160
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 161
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_21
    and-int/2addr v2, v4

    .line 156
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 157
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 158
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_22
    and-int/2addr v2, v4

    .line 153
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzb()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    int-to-long v4, v2

    .line 154
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_23
    and-int/2addr v2, v4

    .line 150
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zza()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    int-to-long v4, v2

    .line 151
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 152
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 206
    :pswitch_24
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    .line 207
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v0

    and-int/2addr v0, v4

    int-to-long v2, v0

    .line 208
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 213
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    move-result-object v0

    .line 214
    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 209
    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 210
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    move-result-object v4

    .line 211
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v4

    .line 215
    :cond_11
    :goto_7
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    .line 216
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    move-result-object v1

    .line 217
    invoke-interface {p2, v0, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzH(Ljava/util/Map;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    goto/16 :goto_0

    :pswitch_25
    and-int v1, v2, v4

    .line 147
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    int-to-long v1, v1

    .line 148
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-interface {p2, v1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzE(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    goto/16 :goto_0

    :pswitch_26
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 113
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_27
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 111
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 109
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzK(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 107
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2a
    and-int/2addr v2, v4

    int-to-long v2, v2

    .line 103
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 104
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzA(Ljava/util/List;)V

    .line 105
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzn(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_2b
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 101
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 99
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 97
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 95
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 93
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzF(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 91
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzP(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 89
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzG(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 87
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 85
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_34
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 83
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_35
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 81
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_36
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 79
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzK(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_37
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 77
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_38
    and-int/2addr v2, v4

    int-to-long v2, v2

    .line 73
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 74
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzA(Ljava/util/List;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzn(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_39
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 71
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 69
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    .line 218
    :pswitch_3b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    and-int v1, v2, v4

    int-to-long v1, v1

    .line 219
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 220
    invoke-interface {p2, v1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzI(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    goto/16 :goto_0

    .line 142
    :pswitch_3c
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzM(I)Z

    move-result v0

    if-eqz v0, :cond_12

    and-int v0, v2, v4

    int-to-long v0, v0

    .line 145
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdk;

    const/4 v2, 0x1

    .line 146
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdk;->zzN(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_12
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 143
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdk;

    .line 144
    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdk;->zzN(Ljava/util/List;Z)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 67
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 65
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 63
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_40
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 61
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzF(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_41
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 59
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzP(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_42
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 57
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzG(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_43
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 55
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_44
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 53
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    .line 221
    :pswitch_45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 222
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    .line 223
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    .line 224
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_46
    and-int v1, v2, v4

    .line 141
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzn()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_47
    and-int v1, v2, v4

    .line 139
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzi()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_48
    and-int v1, v2, v4

    .line 137
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzm()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_49
    and-int v1, v2, v4

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzh()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 225
    :pswitch_4a
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zze()I

    move-result v3

    .line 226
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzw(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_8

    .line 229
    :cond_13
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_14
    :goto_8
    and-int v1, v2, v4

    int-to-long v1, v1

    .line 227
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_4b
    and-int v1, v2, v4

    .line 133
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzj()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_4c
    and-int v1, v2, v4

    .line 131
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzp()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 230
    :pswitch_4d
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 231
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    .line 232
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    .line 233
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 234
    :pswitch_4e
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;)V

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_4f
    and-int v1, v2, v4

    .line 129
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzQ()Z

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzm(Ljava/lang/Object;JZ)V

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_50
    and-int v1, v2, v4

    .line 127
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzf()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_51
    and-int v1, v2, v4

    .line 125
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzk()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_52
    and-int v1, v2, v4

    .line 123
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzg()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzq(Ljava/lang/Object;JI)V

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_53
    and-int v1, v2, v4

    .line 121
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzo()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_54
    and-int v1, v2, v4

    .line 119
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzl()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzr(Ljava/lang/Object;JJ)V

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_55
    and-int v1, v2, v4

    .line 117
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzb()F

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzp(Ljava/lang/Object;JF)V

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_56
    and-int v1, v2, v4

    .line 115
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zza()D

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzo(Ljava/lang/Object;JD)V

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 237
    :cond_15
    :goto_9
    invoke-virtual {v6, v8, p2, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;I)Z

    move-result v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbev; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    move-object v3, v8

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    if-ge p2, p3, :cond_17

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    .line 240
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :catch_0
    if-nez v8, :cond_16

    .line 238
    :try_start_4
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    .line 239
    :cond_16
    invoke-virtual {v6, v8, p2, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    move-object v3, v8

    :goto_b
    iget p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    if-ge p2, p3, :cond_17

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    .line 240
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_17
    if-eqz v3, :cond_18

    .line 245
    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-void

    .line 235
    :goto_c
    iget p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    move-object v3, v8

    :goto_d
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzl:I

    if-ge p3, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    .line 240
    aget v2, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    :cond_19
    if-eqz v3, :cond_1a

    .line 245
    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    :cond_1a
    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzg()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    const v0, 0xfffff

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v3, v11

    if-ge v15, v3, :cond_8

    .line 5
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v5

    .line 6
    aget v9, v4, v15

    const/16 v14, 0x11

    if-gt v5, v14, :cond_3

    add-int/lit8 v14, v15, 0x2

    .line 7
    aget v4, v4, v14

    const v14, 0xfffff

    and-int v13, v4, v14

    if-eq v13, v0, :cond_2

    if-ne v13, v14, :cond_1

    move-object v14, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object v14, v1

    int-to-long v0, v13

    .line 8
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v13

    goto :goto_3

    :cond_2
    move-object v14, v1

    :goto_3
    ushr-int/lit8 v1, v4, 0x14

    const/4 v4, 0x1

    shl-int v1, v4, v1

    move v13, v0

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_4

    :cond_3
    move-object v14, v1

    move v13, v0

    move/from16 v19, v2

    const/16 v20, 0x0

    :goto_4
    if-eqz v14, :cond_5

    .line 9
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    const v0, 0x1ea8e13

    if-lt v9, v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    .line 10
    invoke-virtual {v0, v8, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Ljava/util/Map$Entry;)V

    .line 11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    const v17, 0xfffff

    and-int v0, v3, v17

    int-to-long v3, v0

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_5
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    goto/16 :goto_b

    .line 120
    :pswitch_0
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 122
    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    goto :goto_5

    .line 123
    :pswitch_1
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzE(IJ)V

    goto :goto_5

    .line 125
    :pswitch_2
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzC(II)V

    goto :goto_5

    .line 127
    :pswitch_3
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzA(IJ)V

    goto :goto_5

    .line 129
    :pswitch_4
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzy(II)V

    goto :goto_5

    .line 131
    :pswitch_5
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzi(II)V

    goto :goto_5

    .line 133
    :pswitch_6
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzJ(II)V

    goto :goto_5

    .line 135
    :pswitch_7
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzd(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    goto :goto_5

    .line 137
    :pswitch_8
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    goto/16 :goto_5

    .line 140
    :pswitch_9
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V

    goto/16 :goto_5

    .line 142
    :pswitch_a
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzS(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzb(IZ)V

    goto/16 :goto_5

    .line 144
    :pswitch_b
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzk(II)V

    goto/16 :goto_5

    .line 146
    :pswitch_c
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzm(IJ)V

    goto/16 :goto_5

    .line 148
    :pswitch_d
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzr(II)V

    goto/16 :goto_5

    .line 150
    :pswitch_e
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzL(IJ)V

    goto/16 :goto_5

    .line 152
    :pswitch_f
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzt(IJ)V

    goto/16 :goto_5

    .line 154
    :pswitch_10
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzo(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzo(IF)V

    goto/16 :goto_5

    .line 156
    :pswitch_11
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzf(ID)V

    goto/16 :goto_5

    .line 158
    :pswitch_12
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 159
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    .line 160
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    move-result-object v1

    .line 161
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    .line 162
    invoke-interface {v8, v9, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzv(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Ljava/util/Map;)V

    goto/16 :goto_5

    .line 112
    :pswitch_13
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 113
    aget v0, v0, v15

    .line 114
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 115
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    .line 116
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    if-eqz v1, :cond_6

    .line 117
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 118
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdr;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdr;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 109
    :pswitch_14
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 110
    aget v0, v0, v15

    .line 111
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    .line 112
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_15
    const/4 v2, 0x1

    .line 106
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 107
    aget v0, v0, v15

    .line 108
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 109
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_16
    const/4 v2, 0x1

    .line 103
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 104
    aget v0, v0, v15

    .line 105
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_17
    const/4 v2, 0x1

    .line 100
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 101
    aget v0, v0, v15

    .line 102
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_18
    const/4 v2, 0x1

    .line 97
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 98
    aget v0, v0, v15

    .line 99
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 100
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_19
    const/4 v2, 0x1

    .line 94
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 95
    aget v0, v0, v15

    .line 96
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 97
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_1a
    const/4 v2, 0x1

    .line 91
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 92
    aget v0, v0, v15

    .line 93
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_1b
    const/4 v2, 0x1

    .line 88
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 89
    aget v0, v0, v15

    .line 90
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 91
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_1c
    const/4 v2, 0x1

    .line 85
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 86
    aget v0, v0, v15

    .line 87
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 88
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_1d
    const/4 v2, 0x1

    .line 82
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 83
    aget v0, v0, v15

    .line 84
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 85
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_1e
    const/4 v2, 0x1

    .line 79
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 80
    aget v0, v0, v15

    .line 81
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 82
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_1f
    const/4 v2, 0x1

    .line 76
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 77
    aget v0, v0, v15

    .line 78
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_20
    const/4 v2, 0x1

    .line 73
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 74
    aget v0, v0, v15

    .line 75
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 76
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    :pswitch_21
    const/4 v2, 0x1

    .line 70
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 71
    aget v0, v0, v15

    .line 72
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 73
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto/16 :goto_5

    .line 67
    :pswitch_22
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 68
    aget v0, v0, v15

    .line 69
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 70
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_7

    :pswitch_23
    const/4 v2, 0x0

    .line 64
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 65
    aget v0, v0, v15

    .line 66
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 67
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_7

    :pswitch_24
    const/4 v2, 0x0

    .line 61
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 62
    aget v0, v0, v15

    .line 63
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 64
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_7

    :pswitch_25
    const/4 v2, 0x0

    .line 58
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 59
    aget v0, v0, v15

    .line 60
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_7

    :pswitch_26
    const/4 v2, 0x0

    .line 55
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 56
    aget v0, v0, v15

    .line 57
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_7

    :pswitch_27
    const/4 v2, 0x0

    .line 52
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 53
    aget v0, v0, v15

    .line 54
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 55
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    :goto_7
    move/from16 v21, v2

    goto/16 :goto_a

    .line 47
    :pswitch_28
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 48
    aget v0, v0, v15

    .line 49
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 50
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    if-eqz v1, :cond_6

    .line 51
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 52
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zze(ILjava/util/List;)V

    goto/16 :goto_5

    .line 40
    :pswitch_29
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 41
    aget v0, v0, v15

    .line 42
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 43
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v2

    .line 44
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    if-eqz v1, :cond_6

    .line 45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 46
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdr;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdr;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 35
    :pswitch_2a
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 36
    aget v0, v0, v15

    .line 37
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 38
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    if-eqz v1, :cond_6

    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 40
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzI(ILjava/util/List;)V

    goto/16 :goto_5

    .line 32
    :pswitch_2b
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 33
    aget v0, v0, v15

    .line 34
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v5, 0x0

    .line 35
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_2c
    const/4 v5, 0x0

    .line 29
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 30
    aget v0, v0, v15

    .line 31
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 32
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_2d
    const/4 v5, 0x0

    .line 26
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 27
    aget v0, v0, v15

    .line 28
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 29
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_2e
    const/4 v5, 0x0

    .line 23
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 24
    aget v0, v0, v15

    .line 25
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 26
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_2f
    const/4 v5, 0x0

    .line 20
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 21
    aget v0, v0, v15

    .line 22
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 23
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_30
    const/4 v5, 0x0

    .line 17
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 18
    aget v0, v0, v15

    .line 19
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 20
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_31
    const/4 v5, 0x0

    .line 14
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 15
    aget v0, v0, v15

    .line 16
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 17
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    goto :goto_9

    :pswitch_32
    const/4 v5, 0x0

    .line 11
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    .line 12
    aget v0, v0, v15

    .line 13
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Z)V

    :goto_9
    move/from16 v21, v5

    :goto_a
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    goto/16 :goto_b

    :pswitch_33
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-wide v10, v3

    move v3, v13

    move/from16 v4, v19

    move/from16 v21, v5

    move/from16 v5, v20

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 165
    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    goto/16 :goto_b

    :pswitch_34
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzE(IJ)V

    goto/16 :goto_b

    :pswitch_35
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzC(II)V

    goto/16 :goto_b

    :pswitch_36
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzA(IJ)V

    goto/16 :goto_b

    :pswitch_37
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzy(II)V

    goto/16 :goto_b

    :pswitch_38
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzi(II)V

    goto/16 :goto_b

    :pswitch_39
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzJ(II)V

    goto/16 :goto_b

    :pswitch_3a
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzd(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    goto/16 :goto_b

    :pswitch_3b
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 182
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    goto/16 :goto_b

    :pswitch_3c
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V

    goto/16 :goto_b

    :pswitch_3d
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 187
    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzb(IZ)V

    goto/16 :goto_b

    :pswitch_3e
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzk(II)V

    goto/16 :goto_b

    :pswitch_3f
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzm(IJ)V

    goto/16 :goto_b

    :pswitch_40
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzr(II)V

    goto/16 :goto_b

    :pswitch_41
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzL(IJ)V

    goto/16 :goto_b

    :pswitch_42
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzt(IJ)V

    goto :goto_b

    :pswitch_43
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 200
    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzo(IF)V

    goto :goto_b

    :pswitch_44
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zza(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 203
    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzf(ID)V

    :cond_7
    :goto_b
    add-int/lit8 v15, v15, 0x3

    move v0, v13

    move-object v1, v14

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_8
    move-object v14, v1

    move-object/from16 v16, v10

    :goto_c
    if-eqz v1, :cond_a

    .line 8
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzn:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    .line 204
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Ljava/util/Map$Entry;)V

    .line 205
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_c

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    .line 206
    :cond_a
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 207
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 208
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzl(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzr(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 53
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 54
    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_4

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 57
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzk:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzj:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    aget v11, v2, v10

    .line 2
    aget v12, v4, v11

    .line 3
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzu(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzc:[I

    add-int/lit8 v4, v11, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzt(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfm;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 16
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;

    if-ne v1, v2, :cond_b

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    .line 21
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzl(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v8

    .line 22
    :cond_7
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_8
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhk;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v1

    move v2, v8

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;->zzl(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v8

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzx(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzh:Z

    if-eqz v0, :cond_d

    .line 26
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzm()Z

    move-result v0

    if-nez v0, :cond_d

    return v8

    :cond_d
    return v3
.end method
