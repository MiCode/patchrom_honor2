.class public Lcom/android/hwcamera/hwui/PanoramaTracker;
.super Landroid/view/View;
.source "PanoramaTracker.java"


# instance fields
.field bFlash:Z

.field mBounds:Landroid/graphics/RectF;

.field mContext:Landroid/content/Context;

.field mDrawableHeight:I

.field mDrawableWith:I

.field mFailedOffset:F

.field private mHandler:Landroid/os/Handler;

.field mJointRectHeight:I

.field mJointRectWith:I

.field mNiceOffset:F

.field mOdlx:I

.field mOdly:I

.field protected mPaint:Landroid/graphics/Paint;

.field mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

.field private mPhoneOrientation:I

.field private mPhoneOrientationDt:I

.field mScaleRate:F

.field mState:I

.field mWarnningOffset:F

.field offSetLeft:I

.field offSetTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    .line 21
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    .line 22
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mJointRectWith:I

    .line 23
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mJointRectHeight:I

    .line 24
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdlx:I

    .line 25
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdly:I

    .line 34
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    .line 35
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->bFlash:Z

    .line 37
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    .line 38
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    .line 42
    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mNiceOffset:F

    .line 43
    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mWarnningOffset:F

    .line 44
    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mFailedOffset:F

    .line 47
    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mScaleRate:F

    .line 50
    const v0, 0xffff

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientation:I

    .line 51
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    .line 447
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaTracker$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaTracker$1;-><init>(Lcom/android/hwcamera/hwui/PanoramaTracker;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->bFlash:Z

    .line 56
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    .line 57
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setTrackerSize(II)V

    .line 58
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setJointSize(II)V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/PanoramaTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateTrackerStatus(II)I
    .locals 7
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, statusDy:I
    const/4 v1, 0x0

    .line 317
    .local v1, statusDx:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-direct {p0, p2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calculateTrackerStatusByDy(I)I

    move-result v2

    .line 320
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calculateTrackerStatusByDx(Z)I

    move-result v1

    .line 328
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calculateTrackerStatusByDz()I

    move-result v3

    .line 329
    .local v3, statusDz:I
    const-string v4, "PanoramaTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateTrackerStatus statusDy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " statusDx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " statusDz="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 334
    .local v0, status:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 335
    return v0

    .line 323
    .end local v0           #status:I
    .end local v3           #statusDz:I
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calculateTrackerStatusByDx(Z)I

    move-result v2

    .line 324
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calculateTrackerStatusByDy(I)I

    move-result v1

    goto :goto_0
.end method

.method private calculateTrackerStatusByDx(Z)I
    .locals 14
    .parameter "isLanscape"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, dx:I
    const/4 v12, 0x5

    iget-object v13, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v13}, Lcom/android/hwcamera/hwui/PanoramaBar;->getDirection()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 234
    sget v12, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v13, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result v1

    .line 235
    .local v1, panoramaHeight:I
    int-to-float v12, v1

    const/high16 v13, 0x4080

    mul-float/2addr v12, v13

    const/high16 v13, 0x4040

    div-float v2, v12, v13

    .line 236
    .local v2, panoramaWidth:F
    if-eqz p1, :cond_2

    .line 237
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v10, v12, Landroid/graphics/RectF;->left:F

    .line 238
    .local v10, traclerLeft:F
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getImagePaddingLeft()F

    move-result v12

    sub-float/2addr v10, v12

    .line 239
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMiniPanoramaLenghth()I

    move-result v4

    .line 240
    .local v4, pictureLeft:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMaxThubnailWidth(F)I

    move-result v12

    sub-int v4, v12, v4

    .line 241
    float-to-int v12, v10

    sub-int v0, v12, v4

    .line 263
    .end local v1           #panoramaHeight:I
    .end local v2           #panoramaWidth:F
    .end local v4           #pictureLeft:I
    .end local v10           #traclerLeft:F
    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 264
    .local v7, status:I
    const/16 v12, 0x32

    if-le v0, v12, :cond_5

    .line 265
    const/4 v7, 0x4

    .line 271
    :cond_1
    :goto_1
    return v7

    .line 243
    .end local v7           #status:I
    .restart local v1       #panoramaHeight:I
    .restart local v2       #panoramaWidth:F
    :cond_2
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v11, v12, Landroid/graphics/RectF;->top:F

    .line 244
    .local v11, traclerTop:F
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getImagePaddingTop()F

    move-result v12

    sub-float/2addr v11, v12

    .line 245
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMiniPanoramaLenghth()I

    move-result v6

    .line 246
    .local v6, pictureTop:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMaxThubnailWidth(F)I

    move-result v12

    sub-int v6, v12, v6

    .line 247
    float-to-int v12, v11

    sub-int v0, v12, v6

    goto :goto_0

    .line 249
    .end local v1           #panoramaHeight:I
    .end local v2           #panoramaWidth:F
    .end local v6           #pictureTop:I
    .end local v11           #traclerTop:F
    :cond_3
    const/4 v12, 0x6

    iget-object v13, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v13}, Lcom/android/hwcamera/hwui/PanoramaBar;->getDirection()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 250
    if-eqz p1, :cond_4

    .line 251
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v9, v12, Landroid/graphics/RectF;->right:F

    .line 252
    .local v9, trackerRight:F
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getImagePaddingLeft()F

    move-result v12

    sub-float/2addr v9, v12

    .line 253
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMiniPanoramaLenghth()I

    move-result v5

    .line 254
    .local v5, pictureRight:I
    float-to-int v12, v9

    sub-int v0, v5, v12

    .line 255
    goto :goto_0

    .line 256
    .end local v5           #pictureRight:I
    .end local v9           #trackerRight:F
    :cond_4
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v8, v12, Landroid/graphics/RectF;->bottom:F

    .line 257
    .local v8, trackerBottom:F
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getImagePaddingTop()F

    move-result v12

    sub-float/2addr v8, v12

    .line 258
    iget-object v12, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v12}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMiniPanoramaLenghth()I

    move-result v3

    .line 259
    .local v3, pictureBottom:I
    float-to-int v12, v8

    sub-int v0, v3, v12

    goto :goto_0

    .line 266
    .end local v3           #pictureBottom:I
    .end local v8           #trackerBottom:F
    .restart local v7       #status:I
    :cond_5
    const/16 v12, 0x14

    if-le v0, v12, :cond_6

    .line 267
    const/4 v7, 0x3

    goto :goto_1

    .line 268
    :cond_6
    const/16 v12, 0xa

    if-le v0, v12, :cond_1

    .line 269
    const/4 v7, 0x2

    goto :goto_1
