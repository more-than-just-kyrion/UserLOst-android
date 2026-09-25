.class public interface abstract Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;
.super Ljava/lang/Object;
.source "RdpKeyboardMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/input/RdpKeyboardMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyProcessingListener"
.end annotation


# virtual methods
.method public abstract modifiersChanged()V
.end method

.method public abstract processUnicodeKey(I)V
.end method

.method public abstract processVirtualKey(IZ)V
.end method

.method public abstract switchKeyboard(I)V
.end method
