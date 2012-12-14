.class public Lcom/android/hwcamera/hwui/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;,
        Lcom/android/hwcamera/hwui/Panel$State;,
        Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
    }
.end annotation


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsCanFly:Z

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

.field private mPosition:I

.field private mState:Lcom/android/hwcamera/hwui/Panel$State;

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/Panel;->mIsCanFly:Z

    .line 278
    new-instance v3, Lcom/android/hwcamera/hwui/Panel$1;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/hwui/Panel$1;-><init>(Lcom/android/hwcamera/hwui/Panel;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    .line 331
    new-instance v3, Lcom/android/hwcamera/hwui/Panel$2;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/hwui/Panel$2;-><init>(Lcom/android/hwcamera/hwui/Panel;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/Panel;->startAnimation:Ljava/lang/Runnable;

    .line 427
    new-instance v3, Lcom/android/hwcamera/hwui/Panel$3;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/hwui/Panel$3;-><init>(Lcom/android/hwcamera/hwui/Panel;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 108
    sget-object v3, Lcom/android/hwcamera/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/hwui/Panel;->mDuration:I

    .line 112
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    .line 114
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/Panel;->mLinearFlying:Z

    .line 115
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    .line 116
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget v3, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    iput v1, p0, Lcom/android/hwcamera/hwui/Panel;->mOrientation:I

    .line 119
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/Panel;->setOrientation(I)V

    .line 120
    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    .line 121
    new-instance v1, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;-><init>(Lcom/android/hwcamera/hwui/Panel;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mGestureListener:Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;

    .line 122
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel;->mGestureListener:Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;

    invoke-direct {v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 123
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 124
    return-void

    :cond_1
    move v1, v2

    .line 118
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/Panel;->isCouldFly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/hwui/Panel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mVelocity:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/hwcamera/hwui/Panel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/hwcamera/hwui/Panel;->mVelocity:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/hwui/Panel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/hwcamera/hwui/Panel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/hwcamera/hwui/Panel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/hwui/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/hwui/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mDuration:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/hwui/Panel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/hwcamera/hwui/Panel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/hwcamera/hwui/Panel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/Panel;->postProcess()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/hwui/Panel;FII)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/hwui/Panel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mGestureListener:Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/hwcamera/hwui/Panel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    return p1
.end method

.method private ensureRange(FII)F
    .locals 1
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 273
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 274
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 275
    return p1
.end method

.method private isCouldFly()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsCanFly:Z

    return v0
.end method

.method private postProcess()V
    .locals 2

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    if-eqz v0, :cond_1

    .line 451
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/android/hwcamera/hwui/Panel$OnPanelListener;->onPanelClosed(Lcom/android/hwcamera/hwui/Panel;)V

    .line 457
    :cond_1
    :goto_1
    return-void

    .line 446
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/android/hwcamera/hwui/Panel$OnPanelListener;->onPanelOpened(Lcom/android/hwcamera/hwui/Panel;)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v2, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    if-nez v1, :cond_2

    .line 254
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel;->mOrientation:I

    if-ne v1, v4, :cond_5

    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I

    .line 255
    .local v0, delta:I
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    if-nez v1, :cond_1

    .line 256
    :cond_0
    neg-int v0, v0

    .line 258
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel;->mOrientation:I

    if-ne v1, v4, :cond_6

    .line 259
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 264
    .end local v0           #delta:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v2, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v2, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v1, v2, :cond_4

    .line 265
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel;->mTrackX:F

    iget v2, p0, Lcom/android/hwcamera/hwui/Panel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 269
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 270
    return-void

    .line 254
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I

    goto :goto_0

    .line 261
    .restart local v0       #delta:I
    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isOnAnimating()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->ANIMATING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 214
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your Panel must have a View whose id attribute is \'R.id.panelHandle\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your Panel must have a View whose id attribute is \'R.id.panelContent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->removeView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->removeView(Landroid/view/View;)V

    .line 228
    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->addView(Landroid/view/View;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    return-void

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 244
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 245
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I

    .line 246
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I

    .line 247
    return-void
.end method

.method public setFlyable(Z)V
    .locals 0
    .parameter "isFlyable"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/Panel;->mIsCanFly:Z

    .line 58
    return-void
.end method

.method public setHandleVisiable(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    return-void
.end method

.method public setOnPanelListener(Lcom/android/hwcamera/hwui/Panel$OnPanelListener;)V
    .locals 0
    .parameter "onPanelListener"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    .line 133
    return-void
.end method

.method public setOpen(ZZ)V
    .locals 3
    .parameter "open"
    .parameter "animate"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Panel;->isOpen()Z

    move-result v2

    xor-int/2addr v2, p1

    if-eqz v2, :cond_5

    .line 176
    if-nez p1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    .line 177
    if-eqz p2, :cond_3

    .line 178
    sget-object v0, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    .line 179
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/Panel;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 176
    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/Panel;->postProcess()V

    goto :goto_1

    .line 186
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 190
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v2, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 191
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z

    .line 192
    const-string v0, "Panel"

    const-string v1, "setOpen,!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;

    .line 194
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/Panel;->postProcess()V

    goto :goto_1
.end method

.method public unsetOnPanelListener()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    .line 137
    return-void
.end method
