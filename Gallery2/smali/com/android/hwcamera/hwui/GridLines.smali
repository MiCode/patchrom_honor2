.class public Lcom/android/hwcamera/hwui/GridLines;
.super Landroid/view/View;
.source "GridLines.java"


# static fields
.field private static mLeftPaddingPercent:F

.field private static mTopPaddingPercent:F


# instance fields
.field private bAnimation:Z

.field private mLH11Points:[Landroid/graphics/Point;

.field private mLH12Points:[Landroid/graphics/Point;

.field private mLH21Points:[Landroid/graphics/Point;

.field private mLH22Points:[Landroid/graphics/Point;

.field private mLV11Points:[Landroid/graphics/Point;

.field private mLV12Points:[Landroid/graphics/Point;

.field private mLV21Points:[Landroid/graphics/Point;

.field private mLV22Points:[Landroid/graphics/Point;

.field private mLeftPadding:I

.field private mLineDiff:I

.field private mLineSpace:I

.field private mPaintEdge:Landroid/graphics/Paint;

.field private mPanitInner:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x3dd566cf

    const v4, 0x3db61134

    const/16 v3, 0x47

    const/16 v2, 0xff

    const/4 v1, 0x6

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mTopPadding:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLeftPadding:I

    .line 48
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    .line 51
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    .line 54
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    .line 57
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    .line 60
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    .line 63
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    .line 66
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    .line 69
    new-array v0, v1, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/GridLines;->bAnimation:Z

    .line 89
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sput v4, Lcom/android/hwcamera/hwui/GridLines;->mTopPaddingPercent:F

    .line 103
    sput v5, Lcom/android/hwcamera/hwui/GridLines;->mLeftPaddingPercent:F

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/GridLines;->constructPoints()V

    .line 110
    return-void

    .line 105
    :cond_2
    sput v5, Lcom/android/hwcamera/hwui/GridLines;->mTopPaddingPercent:F

    .line 106
    sput v4, Lcom/android/hwcamera/hwui/GridLines;->mLeftPaddingPercent:F

    goto :goto_0
.end method


# virtual methods
.method public calPointsPosition()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 127
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/hwcamera/hwui/GridLines;->mTopPaddingPercent:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mTopPadding:I

    .line 128
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/hwcamera/hwui/GridLines;->mLeftPaddingPercent:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLeftPadding:I

    .line 129
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    sub-int v0, v2, v3

    .line 130
    .local v0, frameHeight:I
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    sub-int v1, v2, v3

    .line 131
    .local v1, frameWidth:I
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v12

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v12

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v12

    iget v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mTopPadding:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    .line 132
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v10

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v10

    div-int/lit8 v6, v0, 0x3

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    .line 133
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v13

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v13

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v13

    div-int/lit8 v6, v0, 0x3

    iget v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    .line 134
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v11

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v11

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    mul-int/lit8 v6, v0, 0x2

    div-int/lit8 v6, v6, 0x3

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    .line 135
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v14

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v14

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v14

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v14

    mul-int/lit8 v6, v0, 0x2

    div-int/lit8 v6, v6, 0x3

    iget v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    .line 136
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mTopPadding:I

    sub-int v6, v0, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->y:I

    .line 137
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    div-int/lit8 v8, v1, 0x3

    iput v8, v7, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->x:I

    iput v8, v5, Landroid/graphics/Point;->x:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    iput v8, v3, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 138
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    div-int/lit8 v8, v1, 0x3

    iget v9, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->x:I

    iput v8, v5, Landroid/graphics/Point;->x:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    iput v8, v3, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 139
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    mul-int/lit8 v8, v1, 0x2

    div-int/lit8 v8, v8, 0x3

    iput v8, v7, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->x:I

    iput v8, v5, Landroid/graphics/Point;->x:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    iput v8, v3, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 140
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    mul-int/lit8 v8, v1, 0x2

    div-int/lit8 v8, v8, 0x3

    iget v9, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->x:I

    iput v8, v5, Landroid/graphics/Point;->x:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    iput v8, v3, Landroid/graphics/Point;->x:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 142
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v12

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v12

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v12

    iget v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLeftPadding:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 143
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v10

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v10

    div-int/lit8 v6, v1, 0x3

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 144
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v13

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v13

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v13

    div-int/lit8 v6, v1, 0x3

    iget v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 145
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v11

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v11

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    mul-int/lit8 v6, v1, 0x2

    div-int/lit8 v6, v6, 0x3

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 146
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v14

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v14

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v14

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v14

    mul-int/lit8 v6, v1, 0x2

    div-int/lit8 v6, v6, 0x3

    iget v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 147
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLeftPadding:I

    sub-int v6, v1, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 148
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    div-int/lit8 v8, v0, 0x3

    iput v8, v7, Landroid/graphics/Point;->y:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    iput v8, v5, Landroid/graphics/Point;->y:I

    iput v8, v4, Landroid/graphics/Point;->y:I

    iput v8, v3, Landroid/graphics/Point;->y:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 149
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    div-int/lit8 v8, v0, 0x3

    iget v9, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    iput v8, v5, Landroid/graphics/Point;->y:I

    iput v8, v4, Landroid/graphics/Point;->y:I

    iput v8, v3, Landroid/graphics/Point;->y:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 150
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    mul-int/lit8 v8, v0, 0x2

    div-int/lit8 v8, v8, 0x3

    iput v8, v7, Landroid/graphics/Point;->y:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    iput v8, v5, Landroid/graphics/Point;->y:I

    iput v8, v4, Landroid/graphics/Point;->y:I

    iput v8, v3, Landroid/graphics/Point;->y:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 151
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v4, v4, v13

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v6, v6, v14

    iget-object v7, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    mul-int/lit8 v8, v0, 0x2

    div-int/lit8 v8, v8, 0x3

    iget v9, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    iput v8, v5, Landroid/graphics/Point;->y:I

    iput v8, v4, Landroid/graphics/Point;->y:I

    iput v8, v3, Landroid/graphics/Point;->y:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 153
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v10

    iget v3, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 154
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v3, v3, v10

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 155
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v2, v2, v11

    iget v3, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 156
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 157
    return-void
.end method

.method public constructPoints()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 116
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 117
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 118
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 119
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 120
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 121
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 122
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public drawLines(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineSpace:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPanitInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 167
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 169
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 170
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 171
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/hwcamera/hwui/GridLines;->drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV12Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLV22Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH12Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH11Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH22Points:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mLH21Points:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/hwcamera/hwui/GridLines;->mLineDiff:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    return-void
.end method

.method public drawOneLine(Landroid/graphics/Canvas;[Landroid/graphics/Point;I)V
    .locals 7
    .parameter "canvas"
    .parameter "ponits"
    .parameter "pointNum"

    .prologue
    .line 183
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-ge v6, v0, :cond_0

    .line 184
    aget-object v0, p2, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    aget-object v0, p2, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p2, v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p2, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaintEdge:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/GridLines;->calPointsPosition()V

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/GridLines;->drawLines(Landroid/graphics/Canvas;)V

    .line 198
    const/high16 v0, 0x3f00

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/GridLines;->setAlpha(F)V

    .line 200
    return-void
.end method

.method public setAnimationState(Z)V
    .locals 0
    .parameter "animationState"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/GridLines;->bAnimation:Z

    .line 192
    return-void
.end method

.method public setVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0x96

    const/high16 v4, 0x3f80

    const v3, 0x3e99999a

    .line 204
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/GridLines;->bAnimation:Z

    if-eqz v2, :cond_1

    .line 206
    if-nez p1, :cond_2

    .line 207
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 208
    .local v0, animatIn:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    invoke-super {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    .end local v0           #animatIn:Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 212
    .local v1, animatOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 213
    invoke-super {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
