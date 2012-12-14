.class public Lcom/scalado/app/ui/Group;
.super Lcom/scalado/app/ui/Widget;
.source "Group.java"


# instance fields
.field private mBgOutlinePaint:Landroid/graphics/Paint;

.field private mBgPaintConfig:Lcom/scalado/app/ui/PaintConfig;

.field private mDownWidget:Lcom/scalado/app/ui/Widget;

.field private mDrawBg:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/scalado/app/ui/UiManager;)V
    .locals 2
    .parameter "uiMgr"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Widget;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/Group;->mDrawBg:Z

    .line 14
    new-instance v0, Lcom/scalado/app/ui/PaintConfig;

    invoke-direct {v0}, Lcom/scalado/app/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mBgPaintConfig:Lcom/scalado/app/ui/PaintConfig;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mRect:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mRectF:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    .line 24
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4120

    .line 60
    iget-boolean v0, p0, Lcom/scalado/app/ui/Group;->mVisible:Z

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/app/ui/Group;->mDrawBg:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mBgPaintConfig:Lcom/scalado/app/ui/PaintConfig;

    iget-object v1, p0, Lcom/scalado/app/ui/Group;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Group;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 68
    iget-object v0, p0, Lcom/scalado/app/ui/Group;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Group;->mBgOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-boolean v3, p0, Lcom/scalado/app/ui/Group;->mVisible:Z

    if-nez v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 44
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/scalado/app/ui/Group;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 45
    iget-object v3, p0, Lcom/scalado/app/ui/Group;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/Widget;

    .line 46
    .local v0, child:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 48
    iput-object v0, p0, Lcom/scalado/app/ui/Group;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 50
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 53
    .end local v0           #child:Lcom/scalado/app/ui/Widget;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/scalado/app/ui/Group;->mDownWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v3, :cond_0

    .line 54
    iget-object v2, p0, Lcom/scalado/app/ui/Group;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v2, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method
