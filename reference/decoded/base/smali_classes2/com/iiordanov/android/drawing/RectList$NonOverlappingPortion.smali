.class Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;
.super Ljava/lang/Object;
.source "RectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/android/drawing/RectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonOverlappingPortion"
.end annotation


# instance fields
.field adjacent:I

.field bottomLeftPortion:Landroid/graphics/Rect;

.field bottomPortion:Landroid/graphics/Rect;

.field bottomRightPortion:Landroid/graphics/Rect;

.field coalesced:Landroid/graphics/Rect;

.field common:I

.field horizontalOverlap:Z

.field leftPortion:Landroid/graphics/Rect;

.field r1Owns:I

.field r2Owns:I

.field rightPortion:Landroid/graphics/Rect;

.field topLeftPortion:Landroid/graphics/Rect;

.field topPortion:Landroid/graphics/Rect;

.field topRightPortion:Landroid/graphics/Rect;

.field verticalOverlap:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method overlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/iiordanov/android/drawing/RectList$OverlapType;
    .locals 8

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    .line 113
    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    .line 114
    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    .line 115
    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 116
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->NONE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 117
    iput-boolean v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    .line 118
    iput-boolean v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    .line 120
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 122
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 123
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 125
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 128
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_1

    .line 129
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 131
    :cond_1
    :goto_0
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    goto :goto_2

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 136
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_3

    .line 137
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 138
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 141
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_4

    .line 142
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 144
    :cond_4
    :goto_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_5

    .line 145
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    goto :goto_2

    .line 147
    :cond_5
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    .line 149
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_8

    .line 151
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 152
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_6

    .line 153
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 154
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    goto :goto_3

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 157
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_7

    .line 158
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 160
    :cond_7
    :goto_3
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    goto :goto_5

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 165
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_9

    .line 166
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 167
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    goto :goto_4

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_a

    .line 171
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 173
    :cond_a
    :goto_4
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_b

    .line 174
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    goto :goto_5

    .line 176
    :cond_b
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    .line 178
    :goto_5
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_e

    .line 180
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 181
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_c

    .line 182
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 183
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    goto :goto_6

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 186
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_d

    .line 187
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 189
    :cond_d
    :goto_6
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    goto :goto_8

    .line 193
    :cond_e
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 194
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_f

    .line 195
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 196
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    goto :goto_7

    .line 198
    :cond_f
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 199
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_10

    .line 200
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 202
    :cond_10
    :goto_7
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_11

    .line 203
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    goto :goto_8

    .line 205
    :cond_11
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    .line 207
    :goto_8
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_14

    .line 209
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 210
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v2, :cond_12

    .line 211
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, v6, Landroid/graphics/Rect;->bottom:I

    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    iput p2, v4, Landroid/graphics/Rect;->top:I

    iput p2, v2, Landroid/graphics/Rect;->top:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 212
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    goto :goto_9

    .line 214
    :cond_12
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 215
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_13

    .line 216
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 218
    :cond_13
    :goto_9
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    goto :goto_b

    .line 222
    :cond_14
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 223
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v2, :cond_15

    .line 224
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v2, Landroid/graphics/Rect;->top:I

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 225
    iput-boolean v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    goto :goto_a

    .line 227
    :cond_15
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 228
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_16

    .line 229
    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    .line 231
    :cond_16
    :goto_a
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le p2, v0, :cond_17

    .line 232
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    goto :goto_b

    .line 234
    :cond_17
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    .line 236
    :goto_b
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->common:I

    const/16 v0, 0x55

    if-ne p2, v0, :cond_18

    .line 238
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->SAME:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    goto/16 :goto_c

    :cond_18
    and-int/lit8 v0, p2, 0x11

    const/16 v2, 0x44

    const/16 v3, 0x11

    if-ne v0, v3, :cond_1a

    .line 240
    iget-boolean v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1a

    .line 242
    :cond_19
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->COALESCIBLE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 243
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 245
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 246
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_c

    :cond_1a
    and-int/2addr p2, v2

    if-ne p2, v2, :cond_1c

    .line 248
    iget-boolean p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    if-nez p2, :cond_1b

    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->adjacent:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_1c

    .line 250
    :cond_1b
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->COALESCIBLE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 251
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 252
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->rightPortion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 253
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 254
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_c

    .line 256
    :cond_1c
    iget-boolean p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    if-eqz p1, :cond_1f

    iget-boolean p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    if-eqz p1, :cond_1f

    .line 257
    iget p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    if-nez p1, :cond_1d

    .line 259
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->CONTAINED_BY:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    goto :goto_c

    .line 261
    :cond_1d
    iget p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    if-nez p1, :cond_1e

    .line 263
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->CONTAINS:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    goto :goto_c

    .line 268
    :cond_1e
    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->PARTIAL:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 269
    invoke-virtual {p0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->setCornerOwnership()V

    :cond_1f
    :goto_c
    return-object v1
.end method

.method setCornerOwnership()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 98
    invoke-virtual {p0, v1, v2, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->setCornerOwnership(III)V

    const/16 v0, 0x8

    const/16 v3, 0x10

    .line 99
    invoke-virtual {p0, v2, v3, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->setCornerOwnership(III)V

    const/16 v0, 0x20

    const/16 v2, 0x40

    .line 100
    invoke-virtual {p0, v2, v3, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->setCornerOwnership(III)V

    const/16 v0, 0x80

    .line 101
    invoke-virtual {p0, v2, v1, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->setCornerOwnership(III)V

    return-void
.end method

.method setCornerOwnership(III)V
    .locals 1

    or-int/2addr p1, p2

    .line 90
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    and-int v0, p2, p1

    if-ne v0, p1, :cond_0

    or-int p1, p2, p3

    .line 91
    iput p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    goto :goto_0

    .line 92
    :cond_0
    iget p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    and-int v0, p2, p1

    if-ne v0, p1, :cond_1

    or-int p1, p2, p3

    .line 93
    iput p1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    :cond_1
    :goto_0
    return-void
.end method
