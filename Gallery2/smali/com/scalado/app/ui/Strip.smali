.class public Lcom/scalado/app/ui/Strip;
.super Lcom/scalado/app/ui/Widget;
.source "Strip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/ui/Strip$1;,
        Lcom/scalado/app/ui/Strip$BgDrawer;,
        Lcom/scalado/app/ui/Strip$Transition;,
        Lcom/scalado/app/ui/Strip$VelocityTrapper;
    }
.end annotation


# instance fields
.field private mAcc:F

.field private mBBox:Landroid/graphics/Rect;

.field private mBgAlpha:I

.field private mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCurPoint:Landroid/graphics/Point;

.field private mCurPos:F

.field private mCurRect:Landroid/graphics/Rect;

.field mCurSize:Lcom/scalado/base/Size;

.field private mCurTmpSize:Lcom/scalado/base/Size;

.field mDownItem:Lcom/scalado/app/ui/Item;

.field private mDownPoint:Landroid/graphics/Point;

.field mDrawOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawTxt:Z

.field private mDstLayout:Lcom/scalado/app/ui/StripLayout;

.field private mFrameRect:Landroid/graphics/Rect;

.field private mHasAnimItem:Z

.field private mIdentityDrawOrder:Z

.field private mIdleTime:J

.field private mItemAlpha:I

.field private mItemPaint:Landroid/graphics/Paint;

.field mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFocusedItem:Lcom/scalado/app/ui/Item;

.field protected mLayout:Lcom/scalado/app/ui/StripLayout;

.field mLocked:Z

.field private mMaxLayout:Lcom/scalado/app/ui/StripLayout;

.field private mMaxModal:Z

.field private mMinLayout:Lcom/scalado/app/ui/StripLayout;

.field private mMinVel:F

.field private mNextSelectedItem:Lcom/scalado/app/ui/Item;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevItem:Lcom/scalado/app/ui/Item;

.field private mQueuedTransitions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Strip$Transition;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedItem:Lcom/scalado/app/ui/Item;

.field private mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field protected mState:I

.field private mT0:J

.field private mTargetItem:Lcom/scalado/app/ui/Item;

.field private mTmpBbox:Landroid/graphics/Rect;

.field private mTnMaxScale:F

.field private mTnScale:F

.field private mTnScaleMaxDist:F

.field private mTouchDown:Z

.field private mTouchState:I

.field private mTouchTmpPoint:Landroid/graphics/Point;

.field private mTouchTmpRect:Landroid/graphics/Rect;

.field private mTransP0:Landroid/graphics/Point;

.field private mTransP1:Landroid/graphics/Point;

.field private mTransParam:F

.field private mTransT:J

.field private mTransT0:J

.field private mTransT1:J

.field private mTxtDx:I

.field private mTxtDy:I

.field private mTxtPaint:Landroid/graphics/Paint;

.field private mVelMax:F

.field private mVelStickines:F

.field private mVelStopLimit:F

.field private mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

.field private mVelocity:F

.field private mVisited:I