.end method

.method private calculateTrackerStatusByDy(I)I
    .locals 4
    .parameter "dy"

    .prologue
    .line 278
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 279
    .local v0, absDy:I
    const/4 v1, 0x1

    .line 281
    .local v1, status:I
    int-to-float v2, v0

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mNiceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 282
    const/4 v1, 0x1

    .line 290
    :goto_0
    return v1

    .line 283
    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mWarnningOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 284
    const/4 v1, 0x2

    goto :goto_0

    .line 285
    :cond_1
    int-to-float v2, v0

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mFailedOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 286
    const/4 v1, 0x3

    goto :goto_0

    .line 288
    :cond_2
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private calculateTrackerStatusByDz()I
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, status:I
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    .line 297
    .local v1, tempdt:I
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    const/16 v3, 0x10e

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    const/16 v3, 0x168

    if-gt v2, v3, :cond_2

    .line 298
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    rsub-int v1, v2, 0x168

    .line 303
    :cond_0
    :goto_0
    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 304
    const/4 v0, 0x4

    .line 310
    :cond_1
    :goto_1
    return v0

    .line 299
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    const/16 v3, 0x5a

    if-ge v2, v3, :cond_0

    .line 300
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    goto :goto_0

    .line 305
    :cond_3
    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    .line 306
    const/4 v0, 0x3

    goto :goto_1

    .line 307
    :cond_4
    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 308
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private drawTracker(Landroid/graphics/Canvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "color"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 209
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method private setTrackerStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    .line 340
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    if-eq v1, p1, :cond_1

    .line 341
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    .line 348
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->invalidate()V

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 365
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 351
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, submessage:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 362
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calcOffsetThresholds(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 74
    int-to-float v0, p1

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mNiceOffset:F

    .line 75
    int-to-float v0, p1

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mWarnningOffset:F

    .line 76
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mFailedOffset:F

    .line 77
    return-void
.end method

.method public calcOffsetsAndScale(IIII)V
    .locals 2
    .parameter "width"
    .parameter "multiX"
    .parameter "height"
    .parameter "multiY"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->getWidth()I

    move-result p1

    .line 402
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->getHeight()I

    move-result p3

    .line 405
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    mul-int/2addr v0, p2

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    .line 406
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    mul-int/2addr v0, p4

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    .line 409
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mScaleRate:F

    .line 417
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    .line 418
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    .line 419
    return-void

    .line 412
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mScaleRate:F

    goto :goto_0
.end method

.method public getTrackerStatus()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    return v0
.end method

.method moveTrackerToEdge(ZI)V
    .locals 3
    .parameter "bLeft"
    .parameter "dc"

    .prologue
    .line 169
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, p2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->invalidate()V

    .line 187
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 178
    :cond_1
    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, -0x1

    .line 215
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->getTrackerStatus()I

    move-result v0

    .line 217
    .local v0, stats:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 219
    :cond_0
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->bFlash:Z

    if-eqz v1, :cond_1

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->drawTracker(Landroid/graphics/Canvas;I)V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 223
    invoke-direct {p0, p1, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->drawTracker(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 225
    :cond_3
    const v1, -0xff0100

    invoke-direct {p0, p1, v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->drawTracker(Landroid/graphics/Canvas;I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 193
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    if-nez v2, :cond_0

    .line 194
    sub-int v1, p4, p2

    .line 195
    .local v1, width:I
    sub-int v0, p5, p3

    .line 196
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->restoreTrackerPostion(II)V

    .line 200
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public restoreTrackerPostion(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdly:I

    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdlx:I

    .line 424
    const v0, 0xffff

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientation:I

    .line 425
    iput v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    .line 428
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0, p1, v1, p2, v4}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calcOffsetsAndScale(IIII)V

    .line 431
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 432
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 441
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setTrackerStatus(I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->invalidate()V

    .line 444
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0, p1, v4, p2, v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calcOffsetsAndScale(IIII)V

    .line 436
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 437
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method public setJointSize(II)V
    .locals 1
    .parameter "with"
    .parameter "height"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 125
    :cond_0
    iget p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    .line 126
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    mul-int/lit8 p2, v0, 0x3

    .line 128
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mJointRectHeight:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mJointRectWith:I

    if-eq v0, p1, :cond_3

    .line 129
    :cond_2
    iput p2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mJointRectHeight:I

    .line 130
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mJointRectWith:I

    .line 132
    :cond_3
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    if-nez v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->getDirection()I

    move-result v0

    .line 383
    .local v0, panoramabarStatus:I
    if-nez v0, :cond_2

    .line 384
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientation:I

    .line 385
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    goto :goto_0

    .line 386
    :cond_2
    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 391
    :cond_3
    const v1, 0xffff

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientation:I

    if-ne v1, v2, :cond_4

    .line 392
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientation:I

    .line 394
    :cond_4
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientation:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPhoneOrientationDt:I

    goto :goto_0
.end method

.method public setPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 135
    const-string v3, "PanoramaTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPosition x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdlx:I

    sub-int v0, p1, v3

    .line 137
    .local v0, newDx:I
    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdly:I

    sub-int v1, p2, v3

    .line 140
    .local v1, newDy:I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdlx:I

    .line 142
    iput p2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mOdly:I

    .line 148
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mScaleRate:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 151
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 152
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 161
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calculateTrackerStatus(II)I

    move-result v2

    .line 162
    .local v2, status:I
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setTrackerStatus(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->invalidate()V

    .line 164
    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    .end local v2           #status:I
    :goto_1
    return v3

    .line 144
    :cond_1
    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mState:I

    goto :goto_1

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mScaleRate:F

    int-to-float v5, p1

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 156
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->offSetLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 157
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method public setTrackerSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4080

    const/high16 v2, 0x4040

    .line 80
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result p2

    .line 90
    int-to-float v0, p2

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-int p1, v0

    .line 99
    :goto_0
    add-int/lit8 p1, p1, -0x2

    .line 100
    add-int/lit8 p2, p2, -0x2

    .line 104
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    if-eq v0, p2, :cond_3

    .line 105
    :cond_2
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    .line 106
    iput p2, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    .line 109
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableHeight:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calcOffsetThresholds(I)V

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->invalidate()V

    .line 120
    :cond_3
    return-void

    .line 94
    :cond_4
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result p1

    .line 95
    int-to-float v0, p1

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-int p2, v0

    goto :goto_0

    .line 114
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mDrawableWith:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->calcOffsetThresholds(I)V

    goto :goto_1
.end method

.method public setTrackerparent(Lcom/android/hwcamera/hwui/PanoramaBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 70
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    return-void
.end method
