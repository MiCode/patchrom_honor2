.class public Lcom/scalado/app/ui/JobIndicator;
.super Lcom/scalado/app/ui/Widget;
.source "JobIndicator.java"

# interfaces
.implements Lcom/scalado/app/rewind/JobListener;


# instance fields
.field private mAngle:F

.field private mAngleV:F

.field private mBBox:Landroid/graphics/Rect;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurJobbing:I

.field private mCurJobs:I

.field private mJobIds:[I

.field private mJobbing:[I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRect:Landroid/graphics/Rect;

.field private mSX:F

.field private mSY:F

.field mT0:J


# direct methods
.method public constructor <init>(Lcom/scalado/app/ui/UiManager;Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "uiMgr"
    .parameter "bitmap"
    .parameter "maxJobs"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Widget;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 17
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    .line 19
    const v1, 0x3f0a3d71

    iput v1, p0, Lcom/scalado/app/ui/JobIndicator;->mAngleV:F

    .line 20
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/scalado/app/ui/JobIndicator;->mT0:J

    .line 21
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    .line 33
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mJobbing:[I

    .line 34
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mJobIds:[I

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mJobIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mJobIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iput v3, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobs:I

    .line 39
    iput-boolean v3, p0, Lcom/scalado/app/ui/JobIndicator;->mInteractible:Z

    .line 40
    iput-object p2, p0, Lcom/scalado/app/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method


# virtual methods
.method public boundingBox(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bbox"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/scalado/app/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 93
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 77
    iget v1, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobbing:I

    if-gtz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/scalado/app/ui/JobIndicator;->mSX:F

    iget v3, p0, Lcom/scalado/app/ui/JobIndicator;->mSY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 82
    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    iget-object v3, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 84
    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/scalado/app/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "JobIndicator"

    const-string v2, "exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobbing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJobEnded(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 57
    iget v0, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobbing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobbing:I

    .line 58
    return-void
.end method

.method public onJobStarted(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 53
    iget v0, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobbing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/JobIndicator;->mCurJobbing:I

    .line 54
    return-void
.end method

.method public setPos(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    iget-object v0, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/JobIndicator;->mSX:F

    .line 46
    iget-object v0, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/JobIndicator;->mSY:F

    .line 48
    iget-object v0, p0, Lcom/scalado/app/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 49
    iget-object v0, p0, Lcom/scalado/app/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 50
    return-void
.end method

.method public update(J)V
    .locals 6
    .parameter "t"

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .local v0, delta:J
    iget-wide v2, p0, Lcom/scalado/app/ui/JobIndicator;->mT0:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 67
    iget-wide v2, p0, Lcom/scalado/app/ui/JobIndicator;->mT0:J

    sub-long v0, p1, v2

    .line 69
    :cond_0
    iget v2, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    long-to-float v3, v0

    iget v4, p0, Lcom/scalado/app/ui/JobIndicator;->mAngleV:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    .line 70
    iget v2, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    const/high16 v3, -0x3c4c

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 71
    iget v2, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    const/high16 v3, 0x43b4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/scalado/app/ui/JobIndicator;->mAngle:F

    .line 73
    :cond_1
    iput-wide p1, p0, Lcom/scalado/app/ui/JobIndicator;->mT0:J

    .line 74
    return-void
.end method
