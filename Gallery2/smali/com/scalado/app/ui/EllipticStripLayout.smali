.class public Lcom/scalado/app/ui/EllipticStripLayout;
.super Lcom/scalado/app/ui/StripLayout;
.source "EllipticStripLayout.java"


# instance fields
.field private mCenter:Landroid/graphics/Point;

.field private mRadiusX:I

.field private mRadiusY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/scalado/app/ui/EllipticStripLayout;-><init>(IIII)V

    .line 20
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "rx"
    .parameter "ry"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/scalado/app/ui/StripLayout;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    .line 13
    iput p3, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusX:I

    .line 14
    iput p4, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusY:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCyclic:Z

    .line 16
    return-void
.end method

.method private final getAngle(DD)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 74
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v0, v2

    .line 75
    .local v0, angle:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 76
    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    .line 78
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected contains(Landroid/graphics/Point;)Z
    .locals 11
    .parameter "pos"

    .prologue
    const/high16 v10, 0x3f80

    .line 51
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v0, v8

    .line 52
    .local v0, dx0:F
    iget v8, p1, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    .line 53
    .local v2, dy0:F
    iget v8, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusX:I

    iget-object v9, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v4, v8

    .line 54
    .local v4, rx0:F
    iget v8, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusY:I

    iget-object v9, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 55
    .local v6, ry0:F
    iget v8, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusX:I

    iget-object v9, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v5, v8

    .line 56
    .local v5, rx1:F
    iget v8, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusY:I

    iget-object v9, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v7, v8

    .line 57
    .local v7, ry1:F
    mul-float/2addr v0, v0

    .line 58
    mul-float/2addr v2, v2

    .line 59
    move v1, v0

    .line 60
    .local v1, dx1:F
    move v3, v2

    .line 61
    .local v3, dy1:F
    mul-float v8, v4, v4

    div-float/2addr v0, v8

    .line 62
    mul-float v8, v6, v6

    div-float/2addr v2, v8

    .line 63
    mul-float v8, v5, v5

    div-float/2addr v1, v8

    .line 64
    mul-float v8, v7, v7

    div-float/2addr v3, v8

    .line 66
    add-float v8, v0, v2

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_0

    add-float v8, v1, v3

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 15
    .parameter "p0"
    .parameter "p1"

    .prologue
    .line 35
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    iget-object v14, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v14

    int-to-double v13, v13

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/scalado/app/ui/EllipticStripLayout;->getAngle(DD)D

    move-result-wide v3

    .line 36
    .local v3, angle0:D
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Point;->y:I

    iget-object v14, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v14

    int-to-double v13, v13

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/scalado/app/ui/EllipticStripLayout;->getAngle(DD)D

    move-result-wide v5

    .line 37
    .local v5, angle1:D
    sub-double v11, v5, v3

    const-wide v13, 0x401921fb54442d18L

    div-double v7, v11, v13

    .line 42
    .local v7, delta:D
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 43
    .local v1, abs:D
    const-wide/high16 v11, 0x3fe0

    cmpl-double v11, v1, v11

    if-lez v11, :cond_0

    .line 44
    const-wide/16 v11, 0x0

    cmpg-double v11, v7, v11

    if-gez v11, :cond_1

    const-wide/high16 v9, -0x4010

    .line 45
    .local v9, sign:D
    :goto_0
    const-wide/high16 v11, 0x3ff0

    sub-double/2addr v11, v1

    mul-double v7, v9, v11

    .line 47
    .end local v9           #sign:D
    :cond_0
    return-wide v7

    .line 44
    :cond_1
    const-wide/high16 v9, 0x3ff0

    goto :goto_0
.end method

.method protected getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V
    .locals 7
    .parameter "item"
    .parameter "index"
    .parameter "pos"

    .prologue
    .line 29
    const-wide v2, 0x401921fb54442d18L

    float-to-double v4, p2

    mul-double v0, v2, v4

    .line 30
    .local v0, angle:D
    iget-object v2, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget v5, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusX:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 31
    iget-object v2, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 32
    return-void
.end method

.method public set(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "rx"
    .parameter "ry"

    .prologue
    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mCenter:Landroid/graphics/Point;

    .line 24
    iput p3, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusX:I

    .line 25
    iput p4, p0, Lcom/scalado/app/ui/EllipticStripLayout;->mRadiusY:I

    .line 26
    return-void
.end method
