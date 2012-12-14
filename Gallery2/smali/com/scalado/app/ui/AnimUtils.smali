.class public Lcom/scalado/app/ui/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static interpolateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V
    .locals 7
    .parameter "r0"
    .parameter "r1"
    .parameter "t"
    .parameter "dst"

    .prologue
    const/high16 v6, 0x3f80

    .line 27
    sub-float v4, v6, p2

    iget v5, p0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float v0, v4, v5

    .line 28
    .local v0, x0:F
    sub-float v4, v6, p2

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float v2, v4, v5

    .line 29
    .local v2, y0:F
    sub-float v4, v6, p2

    iget v5, p0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float v1, v4, v5

    .line 30
    .local v1, x1:F
    sub-float v4, v6, p2

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float v3, v4, v5

    .line 31
    .local v3, y1:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->left:I

    .line 32
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->top:I

    .line 33
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->right:I

    .line 34
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    .line 35
    return-void
.end method

.method public static interpolateRects(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;FLcom/scalado/base/Rect;)V
    .locals 15
    .parameter "r0"
    .parameter "r1"
    .parameter "t"
    .parameter "dst"

    .prologue
    .line 8
    const/high16 v13, 0x3f00

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v5, v13, v14

    .line 9
    .local v5, w0:F
    const/high16 v13, 0x3f00

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v2, v13, v14

    .line 10
    .local v2, h0:F
    const/high16 v13, 0x3f00

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v6, v13, v14

    .line 11
    .local v6, w1:F
    const/high16 v13, 0x3f00

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v3, v13, v14

    .line 12
    .local v3, h1:F
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v13

    int-to-float v13, v13

    add-float v8, v13, v5

    .line 13
    .local v8, x0:F
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v13

    int-to-float v13, v13

    add-float v11, v13, v2

    .line 14
    .local v11, y0:F
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v13

    int-to-float v13, v13

    add-float v9, v13, v6

    .line 15
    .local v9, x1:F
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v13

    int-to-float v13, v13

    add-float v12, v13, v3

    .line 16
    .local v12, y1:F
    const/high16 v13, 0x3f80

    sub-float v13, v13, p2

    mul-float/2addr v13, v5

    mul-float v14, p2, v6

    add-float v4, v13, v14

    .line 17
    .local v4, w:F
    const/high16 v13, 0x3f80

    sub-float v13, v13, p2

    mul-float/2addr v13, v2

    mul-float v14, p2, v3

    add-float v1, v13, v14

    .line 18
    .local v1, h:F
    const/high16 v13, 0x3f80

    sub-float v13, v13, p2

    mul-float/2addr v13, v8

    mul-float v14, p2, v9

    add-float/2addr v13, v14

    sub-float v7, v13, v4

    .line 19
    .local v7, x:F
    const/high16 v13, 0x3f80

    sub-float v13, v13, p2

    mul-float/2addr v13, v11

    mul-float v14, p2, v12

    add-float/2addr v13, v14

    sub-float v10, v13, v1

    .line 20
    .local v10, y:F
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/scalado/base/Rect;->setX(I)V

    .line 21
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/scalado/base/Rect;->setY(I)V

    .line 22
    const/high16 v13, 0x4000

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 23
    const/high16 v13, 0x4000

    mul-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 24
    return-void
.end method
