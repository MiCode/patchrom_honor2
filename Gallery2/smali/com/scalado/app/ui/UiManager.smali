.class public Lcom/scalado/app/ui/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/ui/UiManager$1;,
        Lcom/scalado/app/ui/UiManager$WidgetEvent;,
        Lcom/scalado/app/ui/UiManager$AnimationTimerTask;,
        Lcom/scalado/app/ui/UiManager$UiManagerListener;
    }
.end annotation


# instance fields
.field private mAnimIvl:J

.field private mAnimationTimer:Ljava/util/Timer;

.field private mCurTime:J

.field private mDirty:Z

.field private mDirtyArea:Landroid/graphics/Rect;

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDirtyRectSet:Z

.field private mDownModalWidget:Lcom/scalado/app/ui/Widget;

.field private mDownWidget:Lcom/scalado/app/ui/Widget;

.field private mDrawOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyInvalidated:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

.field private mLstDrawT:J

.field private mModalWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionCounter:I

.field private mMotionIvl:I

.field private mOnUpWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectClosest:Z

.field private mSize:Lcom/scalado/base/Size;

.field private final mSyncObj:Ljava/lang/Object;

.field private mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchDown:Z

.field private mWidgetRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/UiManager$WidgetEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/scalado/app/ui/UiManager;->mMotionIvl:I

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    .line 41
    iput-object v2, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 42
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    .line 45
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRectSet:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    .line 50
    iput-object v2, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 722
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/scalado/app/ui/UiManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/scalado/app/ui/UiManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->updateDirtyArea()V

    return-void
.end method

