.class public final Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;
.super Ljava/lang/Object;
.source "RecordSpeechActivity.kt"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/RecordSpeechActivity;->dispatchRecordSpeechIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0011\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "tech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1",
        "Landroid/speech/RecognitionListener;",
        "onBeginningOfSpeech",
        "",
        "onBufferReceived",
        "buffer",
        "",
        "onEndOfSpeech",
        "onError",
        "error",
        "",
        "onEvent",
        "eventType",
        "params",
        "Landroid/os/Bundle;",
        "onPartialResults",
        "partialResults",
        "onReadyForSpeech",
        "onResults",
        "results",
        "onRmsChanged",
        "rmsdB",
        "",
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
.field final synthetic this$0:Ltech/ulo/library/RecordSpeechActivity;


# direct methods
.method constructor <init>(Ltech/ulo/library/RecordSpeechActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;->this$0:Ltech/ulo/library/RecordSpeechActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .line 92
    const-string v0, "RecordSpeech"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1

    .line 97
    const-string p1, "RecordSpeech"

    const-string v0, "onBufferReceived"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .line 102
    const-string v0, "RecordSpeech"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 82
    const-string v0, "RecordSpeech"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;->this$0:Ltech/ulo/library/RecordSpeechActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ltech/ulo/library/RecordSpeechActivity;->sendResult(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;->this$0:Ltech/ulo/library/RecordSpeechActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltech/ulo/library/RecordSpeechActivity;->sendResult(I)V

    :goto_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 107
    const-string p1, "RecordSpeech"

    const-string p2, "onEvent"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    const-string p1, "RecordSpeech"

    const-string v0, "onPartialResults"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    const-string p1, "RecordSpeech"

    const-string v0, "onReadyForSpeech"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v0, "RecordSpeech"

    const-string v1, "onResults"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;->this$0:Ltech/ulo/library/RecordSpeechActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltech/ulo/library/RecordSpeechActivity;->sendResult(I)V

    goto :goto_0

    .line 57
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, " "

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;->this$0:Ltech/ulo/library/RecordSpeechActivity;

    invoke-virtual {v0, p1}, Ltech/ulo/library/RecordSpeechActivity;->createSpeechFile(Ljava/lang/String;)Ljava/io/File;

    .line 59
    iget-object p1, p0, Ltech/ulo/library/RecordSpeechActivity$dispatchRecordSpeechIntent$listener$1;->this$0:Ltech/ulo/library/RecordSpeechActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltech/ulo/library/RecordSpeechActivity;->sendResult(I)V

    :goto_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1

    .line 117
    const-string p1, "RecordSpeech"

    const-string v0, "onRmsChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
