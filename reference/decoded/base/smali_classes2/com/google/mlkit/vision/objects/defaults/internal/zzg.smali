.class public final synthetic Lcom/google/mlkit/vision/objects/defaults/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 3

    sget v0, Lcom/google/mlkit/vision/objects/defaults/internal/DefaultObjectsRegistrar;->zza:I

    .line 1
    const-class v0, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;

    new-instance v1, Lcom/google/mlkit/vision/objects/defaults/internal/zza;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 3
    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-direct {v1, v0, p1}, Lcom/google/mlkit/vision/objects/defaults/internal/zza;-><init>(Lcom/google/mlkit/vision/objects/defaults/internal/zzb;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V

    return-object v1
.end method