# direct methods
.method public constructor <init>(Lcom/scalado/app/ui/UiManager;)V
    .locals 10
    .parameter "uiManager"

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x1

    const/high16 v7, -0x4000

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Widget;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip;->mIdleTime:J

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    .line 34
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTnScale:F

    .line 36
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTnMaxScale:F

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTnScaleMaxDist:F

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mTmpBbox:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mFrameRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    .line 49
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    .line 50
    new-instance v0, Lcom/scalado/app/ui/Strip$VelocityTrapper;

    const/16 v2, 0xa

    const-wide/16 v3, 0xc8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/ui/Strip$VelocityTrapper;-><init>(Lcom/scalado/app/ui/Strip;IJLcom/scalado/app/ui/Strip$1;)V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    .line 52
    const v0, 0x3951b717

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelStopLimit:F

    .line 53
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mVelStopLimit:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    .line 54
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mVelStopLimit:F

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelStickines:F

    .line 55
    const v0, 0x39aec33e

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelMax:F

    .line 56
    const v0, 0x33d6bf95

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mAcc:F

    .line 65
    iput v6, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 70
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    .line 71
    iput-boolean v6, p0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    .line 72
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    .line 73
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    .line 74
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mNextSelectedItem:Lcom/scalado/app/ui/Item;

    .line 75
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    .line 76
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    .line 77
    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mLastFocusedItem:Lcom/scalado/app/ui/Item;

    .line 85
    iput v6, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    .line 86
    iput-boolean v6, p0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTxtDx:I

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTxtDy:I

    .line 93
    iput-boolean v6, p0, Lcom/scalado/app/ui/Strip;->mDrawTxt:Z

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    .line 96
    iput v9, p0, Lcom/scalado/app/ui/Strip;->mItemAlpha:I

    .line 97
    iput v6, p0, Lcom/scalado/app/ui/Strip;->mBgAlpha:I

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mTransP0:Landroid/graphics/Point;

    .line 102
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mTransP1:Landroid/graphics/Point;

    .line 106
    iput-boolean v6, p0, Lcom/scalado/app/ui/Strip;->mLocked:Z

    .line 118
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 121
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 130
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 138
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-static {v9, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    const v0, 0x350637bd

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mAcc:F

    .line 153
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mAcc:F

    const/high16 v1, 0x44fa

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelMax:F

    .line 155
    const v0, 0x3951b717

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelStopLimit:F

    .line 156
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mVelStopLimit:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    .line 158
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelStickines:F

    .line 160
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip;->mMinimizeTime:J

    .line 161
    return-void
.end method

.method static synthetic access$1100(Lcom/scalado/app/ui/Strip;)Lcom/scalado/app/ui/StripLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/scalado/app/ui/Strip;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    return v0
.end method

.method static synthetic access$1300(Lcom/scalado/app/ui/Strip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mItemAlpha:I

    return v0
.end method

.method private beforeUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 604
    iput-object v1, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    .line 605
    iput-object v1, p0, Lcom/scalado/app/ui/Strip;->mLastFocusedItem:Lcom/scalado/app/ui/Item;

    .line 606
    iput-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    .line 607
    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    .line 608
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mState:I

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip;->mIdleTime:J

    .line 611
    :cond_0
    return-void
.end method

.method private final borderReached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 913
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v1}, Lcom/scalado/app/ui/StripLayout;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v1, v1, Lcom/scalado/app/ui/StripLayout;->mClamped:Z

    if-eqz v1, :cond_2

    .line 915
    iget v1, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mMaxOffset:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 918
    :cond_1
    iget v1, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mMinOffset:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 924
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateVelocity()V
    .locals 11

    .prologue
    const/high16 v7, 0x3f80

    const/high16 v4, -0x4080

    const/4 v10, 0x0

    .line 516
    iget-object v8, p0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    #calls: Lcom/scalado/app/ui/Strip$VelocityTrapper;->get()F
    invoke-static {v8}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->access$500(Lcom/scalado/app/ui/Strip$VelocityTrapper;)F

    move-result v8

    iput v8, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 517
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->closestItem()Lcom/scalado/app/ui/Item;

    move-result-object v0

    .line 518
    .local v0, closest:Lcom/scalado/app/ui/Item;
    iget-object v8, p0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    #calls: Lcom/scalado/app/ui/Strip$VelocityTrapper;->totalTime()J
    invoke-static {v8}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->access$600(Lcom/scalado/app/ui/Strip$VelocityTrapper;)J

    move-result-wide v5

    .line 519
    .local v5, tTot:J
    iget v8, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    iget-object v8, p0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    if-ne v0, v8, :cond_2

    iget-object v8, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x12c

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    .line 522
    iget-object v8, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    invoke-virtual {v8}, Lcom/scalado/app/ui/Item;->index()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/scalado/app/ui/Strip;->signedPivotDist(F)F

    move-result v8

    iget-object v9, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 523
    .local v1, d:F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_1

    .line 524
    .local v4, dir:F
    :goto_0
    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iput-object v7, p0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    .line 525
    const-string v7, "Strip"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " down item = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget v9, v9, Lcom/scalado/app/ui/Item;->mIndex:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    neg-float v7, v4

    iget v8, p0, Lcom/scalado/app/ui/Strip;->mVelMax:F

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 545
    .end local v1           #d:F
    .end local v4           #dir:F
    :cond_0
    :goto_1
    return-void

    .restart local v1       #d:F
    :cond_1
    move v4, v7

    .line 523
    goto :goto_0

    .line 529
    .end local v1           #d:F
    :cond_2
    iget v8, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 531
    :cond_3
    invoke-virtual {v0}, Lcom/scalado/app/ui/Item;->index()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/scalado/app/ui/Strip;->signedPivotDist(F)F

    move-result v1

    .line 532
    .restart local v1       #d:F
    cmpl-float v8, v1, v10

    if-ltz v8, :cond_5

    iget v8, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    :goto_2
    iput v8, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 534
    .end local v1           #d:F
    :cond_4
    iget v8, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    invoke-direct {p0, v8}, Lcom/scalado/app/ui/Strip;->clampV(F)F

    move-result v8

    iput v8, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 535
    iget v8, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/scalado/app/ui/Strip;->mVelStickines:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/scalado/app/ui/Item;->index()F

    move-result v8

    invoke-direct {p0, v8, v7}, Lcom/scalado/app/ui/Strip;->directedPivotDist(FF)F

    move-result v3

    .line 537
    .local v3, dPos:F
    invoke-virtual {v0}, Lcom/scalado/app/ui/Item;->index()F

    move-result v7

    invoke-direct {p0, v7, v4}, Lcom/scalado/app/ui/Strip;->directedPivotDist(FF)F

    move-result v2

    .line 538
    .local v2, dNeg:F
    cmpg-float v7, v3, v2

    if-gtz v7, :cond_6

    .line 539
    iget v7, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    iput v7, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    goto :goto_1

    .line 532
    .end local v2           #dNeg:F
    .end local v3           #dPos:F
    .restart local v1       #d:F
    :cond_5
    iget v8, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    neg-float v8, v8

    goto :goto_2

    .line 541
    .end local v1           #d:F
    .restart local v2       #dNeg:F
    .restart local v3       #dPos:F
    :cond_6
    iget v7, p0, Lcom/scalado/app/ui/Strip;->mMinVel:F

    neg-float v7, v7

    iput v7, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    goto :goto_1
.end method

.method private final clampV(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 1122
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1123
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mVelMax:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1127
    :goto_0
    return p1

    .line 1125
    :cond_0
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mVelMax:F

    neg-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0
.end method

.method private final closestItemDirect(F)Lcom/scalado/app/ui/Item;
    .locals 6
    .parameter "dir"

    .prologue
    .line 1106
    const v4, 0x7f7fffff

    .line 1107
    .local v4, minDist:F
    const/4 v0, 0x0

    .line 1108
    .local v0, closest:Lcom/scalado/app/ui/Item;
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/ui/Item;

    .line 1109
    .local v3, iterItem:Lcom/scalado/app/ui/Item;
    iget-boolean v5, v3, Lcom/scalado/app/ui/Item;->mInteractible:Z

    if-eqz v5, :cond_0

    .line 1110
    invoke-virtual {v3}, Lcom/scalado/app/ui/Item;->index()F

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/scalado/app/ui/Strip;->directedPivotDist(FF)F

    move-result v1

    .line 1111
    .local v1, dist:F
    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    .line 1112
    move v4, v1

    .line 1113
    move-object v0, v3

    goto :goto_0

    .line 1117
    .end local v1           #dist:F
    .end local v3           #iterItem:Lcom/scalado/app/ui/Item;
    :cond_1
    return-object v0
.end method

.method private closestItemFromPoint(II)Lcom/scalado/app/ui/Item;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 558
    const v1, 0x7f7fffff

    .line 559
    .local v1, dMin:F
    const/4 v5, 0x0

    .line 560
    .local v5, itemMin:Lcom/scalado/app/ui/Item;
    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/ui/Item;

    .line 561
    .local v6, tmpItem:Lcom/scalado/app/ui/Item;
    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v6, v7, v8}, Lcom/scalado/app/ui/Strip;->getItemRect(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 562
    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v7, p1, v7

    int-to-float v2, v7

    .line 563
    .local v2, dx:F
    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, p2, v7

    int-to-float v3, v7

    .line 564
    .local v3, dy:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    .line 565
    .local v0, d:F
    cmpg-float v7, v0, v1

    if-gez v7, :cond_0

    .line 566
    move v1, v0

    .line 567
    move-object v5, v6

    goto :goto_0

    .line 570
    .end local v0           #d:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v6           #tmpItem:Lcom/scalado/app/ui/Item;
    :cond_1
    return-object v5
.end method

.method private final directedPivotDist(FF)F
    .locals 4
    .parameter "pos"
    .parameter "dir"

    .prologue
    const/4 v3, 0x0

    .line 1054
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-float v1, v2

    .line 1055
    .local v1, size:F
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v2}, Lcom/scalado/app/ui/StripLayout;->isCyclic()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1056
    cmpl-float v2, p2, v3

    if-ltz v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v0, v2, p1

    .line 1084
    .local v0, d:F
    :goto_0
    return v0

    .line 1060
    .end local v0           #d:F
    :cond_0
    const/high16 v2, 0x4000

    mul-float v0, v1, v2

    .restart local v0       #d:F
    goto :goto_0

    .line 1063
    .end local v0           #d:F
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 1064
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v0, p1, v2

    .restart local v0       #d:F
    goto :goto_0

    .line 1066
    .end local v0           #d:F
    :cond_2
    const v0, 0x7f7fffff

    .restart local v0       #d:F
    goto :goto_0

    .line 1070
    .end local v0           #d:F
    :cond_3
    cmpl-float v2, p2, v3

    if-ltz v2, :cond_5

    .line 1071
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_4

    .line 1072
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v0, v2, p1

    .restart local v0       #d:F
    goto :goto_0

    .line 1074
    .end local v0           #d:F
    :cond_4
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    add-float/2addr v2, v1

    sub-float v0, v2, p1

    .restart local v0       #d:F
    goto :goto_0

    .line 1077
    .end local v0           #d:F
    :cond_5
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_6

    .line 1078
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v2, v2, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v0, p1, v2

    .restart local v0       #d:F
    goto :goto_0

    .line 1080
    .end local v0           #d:F
    :cond_6
    add-float v2, p1, v1

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v3, v3, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v0, v2, v3

    .restart local v0       #d:F
    goto :goto_0
.end method

.method private final focusItemOnTouchNonSlidable(Lcom/scalado/app/ui/Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 942
    if-nez p1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    if-eq v0, p1, :cond_0

    .line 946
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Strip;->privateSelect(Lcom/scalado/app/ui/Item;)V

    .line 947
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    .line 948
    iput-object p1, p0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    .line 949
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v0, v0, Lcom/scalado/app/ui/StripLayout;->mContinuousSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget v1, p1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/scalado/app/ui/UiManager;->onIndexFocused(Lcom/scalado/app/ui/Widget;I)V

    goto :goto_0
.end method

.method private final getBBox()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 956
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 957
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v1}, Lcom/scalado/app/ui/Strip;->getBBox(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method private final getBoolProp(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1297
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-nez v2, :cond_1

    .line 1298
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1305
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 1298
    goto :goto_0

    .line 1301
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 1303
    .local v0, a:Z
    :goto_1
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    .line 1305
    .local v1, b:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v2, v4

    goto :goto_0

    .end local v0           #a:Z
    .end local v1           #b:Z
    :cond_4
    move v0, v4

    .line 1301
    goto :goto_1

    .restart local v0       #a:Z
    :cond_5
    move v1, v4

    .line 1303
    goto :goto_2
.end method

.method private getItemRect(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "tn"
    .parameter "pos"
    .parameter "rect"

    .prologue
    const/high16 v7, 0x3f00

    .line 901
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/ui/Strip;->getPosition(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;)V

    .line 902
    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    invoke-direct {p0, p1, v6}, Lcom/scalado/app/ui/Strip;->getItemSize(Lcom/scalado/app/ui/Item;Lcom/scalado/base/Size;)V

    .line 903
    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 904
    .local v1, w:I
    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 905
    .local v0, h:I
    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int v2, v6, v1

    .line 906
    .local v2, x0:I
    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int v4, v6, v0

    .line 907
    .local v4, y0:I
    iget v6, p2, Landroid/graphics/Point;->x:I

    add-int v3, v6, v1

    .line 908
    .local v3, x1:I
    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int v5, v6, v0

    .line 909
    .local v5, y1:I
    invoke-virtual {p3, v2, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 910
    return-void
.end method

.method private getItemSize(Lcom/scalado/app/ui/Item;Lcom/scalado/base/Size;)V
    .locals 6
    .parameter "item"
    .parameter "size"

    .prologue
    const/high16 v5, 0x3f80

    .line 1240
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1241
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v2, v2, Lcom/scalado/app/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1242
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-direct {p0, p1, p2, v2}, Lcom/scalado/app/ui/Strip;->scaleItemSize(Lcom/scalado/app/ui/Item;Lcom/scalado/base/Size;Lcom/scalado/app/ui/StripLayout;)V

    .line 1243
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-eqz v2, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v3, v3, Lcom/scalado/app/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1245
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v3, v3, Lcom/scalado/app/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1246
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-direct {p0, p1, v2, v3}, Lcom/scalado/app/ui/Strip;->scaleItemSize(Lcom/scalado/app/ui/Item;Lcom/scalado/base/Size;Lcom/scalado/app/ui/StripLayout;)V

    .line 1247
    iget v2, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    sub-float v2, v5, v2

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1249
    .local v1, w:F
    iget v2, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    sub-float v2, v5, v2

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 1251
    .local v0, h:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1252
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1255
    .end local v0           #h:F
    .end local v1           #w:F
    :cond_0
    iget-object v2, p1, Lcom/scalado/app/ui/Item;->mStartSize:Lcom/scalado/base/Size;

    if-eqz v2, :cond_1

    .line 1256
    invoke-virtual {p1, p2}, Lcom/scalado/app/ui/Item;->animationSize(Lcom/scalado/base/Size;)V

    .line 1258
    :cond_1
    return-void
.end method

.method private final getPaintProp(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 1310
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-nez v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, v1, Lcom/scalado/app/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1320
    :cond_0
    :goto_0
    return-object v0

    .line 1315
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, v1, Lcom/scalado/app/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, v1, Lcom/scalado/app/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v0, v0, Lcom/scalado/app/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private getPathPosition(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;)V
    .locals 7
    .parameter "tn"
    .parameter "pos"

    .prologue
    const/high16 v6, 0x3f80

    .line 1202
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-nez v3, :cond_1

    .line 1203
    invoke-virtual {p1}, Lcom/scalado/app/ui/Item;->index()F

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1204
    .local v2, index:F
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v3, p1, v2, p2}, Lcom/scalado/app/ui/StripLayout;->getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V

    .line 1219
    :goto_0
    iget-object v3, p1, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    if-eqz v3, :cond_0

    .line 1220
    invoke-virtual {p1, p2}, Lcom/scalado/app/ui/Item;->animationPos(Landroid/graphics/Point;)V

    .line 1222
    :cond_0
    return-void

    .line 1206
    .end local v2           #index:F
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/app/ui/Item;->index()F

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1207
    .local v0, i0:F
    iget v2, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    .line 1208
    .restart local v2       #index:F
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget v5, p1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/scalado/app/ui/StripLayout;->getOffset(I)F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/StripLayout;->wrapIndex(F)F

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1212
    .local v1, i1:F
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mTransP0:Landroid/graphics/Point;

    invoke-virtual {v3, p1, v0, v4}, Lcom/scalado/app/ui/StripLayout;->getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V

    .line 1213
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mTransP1:Landroid/graphics/Point;

    invoke-virtual {v3, p1, v1, v4}, Lcom/scalado/app/ui/StripLayout;->getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V

    .line 1214
    iget v3, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    sub-float v3, v6, v3

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mTransP0:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mTransP1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 1216
    iget v3, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    sub-float v3, v6, v3

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mTransP0:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mTransP1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private getPosition(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;)V
    .locals 4
    .parameter "tn"
    .parameter "pos"

    .prologue
    const/high16 v3, 0x3f80

    .line 1228
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/ui/Strip;->getPathPosition(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;)V

    .line 1229
    iget-object v1, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    if-eqz v1, :cond_1

    .line 1230
    iget-object v1, p1, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Interpolation;->param()F

    move-result v0

    .line 1231
    .local v0, s:F
    sub-float v1, v3, v0

    iget-object v2, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1232
    sub-float v1, v3, v0

    iget-object v2, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 1237
    .end local v0           #s:F
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v1, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 1234
    iget-object v1, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1235
    iget-object v1, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private final isVisible(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/StripLayout;->isVisible(I)Z

    move-result v0

    .line 1292
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/StripLayout;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/StripLayout;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private itemFromPoint(II)Lcom/scalado/app/ui/Item;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 548
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 549
    .local v1, tmpItem:Lcom/scalado/app/ui/Item;
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/app/ui/Strip;->getItemRect(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 550
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    .end local v1           #tmpItem:Lcom/scalado/app/ui/Item;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDown(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #calls: Lcom/scalado/app/ui/Strip$VelocityTrapper;->start(J)V
    invoke-static {v0, v1, v2}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->access$700(Lcom/scalado/app/ui/Strip$VelocityTrapper;J)V

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 592
    iput v3, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 593
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 594
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 595
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    .line 596
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->privateSelectNone()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    .line 598
    iput v3, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    .line 599
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    .line 600
    iput-boolean v3, p0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    .line 601
    return-void
.end method

.method private final onStop()V
    .locals 2

    .prologue
    .line 1285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip;->mIdleTime:J

    .line 1286
    return-void
.end method

.method private final pivotDist(F)F
    .locals 4
    .parameter "pos"

    .prologue
    .line 1024
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v3, v3, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1025
    .local v0, d:F
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v3}, Lcom/scalado/app/ui/StripLayout;->isCyclic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1030
    .end local v0           #d:F
    :goto_0
    return v0

    .line 1028
    .restart local v0       #d:F
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-float v2, v3

    .line 1029
    .local v2, size:F
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v3, v3, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    add-float/2addr v3, v2

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1030
    .local v1, dWrapped:F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private final pivotPosition(Lcom/scalado/app/ui/Item;)F
    .locals 3
    .parameter "item"

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v1, v1, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    iget v2, p1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/scalado/app/ui/Strip;->getOffset(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/scalado/app/ui/Strip;->updateIndex(F)F

    move-result v0

    .line 1019
    .local v0, index:F
    return v0
.end method

.method private final prepareTransition(Lcom/scalado/app/ui/StripLayout;J)V
    .locals 2
    .parameter "layout"
    .parameter "t"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mNextSelectedItem:Lcom/scalado/app/ui/Item;

    .line 1351
    iput-object p1, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    .line 1352
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iput-object p0, v0, Lcom/scalado/app/ui/StripLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    .line 1353
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0}, Lcom/scalado/app/ui/StripLayout;->prepareShowing()V

    .line 1354
    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 1355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip;->mTransT0:J

    .line 1356
    iget-wide v0, p0, Lcom/scalado/app/ui/Strip;->mTransT0:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip;->mTransT1:J

    .line 1357
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    .line 1358
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0}, Lcom/scalado/app/ui/StripLayout;->onSelected()V

    .line 1359
    return-void
.end method

.method private privateSelect(Lcom/scalado/app/ui/Item;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 1142
    if-nez p1, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->privateSelectNone()V

    .line 1159
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-eqz v2, :cond_1

    .line 1147
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    invoke-virtual {v2, v4}, Lcom/scalado/app/ui/Item;->setSelected(Z)V

    .line 1149
    :cond_1
    iput-object p1, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    .line 1150
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/Item;->setSelected(Z)V

    .line 1151
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1152
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 1153
    .local v1, tmpItem:Lcom/scalado/app/ui/Item;
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-eq v1, v2, :cond_2

    .line 1154
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1157
    .end local v1           #tmpItem:Lcom/scalado/app/ui/Item;
    :cond_3
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1158
    iput-boolean v4, p0, Lcom/scalado/app/ui/Strip;->mIdentityDrawOrder:Z

    goto :goto_0
.end method

.method private privateSelectNone()V
    .locals 4

    .prologue
    .line 1162
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-eqz v2, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/Item;->setSelected(Z)V

    .line 1165
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    .line 1166
    iget-boolean v2, p0, Lcom/scalado/app/ui/Strip;->mIdentityDrawOrder:Z

    if-nez v2, :cond_2

    .line 1167
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1168
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 1169
    .local v1, tmpItem:Lcom/scalado/app/ui/Item;
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1171
    .end local v1           #tmpItem:Lcom/scalado/app/ui/Item;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/app/ui/Strip;->mIdentityDrawOrder:Z

    .line 1173
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private scaleItemSize(Lcom/scalado/app/ui/Item;Lcom/scalado/base/Size;Lcom/scalado/app/ui/StripLayout;)V
    .locals 4
    .parameter "item"
    .parameter "size"
    .parameter "layout"

    .prologue
    .line 1261
    invoke-direct {p0, p3, p1}, Lcom/scalado/app/ui/Strip;->sizeFactor(Lcom/scalado/app/ui/StripLayout;Lcom/scalado/app/ui/Item;)F

    move-result v1

    .line 1262
    .local v1, s:F
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1263
    .local v2, w:I
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1264
    .local v0, h:I
    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1265
    invoke-virtual {p2, v0}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1266
    return-void
.end method

.method private final selectedLayout(Lcom/scalado/app/ui/StripLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    .line 1335
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v0, v0, Lcom/scalado/app/ui/StripLayout;->mAlpha:I

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mItemAlpha:I

    .line 1336
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v0, v0, Lcom/scalado/app/ui/StripLayout;->mBgAlpha:I

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mBgAlpha:I

    .line 1337
    return-void
.end method

.method private final setBlendPoint(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;F)V
    .locals 3
    .parameter "tn"
    .parameter "p"
    .parameter "param"

    .prologue
    .line 1189
    iget-object v0, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 1190
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    .line 1192
    :cond_0
    iget-object v0, p1, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    if-nez v0, :cond_1

    .line 1193
    new-instance v0, Lcom/scalado/app/ui/Interpolation;

    invoke-direct {v0, p3}, Lcom/scalado/app/ui/Interpolation;-><init>(F)V

    iput-object v0, p1, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    .line 1195
    :cond_1
    iget-object v0, p1, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p3}, Lcom/scalado/app/ui/Interpolation;->setConstant(F)V

    .line 1196
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v0, v0, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1197
    return-void
.end method

.method private final setPostionFor(Lcom/scalado/app/ui/StripLayout;Lcom/scalado/app/ui/Item;)V
    .locals 2
    .parameter "layout"
    .parameter "item"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    .line 1325
    .local v0, backup:Lcom/scalado/app/ui/StripLayout;
    iput-object p1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    .line 1326
    invoke-direct {p0, p2}, Lcom/scalado/app/ui/Strip;->privateSelect(Lcom/scalado/app/ui/Item;)V

    .line 1327
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v1}, Lcom/scalado/app/ui/StripLayout;->prepareShowing()V

    .line 1328
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/ui/Strip;->updatePositionForSelected(Lcom/scalado/app/ui/Item;Lcom/scalado/app/ui/StripLayout;)V

    .line 1329
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v1}, Lcom/scalado/app/ui/StripLayout;->onSelected()V

    .line 1330
    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    .line 1331
    return-void
.end method

.method private final signedPivotDist(F)F
    .locals 4
    .parameter "pos"

    .prologue
    .line 1036
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v3, v3, Lcom/scalado/app/ui/StripLayout;->mPivot:F

    sub-float v0, p1, v3

    .line 1037
    .local v0, d:F
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v3}, Lcom/scalado/app/ui/StripLayout;->isCyclic()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 1044
    .end local v0           #d:F
    .local v1, d:F
    :goto_0
    return v1

    .line 1040
    .end local v1           #d:F
    .restart local v0       #d:F
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-float v2, v3

    .line 1041
    .local v2, size:F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    neg-float v0, v3

    :cond_1
    move v1, v0

    .line 1044
    .end local v0           #d:F
    .restart local v1       #d:F
    goto :goto_0
.end method

.method private final sizeFactor(Lcom/scalado/app/ui/StripLayout;Lcom/scalado/app/ui/Item;)F
    .locals 6
    .parameter "layout"
    .parameter "item"

    .prologue
    .line 1269
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mTnScale:F

    .line 1270
    .local v0, factor:F
    invoke-virtual {p2}, Lcom/scalado/app/ui/Item;->index()F

    move-result v1

    .line 1272
    .local v1, i:F
    invoke-direct {p0, v1}, Lcom/scalado/app/ui/Strip;->pivotDist(F)F

    move-result v2

    .line 1273
    .local v2, pivotDist:F
    iget v3, p0, Lcom/scalado/app/ui/Strip;->mTnScaleMaxDist:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget-boolean v3, p1, Lcom/scalado/app/ui/StripLayout;->mScaleFromPivot:Z

    if-eqz v3, :cond_0

    .line 1274
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/scalado/app/ui/Strip;->mTnScaleMaxDist:F

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/scalado/app/ui/Strip;->mTnScaleMaxDist:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/scalado/app/ui/Strip;->mTnMaxScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 1277
    :cond_0
    return v0
.end method

.method private updateAnims(J)V
    .locals 6
    .parameter "t"

    .prologue
    const/4 v5, 0x0

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, hasAnimItem:Z
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/Item;

    .line 847
    .local v2, iterTn:Lcom/scalado/app/ui/Item;
    iget-object v3, v2, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, v2, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v3, p1, p2}, Lcom/scalado/app/ui/Interpolation;->update(J)V

    .line 849
    iget-object v3, v2, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v3}, Lcom/scalado/app/ui/Interpolation;->done()Z

    move-result v3

    if-nez v3, :cond_1

    .line 850
    const/4 v0, 0x1

    .line 852
    :cond_1
    iget-object v3, v2, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v3}, Lcom/scalado/app/ui/Interpolation;->param()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 853
    iput-object v5, v2, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    .line 854
    iput-object v5, v2, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    goto :goto_0

    .line 858
    .end local v2           #iterTn:Lcom/scalado/app/ui/Item;
    :cond_2
    iput-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    .line 859
    return-void
