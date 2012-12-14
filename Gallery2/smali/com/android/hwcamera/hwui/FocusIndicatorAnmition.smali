.class Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;
.super Ljava/lang/Object;
.source "FocusIndicatorView.java"


# instance fields
.field private mAlphaDownAnimation:Landroid/animation/ValueAnimator;

.field private mAlphaUpAnimation:Landroid/animation/ValueAnimator;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDistance:F

.field private mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

.field private mFocusingAnimation:Landroid/animation/ValueAnimator;

.field private mScaleDownAnimation:Landroid/animation/ValueAnimator;

.field private mScaleUpAnimation:Landroid/animation/ValueAnimator;

.field private mTargetX:F

.field private mTargetY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->initAnimation()V

    .line 247
    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/hwui/FocusIndicatorView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Lcom/android/hwcamera/hwui/FocusIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private cancelAllAnimation()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 286
    :cond_2
    return-void
.end method

.method private getdistance()F
    .locals 4

    .prologue
    .line 423
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mCurrentX:F

    iget v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mCurrentX:F

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mCurrentY:F

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mCurrentY:F

    iget v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetY:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v3, 0x2

    .line 293
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    .line 294
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 295
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$1;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$2;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    .line 320
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$4;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 328
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    .line 329
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$5;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$6;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    .line 346
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 348
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$7;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$8;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$8;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    return-void

    .line 293
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 302
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x40t
    .end array-data

    .line 319
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    .line 328
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 345
    :array_4
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mCurrentX:F

    .line 411
    iget-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mCurrentY:F

    .line 412
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->getdistance()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mDistance:F

    .line 413
    iget v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mDistance:F

    const/high16 v2, 0x3f80

    div-float v0, v1, v2

    .line 414
    .local v0, duration:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 417
    :cond_0
    const/high16 v1, 0x43c8

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 418
    const/high16 v0, 0x43c8

    .line 420
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAnimiton()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 265
    :cond_4
    return-void
.end method

.method public setLocation(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 428
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetX:F

    .line 429
    int-to-float v0, p2

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetY:F

    .line 430
    return-void
.end method

.method public showFail()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 400
    return-void
.end method

.method public showFocuing()V
    .locals 7

    .prologue
    .line 382
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    const v4, 0x7f0200f9

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 383
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 384
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    sub-long v1, v3, v5

    .line 386
    .local v1, duration:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 387
    const-wide/16 v1, 0x0

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 391
    .end local v1           #duration:J
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 392
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 393
    return-void
.end method

.method public showStart()V
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->cancelAllAnimation()V

    .line 376
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->initConfig()V

    .line 378
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 379
    return-void
.end method

.method public showSuccess()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 407
    return-void
.end method
