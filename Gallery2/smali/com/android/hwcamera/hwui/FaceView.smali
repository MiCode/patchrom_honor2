.class public Lcom/android/hwcamera/hwui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/FocusIndicator;


# instance fields
.field private final LOGV:Z

.field private final TAG:Ljava/lang/String;

.field private mDisplayHeigh:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private final mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocused:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPause:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRect:Landroid/graphics/RectF;

.field private xscale:F

.field private yscale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "FaceView"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->TAG:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/FaceView;->LOGV:Z

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 63
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    .line 64
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    .line 65
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceView;->mDisplayHeigh:I

    .line 66
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceView;->mDisplayWidth:I

    .line 68
    iput v2, p0, Lcom/android/hwcamera/hwui/FaceView;->xscale:F

    .line 69
    iput v2, p0, Lcom/android/hwcamera/hwui/FaceView;->yscale:F

    .line 73
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 77
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    .line 129
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 130
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusRegionTag(Landroid/graphics/Rect;)I
    .locals 11
    .parameter "rect"

    .prologue
    const/4 v10, 0x0

    .line 243
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 244
    .local v0, centerPointX:I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 245
    .local v1, centerPointY:I
    const/16 v4, 0x9

    new-array v3, v4, [Landroid/graphics/Rect;

    .line 246
    .local v3, rectNineGrid:[Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mDisplayHeigh:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v4, v10, v10, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v10

    .line 248
    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v5, v10, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 251
    const/4 v4, 0x2

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-direct {v5, v10, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 255
    const/4 v4, 0x3

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {v5, v6, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 258
    const/4 v4, 0x4

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 262
    const/4 v4, 0x5

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 266
    const/4 v4, 0x6

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {v5, v6, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 269
    const/4 v4, 0x7

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    iget v9, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 273
    const/16 v4, 0x8

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    iget v9, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 277
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 278
    aget-object v4, v3, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    .end local v2           #i:I
    :goto_1
    return v2

    .line 277
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public isFaceAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "previousRect"
    .parameter "currentRect"

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int v1, v3, v4

    .line 328
    .local v1, previousArea:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int v0, v3, v4

    .line 329
    .local v0, currentArea:I
    const-string v3, "FaceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previousArea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v3, "FaceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentArea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    mul-int/lit8 v3, v1, 0x4

    if-lt v3, v0, :cond_0

    mul-int/lit8 v3, v0, 0x4

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 336
    .local v2, rt:Z
    :goto_0
    return v2

    .line 332
    .end local v2           #rt:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFaceMoveTooQuick(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)Z
    .locals 10
    .parameter "previousFaceInfo"
    .parameter "currentFaceInfo"

    .prologue
    const/4 v5, 0x1

    .line 342
    const/16 v0, 0xa

    .line 343
    .local v0, SPEED_MAX:I
    iget-object v6, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v1, v6, v7

    .line 345
    .local v1, distance:I
    invoke-virtual {p2}, Lcom/android/hwcamera/hwui/FaceInfo;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/FaceInfo;->getTimeStamp()J

    move-result-wide v8

    sub-long v3, v6, v8

    .line 347
    .local v3, timeElapse:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    .line 349
    const-string v6, "FaceView"

    const-string v7, "TODO: why so fast???"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    return v5

    .line 353
    :cond_1
    mul-int/lit16 v6, v1, 0x3e8

    long-to-int v7, v3

    div-int v2, v6, v7

    .line 354
    .local v2, speed:I
    const/16 v6, 0xa

    if-gt v2, v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isFocusRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/FaceView;->getFocusRegionTag(Landroid/graphics/Rect;)I

    move-result v0

    .line 314
    .local v0, rect1Tag:I
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/hwui/FaceView;->getFocusRegionTag(Landroid/graphics/Rect;)I

    move-result v1

    .line 315
    .local v1, rect2Tag:I
    const-string v2, "FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rect1Tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v2, "FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rect2Tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-ne v0, v1, :cond_0

    .line 319
    const/4 v2, 0x0

    .line 321
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNeedFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)Z
    .locals 11
    .parameter "previousFaceInfo"
    .parameter "currentFaceInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 361
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v6

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 365
    const-string v5, "FaceView"

    const-string v7, "isFocus FaceId = -1"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 369
    const-string v5, "FaceView"

    const-string v7, "face id change need to focus"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    .local v4, previousRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget-object v7, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
    .local v3, currentRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v3}, Lcom/android/hwcamera/hwui/FaceView;->isFocusRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    .line 380
    .local v2, bFocusChanged:Z
    invoke-virtual {p0, v4, v3}, Lcom/android/hwcamera/hwui/FaceView;->isFaceAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 381
    .local v0, bFaceChanged:Z
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/hwui/FaceView;->isFaceMoveTooQuick(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)Z

    move-result v1

    .line 382
    .local v1, bFaceMoveTooQuick:Z
    if-eqz v1, :cond_4

    move v6, v5

    .line 383
    goto :goto_0

    .line 385
    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v5, v6

    :cond_6
    move v6, v5

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 147
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    array-length v4, v4

    if-lez v4, :cond_8

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mMirror:Z

    iget v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getHeight()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 155
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mOrientation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 156
    iget v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mOrientation:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 159
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 160
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    .line 200
    .end local v0           #i:I
    :goto_1
    return-void

    .line 164
    .restart local v0       #i:I
    :cond_1
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/FaceInfo;->getFocusStatus()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 165
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 174
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 176
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 183
    :goto_3
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v4

    if-lez v4, :cond_3

    .line 189
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 190
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 191
    .local v2, paintSmileScore:Landroid/graphics/Paint;
    const/high16 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    const/16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    .end local v1           #paint:Landroid/graphics/Paint;
    .end local v2           #paintSmileScore:Landroid/graphics/Paint;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_4
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/FaceInfo;->getFocusStatus()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 167
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 168
    :cond_5
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/FaceInfo;->getFocusStatus()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 169
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 179
    :cond_6
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/FaceView;->transformFaceCoordinate(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/Rect;

    move-result-object v3

    .line 180
    .local v3, tmpRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 197
    .end local v3           #tmpRect:Landroid/graphics/Rect;
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    .end local v0           #i:I
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mPause:Z

    .line 138
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/hwcamera/hwui/FaceView;->mDisplayOrientation:I

    .line 89
    return-void
.end method

.method public setFaces([Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaces:[Lcom/android/hwcamera/hwui/FaceInfo;

    .line 83
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/FaceView;->mMirror:Z

    .line 99
    return-void
.end method

.method public setScale(II)V
    .locals 0
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    .line 142
    iput p2, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    .line 143
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 121
    return-void
.end method

.method public showFocuing()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 109
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 115
    return-void
.end method

.method public transformFaceCoordinate(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/Rect;
    .locals 9
    .parameter "faceinfo"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getWidth()I

    move-result v6

    .line 402
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getHeight()I

    move-result v1

    .line 404
    .local v1, height:I
    int-to-float v7, v6

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/hwcamera/hwui/FaceView;->xscale:F

    .line 405
    int-to-float v7, v1

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/hwcamera/hwui/FaceView;->yscale:F

    .line 407
    iget-object v7, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->yscale:F

    mul-float/2addr v7, v8

    float-to-int v5, v7

    .line 408
    .local v5, top:I
    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    iget-object v8, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->xscale:F

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 409
    .local v2, left:I
    iget-object v7, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->yscale:F

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 410
    .local v0, bottom:I
    iget v7, p0, Lcom/android/hwcamera/hwui/FaceView;->mPreviewHeight:I

    iget-object v8, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/android/hwcamera/hwui/FaceView;->xscale:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 412
    .local v4, right:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 413
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v3, v2, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 414
    return-object v3
.end method

.method public transformFaceCoordinateICS(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/RectF;
    .locals 6
    .parameter "faceinfo"

    .prologue
    .line 418
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 421
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/FaceView;->mMirror:Z

    iget v3, p0, Lcom/android/hwcamera/hwui/FaceView;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceView;->getHeight()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 424
    iget v2, p0, Lcom/android/hwcamera/hwui/FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 426
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 427
    .local v1, rectF:Landroid/graphics/RectF;
    iget-object v2, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 430
    return-object v1
.end method
