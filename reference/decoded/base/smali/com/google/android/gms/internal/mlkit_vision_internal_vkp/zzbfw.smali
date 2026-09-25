.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzc:Z

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzc()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgw;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzF()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;->zzV()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;->zzw()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzi(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzq(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzp(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    move-result-object v2

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzc()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzd()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-eq v3, v6, :cond_5

    and-int/lit8 v4, v3, 0x7

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    ushr-int/lit8 v3, v3, 0x3

    .line 18
    invoke-virtual {p3, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v5, p2, v3, p3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0, v1, p2, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;I)Z

    move-result v3

    goto :goto_1

    .line 21
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzR()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_0

    .line 24
    :cond_4
    :goto_2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v3, 0x0

    move-object v6, v3

    move-object v9, v6

    move v8, v7

    .line 4
    :cond_6
    :goto_3
    :try_start_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzc()I

    move-result v10

    if-ne v10, v4, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzd()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_8

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzj()I

    move-result v8

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 9
    invoke-virtual {p3, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    move-result-object v6

    goto :goto_3

    :cond_8
    const/16 v11, 0x1a

    if-ne v10, v11, :cond_a

    if-eqz v6, :cond_9

    .line 5
    invoke-virtual {v5, p2, v6, p3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;)V

    goto :goto_3

    .line 6
    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzp()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v9

    goto :goto_3

    .line 7
    :cond_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzR()Z

    move-result v10

    if-nez v10, :cond_6

    .line 4
    :goto_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzd()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_c

    if-eqz v9, :cond_0

    if-eqz v6, :cond_b

    .line 10
    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    const/4 v5, 0x5

    .line 11
    invoke-virtual {v4, v5, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-object v4, v9

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdc;

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdc;->zza:[B

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdc;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdc;->zzd()I

    move-result v5

    const/4 v8, 0x1

    .line 13
    invoke-static {v4, v7, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzH([BIIZ)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;

    move-result-object v4

    .line 14
    invoke-interface {v3, v4, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;->zzq(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;

    iget-object v5, v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;->zzw()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;->zzz(I)V

    goto/16 :goto_0

    .line 17
    :cond_b
    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzg(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    goto/16 :goto_0

    .line 4
    :cond_c
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    const-string p3, "Protocol message end-group tag did not match expected tag."

    .line 22
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 23
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    throw p2
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 5
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    iget-object v2, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    ushr-int/lit8 v5, p3, 0x3

    .line 18
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    move-result-object v8

    .line 19
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    if-eqz v8, :cond_1

    iget-object p3, v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v2

    .line 21
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 20
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object p3

    .line 22
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p3

    iget-object v2, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    iget-object v3, v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 23
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 6
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v4

    iget v6, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v8, v6, 0x7

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 17
    iget-object v6, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v7

    .line 8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 7
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object v6

    .line 9
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v4

    iget-object v6, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 10
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 11
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zza([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v4

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzc:Ljava/lang/Object;

    .line 12
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 13
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzj([BILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zza:I

    iget-object v2, p5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 14
    invoke-virtual {v2, v6, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    move-result-object v2

    .line 15
    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    .line 16
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcs;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcr;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    .line 17
    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzj(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 15
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;

    const-string p2, "Failed to parse the message."

    .line 26
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzg()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhr;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;->zzg()Z

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;->zzf()Z

    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbez;

    const v4, 0x1ea8e13

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;->zza()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbez;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfc;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object v1

    .line 8
    invoke-interface {p2, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzx(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;->zza()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzx(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;->zzk(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhe;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzm()Z

    move-result p1

    return p1
.end method
