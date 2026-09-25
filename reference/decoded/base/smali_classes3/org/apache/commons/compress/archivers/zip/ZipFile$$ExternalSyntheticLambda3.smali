.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->$r8$lambda$QPYilrdLVwitq3C8vNVra-Jw6mQ(Ljava/io/Closeable;)V

    return-void
.end method
