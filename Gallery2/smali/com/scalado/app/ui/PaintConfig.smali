.class public Lcom/scalado/app/ui/PaintConfig;
.super Ljava/lang/Object;
.source "PaintConfig.java"


# instance fields
.field public mAlpha:I

.field public mAntiAlias:Z

.field public mColor:I

.field public mInsetDx:I

.field public mInsetDy:I

.field public mShadowColor:I

.field public mShadowDx:F

.field public mShadowDy:F

.field public mShadowR:F

.field public mStrokeWidth:F

.field public mStyle:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v2, p0, Lcom/scalado/app/ui/PaintConfig;->mAlpha:I

    .line 23
    const/high16 v0, -0x100

    iput v0, p0, Lcom/scalado/app/ui/PaintConfig;->mColor:I

    .line 24
    iput v2, p0, Lcom/scalado/app/ui/PaintConfig;->mAlpha:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowR:F

    .line 26
    iput v1, p0, Lcom/scalado/app/ui/PaintConfig;->mInsetDx:I

    .line 27
    iput v1, p0, Lcom/scalado/app/ui/PaintConfig;->mInsetDy:I

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Paint;)V
    .locals 4
    .parameter "paint"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/scalado/app/ui/PaintConfig;->mAntiAlias:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/scalado/app/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/scalado/app/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_0

    .line 45
    iget v0, p0, Lcom/scalado/app/ui/PaintConfig;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    :cond_0
    iget v0, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowR:F

    iget v1, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowDx:F

    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowDy:F

    iget v3, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 48
    iget v0, p0, Lcom/scalado/app/ui/PaintConfig;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget v0, p0, Lcom/scalado/app/ui/PaintConfig;->mAlpha:I

    if-ltz v0, :cond_1

    .line 50
    iget v0, p0, Lcom/scalado/app/ui/PaintConfig;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    :cond_1
    return-void
.end method

.method public increaseRect(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "r"

    .prologue
    const/high16 v4, 0x40a0

    const/high16 v6, 0x3f00

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, dx:I
    const/4 v1, 0x0

    .line 68
    .local v1, dy:I
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowR:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 69
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowR:F

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 70
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowR:F

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 72
    :cond_0
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mInsetDx:I

    if-gez v2, :cond_1

    .line 73
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mInsetDx:I

    neg-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    :cond_1
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mInsetDy:I

    if-gez v2, :cond_2

    .line 76
    iget v2, p0, Lcom/scalado/app/ui/PaintConfig;->mInsetDy:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/scalado/app/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v2, v3, :cond_3

    .line 79
    int-to-double v2, v0

    iget v4, p0, Lcom/scalado/app/ui/PaintConfig;->mStrokeWidth:F

    mul-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 80
    int-to-double v2, v1

    iget v4, p0, Lcom/scalado/app/ui/PaintConfig;->mStrokeWidth:F

    mul-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 82
    :cond_3
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 83
    return-void
.end method

.method public setColor(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 31
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/ui/PaintConfig;->mColor:I

    .line 32
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0
    .parameter "r"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 35
    iput p1, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowR:F

    .line 36
    iput p2, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowDx:F

    .line 37
    iput p3, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowDy:F

    .line 38
    iput p4, p0, Lcom/scalado/app/ui/PaintConfig;->mShadowColor:I

    .line 39
    return-void
.end method
