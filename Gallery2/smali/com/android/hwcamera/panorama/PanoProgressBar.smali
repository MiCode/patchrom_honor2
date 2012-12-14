.class Lcom/android/hwcamera/panorama/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    .line 32
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mMaxProgress:F

    .line 33
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 34
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 35
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 36
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mListener:Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 62
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 70
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mListener:Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mListener:Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 165
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 167
    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mRightMostProgress:F

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 173
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 174
    .local v1, l:F
    iget v3, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    .line 179
    .local v3, r:F
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    .end local v1           #l:F
    .end local v3           #r:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    return-void

    .line 176
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    .line 177
    .restart local v1       #l:F
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3       #r:F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 98
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    .line 99
    int-to-float v0, p2

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mHeight:F

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    .line 156
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDirection(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 159
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 85
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 90
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 95
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .parameter "w"

    .prologue
    .line 108
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    .line 109
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 110
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 104
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mMaxProgress:F

    .line 105
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mListener:Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    .line 66
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 130
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 131
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setRightIncreasing(Z)V

    .line 138
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 139
    int-to-float v0, p1

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    .line 141
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    .line 142
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 144
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 146
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 148
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 152
    :cond_3
    return-void

    .line 133
    :cond_4
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .parameter "rightIncreasing"

    .prologue
    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 115
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 116
    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 117
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDirection(I)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->invalidate()V

    .line 125
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 120
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 121
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
