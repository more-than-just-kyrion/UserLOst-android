.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdx;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzh()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;

    iget-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbge;->zzs(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 3
    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzj(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdz;Ljava/lang/Object;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbei;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;->ordinal()I

    move-result v0

    const v1, 0x1ea8e13

    packed-switch v0, :pswitch_data_0

    return-void

    .line 15
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzE(IJ)V

    return-void

    .line 14
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzC(II)V

    return-void

    .line 13
    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzA(IJ)V

    return-void

    .line 12
    :pswitch_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzy(II)V

    return-void

    .line 16
    :pswitch_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzr(II)V

    return-void

    .line 11
    :pswitch_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzJ(II)V

    return-void

    .line 17
    :pswitch_6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzd(ILcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)V

    return-void

    .line 22
    :pswitch_7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object p2

    .line 24
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    return-void

    .line 19
    :pswitch_8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;

    move-result-object p2

    .line 21
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;)V

    return-void

    .line 18
    :pswitch_9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzH(ILjava/lang/String;)V

    return-void

    .line 10
    :pswitch_a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzb(IZ)V

    return-void

    .line 9
    :pswitch_b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzk(II)V

    return-void

    .line 8
    :pswitch_c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzm(IJ)V

    return-void

    .line 7
    :pswitch_d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzr(II)V

    return-void

    .line 6
    :pswitch_e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzL(IJ)V

    return-void

    .line 5
    :pswitch_f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzt(IJ)V

    return-void

    .line 4
    :pswitch_10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzo(IF)V

    return-void

    .line 3
    :pswitch_11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhs;->zzf(ID)V

    return-void

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