.end method

.method private updateIdle()V
    .locals 6

    .prologue
    .line 827
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    if-ne v2, v3, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-wide v2, p0, Lcom/scalado/app/ui/Strip;->mMinimizeTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 834
    iget-boolean v2, p0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    if-nez v2, :cond_0

    .line 837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/scalado/app/ui/Strip;->mIdleTime:J

    sub-long v0, v2, v4

    .line 838
    .local v0, delta:J
    iget-wide v2, p0, Lcom/scalado/app/ui/Strip;->mMinimizeTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->minimize()V

    goto :goto_0
.end method

.method private final updateIndex(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0}, Lcom/scalado/app/ui/StripLayout;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v0, v0, Lcom/scalado/app/ui/StripLayout;->mClamped:Z

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v0, v0, Lcom/scalado/app/ui/StripLayout;->mMaxOffset:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget p1, v0, Lcom/scalado/app/ui/StripLayout;->mMaxOffset:F

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v0, v0, Lcom/scalado/app/ui/StripLayout;->mMinOffset:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget p1, v0, Lcom/scalado/app/ui/StripLayout;->mMinOffset:F

    .line 1014
    :cond_1
    :goto_0
    return p1

    .line 1007
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 1008
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1010
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0
.end method

.method private final updatePositionForSelected(Lcom/scalado/app/ui/Item;Lcom/scalado/app/ui/StripLayout;)V
    .locals 3
    .parameter "item"
    .parameter "layout"

    .prologue
    .line 1340
    iget-boolean v1, p2, Lcom/scalado/app/ui/StripLayout;->mSlidable:Z

    if-eqz v1, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    invoke-direct {p0, v1}, Lcom/scalado/app/ui/Strip;->pivotPosition(Lcom/scalado/app/ui/Item;)F

    move-result v1

    iput v1, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    .line 1347
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/Item;

    .line 1345
    .local v0, middle:Lcom/scalado/app/ui/Item;
    invoke-direct {p0, v0}, Lcom/scalado/app/ui/Strip;->pivotPosition(Lcom/scalado/app/ui/Item;)F

    move-result v1

    iput v1, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    goto :goto_0
