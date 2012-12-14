.class public Lcom/scalado/app/rewind/ScreenAnimation;
.super Ljava/lang/Object;
.source "ScreenAnimation.java"


# instance fields
.field mAnim:Lcom/scalado/caps/speedview/Animation;

.field private mAr:F

.field private mBitmapSrcRect:Landroid/graphics/Rect;

.field private mCount:I

.field private mCurRect:Lcom/scalado/base/Rect;

.field private mDstRect:Lcom/scalado/base/Rect;

.field private mFirstTimeDone:Z

.field private mInterpol:Lcom/scalado/app/ui/Interpolation;

.field private mIterator:Lcom/scalado/base/Iterator;

.field private mMinTime:J

.field private mMode:I

.field private mNumPrevs:I

.field private mPrevRects:[Lcom/scalado/base/Rect;

.field private mPrevTs:[F

.field private mPrevTs2:[J

.field private mRefDistZoom:F

.field private mRuntime:I

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenImg:Lcom/scalado/base/Image;

.field private mSrcRect:Lcom/scalado/base/Rect;

.field private mTmpImg:Lcom/scalado/base/Image;

.field private mTmpRect:Lcom/scalado/base/Rect;

.field private mTransform:Lcom/scalado/app/rewind/CoordTransform;

.field private mUserCode:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/app/rewind/CoordTransform;I)V
    .locals 3
    .parameter "screen"
    .parameter "transform"
    .parameter "userCode"

    .prologue
    const/16 v2, 0x14

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Lcom/scalado/app/ui/Interpolation;

    invoke-direct {v1}, Lcom/scalado/app/ui/Interpolation;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    .line 28
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    .line 29
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    .line 30
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    .line 31
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    .line 46
    new-array v1, v2, [Lcom/scalado/base/Rect;

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    .line 47
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevTs:[F

    .line 48
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevTs2:[J

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mMode:I

    .line 58
    const v1, 0x3e3e49aa

    iput v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mRefDistZoom:F

    .line 59
    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mMinTime:J

    .line 62
    iput-object p1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 63
    iput-object p2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    .line 64
    iput p3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mUserCode:I

    .line 65
    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private addRect(Lcom/scalado/base/Rect;FJ)V
    .locals 2
    .parameter "r"
    .parameter "t"
    .parameter "delta"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    iget v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/scalado/app/rewind/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevTs:[F

    iget v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    aput p2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mPrevTs2:[J

    iget v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    aput-wide p3, v0, v1

    .line 274
    iget v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    goto :goto_0
.end method

.method private adjustAr(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 233
    iget v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAr:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAr:F

    iget v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAr:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float v0, v2, v3

    .line 234
    .local v0, h:F
    iget v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAr:F

    mul-float v1, v2, v0

    .line 235
    .local v1, w:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 236
    return-void
.end method

.method private calculateZoom(Lcom/scalado/base/Rect;)F
    .locals 1
    .parameter "dst"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v0, :cond_0

    .line 251
    const/high16 v0, 0x3f80

    .line 254
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 254
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->getZoom()F

    move-result v0

    goto :goto_0
.end method

.method private iterate(I)V
    .locals 3
    .parameter "runtime"

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mIterator:Lcom/scalado/base/Iterator;

    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->done()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mIterator:Lcom/scalado/base/Iterator;

    invoke-virtual {v1, p1}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Zoomer"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private midPoint(Lcom/scalado/base/Rect;)Lcom/scalado/base/Point;
    .locals 6
    .parameter "dst"

    .prologue
    const/high16 v5, 0x3f00

    .line 258
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 259
    .local v0, mid:Lcom/scalado/base/Point;
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 260
    .local v1, x:F
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 261
    .local v2, y:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/scalado/base/Point;->setX(I)V

    .line 262
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/scalado/base/Point;->setY(I)V

    .line 263
    return-object v0
.end method

.method private start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mNumPrevs:I

    .line 280
    iput v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCount:I

    .line 281
    iput-boolean v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mFirstTimeDone:Z

    .line 282
    return-void
.end method


# virtual methods
.method public done()Z
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Interpolation;->done()Z

    move-result v0

    .line 210
    .local v0, done:Z
    return v0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v1, Lcom/scalado/caps/screen/Screen$RenderMode;->QUALITY:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 220
    const-string v0, "Zoomer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 199
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mFirstTimeDone:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 201
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ScreenAnimation;->adjustAr(Landroid/graphics/Rect;)V

    .line 202
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserCode()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mUserCode:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x1

    .line 135
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v3, :cond_0

    .line 195
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v3}, Lcom/scalado/app/ui/Interpolation;->param()F

    move-result v2

    .line 139
    .local v2, t:F
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v5, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-static {v3, v4, v2, v5}, Lcom/scalado/app/ui/AnimUtils;->interpolateRects(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;FLcom/scalado/base/Rect;)V

    .line 140
    iget v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 194
    :goto_1
    iget v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCount:I

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 143
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 144
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 145
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v3}, Lcom/scalado/app/ui/Interpolation;->done()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mFirstTimeDone:Z

    if-nez v3, :cond_1

    .line 147
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mFirstTimeDone:Z

    .line 151
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "Zoomer"

    const-string v4, "exception..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 157
    .end local v1           #re:Ljava/lang/RuntimeException;
    :pswitch_1
    iget v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCount:I

    if-nez v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 159
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 160
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v5, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 161
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 162
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 163
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpImg:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v4}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 164
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpImg:Lcom/scalado/base/Image;

    iput-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreenImg:Lcom/scalado/base/Image;

    .line 165
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v5, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 166
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 167
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->preview()Lcom/scalado/base/Iterator;

    move-result-object v3

    iput-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mIterator:Lcom/scalado/base/Iterator;

    .line 184
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreenImg:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_1

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v3}, Lcom/scalado/app/ui/Interpolation;->done()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mFirstTimeDone:Z

    if-nez v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 172
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 176
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/scalado/app/rewind/ScreenAnimation;->iterate(I)V

    .line 177
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mFirstTimeDone:Z

    .line 178
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    iput-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreenImg:Lcom/scalado/base/Image;

    goto :goto_2

    .line 181
    :cond_4
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 182
    iget v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mRuntime:I

    invoke-direct {p0, v3}, Lcom/scalado/app/rewind/ScreenAnimation;->iterate(I)V

    goto :goto_2

    .line 187
    :pswitch_2
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAnim:Lcom/scalado/caps/speedview/Animation;

    invoke-virtual {v3, v2, v2}, Lcom/scalado/caps/speedview/Animation;->updateScreen(FF)V

    .line 188
    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/Interpolation;->update(J)V

    .line 132
    return-void
.end method

.method public zoomIn(Landroid/graphics/Rect;J)V
    .locals 7
    .parameter "to"
    .parameter "time"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 78
    :cond_0
    iget v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v2, p2, p3}, Lcom/scalado/app/ui/Interpolation;->startTimed(J)V

    .line 112
    invoke-direct {p0}, Lcom/scalado/app/rewind/ScreenAnimation;->start()V

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/scalado/app/rewind/CoordTransform;->canvasRectInCurrent(Lcom/scalado/base/Rect;)V

    .line 81
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 82
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 83
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v3, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/scalado/app/rewind/CoordTransform;->canvasRect(Lcom/scalado/base/Rect;)V

    .line 88
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAr:F

    .line 89
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 90
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v3, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 91
    new-instance v2, Lcom/scalado/base/Image;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v4}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTmpImg:Lcom/scalado/base/Image;

    .line 93
    const/16 v2, 0xa

    iput v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mRuntime:I

    goto :goto_1

    .line 96
    :pswitch_2
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/scalado/app/rewind/CoordTransform;->canvasRectInCurrent(Lcom/scalado/base/Rect;)V

    .line 97
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 98
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 99
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 100
    new-instance v2, Lcom/scalado/caps/speedview/Animation;

    iget-object v3, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {v2, v3}, Lcom/scalado/caps/speedview/Animation;-><init>(Lcom/scalado/caps/screen/Screen;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAnim:Lcom/scalado/caps/speedview/Animation;

    .line 101
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/ScreenAnimation;->calculateZoom(Lcom/scalado/base/Rect;)F

    move-result v1

    .line 102
    .local v1, zoom:F
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/ScreenAnimation;->midPoint(Lcom/scalado/base/Rect;)Lcom/scalado/base/Point;

    move-result-object v0

    .line 103
    .local v0, mid:Lcom/scalado/base/Point;
    const-string v2, "Zoomer"

    const-string v3, "zoom=%f, (%d,%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/scalado/base/Point;->getY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 105
    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mAnim:Lcom/scalado/caps/speedview/Animation;

    invoke-virtual {v2, v1, v0}, Lcom/scalado/caps/speedview/Animation;->beginZoom(FLcom/scalado/base/Point;)V

    goto/16 :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public zoomOut(Landroid/graphics/Rect;J)V
    .locals 3
    .parameter "from"
    .parameter "time"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mMode:I

    .line 121
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 122
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v2, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 123
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v1, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/CoordTransform;->canvasRectInCurrent(Lcom/scalado/base/Rect;)V

    .line 124
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v1, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 126
    iget-object v0, p0, Lcom/scalado/app/rewind/ScreenAnimation;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p2, p3}, Lcom/scalado/app/ui/Interpolation;->startTimed(J)V

    .line 127
    invoke-direct {p0}, Lcom/scalado/app/rewind/ScreenAnimation;->start()V

    goto :goto_0
.end method
