.class public abstract Lcom/scalado/app/ui/StripLayout;
.super Ljava/lang/Object;
.source "StripLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/ui/StripLayout$LayoutItem;
    }
.end annotation


# instance fields
.field protected mAlpha:I

.field protected mBgAlpha:I

.field protected mBoolProps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mClamped:Z

.field protected mContinuousSelection:Z

.field protected mCyclic:Z

.field protected mDrawBgColor:Z

.field protected mDrawFrame:Z

.field protected mExtendedArea:Landroid/graphics/Rect;

.field protected mIndicateSelected:Z

.field protected mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/StripLayout$LayoutItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxOffset:F

.field protected mMinOffset:F

.field protected mPaintProps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field protected mPivot:F

.field protected mScaleFromPivot:Z

.field protected mSelectByBBox:Z

.field protected mSelectable:Z

.field protected mSlidable:Z

.field protected mStrip:Lcom/scalado/app/ui/Strip;

.field protected mThumbDims:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mClamped:Z

    .line 174
    iput-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mIndicateSelected:Z

    .line 175
    iput-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mScaleFromPivot:Z

    .line 176
    iput-boolean v1, p0, Lcom/scalado/app/ui/StripLayout;->mContinuousSelection:Z

    .line 177
    iput-boolean v1, p0, Lcom/scalado/app/ui/StripLayout;->mSelectByBBox:Z

    .line 178
    iput-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mSlidable:Z

    .line 179
    iput-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mSelectable:Z

    .line 181
    iput-boolean v1, p0, Lcom/scalado/app/ui/StripLayout;->mDrawFrame:Z

    .line 183
    const/16 v0, 0xff

    iput v0, p0, Lcom/scalado/app/ui/StripLayout;->mAlpha:I

    .line 184
    iput-boolean v1, p0, Lcom/scalado/app/ui/StripLayout;->mDrawBgColor:Z

    .line 186
    iput v1, p0, Lcom/scalado/app/ui/StripLayout;->mBgAlpha:I

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    .line 198
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mItems:Ljava/util/Vector;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    .line 202
    return-void
.end method


# virtual methods
.method protected contains(Landroid/graphics/Point;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 124
    return-void
.end method

.method protected drawForeground(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 127
    return-void
.end method

.method protected drawItem(Lcom/scalado/app/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "item"
    .parameter "canvas"
    .parameter "rect"
    .parameter "paint"

    .prologue
    .line 130
    invoke-virtual {p1, p2, p3, p4}, Lcom/scalado/app/ui/Item;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    return-void
.end method

.method protected drawItemFrame(Lcom/scalado/app/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "item"
    .parameter "canvas"
    .parameter "rect"
    .parameter "selected"

    .prologue
    .line 135
    invoke-virtual {p1, p2, p3, p4}, Lcom/scalado/app/ui/Item;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 136
    return-void
.end method

.method protected abstract getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D
.end method

.method protected getOffset(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;

    iget v0, v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;->mOffset:F

    return v0
.end method

.method protected abstract getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V
.end method

.method protected increaseBoundingBox(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 167
    return-void
.end method

.method protected isCyclic()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mCyclic:Z

    return v0
.end method

.method protected isMoving()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisible(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;

    iget-boolean v0, v0, Lcom/scalado/app/ui/StripLayout$LayoutItem;->mVisible:Z

    return v0
.end method

.method protected onSelected()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareShowing()V
    .locals 5

    .prologue
    .line 106
    const/high16 v3, 0x7f80

    .line 107
    .local v3, minOffset:F
    const/high16 v2, -0x80

    .line 108
    .local v2, maxOffset:F
    iget-object v4, p0, Lcom/scalado/app/ui/StripLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v4, v4, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 109
    .local v1, iterItem:Lcom/scalado/app/ui/Item;
    iget v4, v1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/StripLayout;->getOffset(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 110
    iget v4, v1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/StripLayout;->getOffset(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    .line 112
    .end local v1           #iterItem:Lcom/scalado/app/ui/Item;
    :cond_0
    iget v4, p0, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float/2addr v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/scalado/app/ui/StripLayout;->mMinOffset:F

    .line 113
    iget v4, p0, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/scalado/app/ui/StripLayout;->mMaxOffset:F

    .line 114
    return-void
.end method

.method protected update(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 103
    return-void
.end method

.method protected final wrapIndex(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/scalado/app/ui/StripLayout;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-boolean v0, p0, Lcom/scalado/app/ui/StripLayout;->mClamped:Z

    if-eqz v0, :cond_0

    .line 150
    :cond_0
    :goto_0
    return p1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Strip;->size()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Strip;->size()F

    move-result v0

    sub-float/2addr p1, v0

    .line 146
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/scalado/app/ui/StripLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Strip;->size()F

    move-result v0

    add-float/2addr p1, v0

    goto :goto_0
.end method
