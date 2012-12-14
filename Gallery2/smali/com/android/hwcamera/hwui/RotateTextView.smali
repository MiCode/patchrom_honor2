.class public Lcom/android/hwcamera/hwui/RotateTextView;
.super Landroid/widget/TextView;
.source "RotateTextView.java"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "paramContext"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    .line 15
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mStartDegree:I

    .line 16
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    .line 17
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mClockwise:Z

    .line 18
    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationStartTime:J

    .line 19
    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationEndTime:J

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    .line 15
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mStartDegree:I

    .line 16
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    .line 17
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mClockwise:Z

    .line 18
    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationStartTime:J

    .line 19
    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationEndTime:J

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    .line 15
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mStartDegree:I

    .line 16
    iput v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    .line 17
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mClockwise:Z

    .line 18
    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationStartTime:J

    .line 19
    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationEndTime:J

    .line 31
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 71
    iget v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    iget v11, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    if-eq v10, v11, :cond_0

    .line 72
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 73
    .local v6, time:J
    iget-wide v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationEndTime:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    .line 74
    iget-wide v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationStartTime:J

    sub-long v10, v6, v10

    long-to-int v2, v10

    .line 75
    .local v2, deltaTime:I
    iget v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mStartDegree:I

    iget-boolean v11, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mClockwise:Z

    if-eqz v11, :cond_1

    .end local v2           #deltaTime:I
    :goto_0
    mul-int/lit16 v11, v2, 0xb4

    div-int/lit16 v11, v11, 0x3e8

    add-int v1, v10, v11

    .line 77
    .local v1, degree:I
    if-ltz v1, :cond_2

    .line 78
    rem-int/lit16 v10, v1, 0x168

    iput v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    .line 83
    :goto_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->invalidate()V

    .line 89
    .end local v1           #degree:I
    .end local v6           #time:J
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->getPaddingLeft()I

    move-result v4

    .line 90
    .local v4, left:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->getPaddingTop()I

    move-result v8

    .line 91
    .local v8, top:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->getPaddingRight()I

    move-result v5

    .line 92
    .local v5, right:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->getPaddingBottom()I

    move-result v0

    .line 93
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int v9, v10, v5

    .line 94
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v8

    sub-int v3, v10, v0

    .line 96
    .local v3, height:I
    div-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v4

    int-to-float v10, v10

    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v8

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    iget v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 98
    neg-int v10, v9

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    neg-int v11, v3

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void

    .line 75
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v8           #top:I
    .end local v9           #width:I
    .restart local v2       #deltaTime:I
    .restart local v6       #time:J
    :cond_1
    neg-int v2, v2

    goto :goto_0

    .line 80
    .end local v2           #deltaTime:I
    .restart local v1       #degree:I
    :cond_2
    rem-int/lit16 v10, v1, 0x168

    add-int/lit16 v10, v10, 0x168

    iput v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    goto :goto_1

    .line 85
    .end local v1           #degree:I
    :cond_3
    iget v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    iput v10, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    goto :goto_2
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 36
    if-ltz p1, :cond_0

    .line 37
    rem-int/lit16 p1, p1, 0x168

    .line 42
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 67
    :goto_1
    return-void

    .line 39
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 46
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    .line 47
    iget v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mStartDegree:I

    .line 48
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationStartTime:J

    .line 50
    iget v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mTargetDegree:I

    iget v2, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 53
    .local v0, diff:I
    if-gtz v0, :cond_2

    .line 54
    add-int/lit16 v0, v0, 0x168

    .line 59
    :cond_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    .line 60
    add-int/lit16 v0, v0, -0x168

    .line 63
    :cond_3
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mClockwise:Z

    .line 64
    iget-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xb4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/hwcamera/hwui/RotateTextView;->mAnimationEndTime:J

    .line 66
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateTextView;->invalidate()V

    goto :goto_1

    .line 63
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method