.end method

.method private updateTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 587
    :goto_0
    :pswitch_0
    return-void

    .line 576
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    .line 577
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    .line 578
    iput v1, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    .line 579
    iput-boolean v1, p0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    goto :goto_0

    .line 584
    :pswitch_2
    iput v1, p0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateTransition()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    .line 786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 787
    .local v2, t:J
    iget-wide v5, p0, Lcom/scalado/app/ui/Strip;->mTransT0:J

    sub-long v0, v2, v5

    .line 788
    .local v0, delta:J
    long-to-float v5, v0

    iget-wide v6, p0, Lcom/scalado/app/ui/Strip;->mTransT1:J

    iget-wide v8, p0, Lcom/scalado/app/ui/Strip;->mTransT0:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    .line 789
    iget v5, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    sub-float v5, v10, v5

    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v6, v6, Lcom/scalado/app/ui/StripLayout;->mAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget v7, v7, Lcom/scalado/app/ui/StripLayout;->mAlpha:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/scalado/app/ui/Strip;->mItemAlpha:I

    .line 791
    iget v5, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    sub-float v5, v10, v5

    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget v6, v6, Lcom/scalado/app/ui/StripLayout;->mBgAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget v7, v7, Lcom/scalado/app/ui/StripLayout;->mBgAlpha:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/scalado/app/ui/Strip;->mBgAlpha:I

    .line 793
    iget-wide v5, p0, Lcom/scalado/app/ui/Strip;->mTransT1:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 794
    iget-wide v2, p0, Lcom/scalado/app/ui/Strip;->mTransT1:J

    .line 795
    iput v10, p0, Lcom/scalado/app/ui/Strip;->mTransParam:F

    .line 796
    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    monitor-enter v6

    .line 797
    :try_start_0
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/ui/Strip$Transition;

    iget-object v5, v5, Lcom/scalado/app/ui/Strip$Transition;->mDst:Lcom/scalado/app/ui/StripLayout;

    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-eq v5, v7, :cond_1

    .line 799
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/Strip$Transition;

    .line 800
    .local v4, transition:Lcom/scalado/app/ui/Strip$Transition;
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 801
    iget-object v5, v4, Lcom/scalado/app/ui/Strip$Transition;->mDst:Lcom/scalado/app/ui/StripLayout;

    iget-wide v7, v4, Lcom/scalado/app/ui/Strip$Transition;->mT:J

    invoke-direct {p0, v5, v7, v8}, Lcom/scalado/app/ui/Strip;->prepareTransition(Lcom/scalado/app/ui/StripLayout;J)V

    .line 819
    .end local v4           #transition:Lcom/scalado/app/ui/Strip$Transition;
    :goto_0
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->onStop()V

    .line 820
    monitor-exit v6

    .line 824
    :cond_0
    return-void

    .line 803
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 804
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-direct {p0, v5}, Lcom/scalado/app/ui/Strip;->selectedLayout(Lcom/scalado/app/ui/StripLayout;)V

    .line 805
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    if-ne v5, v7, :cond_3

    .line 807
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mNextSelectedItem:Lcom/scalado/app/ui/Item;

    invoke-direct {p0, v5}, Lcom/scalado/app/ui/Strip;->privateSelect(Lcom/scalado/app/ui/Item;)V

    .line 808
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->maximize()V

    .line 815
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iput-object p0, v5, Lcom/scalado/app/ui/StripLayout;->mStrip:Lcom/scalado/app/ui/Strip;

    .line 816
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    .line 817
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v5}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 809
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    if-ne v5, v7, :cond_2

    .line 810
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->minimize()V

    .line 811
    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mPopupParent:Lcom/scalado/app/ui/Widget;

    if-eqz v5, :cond_2

    .line 812
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private final updateVisited()V
    .locals 3

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->closestItem()Lcom/scalado/app/ui/Item;

    move-result-object v0

    .line 929
    .local v0, item:Lcom/scalado/app/ui/Item;
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    if-eq v1, v0, :cond_0

    .line 930
    iget v1, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/app/ui/Strip;->mVisited:I

    .line 931
    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    .line 932
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v1, v1, Lcom/scalado/app/ui/StripLayout;->mContinuousSelection:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    if-nez v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget v2, v0, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {v1, p0, v2}, Lcom/scalado/app/ui/UiManager;->onIndexFocused(Lcom/scalado/app/ui/Widget;I)V

    .line 939
    :cond_0
    return-void
