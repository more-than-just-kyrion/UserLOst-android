.class Lcom/iiordanov/bVNC/FullBufferBitmapData;
.super Lcom/iiordanov/bVNC/AbstractBitmapData;
.source "FullBufferBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;
    }
.end annotation


# static fields
.field static final CAPACITY_MULTIPLIER:I = 0x6


# instance fields
.field dataHeight:I

.field dataWidth:I

.field xoffset:I

.field yoffset:I


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 103
    iget-object p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {p1}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    .line 104
    iget-object p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {p1}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    .line 105
    iget p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapwidth:I

    .line 106
    iget p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapheight:I

    .line 107
    iget p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dataWidth:I

    .line 108
    iget p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dataHeight:I

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bitmapsize = ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapheight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FBBM"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    iget p2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    .line 111
    iget-object p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    return-void
.end method


# virtual methods
.method public copyRect(IIIIII)V
    .locals 5

    const/4 v0, 0x1

    if-le p2, p4, :cond_0

    add-int/2addr p6, p2

    goto :goto_0

    :cond_0
    add-int v1, p2, p6

    sub-int/2addr v1, v0

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p4, p6

    sub-int/2addr p4, v0

    const/4 v0, -0x1

    move p6, p2

    move p2, v1

    :goto_0
    if-eq p2, p6, :cond_1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->offset(II)I

    move-result v1

    .line 137
    invoke-virtual {p0, p3, p4}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->offset(II)I

    move-result v2

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    iget-object v4, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    invoke-static {v3, v1, v4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/2addr p4, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;
    .locals 1

    .line 153
    new-instance v0, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;

    invoke-direct {v0, p0, p0}, Lcom/iiordanov/bVNC/FullBufferBitmapData$Drawable;-><init>(Lcom/iiordanov/bVNC/FullBufferBitmapData;Lcom/iiordanov/bVNC/AbstractBitmapData;)V

    return-object v0
.end method

.method drawRect(IIIILandroid/graphics/Paint;)V
    .locals 3

    .line 161
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result p5

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->offset(II)I

    move-result p1

    const/16 p2, 0xa

    const/4 v0, 0x0

    if-le p3, p2, :cond_0

    :goto_0
    if-ge v0, p4, :cond_2

    .line 167
    iget-object p2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    add-int v1, p1, p3

    invoke-static {p2, p1, v1, p5}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 v0, v0, 0x1

    .line 165
    iget p2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_1
    if-ge p2, p4, :cond_2

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_1

    .line 176
    iget-object v2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    aput p5, v2, p1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 172
    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    sub-int/2addr v1, p3

    add-int/2addr p1, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public frameBufferSizeChanged()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    .line 205
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    .line 206
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapwidth:I

    .line 207
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapheight:I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitmapsize changed = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapheight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FBBM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dataWidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dataHeight:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    if-ge v0, v1, :cond_1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dispose()V

    .line 212
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 213
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dataWidth:I

    .line 214
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    iput v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->dataHeight:I

    .line 215
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferheight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    .line 216
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->createDrawable()Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    .line 217
    iget-object v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->drawable:Lcom/iiordanov/bVNC/AbstractBitmapDrawable;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapDrawable;->startDrawing()V

    :cond_1
    return-void
.end method

.method public offset(II)I
    .locals 1

    .line 187
    iget v0, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->framebufferwidth:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method scrollChanged(II)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->xoffset:I

    .line 196
    iput p2, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->yoffset:I

    return-void
.end method

.method syncScroll()V
    .locals 0

    return-void
.end method

.method public updateBitmap(IIII)V
    .locals 0

    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 8

    .line 242
    iget-object v1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapPixels:[I

    invoke-virtual {p0, p2, p3}, Lcom/iiordanov/bVNC/FullBufferBitmapData;->offset(II)I

    move-result v2

    iget v3, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapwidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public validDraw(IIII)Z
    .locals 0

    add-int/2addr p1, p3

    .line 250
    iget p3, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapwidth:I

    if-gt p1, p3, :cond_1

    add-int/2addr p2, p4

    iget p1, p0, Lcom/iiordanov/bVNC/FullBufferBitmapData;->bitmapheight:I

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
