.class public Lcom/android/hwcamera/hwui/ZoomControl;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static mFirstTimeInitialized:Z


# instance fields
.field private mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

.field private mBlankLength:I

.field private mContext:Landroid/content/Context;

.field private mDissolveAnimation:Landroid/animation/ValueAnimator;

.field private mFadeAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimEndAuto:Z

.field private mIsAnimationEndByUser:Z

.field private mIsFadingIn:Z

.field private mIsFadingOut:Z

.field private mIsSwitchCameraId:Z

.field private mIsTracking:Z

.field private mLayoutHeight:I

.field private mLayoutLengthLandscape:I

.field private mLayoutMarginLandscape:Landroid/graphics/Rect;

.field private mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

.field private mProgressDrawableDissolve:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mProgressThumbDissolve:Landroid/graphics/drawable/Drawable;

.field private mProgressThumbNormal:Landroid/graphics/drawable/Drawable;

.field private mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarState:I

.field private mSmoothZoomSupported:Z

.field private mStateSwitchAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private mStateSwitchUpdateAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStep:I

.field private mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mZoomInView:Lcom/android/hwcamera/RotateImageView;

.field private mZoomIndex:I

.field private mZoomIndexDest:I

.field private mZoomMax:I

.field private mZoomOutView:Lcom/android/hwcamera/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/hwui/ZoomControl;->mFirstTimeInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 66
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 67
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    .line 68
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    .line 69
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableDissolve:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormal:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbDissolve:Landroid/graphics/drawable/Drawable;

    .line 78
    iput v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    .line 79
    iput v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    .line 80
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    .line 81
    iput v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    .line 85
    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 90
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    .line 91
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 95
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 97
    new-instance v0, Lcom/android/hwcamera/hwui/ZoomControl$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ZoomControl$1;-><init>(Lcom/android/hwcamera/hwui/ZoomControl;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStateSwitchUpdateAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 136
    new-instance v0, Lcom/android/hwcamera/hwui/ZoomControl$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ZoomControl$2;-><init>(Lcom/android/hwcamera/hwui/ZoomControl;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStateSwitchAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 188
    new-instance v0, Lcom/android/hwcamera/hwui/ZoomControl$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ZoomControl$3;-><init>(Lcom/android/hwcamera/hwui/ZoomControl;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 219
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z

    .line 223
    iput v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 224
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    .line 225
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    .line 231
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsTracking:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsSwitchCameraId:Z

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimEndAuto:Z

    .line 243
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mContext:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 245
    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 91
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/ZoomControl;)Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/ZoomControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/ZoomControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/hwcamera/hwui/ZoomControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/ZoomControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/hwui/ZoomControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/ZoomControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/hwcamera/hwui/ZoomControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/ZoomControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsSwitchCameraId:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/ZoomControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimEndAuto:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private changeZoomIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 391
    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    if-eqz v2, :cond_3

    .line 392
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v2, :cond_4

    .line 393
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    if-ge p1, v2, :cond_0

    move v0, v1

    .line 394
    .local v0, zoomType:I
    :cond_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    if-ne v2, v3, :cond_2

    :cond_1
    if-ne v0, v1, :cond_3

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    if-eqz v2, :cond_3

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, v0}, Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 415
    .end local v0           #zoomType:I
    :cond_3
    :goto_0
    return v1

    .line 399
    :cond_4
    iput p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    .line 400
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    iget v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    if-le v2, v3, :cond_5

    .line 401
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    iput v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    .line 403
    :cond_5
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    if-gez v2, :cond_6

    .line 404
    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    .line 406
    :cond_6
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsTracking:Z

    if-eqz v2, :cond_7

    .line 407
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    iput v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 408
    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    iget v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    invoke-interface {v2, v3}, Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    goto :goto_0

    .line 410
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ZoomControl;->changeZoomIndexSmoothly()V

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 640
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 642
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStateSwitchAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 643
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStateSwitchUpdateAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 645
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 647
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStateSwitchAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 648
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStateSwitchUpdateAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 651
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 652
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 653
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 654
    return-void
.end method

.method public static resetFirstTimeInitialized(Z)V
    .locals 0
    .parameter "firstTimeInitialized"

    .prologue
    .line 329
    sput-boolean p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFirstTimeInitialized:Z

    .line 330
    return-void
.end method


# virtual methods
.method public calZoomControlRegions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3f3ae148

    const/4 v3, 0x0

    .line 463
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    .line 464
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 466
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    .line 471
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    .line 472
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 473
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 474
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 475
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 477
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    add-int/2addr v2, v3

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/hwcamera/hwui/MenuCommon;->setZoomControlLayoutRectLandscape(IIII)V

    .line 498
    :goto_1
    return-void

    .line 468
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 483
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    .line 488
    :goto_2
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    .line 490
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 491
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 492
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 493
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 495
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/hwcamera/hwui/MenuCommon;->setZoomControlLayoutRectLandscape(IIII)V

    goto :goto_1

    .line 485
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mBlankLength:I

    goto :goto_2
.end method

.method public changeZoomIndexSmoothly()V
    .locals 4

    .prologue
    .line 419
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    if-ge v0, v1, :cond_2

    .line 420
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 421
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    if-le v0, v1, :cond_0

    .line 422
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    invoke-interface {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    if-le v0, v1, :cond_4

    .line 426
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 427
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    if-ge v0, v1, :cond_3

    .line 428
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndexDest:I

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    invoke-interface {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    goto :goto_0

    .line 431
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsTracking:Z

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2001

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getVisibility()I

    move-result v0

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initZoomControl()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 248
    const-string v0, "ZoomControl"

    const-string v1, "initZoomControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomStep(I)V

    .line 251
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4240

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    .line 252
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    invoke-static {v0}, Lcom/android/hwcamera/hwui/MenuCommon;->setZoomControlLayoutHeight(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ZoomControl;->calZoomControlRegions()V

    .line 254
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ZoomControl;->initZoomControlOrientation()V

    .line 255
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ZoomControl;->updateZoomControlLayoutSize()V

    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ZoomControl;->initAnimation()V

    .line 264
    sget-boolean v0, Lcom/android/hwcamera/hwui/ZoomControl;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/hwcamera/hwui/ZoomControl;->mFirstTimeInitialized:Z

    goto :goto_0
.end method

.method public initZoomControlOrientation()V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public initZoomControlRes(Lcom/android/hwcamera/hwui/RotateLinearLayout;Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/hwcamera/RotateImageView;Lcom/android/hwcamera/RotateImageView;)V
    .locals 4
    .parameter "layout"
    .parameter "seekbar"
    .parameter "progressDrawableNormal"
    .parameter "progressDrawableDissolve"
    .parameter "progressThumbNormal"
    .parameter "progressThumbDossolve"
    .parameter "zoomInView"
    .parameter "zoomOutView"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x42b4

    .line 285
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 286
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 287
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    :cond_0
    iput-object p7, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    .line 292
    iput-object p8, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    .line 293
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setRotation(F)V

    .line 295
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setRotation(F)V

    .line 297
    :cond_1
    iput-object p3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-object p4, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableDissolve:Landroid/graphics/drawable/Drawable;

    .line 299
    iput-object p5, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormal:Landroid/graphics/drawable/Drawable;

    .line 300
    iput-object p6, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbDissolve:Landroid/graphics/drawable/Drawable;

    .line 302
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormal:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbDissolve:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 303
    .local v0, mLayers:[Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;

    .line 304
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 306
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x3

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 682
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 668
    :pswitch_1
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v0, v2, :cond_0

    .line 669
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0

    .line 674
    :pswitch_2
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v0, v2, :cond_0

    .line 675
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00ed
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 441
    if-eqz p3, :cond_1

    .line 443
    const-string v0, "ZoomControl"

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z

    if-eqz v0, :cond_2

    .line 445
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/hwcamera/hwui/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 455
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 460
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/16 v4, 0x2001

    .line 688
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ZoomControl;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 693
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 755
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 697
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v1, v3, :cond_2

    .line 698
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 701
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    .line 702
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v2, v3, :cond_4

    .line 703
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 704
    :cond_4
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v2, v6, :cond_5

    .line 705
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z

    .line 706
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    .line 707
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 709
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v1, v5, :cond_2

    .line 710
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 712
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 713
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    .line 715
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 716
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 720
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 721
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsTracking:Z

    .line 722
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v1, v3, :cond_7

    .line 723
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 725
    :cond_7
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-eq v1, v6, :cond_2

    .line 727
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 729
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v1, v5, :cond_2

    goto/16 :goto_1

    .line 732
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_b

    .line 733
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsTracking:Z

    .line 734
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v2, v3, :cond_9

    .line 735
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 736
    :cond_9
    iget v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v2, v6, :cond_a

    .line 737
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z

    .line 738
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_1

    .line 739
    :cond_a
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 741
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-ne v1, v5, :cond_2

    .line 742
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 744
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 745
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 747
    .end local v0           #msg:Landroid/os/Message;
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 748
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 693
    :pswitch_data_0
    .packed-switch 0x7f0c00ed
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 112
    :cond_0
    iput-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 118
    :cond_2
    iput-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 124
    :cond_4
    iput-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 130
    :cond_6
    iput-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 133
    :cond_7
    iput-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    .line 310
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 4
    .parameter "degree"

    .prologue
    const/16 v3, 0x2001

    .line 518
    const-string v0, "ZoomControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationEx degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 525
    const/4 p1, 0x0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setOrientation(I)V

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setOrientation(I)V

    .line 531
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoomSupported"

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSmoothZoomSupported:Z

    .line 321
    return-void
.end method

.method public setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x2001

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    packed-switch p1, :pswitch_data_0

    .line 387
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    .line 388
    return-void

    .line 356
    :pswitch_1
    const-string v0, "ZoomControl"

    const-string v1, "setState ZOOM_NORMAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAlpha(F)V

    .line 360
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/ZoomControl;->switchIndicatorImages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 367
    :pswitch_2
    const-string v0, "ZoomControl"

    const-string v1, "setState ZOOM_DISSOLVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->switchIndicatorImages(I)V

    .line 369
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableDissolve:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbDissolve:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 376
    :pswitch_3
    const-string v0, "ZoomControl"

    const-string v1, "setState ZOOM_ANTIDISSOLVING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAlpha(F)V

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/ZoomControl;->switchIndicatorImages(I)V

    .line 381
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x4

    .line 542
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_3

    .line 543
    const/16 v0, 0x8

    if-ne v0, p1, :cond_2

    .line 545
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimEndAuto:Z

    .line 548
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 550
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    if-eq v0, v1, :cond_1

    .line 551
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->clearAnimation()V

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimEndAuto:Z

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 558
    :cond_3
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 339
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomIndex:I

    .line 343
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    :cond_2
    return-void
.end method

.method public setZoomMax(I)V
    .locals 2
    .parameter "zoomMax"

    .prologue
    .line 313
    iput p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    .line 314
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 317
    :cond_0
    return-void
.end method

.method protected setZoomStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 349
    iput p1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mStep:I

    .line 350
    return-void
.end method

.method public switchIndicatorImages(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomInView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomOutView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public unInitZoomControl()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 539
    return-void
.end method

.method public updateZoomControlLayoutSize()V
    .locals 5

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 506
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 508
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 513
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutMarginLandscape:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 514
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 510
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutLengthLandscape:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 511
    iget v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mLayoutHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_1
.end method

.method public updateZoomControlWhenSwitchCameraId(Z)V
    .locals 3
    .parameter "beforeSwitch"

    .prologue
    const/4 v2, 0x0

    .line 604
    const-string v0, "ZoomControl"

    const-string v1, "updateZoomControlWhenSwitchCameraId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsSwitchCameraId:Z

    .line 610
    if-eqz p1, :cond_1

    .line 612
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 616
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    .line 622
    :goto_0
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsSwitchCameraId:Z

    .line 623
    return-void

    .line 618
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 619
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    .line 620
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    goto :goto_0
.end method

.method public zoomFade(Z)V
    .locals 4
    .parameter "fadeIn"

    .prologue
    const/4 v3, 0x1

    .line 573
    const-string v1, "ZoomControl"

    const-string v2, "zoomFade"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, fadeAnim:Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 579
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z

    .line 580
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 591
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->clearAnimation()V

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    return-void

    .line 583
    :cond_1
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z

    .line 584
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mFadeOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public zoomStateSwitch()V
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl;->mAntiDissolveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
