.class public Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$1;,
        Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;
    }
.end annotation


# instance fields
.field private mFadeOutRequest:Z

.field private final mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

.field private mHandler:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;

.field private mLastMotionX:F

.field private mScrolling:F

.field private mStartMotionX:F

.field private mState:I

.field private mTimeout:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    .line 28
    new-instance v0, Lcom/scalado/prototype/strobe/widgets/Flinger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/prototype/strobe/widgets/Flinger;-><init>(Z)V

    iput-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    .line 33
    new-instance v0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;-><init>(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$1;)V

    iput-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mHandler:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFadeOutRequest:Z

    .line 41
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mTimeout:J

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->fadeOut()V

    return-void
.end method

.method private doFadeOut()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I

    .line 281
    return-void
.end method

.method private fadeOut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->doFadeOut()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mState:I

    if-ne v0, v2, :cond_0

    .line 267
    iput-boolean v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFadeOutRequest:Z

    goto :goto_0
.end method

.method private setChildrenEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter "vg"
    .parameter "enabled"

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 93
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #v:Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->setChildrenEnabled(Landroid/view/ViewGroup;Z)V

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v0}, Lcom/scalado/prototype/strobe/widgets/Flinger;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v0}, Lcom/scalado/prototype/strobe/widgets/Flinger;->getCurrentValue()F

    move-result v0

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    .line 187
    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 189
    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->postInvalidate()V

    .line 191
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 101
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 104
    .local v1, x:F
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 123
    :goto_0
    return v2

    .line 106
    :pswitch_1
    iget-object v4, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v4}, Lcom/scalado/prototype/strobe/widgets/Flinger;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v3}, Lcom/scalado/prototype/strobe/widgets/Flinger;->stopScroll()V

    .line 108
    iput v1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mStartMotionX:F

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v2}, Lcom/scalado/prototype/strobe/widgets/Flinger;->stopScroll()V

    .line 112
    iput v1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mStartMotionX:F

    move v2, v3

    .line 113
    goto :goto_0

    .line 116
    :pswitch_2
    iget v4, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mStartMotionX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 117
    iput v1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mLastMotionX:F

    goto :goto_0

    :cond_1
    move v2, v3

    .line 120
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 52
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 54
    .local v2, childWidthMeasureSpec:I
    const/high16 v4, 0x4000

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 57
    .local v1, childHeightMeasureSpec:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 58
    invoke-virtual {p0, v3}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0, v2, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->measureChild(Landroid/view/View;II)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 129
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 130
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 134
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 136
    .local v2, x:F
    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return v8

    .line 138
    :pswitch_0
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v3}, Lcom/scalado/prototype/strobe/widgets/Flinger;->stopScroll()V

    .line 139
    iput v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mLastMotionX:F

    .line 140
    iput v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mStartMotionX:F

    goto :goto_0

    .line 144
    :pswitch_1
    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mLastMotionX:F

    sub-float v1, v2, v3

    .line 146
    .local v1, dx:F
    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    cmpg-float v3, v3, v9

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 149
    :cond_1
    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 151
    :cond_2
    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    .line 152
    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-super {p0, v3, v10}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 153
    iput v2, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mLastMotionX:F

    goto :goto_0

    .line 157
    .end local v1           #dx:F
    :pswitch_2
    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    iget v4, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mLastMotionX:F

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    .line 158
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 160
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4396

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    cmpg-float v3, v3, v9

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    iget v4, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    iget-object v5, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v9, v6}, Lcom/scalado/prototype/strobe/widgets/Flinger;->startFling(FFFF)V

    .line 171
    :cond_4
    iget-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 172
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 174
    iget v3, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-super {p0, v3, v10}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 175
    invoke-virtual {p0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->postInvalidate()V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    invoke-virtual {v0}, Lcom/scalado/prototype/strobe/widgets/Flinger;->stopScroll()V

    .line 74
    int-to-float v0, p1

    iput v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 77
    iget v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mFlinger:Lcom/scalado/prototype/strobe/widgets/Flinger;

    iget v1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->mScrolling:F

    const v2, -0x3963c000

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/scalado/prototype/strobe/widgets/Flinger;->startFling(FFFF)V

    .line 80
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 85
    invoke-direct {p0, p0, p1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->setChildrenEnabled(Landroid/view/ViewGroup;Z)V

    .line 86
    return-void
.end method
