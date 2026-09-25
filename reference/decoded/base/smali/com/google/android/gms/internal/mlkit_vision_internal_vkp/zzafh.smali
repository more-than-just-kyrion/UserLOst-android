.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeu;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeu;-><init>()V

    return-void
.end method

.method private static final zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzj()V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaen;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaen;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafl;->zza(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzm()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zze()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaew;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaew;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 2
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zze()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzg()V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;-><init>()V

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzf()V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzn()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    move-result-object p1

    goto :goto_5

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzl()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzd()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzn()I

    move-result v3

    .line 8
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    move-result-object v4

    if-nez v4, :cond_3

    .line 9
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    instance-of v5, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;

    if-eqz v5, :cond_4

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;)V

    goto :goto_3

    .line 11
    :cond_4
    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;)V

    :goto_3
    if-eqz v4, :cond_1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_0

    .line 11
    :cond_5
    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzh()V

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafk;->zzi()V

    .line 15
    :goto_4
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 16
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    goto :goto_0

    :cond_7
    move-object p1, v1

    :goto_5
    return-object p1
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaen;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    if-eqz v0, :cond_3

    .line 13
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zzj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zzd()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzg(Ljava/lang/Number;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    return-void

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zzh()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzi(Z)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    return-void

    .line 18
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaer;->zze()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    return-void

    :cond_3
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    .line 9
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaek;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    return-void

    :cond_5
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaeo;->zzd()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafh;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzael;)V

    goto :goto_1

    .line 6
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    return-void

    .line 5
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t write "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzafm;

    return-void
.end method
