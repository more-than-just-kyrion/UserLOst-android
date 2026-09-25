.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field static final zza:[I


# instance fields
.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

.field private final zzf:I

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zza:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzf:I

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgk;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-void
.end method

.method static zzc(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zza:[I

    array-length v1, v0

    const/16 v1, 0x2f

    if-lt p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 2
    :cond_0
    aget p0, v0, p0

    return p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    return-object p0
.end method

.method static zzt(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzu(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    if-eqz v2, :cond_5

    .line 5
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    iget-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzu(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    iget-object p1, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    .line 8
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-object v0

    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result v3

    if-le v1, v3, :cond_5

    iget v1, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzg:I

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result v3

    if-gt v1, v3, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    iget-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    .line 15
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    iget-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    .line 16
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-object p1

    .line 10
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzf()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc(I)I

    move-result v1

    if-lt v0, v1, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgh;

    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgg;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgh;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgh;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    return-object p0
.end method

.method private static zzu(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    add-int v2, v0, v1

    .line 3
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzr([BIII)V

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzr([BIII)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdc;

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdc;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzm()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzm()I

    move-result v3

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgi;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move-result-object v4

    .line 6
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;

    .line 7
    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgi;)V

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move-result-object p1

    .line 9
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move v3, v2

    move v6, v3

    move v7, v6

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;->zzd()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;->zzd()I

    move-result v9

    sub-int/2addr v9, v6

    .line 10
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_6

    .line 11
    invoke-virtual {v4, p1, v6, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;->zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;II)Z

    move-result v11

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p1, v4, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;->zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;II)Z

    move-result v11

    :goto_2
    if-nez v11, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    add-int/2addr v7, v10

    .line 11
    iget v11, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    if-lt v7, v11, :cond_9

    if-ne v7, v11, :cond_8

    :goto_3
    return v0

    .line 12
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    if-ne v10, v8, :cond_a

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move-result-object v3

    .line 14
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move-object v4, v3

    move v3, v2

    goto :goto_4

    :cond_a
    add-int/2addr v3, v10

    :goto_4
    if-ne v10, v9, :cond_b

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move-result-object p1

    .line 16
    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move v6, v2

    goto :goto_1

    :cond_b
    add-int/2addr v6, v10

    goto :goto_1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;)V

    return-object v0
.end method

.method public final zza(I)B
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzq(II)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzb(I)B

    move-result p1

    return p1
.end method

.method final zzb(I)B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzf:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb(I)B

    move-result p1

    return p1
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    return v0
.end method

.method protected final zze([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zze([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zze([BIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zze([BIII)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zze([BIII)V

    return-void
.end method

.method protected final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzg:I

    return v0
.end method

.method protected final zzh()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc(I)I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzi(III)I
    .locals 2

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzi(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzi(III)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzi(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    .line 4
    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzi(III)I

    move-result p1

    return p1
.end method

.method public final zzj(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzl(III)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzc:I

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzf:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzj(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    sub-int/2addr p2, v0

    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzj(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzj(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzf:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzj(II)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    .line 6
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-object v0
.end method

.method final zzk(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzk(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzk(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcu;)V

    return-void
.end method

.method public final zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;)V

    return-object v0
.end method
