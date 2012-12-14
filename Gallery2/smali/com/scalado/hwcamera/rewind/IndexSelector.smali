.class public Lcom/scalado/hwcamera/rewind/IndexSelector;
.super Landroid/widget/RelativeLayout;
.source "IndexSelector.java"

# interfaces
.implements Lcom/scalado/app/rewind/ExtIndexSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;
    }
.end annotation


# instance fields
.field private mBtnRect:Landroid/graphics/Rect;

.field private mCheckBaseW:F

.field private mCheckH:F

.field private mCheckPadFactorX:F

.field private mCheckSpcX:F

.field private mCheckW:F

.field private mChecked:I

.field private mCheckedBmp:Landroid/graphics/Bitmap;

.field private mDownIndex:I

.field private mHeigth:F

.field private mLayoutMode:I

.field private mListener:Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;

.field private mNumButtons:I

.field private mPadX:F

.field private mPadY:F

.field private mPos:Landroid/graphics/PointF;

.field private mRect:Landroid/graphics/RectF;

.field private mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

.field private mUncheckedBmp:Landroid/graphics/Bitmap;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v1, 0x41f0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mChecked:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    .line 39
    iput v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckBaseW:F

    .line 40
    iput v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckH:F

    .line 41
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckPadFactorX:F

    .line 42
    iget v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckBaseW:F

    iget v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckPadFactorX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckSpcX:F

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mLayoutMode:I

    .line 61
    return-void
.end method

.method private closestIndex(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 208
    const/4 v5, -0x1

    .line 209
    .local v5, index:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v7, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mNumButtons:I

    if-ge v4, v7, :cond_0

    .line 210
    iget-object v7, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v4}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getRect(Landroid/graphics/Rect;I)V

    .line 211
    iget-object v7, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 212
    move v5, v4

    .line 216
    :cond_0
    if-ltz v5, :cond_2

    move v6, v5

    .line 230
    .end local v5           #index:I
    .local v6, index:I
    :goto_1
    return v6

    .line 209
    .end local v6           #index:I
    .restart local v5       #index:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_2
    const v1, 0x7f7fffff

    .line 220
    .local v1, dMin:F
    const/4 v4, 0x0

    :goto_2
    iget v7, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mNumButtons:I

    if-ge v4, v7, :cond_4

    .line 221
    iget-object v7, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v4}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getRect(Landroid/graphics/Rect;I)V

    .line 222
    int-to-float v7, p1

    iget-object v8, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    sub-float v2, v7, v8

    .line 223
    .local v2, dx:F
    int-to-float v7, p2

    iget-object v8, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    sub-float v3, v7, v8

    .line 224
    .local v3, dy:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    .line 225
    .local v0, d:F
    cmpg-float v7, v0, v1

    if-gez v7, :cond_3

    .line 226
    move v5, v4

    .line 227
    move v1, v0

    .line 220
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #d:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    :cond_4
    move v6, v5

    .line 230
    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_1
.end method

.method private getPosition()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 157
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 158
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 159
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 160
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mWidth:F

    .line 161
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mHeigth:F

    .line 162
    return-void
.end method

