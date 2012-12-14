.class public Lcom/scalado/app/ui/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static centerRect(Landroid/graphics/Rect;II)V
    .locals 5
    .parameter "rect"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v4, 0x3f00

    .line 300
    int-to-float v2, p1

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 301
    .local v0, dx:I
    int-to-float v2, p2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 302
    .local v1, dy:I
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 303
    return-void
.end method

.method public static centerRectOn(Landroid/graphics/Rect;FF)V
    .locals 4
    .parameter "r"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f00

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 307
    .local v0, newX:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 308
    .local v1, newY:I
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 309
    return-void
.end method

.method public static ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "maxW"
    .parameter "maxH"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 259
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 262
    int-to-float v0, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 264
    :cond_1
    return-void
.end method

.method public static ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "maxSize"

    .prologue
    .line 268
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V

    .line 269
    return-void
.end method

.method public static ensureRectMinSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "minW"
    .parameter "minH"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 244
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 247
    int-to-float v0, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 249
    :cond_1
    return-void
.end method

.method public static resizeRect(Landroid/graphics/Rect;F)V
    .locals 0
    .parameter "rect"
    .parameter "s"

    .prologue
    .line 296
    invoke-static {p0, p1, p1}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;FF)V

    .line 297
    return-void
.end method

.method public static resizeRect(Landroid/graphics/Rect;FF)V
    .locals 6
    .parameter "rect"
    .parameter "sx"
    .parameter "sy"

    .prologue
    const/high16 v5, 0x3f00

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 286
    .local v2, xc:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 287
    .local v3, yc:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    mul-float v1, v4, v5

    .line 288
    .local v1, w:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    mul-float v0, v4, v5

    .line 289
    .local v0, h:F
    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 290
    sub-float v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 291
    add-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->right:I

    .line 292
    add-float v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->bottom:I

    .line 293
    return-void
.end method

.method public static resizeRect(Landroid/graphics/Rect;II)V
    .locals 4
    .parameter "rect"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v3, 0x3f00

    .line 272
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 274
    .local v0, xc:F
    int-to-float v2, p1

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 275
    int-to-float v2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 277
    .end local v0           #xc:F
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq p2, v2, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 279
    .local v1, yc:F
    int-to-float v2, p2

    mul-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 280
    int-to-float v2, p2

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 282
    .end local v1           #yc:F
    :cond_1
    return-void
.end method
