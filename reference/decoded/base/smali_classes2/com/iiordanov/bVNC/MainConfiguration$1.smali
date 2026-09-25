.class Lcom/iiordanov/bVNC/MainConfiguration$1;
.super Ljava/lang/Object;
.source "MainConfiguration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/MainConfiguration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/MainConfiguration;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/MainConfiguration;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$1;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$1;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MainConfiguration;->generatePubkey()V

    return-void
.end method
