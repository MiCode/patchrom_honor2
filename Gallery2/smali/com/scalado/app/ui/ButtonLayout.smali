.class public Lcom/scalado/app/ui/ButtonLayout;
.super Lcom/scalado/app/ui/StripLayout;
.source "ButtonLayout.java"


# instance fields
.field private mBBox:Landroid/graphics/Rect;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBtnBitmapRect:Landroid/graphics/Rect;

.field private mBtnOutlinePaint:Landroid/graphics/Paint;

.field private mBtnRect:Landroid/graphics/Rect;

.field private mBtnRectF:Landroid/graphics/RectF;

.field private mBtnTmpRect:Landroid/graphics/Rect;

.field private mDx:I

.field private mDy:I

.field private mInterpol:Lcom/scalado/app/ui/Interpolation;

.field private mMode:I

.field private mNumStackLayers:I

.field protected mOverlay:Landroid/graphics/Bitmap;

.field protected mOverlayPos:Landroid/graphics/PointF;

.field protected mOverlayRect:Landroid/graphics/Rect;

.field protected mOverlayRelH:F

.field protected mOverlayRelW:F

.field private mP0:Landroid/graphics/Point;

.field private mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

.field private mTxtPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, -0x4000

    const/16 v5, 0xff

    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Lcom/scalado/app/ui/StripLayout;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Lcom/scalado/app/ui/PaintConfig;

    invoke-direct {v0}, Lcom/scalado/app/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mNumStackLayers:I

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mDx:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mDy:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlay:Landroid/graphics/Bitmap;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayPos:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    .line 33
    iput v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mMode:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnRectF:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnTmpRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnBitmapRect:Landroid/graphics/Rect;

    .line 47
    iput-boolean v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mCyclic:Z

    .line 48
    iput-boolean v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mIndicateSelected:Z

    .line 49
    iput-boolean v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mSlidable:Z

    .line 50
    iput-boolean v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mSelectable:Z

    .line 51
    iput-boolean v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mScaleFromPivot:Z

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBgPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 55
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBgPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/scalado/app/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 60
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    invoke-virtual {v0, v5, v4, v4, v4}, Lcom/scalado/app/ui/PaintConfig;->setColor(IIII)V

    .line 61
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/scalado/app/ui/PaintConfig;->setShadowLayer(FFFI)V

    .line 62
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/scalado/app/ui/PaintConfig;->mAntiAlias:Z

    .line 64
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    const/4 v1, -0x5

    iput v1, v0, Lcom/scalado/app/ui/PaintConfig;->mInsetDx:I

    .line 65
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    const/4 v1, -0x5

    iput v1, v0, Lcom/scalado/app/ui/PaintConfig;->mInsetDy:I

    .line 67
    invoke-direct {p0}, Lcom/scalado/app/ui/ButtonLayout;->buttonInits()V

    .line 69
    iput v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mAlpha:I

    .line 70
    return-void
.end method

.method private buttonInits()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    const/high16 v4, -0x100

    const/high16 v3, 0x3f80

    const/high16 v2, -0x4000

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnOutlinePaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBtnOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 84
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    return-void
.end method

.method private getRect(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "rect"

    .prologue
    const/high16 v8, 0x3f00

    .line 236
    const/high16 v1, 0x3f80

    .line 237
    .local v1, s:F
    iget-object v7, p0, Lcom/scalado/app/ui/ButtonLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 238
    .local v2, w:I
    iget-object v7, p0, Lcom/scalado/app/ui/ButtonLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 239
    .local v0, h:I
    iget-object v7, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v3, v7, v2

    .line 240
    .local v3, x0:I
    iget-object v7, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v5, v7, v0

    .line 241
    .local v5, y0:I
    iget-object v7, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int v4, v7, v2

    .line 242
    .local v4, x1:I
    iget-object v7, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int v6, v7, v0

    .line 243
    .local v6, y1:I
    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 183
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/scalado/app/ui/ButtonLayout;->getRect(Landroid/graphics/Rect;)V

    .line 184
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected drawForeground(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    .line 206
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-boolean v2, v2, Lcom/scalado/app/ui/Strip;->mLocked:Z

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRelW:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 209
    .local v0, dx:F
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRelH:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    mul-float v1, v2, v4

    .line 210
    .local v1, dy:F
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 211
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 213
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 215
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 216
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlay:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 218
    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_0
    return-void
.end method

.method protected drawItemFrame(Lcom/scalado/app/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "item"
    .parameter "canvas"
    .parameter "rect"
    .parameter "selected"

    .prologue
    .line 222
    invoke-virtual {p1, p2, p3, p4}, Lcom/scalado/app/ui/Item;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 223
    return-void
.end method

.method protected getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 2
    .parameter "p0"
    .parameter "p1"

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getOffset(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V
    .locals 5
    .parameter "item"
    .parameter "relPos"
    .parameter "pos"

    .prologue
    .line 110
    iget v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 119
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 120
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 124
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    iget-object v3, p1, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/ui/Interpolation;->getValue(FF)F

    move-result v0

    .line 113
    .local v0, x:F
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    iget-object v3, p1, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/scalado/app/ui/ButtonLayout;->mP0:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/ui/Interpolation;->getValue(FF)F

    move-result v1

    .line 114
    .local v1, y:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected increaseBoundingBox(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/scalado/app/ui/ButtonLayout;->mNumStackLayers:I

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/scalado/app/ui/ButtonLayout;->mStackLayerCfg:Lcom/scalado/app/ui/PaintConfig;

    invoke-virtual {v1, p1}, Lcom/scalado/app/ui/PaintConfig;->increaseRect(Landroid/graphics/Rect;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method protected isVisible(I)Z
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/scalado/app/ui/StripLayout;->isVisible(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    :goto_0
    return v3

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mItems:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;

    .line 149
    .local v0, item:Lcom/scalado/app/ui/StripLayout$LayoutItem;
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v2, v2, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;->mIndex:I

    iget-object v5, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v5, v5, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    iget v5, v5, Lcom/scalado/app/ui/Item;->mIndex:I

    if-ne v2, v5, :cond_2

    move v1, v4

    .line 151
    .local v1, sel:Z
    :goto_1
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v2, v2, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    iget v5, v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;->mIndex:I

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/Item;

    invoke-virtual {v2}, Lcom/scalado/app/ui/Item;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v2, v4

    :goto_2
    move v3, v2

    goto :goto_0

    .end local v1           #sel:Z
    :cond_2
    move v1, v3

    .line 149
    goto :goto_1

    .restart local v1       #sel:Z
    :cond_3
    move v2, v3

    .line 151
    goto :goto_2
.end method

.method protected onSelected()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v2, v2, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 162
    .local v1, iterItem:Lcom/scalado/app/ui/Item;
    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mItems:Ljava/util/Vector;

    iget v3, v1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/StripLayout$LayoutItem;

    iget-object v3, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v3, v3, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/scalado/app/ui/StripLayout$LayoutItem;->mVisible:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 164
    .end local v1           #iterItem:Lcom/scalado/app/ui/Item;
    :cond_1
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v1, v1, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v1, v1, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v1}, Lcom/scalado/app/ui/UiManager;->isForcedDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 170
    :pswitch_1
    iget-object v1, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v1, v1, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v2, p0, Lcom/scalado/app/ui/ButtonLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    invoke-virtual {v1, v2}, Lcom/scalado/app/ui/UiManager;->onSelected(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected update(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/scalado/app/ui/ButtonLayout;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/Interpolation;->update(J)V

    .line 158
    :cond_0
    return-void
.end method
