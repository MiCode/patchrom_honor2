.class public Lcom/scalado/prototype/strobe/widgets/Flinger;
.super Ljava/lang/Object;
.source "Flinger.java"


# instance fields
.field private mBounce:Z

.field private mConstant:F

.field private mCurrentValue:F

.field private mCurrentVelocity:F

.field private mEpsilon:F

.field private mMaxValue:F

.field private mMinValue:F

.field private mRunning:Z

.field private mStartTime:J

.field private mStartValue:F

.field private mStartVelocity:F

.field private mState:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "bounce"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mEpsilon:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mBounce:Z

    .line 41
    iput-boolean p1, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mBounce:Z

    .line 42
    return-void
.end method


# virtual methods
.method public computeScroll()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x2

    const v10, 0x3e99999a

    const/4 v7, 0x1

    .line 75
    iget-boolean v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    if-eqz v6, :cond_5

    .line 76
    const/4 v2, 0x1

    .line 78
    .local v2, runNextFrame:Z
    iget-wide v3, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartTime:J

    .line 79
    .local v3, time:J
    iget-wide v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartTime:J

    long-to-float v6, v8

    const v8, 0x41855555

    add-float/2addr v6, v8

    float-to-long v8, v6

    iput-wide v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartTime:J

    .line 80
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    neg-float v6, v6

    long-to-float v8, v3

    mul-float/2addr v6, v8

    const/high16 v8, 0x447a

    div-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 82
    .local v1, exp:F
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartVelocity:F

    iget v9, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    div-float/2addr v8, v9

    add-float v0, v6, v8

    .line 84
    .local v0, endValue:F
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartVelocity:F

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v1

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    .line 86
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartVelocity:F

    mul-float/2addr v6, v1

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentVelocity:F

    .line 89
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mEpsilon:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    .line 91
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    if-ne v6, v11, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 93
    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    .line 94
    iput-boolean v2, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    move v6, v7

    .line 146
    .end local v0           #endValue:F
    .end local v1           #exp:F
    .end local v2           #runNextFrame:Z
    .end local v3           #time:J
    :goto_0
    return v6

    .line 97
    .restart local v0       #endValue:F
    .restart local v1       #exp:F
    .restart local v2       #runNextFrame:Z
    .restart local v3       #time:J
    :cond_0
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    if-nez v6, :cond_1

    .line 98
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMaxValue:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    .line 99
    const/4 v2, 0x0

    .line 100
    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    .line 101
    iput-boolean v2, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    move v6, v7

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    if-ne v6, v7, :cond_3

    .line 105
    const/high16 v6, 0x40c0

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    .line 106
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    :goto_1
    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    mul-float v5, v6, v8

    .line 109
    .local v5, velocity:F
    iput-wide v12, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartTime:J

    .line 110
    iput v5, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartVelocity:F

    .line 111
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartValue:F

    .line 112
    iput v11, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    .line 113
    iput v10, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mEpsilon:F

    move v6, v7

    .line 114
    goto :goto_0

    .line 106
    .end local v5           #velocity:F
    :cond_2
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMaxValue:F

    goto :goto_1

    .line 116
    :cond_3
    iput-boolean v2, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    .line 119
    :cond_4
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    packed-switch v6, :pswitch_data_0

    .line 146
    .end local v0           #endValue:F
    .end local v1           #exp:F
    .end local v2           #runNextFrame:Z
    .end local v3           #time:J
    :cond_5
    :goto_2
    iget-boolean v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    goto :goto_0

    .line 121
    .restart local v0       #endValue:F
    .restart local v1       #exp:F
    .restart local v2       #runNextFrame:Z
    .restart local v3       #time:J
    :pswitch_0
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_6

    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMaxValue:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    .line 122
    :cond_6
    iget-boolean v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mBounce:Z

    if-nez v6, :cond_8

    .line 123
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iget v8, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    :goto_3
    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    .line 125
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    move v6, v7

    .line 126
    goto :goto_0

    .line 123
    :cond_7
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMaxValue:F

    goto :goto_3

    .line 128
    :cond_8
    const/high16 v6, 0x428c

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    .line 129
    iput-wide v12, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartTime:J

    .line 131
    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/Flinger;->getCurrentVelocity()F

    move-result v6

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartVelocity:F

    .line 133
    iget v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    iput v6, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartValue:F

    .line 135
    iput v7, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    .line 137
    iput v10, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mEpsilon:F

    goto :goto_2

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    return v0
.end method

.method public getCurrentVelocity()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentVelocity:F

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFling(FFFF)V
    .locals 2
    .parameter "startValue"
    .parameter "velocity"
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 46
    iput p4, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMaxValue:F

    .line 47
    iput p3, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMinValue:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mMaxValue:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    iput p2, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartVelocity:F

    .line 56
    iput p1, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartValue:F

    .line 57
    iput p1, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mCurrentValue:F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mStartTime:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    .line 62
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mConstant:F

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mState:I

    .line 65
    const v0, 0x3cf5c28f

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mEpsilon:F

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/prototype/strobe/widgets/Flinger;->mRunning:Z

    .line 151
    return-void
.end method