.end method


# virtual methods
.method boundingBox(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bbox"

    .prologue
    const/16 v0, -0x14

    .line 871
    invoke-virtual {p0, p1, v0, v0}, Lcom/scalado/app/ui/Strip;->getBBox(Landroid/graphics/Rect;II)V

    .line 872
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    #getter for: Lcom/scalado/app/ui/Strip$BgDrawer;->mMaxRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/ui/Strip$BgDrawer;->access$1000(Lcom/scalado/app/ui/Strip$BgDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 874
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/StripLayout;->increaseBoundingBox(Landroid/graphics/Rect;)V

    .line 881
    return-void
.end method

.method protected final closestItem()Lcom/scalado/app/ui/Item;
    .locals 7

    .prologue
    .line 1089
    const v5, 0x7f7fffff

    .line 1090
    .local v5, minDist:F
    const/4 v0, 0x0

    .line 1091
    .local v0, closest:Lcom/scalado/app/ui/Item;
    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/Item;

    .line 1092
    .local v4, iterItem:Lcom/scalado/app/ui/Item;
    iget-boolean v6, v4, Lcom/scalado/app/ui/Item;->mInteractible:Z

    if-eqz v6, :cond_0

    .line 1093
    invoke-virtual {v4}, Lcom/scalado/app/ui/Item;->index()F

    move-result v3

    .line 1094
    .local v3, index:F
    invoke-direct {p0, v3}, Lcom/scalado/app/ui/Strip;->pivotDist(F)F

    move-result v1

    .line 1095
    .local v1, dist:F
    cmpg-float v6, v1, v5

    if-gez v6, :cond_0

    .line 1096
    move v5, v1

    .line 1097
    move-object v0, v4

    goto :goto_0

    .line 1101
    .end local v1           #dist:F
    .end local v3           #index:F
    .end local v4           #iterItem:Lcom/scalado/app/ui/Item;
    :cond_1
    return-object v0
.end method

.method curPos()F
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    return v0
.end method

.method distance(II)F
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 980
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    instance-of v4, v4, Lcom/scalado/app/ui/ButtonLayout;

    if-eqz v4, :cond_0

    .line 982
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->getBBox()V

    .line 983
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v2, v4

    .line 984
    .local v2, dx:F
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v3, v4

    .line 985
    .local v3, dy:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .line 986
    .local v0, d2:F
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v1, v4

    .line 988
    .local v1, dMax2:F
    cmpg-float v4, v0, v1

    if-gtz v4, :cond_0

    .line 992
    .end local v0           #d2:F
    .end local v1           #dMax2:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f7fffff

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 614
    iget-boolean v4, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-nez v4, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-nez v4, :cond_2

    .line 620
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v4, p1}, Lcom/scalado/app/ui/StripLayout;->drawBackground(Landroid/graphics/Canvas;)V

    .line 622
    :cond_2
    const-string v4, "bbox"

    invoke-direct {p0, v4}, Lcom/scalado/app/ui/Strip;->getPaintProp(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 623
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->getBBox()V

    .line 624
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    const-string v5, "bbox"

    invoke-direct {p0, v5}, Lcom/scalado/app/ui/Strip;->getPaintProp(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 631
    :cond_3
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    if-eqz v4, :cond_5

    .line 632
    iget v4, p0, Lcom/scalado/app/ui/Strip;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/scalado/app/ui/Strip;->mMinMaxState:I

    if-ne v4, v3, :cond_8

    .line 633
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    #calls: Lcom/scalado/app/ui/Strip$BgDrawer;->drawMax(Landroid/graphics/Canvas;)V
    invoke-static {v4, p1}, Lcom/scalado/app/ui/Strip$BgDrawer;->access$800(Lcom/scalado/app/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V

    .line 648
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 652
    .local v1, item:Lcom/scalado/app/ui/Item;
    iget v4, v1, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-direct {p0, v4}, Lcom/scalado/app/ui/Strip;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 655
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v4, v5}, Lcom/scalado/app/ui/Strip;->getItemRect(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 656
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-ne v1, v4, :cond_9

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v4, v4, Lcom/scalado/app/ui/StripLayout;->mIndicateSelected:Z

    if-eqz v4, :cond_9

    move v2, v3

    .line 658
    .local v2, selected:Z
    :goto_3
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v4, v4, Lcom/scalado/app/ui/StripLayout;->mDrawFrame:Z

    if-eqz v4, :cond_7

    .line 659
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, p1, v5, v2}, Lcom/scalado/app/ui/StripLayout;->drawItemFrame(Lcom/scalado/app/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 661
    :cond_7
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/scalado/app/ui/Strip;->mItemAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 662
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, p1, v5, v6}, Lcom/scalado/app/ui/StripLayout;->drawItem(Lcom/scalado/app/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 663
    iget-boolean v4, p0, Lcom/scalado/app/ui/Strip;->mDrawTxt:Z

    if-eqz v4, :cond_6

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/scalado/app/ui/Item;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/scalado/app/ui/Strip;->mTxtDx:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/scalado/app/ui/Strip;->mTxtDy:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/scalado/app/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 635
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/scalado/app/ui/Item;
    .end local v2           #selected:Z
    :cond_8
    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    #calls: Lcom/scalado/app/ui/Strip$BgDrawer;->drawMin(Landroid/graphics/Canvas;)V
    invoke-static {v4, p1}, Lcom/scalado/app/ui/Strip$BgDrawer;->access$900(Lcom/scalado/app/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 656
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #item:Lcom/scalado/app/ui/Item;
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 668
    .end local v1           #item:Lcom/scalado/app/ui/Item;
    :cond_a
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-nez v3, :cond_0

    .line 669
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v3, p1}, Lcom/scalado/app/ui/StripLayout;->drawForeground(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    const/16 v0, -0x14

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 885
    invoke-virtual {p0, p1, v0, v0}, Lcom/scalado/app/ui/Strip;->getBBox(Landroid/graphics/Rect;II)V

    .line 886
    return-void
.end method

.method final getBBox(Landroid/graphics/Rect;II)V
    .locals 4
    .parameter "bbox"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 964
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    :goto_0
    return-void

    .line 968
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/app/ui/Strip;->getItemRect(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 970
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 972
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0
.end method

.method public getLayout()Lcom/scalado/app/ui/StripLayout;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    return-object v0
.end method

.method getOffset(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/StripLayout;->getOffset(I)F

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-boolean v2, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-eqz v2, :cond_1

    .line 185
    const/4 v2, 0x0

    iput v2, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 186
    const/4 v2, 0x0

    iput v2, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 187
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    iput-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    .line 190
    :cond_0
    iput-object v3, p0, Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;

    .line 191
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 192
    .local v1, tn:Lcom/scalado/app/ui/Item;
    iput-object v3, v1, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    .line 193
    iput-object v3, v1, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    goto :goto_0

    .line 197
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tn:Lcom/scalado/app/ui/Item;
    :cond_1
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->hide()V

    .line 198
    return-void
.end method

.method public isMoving()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 674
    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 675
    .local v1, item:Lcom/scalado/app/ui/Item;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Item;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    .end local v1           #item:Lcom/scalado/app/ui/Item;
    :cond_1
    :goto_0
    return v2

    :cond_2
    iget v3, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lcom/scalado/app/ui/Strip;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v3}, Lcom/scalado/app/ui/StripLayout;->isMoving()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v4, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/scalado/app/ui/Strip;->mMinimizeTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public maximize()V
    .locals 3

    .prologue
    .line 255
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mMinMaxState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 256
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/scalado/app/ui/Strip;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Strip;->setPostionFor(Lcom/scalado/app/ui/StripLayout;Lcom/scalado/app/ui/Item;)V

    .line 259
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    iget-wide v1, p0, Lcom/scalado/app/ui/Strip;->mTransT:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/scalado/app/ui/Strip;->transitionTo(Lcom/scalado/app/ui/StripLayout;J)V

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mMaxModal:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, p0}, Lcom/scalado/app/ui/UiManager;->putOnTop(Lcom/scalado/app/ui/Widget;)V

    .line 268
    :cond_0
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->maximize()V

    .line 273
    :cond_1
    :goto_1
    return-void

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    goto :goto_0

    .line 269
    :cond_3
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Strip;->setPostionFor(Lcom/scalado/app/ui/StripLayout;Lcom/scalado/app/ui/Item;)V

    .line 271
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMaxLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-direct {p0, v0}, Lcom/scalado/app/ui/Strip;->selectedLayout(Lcom/scalado/app/ui/StripLayout;)V

    goto :goto_1
.end method

.method public minimize()V
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mMinMaxState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/scalado/app/ui/Strip;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v0, v0, Lcom/scalado/app/ui/StripLayout;->mSlidable:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->closestItem()Lcom/scalado/app/ui/Item;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/app/ui/Strip;->privateSelect(Lcom/scalado/app/ui/Item;)V

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    iget-wide v1, p0, Lcom/scalado/app/ui/Strip;->mTransT:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/scalado/app/ui/Strip;->transitionTo(Lcom/scalado/app/ui/StripLayout;J)V

    .line 244
    :goto_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mMaxModal:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, p0}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 248
    :cond_1
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->minimize()V

    .line 252
    :cond_2
    :goto_1
    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    iput-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    goto :goto_0

    .line 249
    :cond_4
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mMinLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-direct {p0, v0}, Lcom/scalado/app/ui/Strip;->selectedLayout(Lcom/scalado/app/ui/StripLayout;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mLocked:Z

    if-eqz v12, :cond_1

    .line 332
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    .line 333
    const/4 v12, 0x0

    .line 512
    :goto_0
    return v12

    .line 335
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 336
    .local v10, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 338
    .local v11, y:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-nez v12, :cond_2

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    .line 341
    const/4 v12, 0x0

    goto :goto_0

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 344
    const/4 v12, 0x1

    goto :goto_0

    .line 348
    :cond_3
    const/4 v8, 0x0

    .line 349
    .local v8, tn:Lcom/scalado/app/ui/Item;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    if-eqz v12, :cond_4

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/scalado/app/ui/Strip;->updateAnims(J)V

    .line 352
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_9

    .line 353
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/scalado/app/ui/Strip;->itemFromPoint(II)Lcom/scalado/app/ui/Item;

    move-result-object v8

    .line 355
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v12}, Lcom/scalado/app/ui/UiManager;->isForcedDown()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 357
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    .line 370
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    if-nez v12, :cond_a

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    .line 372
    const/4 v12, 0x0

    goto :goto_0

    .line 358
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-nez v12, :cond_5

    const-string v12, "bbox_selection"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/scalado/app/ui/Strip;->getBoolProp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 360
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->getBBox()V

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mBgDrawer:Lcom/scalado/app/ui/Strip$BgDrawer;

    #getter for: Lcom/scalado/app/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/scalado/app/ui/Strip$BgDrawer;->access$200(Lcom/scalado/app/ui/Strip$BgDrawer;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 363
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    goto :goto_1

    .line 364
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 365
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    goto :goto_1

    .line 367
    :cond_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    goto :goto_1

    .line 374
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mTouchDown:Z

    if-nez v12, :cond_a

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    .line 378
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 380
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v12}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/scalado/app/ui/StripLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 383
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/ui/Strip;->updateTouch(Landroid/view/MotionEvent;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 394
    :goto_2
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 386
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->privateSelectNone()V

    goto :goto_2

    .line 391
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    goto :goto_2

    .line 396
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 512
    :cond_c
    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 398
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/scalado/app/ui/Strip;->onDown(II)V

    goto :goto_3

    .line 401
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v10, v12, Landroid/graphics/Point;->x:I

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v11, v12, Landroid/graphics/Point;->y:I

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-ne v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-eq v12, v13, :cond_c

    .line 407
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v12, v12, Lcom/scalado/app/ui/StripLayout;->mSlidable:Z

    if-eqz v12, :cond_13

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v13, v14}, Lcom/scalado/app/ui/StripLayout;->getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v3

    .line 409
    .local v3, delta:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    double-to-float v13, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    #calls: Lcom/scalado/app/ui/Strip$VelocityTrapper;->add(FJ)V
    invoke-static {v12, v13, v14, v15}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->access$300(Lcom/scalado/app/ui/Strip$VelocityTrapper;FJ)V

    .line 412
    const/4 v9, 0x1

    .line 413
    .local v9, updatePos:Z
    invoke-virtual/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->getDNDEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 416
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    if-ne v12, v13, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->closestItem()Lcom/scalado/app/ui/Item;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mVisited:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/scalado/app/ui/Strip;->getDNDTarget(Landroid/graphics/Point;)Lcom/scalado/app/ui/Widget;

    move-result-object v5

    .line 419
    .local v5, dndTrg:Lcom/scalado/app/ui/Widget;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/scalado/app/ui/Strip;->getPathPosition(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v12}, Lcom/scalado/app/ui/Widget;->dndDistance(Landroid/graphics/Point;)F

    move-result v1

    .line 421
    .local v1, dPath:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v12}, Lcom/scalado/app/ui/Widget;->dndDistance(Landroid/graphics/Point;)F

    move-result v2

    .line 422
    .local v2, dPos:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Lcom/scalado/app/ui/StripLayout;->contains(Landroid/graphics/Point;)Z

    move-result v7

    .line 427
    .local v7, layoutContains:Z
    cmpg-float v12, v2, v1

    if-gez v12, :cond_11

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/scalado/app/ui/Strip;->setBlendPoint(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;F)V

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v12}, Lcom/scalado/app/ui/Widget;->dndContains(Landroid/graphics/Point;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 432
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    .line 436
    :cond_e
    :goto_4
    const/4 v9, 0x0

    .line 451
    .end local v1           #dPath:F
    .end local v2           #dPos:F
    .end local v5           #dndTrg:Lcom/scalado/app/ui/Widget;
    .end local v7           #layoutContains:Z
    :cond_f
    :goto_5
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_c

    .line 453
    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    double-to-float v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/scalado/app/ui/Strip;->updateIndex(F)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->updateVisited()V

    goto/16 :goto_3

    .line 433
    .restart local v1       #dPath:F
    .restart local v2       #dPos:F
    .restart local v5       #dndTrg:Lcom/scalado/app/ui/Widget;
    .restart local v7       #layoutContains:Z
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_e

    .line 434
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    goto :goto_4

    .line 437
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v12, v12, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v12, :cond_f

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    const/high16 v14, 0x3f00

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/scalado/app/ui/Strip;->setBlendPoint(Lcom/scalado/app/ui/Item;Landroid/graphics/Point;F)V

    .line 441
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    goto :goto_5

    .line 446
    .end local v1           #dPath:F
    .end local v2           #dPos:F
    .end local v5           #dndTrg:Lcom/scalado/app/ui/Widget;
    .end local v7           #layoutContains:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    .line 448
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    goto :goto_5

    .line 458
    .end local v3           #delta:D
    .end local v9           #updatePos:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v12, v12, Lcom/scalado/app/ui/StripLayout;->mContinuousSelection:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v12, v12, Lcom/scalado/app/ui/StripLayout;->mSelectable:Z

    if-eqz v12, :cond_c

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/scalado/app/ui/Strip;->closestItemFromPoint(II)Lcom/scalado/app/ui/Item;

    move-result-object v6

    .line 460
    .local v6, item:Lcom/scalado/app/ui/Item;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/scalado/app/ui/Strip;->focusItemOnTouchNonSlidable(Lcom/scalado/app/ui/Item;)V

    goto/16 :goto_3

    .line 465
    .end local v6           #item:Lcom/scalado/app/ui/Item;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v10, v12, Landroid/graphics/Point;->x:I

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v11, v12, Landroid/graphics/Point;->y:I

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->getDNDEnabled()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/app/ui/Strip;->mTouchState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_14

    .line 469
    const-string v12, "Strip"

    const-string v13, "SELECTED!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/scalado/app/ui/Strip;->getDNDTarget(Landroid/graphics/Point;)Lcom/scalado/app/ui/Widget;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13, v14}, Lcom/scalado/app/ui/UiManager;->onDND(Lcom/scalado/app/ui/Widget;Lcom/scalado/app/ui/Item;Lcom/scalado/app/ui/Widget;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->hide()V

    .line 474
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v12, v12, Lcom/scalado/app/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v12, :cond_15

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v12, v12, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    if-nez v12, :cond_18

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    new-instance v13, Lcom/scalado/app/ui/Interpolation;

    invoke-direct {v13}, Lcom/scalado/app/ui/Interpolation;-><init>()V

    iput-object v13, v12, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    .line 477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v12, v12, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    const-wide/16 v13, 0xc8

    invoke-virtual {v12, v13, v14}, Lcom/scalado/app/ui/Interpolation;->startTimed(J)V

    .line 481
    :goto_6
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/scalado/app/ui/Strip;->mHasAnimItem:Z

    .line 484
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v12, v12, Lcom/scalado/app/ui/StripLayout;->mSlidable:Z

    if-nez v12, :cond_19

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    .line 486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-boolean v12, v12, Lcom/scalado/app/ui/StripLayout;->mSelectable:Z

    if-eqz v12, :cond_c

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/scalado/app/ui/Strip;->closestItemFromPoint(II)Lcom/scalado/app/ui/Item;

    move-result-object v6

    .line 488
    .restart local v6       #item:Lcom/scalado/app/ui/Item;
    if-nez v6, :cond_16

    .line 489
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/scalado/app/ui/Strip;->mPrevItem:Lcom/scalado/app/ui/Item;

    .line 491
    :cond_16
    if-nez v6, :cond_17

    .line 492
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/scalado/app/ui/Strip;->mSelectedOnDownItem:Lcom/scalado/app/ui/Item;

    .line 494
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/scalado/app/ui/Strip;->privateSelect(Lcom/scalado/app/ui/Item;)V

    .line 495
    if-eqz v6, :cond_c

    .line 496
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget v13, v6, Lcom/scalado/app/ui/Item;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lcom/scalado/app/ui/UiManager;->onIndexSelected(Lcom/scalado/app/ui/Widget;I)V

    goto/16 :goto_3

    .line 479
    .end local v6           #item:Lcom/scalado/app/ui/Item;
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v12, v12, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    const-wide/16 v13, 0xc8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/ui/Strip;->mDownItem:Lcom/scalado/app/ui/Item;

    iget-object v15, v15, Lcom/scalado/app/ui/Item;->mAnim:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v15}, Lcom/scalado/app/ui/Interpolation;->param()F

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/scalado/app/ui/Interpolation;->startTimed(JF)V

    goto :goto_6

    .line 501
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/app/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v13, v14}, Lcom/scalado/app/ui/StripLayout;->getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v3

    .line 502
    .restart local v3       #delta:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    double-to-float v13, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    #calls: Lcom/scalado/app/ui/Strip$VelocityTrapper;->add(FJ)V
    invoke-static {v12, v13, v14, v15}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->access$300(Lcom/scalado/app/ui/Strip$VelocityTrapper;FJ)V

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->updateVisited()V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->calculateVelocity()V

    .line 506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/app/ui/Strip;->mVelTrapper:Lcom/scalado/app/ui/Strip$VelocityTrapper;

    #calls: Lcom/scalado/app/ui/Strip$VelocityTrapper;->reset()V
    invoke-static {v12}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->access$400(Lcom/scalado/app/ui/Strip$VelocityTrapper;)V

    .line 507
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/scalado/app/ui/Strip;->mT0:J

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/ui/Strip;->beforeUp()V

    goto/16 :goto_3

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 396
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/scalado/app/ui/Strip;->mVisible:Z

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 178
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0}, Lcom/scalado/app/ui/StripLayout;->prepareShowing()V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->show()V

    .line 181
    return-void