.method static synthetic access$1200(Lcom/scalado/app/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->privateDraw()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/scalado/app/ui/UiManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/scalado/app/ui/UiManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/scalado/app/ui/UiManager;->mCurTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/scalado/app/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    return v0
.end method

.method static synthetic access$600(Lcom/scalado/app/ui/UiManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mLstDrawT:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/scalado/app/ui/UiManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/scalado/app/ui/UiManager;)Lcom/scalado/app/ui/UiManager$UiManagerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/app/ui/UiManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    return-object v0
.end method

.method private getModal()Lcom/scalado/app/ui/Widget;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/Widget;

    goto :goto_0
.end method

.method private invalidateFully()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 421
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 422
    .local v1, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 426
    .end local v1           #w:Lcom/scalado/app/ui/Widget;
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    return-void
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 226
    iput-boolean v11, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 227
    iput-object v12, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 228
    iput-object v12, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 229
    iput-boolean v10, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    .line 230
    iput-boolean v10, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 231
    iput v10, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, ret:Z
    const/4 v0, 0x1

    .line 234
    .local v0, checkAllWidgets:Z
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->getModal()Lcom/scalado/app/ui/Widget;

    move-result-object v5

    .line 235
    .local v5, modal:Lcom/scalado/app/ui/Widget;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 236
    invoke-virtual {v5, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 237
    if-nez v6, :cond_7

    .line 238
    iget-object v10, v5, Lcom/scalado/app/ui/Widget;->mCfg:Lcom/scalado/app/ui/Widget$Config;

    iget-boolean v10, v10, Lcom/scalado/app/ui/Widget$Config;->mOnTopDeselectOnDown:Z

    if-nez v10, :cond_6

    .line 239
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 240
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 241
    const/4 v0, 0x0

    .line 246
    :goto_0
    const/4 v6, 0x1

    .line 252
    :goto_1
    invoke-virtual {v5}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 255
    :cond_0
    invoke-virtual {p0, v5}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 258
    :cond_1
    if-eqz v0, :cond_a

    .line 259
    iget-object v10, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/ui/Widget;

    .line 260
    .local v7, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v7}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eq v7, v5, :cond_2

    invoke-virtual {v7, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 261
    invoke-virtual {v7}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 264
    :cond_3
    iput-object v7, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 265
    invoke-virtual {p0, v7}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 266
    const/4 v6, 0x1

    .line 270
    .end local v7           #w:Lcom/scalado/app/ui/Widget;
    :cond_4
    if-nez v6, :cond_a

    .line 271
    const v3, 0x7f7fffff

    .line 272
    .local v3, dMin:F
    const/4 v1, 0x0

    .line 273
    .local v1, closest:Lcom/scalado/app/ui/Widget;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 274
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 276
    .local v9, y:I
    iget-object v10, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/ui/Widget;

    .line 277
    .restart local v7       #w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v7, v8, v9}, Lcom/scalado/app/ui/Widget;->distance(II)F

    move-result v2

    .line 278
    .local v2, d:F
    invoke-virtual {v7}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eq v7, v5, :cond_5

    cmpg-float v10, v2, v3

    if-gez v10, :cond_5

    .line 279
    move-object v1, v7

    .line 280
    move v3, v2

    goto :goto_2

    .line 243
    .end local v1           #closest:Lcom/scalado/app/ui/Widget;
    .end local v2           #d:F
    .end local v3           #dMin:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #w:Lcom/scalado/app/ui/Widget;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_6
    invoke-virtual {p0, v5}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 244
    iget-object v10, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v10, v5}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    goto/16 :goto_0

    .line 248
    :cond_7
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 249
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 250
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 283
    .restart local v1       #closest:Lcom/scalado/app/ui/Widget;
    .restart local v3       #dMin:F
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_8
    if-eqz v1, :cond_a

    const v10, 0x7f7fffff

    cmpg-float v10, v3, v10

    if-gez v10, :cond_a

    .line 284
    iput-boolean v11, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    .line 285
    invoke-virtual {v1, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 286
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 287
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 289
    :cond_9
    iput-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 290
    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 291
    const/4 v6, 0x1

    .line 295
    .end local v1           #closest:Lcom/scalado/app/ui/Widget;
    .end local v3           #dMin:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_a
    return v6
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 299
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionIvl:I

    if-lez v1, :cond_2

    .line 300
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    iget v2, p0, Lcom/scalado/app/ui/UiManager;->mMotionIvl:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 301
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 302
    const/4 v0, 0x1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 306
    :cond_2
    const/4 v0, 0x0

    .line 307
    .local v0, ret:Z
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v1, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 313
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, ret:Z
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v4, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 326
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 327
    const/4 v2, 0x1

    .line 330
    :cond_1
    if-nez v2, :cond_2

    .line 331
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v4, :cond_4

    .line 332
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 333
    invoke-virtual {p0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 334
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    invoke-interface {v4, v5}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    .line 335
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 336
    const/4 v2, 0x1

    .line 351
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v4, :cond_3

    .line 352
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v4}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onNoneSelected()V

    .line 354
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 355
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/ui/Widget;

    .line 356
    .local v3, w:Lcom/scalado/app/ui/Widget;
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/UiManager$WidgetEvent;

    #getter for: Lcom/scalado/app/ui/UiManager$WidgetEvent;->mEvent:I
    invoke-static {v4}, Lcom/scalado/app/ui/UiManager$WidgetEvent;->access$000(Lcom/scalado/app/ui/UiManager$WidgetEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 354
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    .end local v0           #i:I
    .end local v3           #w:Lcom/scalado/app/ui/Widget;
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/ui/Widget;

    .line 339
    .restart local v3       #w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v3}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/scalado/app/ui/Widget;->mCfg:Lcom/scalado/app/ui/Widget$Config;

    iget-boolean v4, v4, Lcom/scalado/app/ui/Widget$Config;->mHideOnOut:Z

    if-eqz v4, :cond_5

    .line 340
    invoke-virtual {v3}, Lcom/scalado/app/ui/Widget;->onOut()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 341
    invoke-virtual {p0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 342
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v4, v3}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    .line 343
    invoke-virtual {p0, v3}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 344
    const/4 v2, 0x1

    .line 345
    goto :goto_0

    .line 358
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #i:I
    :pswitch_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 359
    invoke-virtual {p0, v3}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_2

    .line 362
    :pswitch_1
    iput-boolean v6, v3, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 363
    invoke-virtual {p0, v3}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_2

    .line 367
    .end local v3           #w:Lcom/scalado/app/ui/Widget;
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 368
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 369
    iput-boolean v6, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 370
    iput-object v7, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 371
    iput-object v7, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 372
    iput-boolean v6, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    .line 373
    return v2

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private privateDraw()Z
    .locals 8

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 435
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 436
    if-nez v0, :cond_1

    .line 437
    const-string v5, "UiManager"

    const-string v6, "Failed to lock canvas."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v5, "UiManager"

    const-string v6, "Failed to lock canvas in privateDraw."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    const/4 v5, 0x0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    iget-object v6, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 464
    :cond_0
    :goto_0
    return v5

    .line 444
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v5, v0}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDraw(Landroid/graphics/Canvas;)V

    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, n:I
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/Widget;

    .line 447
    .local v4, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 448
    :cond_2
    invoke-virtual {v4, v0}, Lcom/scalado/app/ui/Widget;->draw(Landroid/graphics/Canvas;)V

    .line 449
    iget-object v5, v4, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 450
    iget-object v5, v4, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/scalado/app/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 451
    add-int/lit8 v3, v3, 0x1

    .line 453
    :cond_3
    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->setClean()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 456
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n:I
    .end local v4           #w:Lcom/scalado/app/ui/Widget;
    :catch_0
    move-exception v1

    .line 457
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    const-string v5, "UiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in privateDraw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    if-eqz v0, :cond_4

    .line 461
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 464
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 455
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #n:I
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/scalado/app/ui/UiManager;->mLstDrawT:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 460
    if-eqz v0, :cond_4

    .line 461
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 460
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n:I
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 461
    iget-object v6, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_6
    throw v5
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    .line 653
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 655
    new-instance v0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;-><init>(Lcom/scalado/app/ui/UiManager;Lcom/scalado/app/ui/UiManager$1;)V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    .line 656
    const-string v0, "kangwei"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    iget-wide v2, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    iget-wide v4, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 659
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 662
    const-string v0, "kangwei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnimation out if mAnimationTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 665
    const-string v0, "kangwei"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 667
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 668
    iput-object v3, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 669
    iput-object v3, p0, Lcom/scalado/app/ui/UiManager;->mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    .line 671
    :cond_0
    return-void
.end method

.method private update()Z
    .locals 6

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, doDraw:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 471
    .local v2, t:J
    iput-wide v2, p0, Lcom/scalado/app/ui/UiManager;->mCurTime:J

    .line 472
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/Widget;

    .line 473
    .local v4, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    invoke-virtual {v4, v2, v3}, Lcom/scalado/app/ui/Widget;->update(J)V

    .line 475
    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 476
    const/4 v0, 0x1

    goto :goto_0

    .line 479
    .end local v4           #w:Lcom/scalado/app/ui/Widget;
    :cond_1
    return v0
.end method

.method private final updateDirtyArea()V
    .locals 4

    .prologue
    .line 620
    iget-boolean v2, p0, Lcom/scalado/app/ui/UiManager;->mFullyInvalidated:Z

    if-eqz v2, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->invalidateFully()V

    .line 643
    :cond_0
    return-void

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 625
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 626
    .local v1, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/scalado/app/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 628
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 632
    .end local v1           #w:Lcom/scalado/app/ui/Widget;
    :cond_3
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 633
    .restart local v1       #w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 634
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 635
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/scalado/app/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 636
    iget-object v2, v1, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 638
    :cond_5
    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_1
.end method


# virtual methods
.method public addWidget(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    monitor-exit v1

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public drawFirst(Lcom/scalado/app/ui/Widget;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 123
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hide(Lcom/scalado/app/ui/Widget;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/ui/UiManager$WidgetEvent;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/scalado/app/ui/UiManager$WidgetEvent;-><init>(Lcom/scalado/app/ui/UiManager;ILcom/scalado/app/ui/UiManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 547
    :goto_0
    monitor-exit v1

    .line 549
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 545
    invoke-virtual {p0, p1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isForcedDown()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDND(Lcom/scalado/app/ui/Widget;Lcom/scalado/app/ui/Item;Lcom/scalado/app/ui/Widget;)V
    .locals 0
    .parameter "src"
    .parameter "item"
    .parameter "dst"

    .prologue
    .line 586
    return-void
.end method

.method onIndexFocused(Lcom/scalado/app/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onIndexFocused(Lcom/scalado/app/ui/Widget;I)V

    .line 602
    :cond_0
    return-void
.end method

.method onIndexSelected(Lcom/scalado/app/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onIndexSelected(Lcom/scalado/app/ui/Widget;I)V

    .line 608
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, ret:Z
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 379
    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 380
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->getModal()Lcom/scalado/app/ui/Widget;

    move-result-object v0

    .line 381
    .local v0, modal:Lcom/scalado/app/ui/Widget;
    if-eqz v0, :cond_0

    .line 382
    const/4 v1, 0x1

    .line 384
    :cond_0
    monitor-exit v3

    .line 386
    .end local v0           #modal:Lcom/scalado/app/ui/Widget;
    :cond_1
    return v1

    .line 384
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, ret:Z
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 393
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->getModal()Lcom/scalado/app/ui/Widget;

    move-result-object v0

    .line 394
    .local v0, modal:Lcom/scalado/app/ui/Widget;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/scalado/app/ui/Widget;->minimize()V

    .line 396
    invoke-virtual {p0, v0}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 397
    invoke-virtual {p0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 398
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v2, v0}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    .line 399
    const/4 v1, 0x1

    .line 401
    :cond_0
    monitor-exit v3

    .line 403
    .end local v0           #modal:Lcom/scalado/app/ui/Widget;
    :cond_1
    return v1

    .line 401
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onSelected(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onSelected(Lcom/scalado/app/ui/Widget;)V

    .line 596
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 192
    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mFullyInvalidated:Z

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, ret:Z
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRectSet:Z

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->update()Z

    .line 220
    monitor-exit v2

    .line 222
    return v0

    .line 199
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 200
    goto :goto_0

    .line 202
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 203
    goto :goto_0

    .line 205
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 206
    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method putOnTop(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_0
    return-void
.end method

.method public putUnder(Lcom/scalado/app/ui/Widget;Lcom/scalado/app/ui/Widget;)V
    .locals 3
    .parameter "w"
    .parameter "target"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    monitor-exit v2

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, i:I
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 137
    monitor-exit v2

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeModal(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    return-void
.end method

.method public removeWidget(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestDraw()V
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 504
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 506
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDirty(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/scalado/app/ui/Widget;->mDirty:Z

    .line 556
    invoke-virtual {p0, p1}, Lcom/scalado/app/ui/UiManager;->setDirtyRec(Lcom/scalado/app/ui/Widget;)V

    .line 557
    monitor-exit v1

    .line 559
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDirtyRec(Lcom/scalado/app/ui/Widget;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 562
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/scalado/app/ui/Widget;->mDirty:Z

    .line 563
    iget-object v2, p1, Lcom/scalado/app/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/Widget;

    .line 564
    .local v0, child:Lcom/scalado/app/ui/Widget;
    invoke-virtual {p0, v0}, Lcom/scalado/app/ui/UiManager;->setDirtyRec(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 566
    .end local v0           #child:Lcom/scalado/app/ui/Widget;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/scalado/app/ui/UiManager$UiManagerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    .line 91
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 145
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 146
    monitor-exit v1

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 158
    monitor-exit v1

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method show(Lcom/scalado/app/ui/Widget;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 525
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/ui/UiManager$WidgetEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/scalado/app/ui/UiManager$WidgetEvent;-><init>(Lcom/scalado/app/ui/UiManager;ILcom/scalado/app/ui/UiManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 533
    :goto_0
    monitor-exit v1

    .line 535
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 531
    invoke-virtual {p0, p1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 164
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "clearModalWidget"

    .prologue
    .line 168
    const-string v2, "kangwei"

    const-string v3, "stop before sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->stopAnimation()V

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 173
    .local v1, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->minimize()V

    .line 174
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->recycle()V

    goto :goto_0

    .line 180
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #w:Lcom/scalado/app/ui/Widget;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 176
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 178
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 180
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v2, "kangwei"

    const-string v3, "stop after sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method
