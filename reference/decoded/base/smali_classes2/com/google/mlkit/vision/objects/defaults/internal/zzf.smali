.class public final synthetic Lcom/google/mlkit/vision/objects/defaults/internal/zzf;
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
    .locals 2

    sget v0, Lcom/google/mlkit/vision/objects/defaults/internal/DefaultObjectsRegistrar;->zza:I

    .line 1
    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-instance v1, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1, p1}, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    return-object v1
.end method