.end method

.method size()F
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public transitionTo(Lcom/scalado/app/ui/StripLayout;J)V
    .locals 3
    .parameter "layout"
    .parameter "t"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/scalado/app/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    monitor-enter v1

    .line 319
    :try_start_0
    iget v0, p0, Lcom/scalado/app/ui/Strip;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/ui/Strip;->prepareTransition(Lcom/scalado/app/ui/StripLayout;J)V

    .line 327
    :cond_0
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(J)V
    .locals 3
    .parameter "t"

    .prologue
    .line 689
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/ui/StripLayout;->update(J)V

    .line 690
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

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

    check-cast v1, Lcom/scalado/app/ui/Item;

    .line 691
    .local v1, item:Lcom/scalado/app/ui/Item;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Item;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/ui/Item;->update(J)V

    goto :goto_0

    .line 695
    .end local v1           #item:Lcom/scalado/app/ui/Item;
    :cond_1
    iget v2, p0, Lcom/scalado/app/ui/Strip;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 706
    :goto_1
    iget-object v2, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 707
    return-void

    .line 697
    :pswitch_0
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->updateIdle()V

    goto :goto_1

    .line 700
    :pswitch_1
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->updateMotion()V

    goto :goto_1

    .line 703
    :pswitch_2
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->updateTransition()V

    goto :goto_1

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateMotion()V
    .locals 15

    .prologue
    .line 710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 711
    .local v7, t1:J
    iget-wide v12, p0, Lcom/scalado/app/ui/Strip;->mT0:J

    sub-long v5, v7, v12

    .line 712
    .local v5, t:J
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    long-to-float v13, v5

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    int-to-float v13, v13

    mul-float v1, v12, v13

    .line 713
    .local v1, delta:F
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    const/high16 v11, -0x4080

    .line 714
    .local v11, vSign:F
    :goto_0
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    add-float/2addr v12, v1

    invoke-direct {p0, v12}, Lcom/scalado/app/ui/Strip;->updateIndex(F)F

    move-result v3

    .line 715
    .local v3, newPos:F
    const/4 v10, 0x1

    .line 716
    .local v10, updateVelocity:Z
    const/4 v4, 0x0

    .line 717
    .local v4, stop:Z
    const/4 v9, 0x0

    .line 718
    .local v9, tn:Lcom/scalado/app/ui/Item;
    const/4 v0, 0x0

    .line 719
    .local v0, closest:Lcom/scalado/app/ui/Item;
    iget-object v12, p0, Lcom/scalado/app/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    int-to-float v2, v12

    .line 721
    .local v2, minDist:F
    invoke-direct {p0, v11}, Lcom/scalado/app/ui/Strip;->closestItemDirect(F)Lcom/scalado/app/ui/Item;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/scalado/app/ui/Item;->index()F

    move-result v12

    invoke-direct {p0, v12, v11}, Lcom/scalado/app/ui/Strip;->directedPivotDist(FF)F

    move-result v2

    .line 725
    invoke-direct {p0, v7, v8}, Lcom/scalado/app/ui/Strip;->updateAnims(J)V

    .line 728
    iget-object v12, p0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    if-eqz v12, :cond_7

    .line 729
    iget-object v12, p0, Lcom/scalado/app/ui/Strip;->mTargetItem:Lcom/scalado/app/ui/Item;

    if-ne v0, v12, :cond_0

    .line 731
    iget v12, v0, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {p0, v12}, Lcom/scalado/app/ui/Strip;->getOffset(I)F

    move-result v12

    add-float/2addr v12, v3

    invoke-virtual {p0, v12}, Lcom/scalado/app/ui/Strip;->wrapIndex(F)F

    move-result v12

    invoke-direct {p0, v12, v11}, Lcom/scalado/app/ui/Strip;->directedPivotDist(FF)F

    move-result v12

    cmpl-float v12, v12, v2

    if-lez v12, :cond_6

    const/4 v4, 0x1

    .line 736
    :cond_0
    :goto_1
    const/4 v10, 0x0

    .line 743
    :cond_1
    :goto_2
    if-eqz v4, :cond_9

    .line 744
    const/4 v12, 0x0

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 745
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    mul-float v13, v11, v2

    add-float/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/scalado/app/ui/Strip;->updateIndex(F)F

    move-result v12

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    .line 749
    :goto_3
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->borderReached()Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v4, :cond_2

    .line 750
    const/4 v12, 0x0

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 751
    const-string v12, "Strip"

    const-string v13, "STOP"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2
    if-eqz v10, :cond_3

    .line 755
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_a

    .line 756
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    iget v13, p0, Lcom/scalado/app/ui/Strip;->mAcc:F

    long-to-float v14, v5

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 757
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 758
    const/4 v12, 0x0

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 767
    :cond_3
    :goto_4
    iput-wide v7, p0, Lcom/scalado/app/ui/Strip;->mT0:J

    .line 768
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->closestItem()Lcom/scalado/app/ui/Item;

    move-result-object v9

    .line 769
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_b

    .line 770
    invoke-virtual {p0}, Lcom/scalado/app/ui/Strip;->closestItem()Lcom/scalado/app/ui/Item;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/scalado/app/ui/Strip;->privateSelect(Lcom/scalado/app/ui/Item;)V

    .line 771
    const/4 v12, 0x0

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mState:I

    .line 772
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->onStop()V

    .line 779
    :goto_5
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->updateVisited()V

    .line 780
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    if-eqz v12, :cond_4

    .line 781
    iget-object v12, p0, Lcom/scalado/app/ui/Strip;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v13, p0, Lcom/scalado/app/ui/Strip;->mSelectedItem:Lcom/scalado/app/ui/Item;

    iget v13, v13, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {v12, p0, v13}, Lcom/scalado/app/ui/UiManager;->onIndexSelected(Lcom/scalado/app/ui/Widget;I)V

    .line 783
    :cond_4
    return-void

    .line 713
    .end local v0           #closest:Lcom/scalado/app/ui/Item;
    .end local v2           #minDist:F
    .end local v3           #newPos:F
    .end local v4           #stop:Z
    .end local v9           #tn:Lcom/scalado/app/ui/Item;
    .end local v10           #updateVelocity:Z
    .end local v11           #vSign:F
    :cond_5
    const/high16 v11, 0x3f80

    goto/16 :goto_0

    .line 731
    .restart local v0       #closest:Lcom/scalado/app/ui/Item;
    .restart local v2       #minDist:F
    .restart local v3       #newPos:F
    .restart local v4       #stop:Z
    .restart local v9       #tn:Lcom/scalado/app/ui/Item;
    .restart local v10       #updateVelocity:Z
    .restart local v11       #vSign:F
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 737
    :cond_7
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/scalado/app/ui/Strip;->mVelStopLimit:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 739
    iget v12, v0, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {p0, v12}, Lcom/scalado/app/ui/Strip;->getOffset(I)F

    move-result v12

    add-float/2addr v12, v3

    invoke-virtual {p0, v12}, Lcom/scalado/app/ui/Strip;->wrapIndex(F)F

    move-result v12

    invoke-direct {p0, v12, v11}, Lcom/scalado/app/ui/Strip;->directedPivotDist(FF)F

    move-result v12

    cmpl-float v12, v12, v2

    if-lez v12, :cond_8

    const/4 v4, 0x1

    .line 741
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 739
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 747
    :cond_9
    iput v3, p0, Lcom/scalado/app/ui/Strip;->mCurPos:F

    goto/16 :goto_3

    .line 761
    :cond_a
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    iget v13, p0, Lcom/scalado/app/ui/Strip;->mAcc:F

    long-to-float v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    .line 762
    iget v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 763
    const/4 v12, 0x0

    iput v12, p0, Lcom/scalado/app/ui/Strip;->mVelocity:F

    goto :goto_4

    .line 777
    :cond_b
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip;->privateSelectNone()V

    goto :goto_5
.end method

.method final wrapIndex(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/StripLayout;->wrapIndex(F)F

    move-result v0

    return v0
.end method
