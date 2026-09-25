.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzke;->zzb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    const-string v1, "#vk "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;)V

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzko;Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