.method private getRect(Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "r"
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    .line 200
    int-to-float v0, p2

    .line 201
    .local v0, padMult:F
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    int-to-float v4, p2

    iget v5, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckW:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckSpcX:F

    mul-float/2addr v4, v0

    add-float v1, v3, v4

    .line 202
    .local v1, x:F
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 203
    .local v2, y:F
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckW:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckH:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 205
    return-void
.end method

.method private indexFocused(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mListener:Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mListener:Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;

    invoke-interface {v0, p1}, Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;->onIndexFocused(I)V

    .line 153
    :cond_0
    return-void
.end method

.method private setupLayout()V
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mLayoutMode:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const v0, 0x3ec3910d

    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setupLayout(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const v0, 0x3e43910d

    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setupLayout(F)Z

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setupLayout(F)Z
    .locals 6
    .parameter "fraction"

    .prologue
    const/high16 v5, 0x3f00

    .line 176
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckW:F

    .line 177
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckW:F

    iput v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckH:F

    .line 178
    const/high16 v3, 0x3f80

    sub-float/2addr v3, p1

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mWidth:F

    mul-float v2, v3, v4

    .line 179
    .local v2, wBullets:F
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mNumButtons:I

    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mNumButtons:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 182
    .local v0, checkSpcX:F
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mHeigth:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckH:F

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 183
    .local v1, h:F
    iput v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadY:F

    .line 184
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadX:F

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 185
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadY:F

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 187
    const/high16 v3, 0x3fc0

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckW:F

    mul-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 188
    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckSpcX:F

    .line 189
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mWidth:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v5

    iput v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadX:F

    .line 190
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadX:F

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 191
    const/4 v3, 0x1

    .line 196
    :goto_0
    return v3

    .line 193
    :cond_0
    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckSpcX:F

    .line 194
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mWidth:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v5

    iput v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadX:F

    .line 195
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPos:Landroid/graphics/PointF;

    iget v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mPadX:F

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 196
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 81
    const-string v0, "kangwei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput p1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mChecked:I

    .line 83
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->invalidate()V

    .line 84
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mNumButtons:I

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getRect(Landroid/graphics/Rect;I)V

    .line 134
    iget v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mChecked:I

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckedBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mUncheckedBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mBtnRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 140
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 144
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 145
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->getPosition()V

    .line 146
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setupLayout()V

    .line 147
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 92
    iput v6, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mDownIndex:I

    .line 127
    :cond_0
    :goto_0
    return v3

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    invoke-interface {v4}, Lcom/scalado/hwcamera/rewind/Timeoutable;->isBusy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 100
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 101
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/scalado/hwcamera/rewind/IndexSelector;->closestIndex(II)I

    move-result v0

    .line 102
    .local v0, index:I
    iget v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mChecked:I

    if-eq v0, v3, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->invalidate()V

    .line 104
    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mChecked:I

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    if-eqz v3, :cond_4

    .line 107
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    invoke-interface {v3}, Lcom/scalado/hwcamera/rewind/Timeoutable;->cancelPendingTimeout()V

    .line 109
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 127
    :cond_5
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 111
    :pswitch_0
    iput v0, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mDownIndex:I

    .line 112
    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->indexFocused(I)V

    goto :goto_1

    .line 115
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/rewind/IndexSelector;->indexFocused(I)V

    goto :goto_1

    .line 118
    :pswitch_2
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    if-eqz v3, :cond_6

    .line 119
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    invoke-interface {v3}, Lcom/scalado/hwcamera/rewind/Timeoutable;->scheduleTimeout()V

    .line 121
    :cond_6
    iput v6, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mDownIndex:I

    .line 122
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mListener:Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;

    if-eqz v3, :cond_5

    .line 123
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mListener:Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;

    invoke-interface {v3, v0}, Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;->onIndexSelected(I)V

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public selectIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/scalado/hwcamera/rewind/IndexSelector;->check(I)V

    .line 88
    return-void
.end method

.method public setCheckBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "unchecked"
    .parameter "checked"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mUncheckedBmp:Landroid/graphics/Bitmap;

    .line 69
    iput-object p2, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mCheckedBmp:Landroid/graphics/Bitmap;

    .line 70
    return-void
.end method

.method public setIndexListener(Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mListener:Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;

    .line 74
    return-void
.end method

.method public setNumberOfItems(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 64
    iput p1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mNumButtons:I

    .line 65
    return-void
.end method

.method public setTopbar(Lcom/scalado/hwcamera/rewind/Timeoutable;)V
    .locals 0
    .parameter "topbar"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/IndexSelector;->mTopbar:Lcom/scalado/hwcamera/rewind/Timeoutable;

    .line 78
    return-void
.end method
