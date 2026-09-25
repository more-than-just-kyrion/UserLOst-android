.class Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;
.super Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
.source "LargeBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/LargeBitmapData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LargeBitmapDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/LargeBitmapData;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/LargeBitmapData;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;->this$0:Lcom/iiordanov/bVNC/LargeBitmapData;

    .line 70
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;-><init>(Lcom/iiordanov/bVNC/AbstractBitmapData;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;->this$0:Lcom/iiordanov/bVNC/LargeBitmapData;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;->this$0:Lcom/iiordanov/bVNC/LargeBitmapData;

    iget v1, v1, Lcom/iiordanov/bVNC/LargeBitmapData;->xoffset:I

    .line 81
    iget-object v2, p0, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;->this$0:Lcom/iiordanov/bVNC/LargeBitmapData;

    iget v2, v2, Lcom/iiordanov/bVNC/LargeBitmapData;->yoffset:I

    .line 82
    invoke-virtual {p0, p1, v1, v2}, Lcom/iiordanov/bVNC/LargeBitmapData$LargeBitmapDrawable;->draw(Landroid/graphics/Canvas;II)V

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
