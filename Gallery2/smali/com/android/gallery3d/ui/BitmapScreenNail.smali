.class public Lcom/android/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 213
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 214
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    const/16 p1, 0x280

    .line 74
    const/16 p2, 0x1e0

    .line 76
    :cond_1
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4420

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 77
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 78
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 79
    return-void
.end method


# virtual methods
.method public GifRecycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 138
    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_1
    return-void
.end method

.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 112
    .end local p0
    :goto_0
    return-object p0

    .line 88
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    move-object p0, p1

    .line 90
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 96
    .local v0, newer:Lcom/android/gallery3d/ui/BitmapScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 97
    iget v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 98
    iget-object v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 100
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    iput-object v3, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 107
    iput-object v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 111
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 161
    iget-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 162
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 164
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 182
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 172
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 173
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const v2, -0xddddde

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V

    goto :goto_0

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 187
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    return v0
.end method

.method public getmBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-wide v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 205
    :goto_0
    return v0

    .line 201
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xb4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 202
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 150
    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 154
    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    :cond_1
    return-void
.end method

.method public setmBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "mBitmap"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    goto :goto_0
.end method
