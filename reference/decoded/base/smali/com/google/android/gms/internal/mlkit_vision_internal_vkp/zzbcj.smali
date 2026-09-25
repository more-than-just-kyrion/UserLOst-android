.class public abstract Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;->zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;
.end method

.method protected abstract zzo(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;
.end method

.method public final bridge synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;->zzx()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;->zzo(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcj;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdj;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
