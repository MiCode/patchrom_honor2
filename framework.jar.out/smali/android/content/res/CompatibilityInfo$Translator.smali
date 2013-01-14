.class public Landroid/content/res/CompatibilityInfo$Translator;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Translator"
.end annotation


# instance fields
.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mContentInsetsBuffer:Landroid/graphics/Rect;

.field private mTouchableAreaBuffer:Landroid/graphics/Region;

.field private mVisibleInsetsBuffer:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/content/res/CompatibilityInfo;


# direct methods
.method constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    .line 364
    return-void
.end method

.method constructor <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .locals 1
    .parameter
    .parameter "applicationScale"
    .parameter "applicationInvertedScale"

    .prologue
    const/4 v0, 0x0

    .line 356
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->this$0:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 353
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 354
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 357
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 358
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 359
    return-void
.end method


# virtual methods
.method public getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "contentInsets"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 460
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 461
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 462
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 2
    .parameter "touchableArea"

    .prologue
    .line 481
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 483
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->scale(F)V

    .line 484
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    return-object v0
.end method

.method public getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "visibleInsets"

    .prologue
    .line 470
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 471
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 472
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 473
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public translateCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const v3, 0x3b2b5601

    .line 384
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    const/high16 v2, 0x3fc0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 400
    const v0, 0x3b2b5601

    .line 401
    .local v0, tinyOffset:F
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 403
    .end local v0           #tinyOffset:F
    :cond_0
    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    iget v2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 404
    return-void
.end method

.method public translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 410
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    .line 411
    return-void
.end method

.method public translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 451
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 452
    return-void
.end method

.method public translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 439
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 440
    .local v0, scale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 441
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 442
    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 444
    :cond_0
    return-void
.end method

.method public translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 425
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 426
    return-void
.end method

.method public translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 370
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 371
    return-void
.end method

.method public translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 432
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 433
    return-void
.end method

.method public translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .locals 1
    .parameter "transparentRegion"

    .prologue
    .line 377
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 378
    return-void
.end method

.method public translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 418
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 419
    return-void
.end method
