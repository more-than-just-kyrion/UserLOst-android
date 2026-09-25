.class public final Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;
.super Ljava/lang/Object;
.source "DetectedObjectInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000  2\u00020\u0001:\u0001 B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u001f\u001a\u00020\nR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;",
        "",
        "detectedObject",
        "Lcom/google/mlkit/vision/objects/DetectedObject;",
        "objectIndex",
        "",
        "inputInfo",
        "Lcom/google/mlkit/md/InputInfo;",
        "(Lcom/google/mlkit/vision/objects/DetectedObject;ILcom/google/mlkit/md/InputInfo;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "boundingBox",
        "Landroid/graphics/Rect;",
        "getBoundingBox",
        "()Landroid/graphics/Rect;",
        "imageData",
        "",
        "getImageData",
        "()[B",
        "jpegBytes",
        "labels",
        "",
        "Lcom/google/mlkit/vision/objects/DetectedObject$Label;",
        "getLabels",
        "()Ljava/util/List;",
        "objectId",
        "getObjectId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getObjectIndex",
        "()I",
        "getBitmap",
        "Companion",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo$Companion;

.field private static final INVALID_LABEL:Ljava/lang/String; = "N/A"

.field private static final MAX_IMAGE_WIDTH:I = 0x280

.field private static final TAG:Ljava/lang/String; = "DetectedObject"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final boundingBox:Landroid/graphics/Rect;

.field private final detectedObject:Lcom/google/mlkit/vision/objects/DetectedObject;

.field private final inputInfo:Lcom/google/mlkit/md/InputInfo;

.field private jpegBytes:[B

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/objects/DetectedObject$Label;",
            ">;"
        }
    .end annotation
.end field

.field private final objectId:Ljava/lang/Integer;

.field private final objectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->Companion:Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/vision/objects/DetectedObject;ILcom/google/mlkit/md/InputInfo;)V
    .locals 1

    const-string v0, "detectedObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->detectedObject:Lcom/google/mlkit/vision/objects/DetectedObject;

    .line 33
    iput p2, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->objectIndex:I

    .line 34
    iput-object p3, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->inputInfo:Lcom/google/mlkit/md/InputInfo;

    .line 40
    invoke-virtual {p1}, Lcom/google/mlkit/vision/objects/DetectedObject;->getTrackingId()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->objectId:Ljava/lang/Integer;

    .line 41
    invoke-virtual {p1}, Lcom/google/mlkit/vision/objects/DetectedObject;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p2

    const-string p3, "getBoundingBox(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->boundingBox:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p1}, Lcom/google/mlkit/vision/objects/DetectedObject;->getLabels()Ljava/util/List;

    move-result-object p1

    const-string p2, "getLabels(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->labels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;

    .line 62
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->detectedObject:Lcom/google/mlkit/vision/objects/DetectedObject;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/objects/DetectedObject;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getBoundingBox(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->inputInfo:Lcom/google/mlkit/md/InputInfo;

    invoke-interface {v1}, Lcom/google/mlkit/md/InputInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 66
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 63
    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x280

    if-le v1, v2, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x44200000    # 640.0f

    div-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x0

    .line 72
    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final declared-synchronized getImageData()[B
    .locals 6

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->jpegBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 48
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v0, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 49
    invoke-virtual {p0}, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v1

    check-cast v4, Ljava/io/OutputStream;

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 50
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->jpegBytes:[B

    .line 51
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .line 48
    :try_start_3
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 53
    :catch_0
    :try_start_6
    const-string v0, "DetectedObject"

    const-string v1, "Error getting object image data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->jpegBytes:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/objects/DetectedObject$Label;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->labels:Ljava/util/List;

    return-object v0
.end method

.method public final getObjectId()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->objectId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getObjectIndex()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;->objectIndex:I

    return v0
.end method
