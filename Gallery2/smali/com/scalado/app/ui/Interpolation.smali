.class public Lcom/scalado/app/ui/Interpolation;
.super Ljava/lang/Object;
.source "Interpolation.java"


# instance fields
.field private mParam:F

.field private mT0:J

.field private mT1:J

.field private mTCur:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    .line 15
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "param"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    .line 18
    iput p1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    .line 20
    return-void
.end method


# virtual methods
.method public delta()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/scalado/app/ui/Interpolation;->mTCur:J

    return-wide v0
.end method

.method public done()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(FF)F
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public param()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    return v0
.end method

.method setConstant(F)V
    .locals 1
    .parameter "param"

    .prologue
    .line 49
    iput p1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    .line 51
    return-void
.end method

.method public startTimed(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/scalado/app/ui/Interpolation;->startTimed(JF)V

    .line 34
    return-void
.end method

.method startTimed(JF)V
    .locals 5
    .parameter "t"
    .parameter "param"

    .prologue
    const/4 v4, 0x0

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/ui/Interpolation;->mT0:J

    .line 25
    iget-wide v0, p0, Lcom/scalado/app/ui/Interpolation;->mT0:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/scalado/app/ui/Interpolation;->mT1:J

    .line 26
    cmpl-float v0, p3, v4

    if-lez v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/scalado/app/ui/Interpolation;->mT1:J

    long-to-float v2, p1

    mul-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/scalado/app/ui/Interpolation;->mT1:J

    .line 29
    :cond_0
    iput v4, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    .line 30
    return-void
.end method

.method public update(J)V
    .locals 5
    .parameter "t"

    .prologue
    .line 37
    iget v1, p0, Lcom/scalado/app/ui/Interpolation;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 38
    iget-wide v1, p0, Lcom/scalado/app/ui/Interpolation;->mT0:J

    sub-long v1, p1, v1

    iput-wide v1, p0, Lcom/scalado/app/ui/Interpolation;->mTCur:J

    .line 39
    iget-wide v1, p0, Lcom/scalado/app/ui/Interpolation;->mT1:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 40
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-wide v1, p0, Lcom/scalado/app/ui/Interpolation;->mT0:J

    sub-long v1, p1, v1

    long-to-float v0, v1

    .line 43
    .local v0, delta:F
    iget-wide v1, p0, Lcom/scalado/app/ui/Interpolation;->mT1:J

    iget-wide v3, p0, Lcom/scalado/app/ui/Interpolation;->mT0:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float v1, v0, v1

    iput v1, p0, Lcom/scalado/app/ui/Interpolation;->mParam:F

    goto :goto_0
.end method
