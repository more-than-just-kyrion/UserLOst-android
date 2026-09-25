.class final Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;
.super Ljava/io/InputStream;
.source "OciImageFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/utils/OciImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressInputStream"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOciImageFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OciImageFetcher.kt\ntech/ulo/library/utils/OciImageFetcher$ProgressInputStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,527:1\n1#2:528\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0016J \u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0004H\u0002R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;",
        "Ljava/io/InputStream;",
        "delegate",
        "totalBytes",
        "",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "",
        "(Ltech/ulo/library/utils/OciImageFetcher;Ljava/io/InputStream;JLkotlin/jvm/functions/Function1;)V",
        "bytesRead",
        "lastPercent",
        "close",
        "read",
        "b",
        "",
        "off",
        "len",
        "track",
        "n",
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


# instance fields
.field private bytesRead:J

.field private final delegate:Ljava/io/InputStream;

.field private lastPercent:I

.field private final onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltech/ulo/library/utils/OciImageFetcher;

.field private final totalBytes:J


# direct methods
.method public constructor <init>(Ltech/ulo/library/utils/OciImageFetcher;Ljava/io/InputStream;JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iput-object p1, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->this$0:Ltech/ulo/library/utils/OciImageFetcher;

    .line 445
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 442
    iput-object p2, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->delegate:Ljava/io/InputStream;

    .line 443
    iput-wide p3, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->totalBytes:J

    .line 444
    iput-object p5, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->onProgress:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    .line 447
    iput p1, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->lastPercent:I

    return-void
.end method

.method private final track(J)V
    .locals 6

    .line 450
    iget-wide v0, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-wide v2, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->bytesRead:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->bytesRead:J

    const/16 p1, 0x64

    int-to-long v4, p1

    mul-long/2addr v2, v4

    .line 452
    div-long/2addr v2, v0

    long-to-int p2, v2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 453
    iget p2, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->lastPercent:I

    if-eq p1, p2, :cond_1

    .line 454
    iput p1, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->lastPercent:I

    .line 455
    iget-object p2, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->onProgress:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 462
    iget-object v0, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    .line 459
    iget-object v0, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->track(J)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    int-to-long p2, p1

    invoke-direct {p0, p2, p3}, Ltech/ulo/library/utils/OciImageFetcher$ProgressInputStream;->track(J)V

    :cond_0
    return p1
.end method
