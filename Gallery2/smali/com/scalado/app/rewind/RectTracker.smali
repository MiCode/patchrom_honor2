.class public Lcom/scalado/app/rewind/RectTracker;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$1;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;,
        Lcom/scalado/app/rewind/RectTracker$Comparison;,
        Lcom/scalado/app/rewind/RectTracker$StatisticPoint;,
        Lcom/scalado/app/rewind/RectTracker$TrackedRect;,
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$AbstractFace;,
        Lcom/scalado/app/rewind/RectTracker$TrackedImage;,
        Lcom/scalado/app/rewind/RectTracker$RankedId;,
        Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;,
        Lcom/scalado/app/rewind/RectTracker$State;,
        Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    }
.end annotation


# static fields
.field private static mBlinkMultiplier:F

.field private static maxConnectTime:J

.field private static sDxdyCount:I

.field private static sLogging:Z

.field private static sMaxRelDx:F

.field private static sMaxRelDy:F

.field private static sMaxRelVftDx:F

.field private static sMaxRelVftDy:F

.field private static sSequenceCount:I

.field private static sTranslations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignRectSizes:Z

.field private mAllFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyzeComplete:Z

.field private mBestImage:I

.field private mBestImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mBestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$RankedId;",
            ">;"
        }
    .end annotation
.end field

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private final mDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

.field private mFaceScaleX:F

.field private mFaceScaleY:F

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFacesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mGuessRects:Z

.field private mImageDims:Lcom/scalado/base/Size;

.field private mImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsComplete:Z

.field private mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

.field private mLockingEnabled:Z

.field private mMatches:[I

.field private mMaxNumRects:I

.field private mMaxScoreImage:I

.field private mMaxTranslation:F

.field private mMinFaceDiffX:F

.field private mMinFaceDiffY:F

.field private mMinMatches:I

.field private mNumAdded:I

.field private mNumGuessed:I

.field private mPredefined:Z

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

.field private mState:Lcom/scalado/app/rewind/RectTracker$State;

.field private final mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mUseVfTracker:Z

.field private mUseVftForDelta:Z

.field private mUtils:Lcom/scalado/app/rewind/TrackerUtils;

.field private final mVftDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxDisplacementModifier:F

.field totalFaceDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 72
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    .line 75
    const/high16 v0, 0x3f80

    sput v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    .line 114
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 115
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 116
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 117
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 118
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    .line 121
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    return-void
.end method

.method public constructor <init>(Lcom/scalado/app/rewind/SourceManager;I)V
    .locals 8
    .parameter "srcMgr"
    .parameter "size"

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x4090

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 43
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 46
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 49
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 59
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 60
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 61
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 62
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 64
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 65
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 67
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 77
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 78
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 87
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 88
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 89
    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 90
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 92
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 93
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 103
    const v1, 0x3e19999a

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 107
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 152
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 157
    new-instance v1, Lcom/scalado/app/rewind/TrackerUtils;

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {v1, v2}, Lcom/scalado/app/rewind/TrackerUtils;-><init>(Lcom/scalado/app/rewind/SourceManager;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    .line 158
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/TrackerUtils;->getFaceDetectionDims()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 159
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFaceDetectionDims width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method static synthetic access$11000()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    return-wide v0
.end method

.method static synthetic access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/scalado/app/rewind/RectTracker;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    return v0
.end method

.method static synthetic access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    return v0
.end method

.method static synthetic access$9300(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    return-object v0
.end method

.method private accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;)",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .line 1670
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1671
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1672
    .local v1, n:I
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1673
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1674
    .local v3, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    move v0, v2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1675
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$316(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1676
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$416(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1678
    :cond_0
    if-ge p2, p1, :cond_1

    .line 1679
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1680
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1682
    :cond_1
    return-object v3
.end method

.method private addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1788
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1789
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aput-object p4, v0, p3

    .line 1790
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 320
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "image"
    .parameter "id"
    .parameter "rect"
    .parameter "sessionRect"

    .prologue
    .line 323
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 324
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v0, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$702(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 325
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 326
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 327
    return-void
.end method

.method private alignRectSizes()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    .line 3066
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3067
    .local v3, id:I
    const/4 v5, -0x1

    .line 3068
    .local v5, wMax:I
    const/4 v0, -0x1

    .line 3069
    .local v0, hMax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 3070
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 3071
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v4, :cond_1

    .line 3072
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3073
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3069
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3076
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 3077
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 3078
    .restart local v4       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v4, :cond_3

    .line 3079
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3080
    .local v6, x:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3081
    .local v7, y:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v5

    mul-float/2addr v9, v10

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 3082
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v0

    mul-float/2addr v9, v10

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 3083
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v5

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 3084
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v0

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 3076
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3089
    .end local v0           #hMax:I
    .end local v1           #i:I
    .end local v3           #id:I
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #wMax:I
    :cond_4
    return-void
.end method

.method private allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 5
    .parameter "ranked"

    .prologue
    .line 2146
    const/4 v0, 0x1

    .line 2147
    .local v0, allEqual:Z
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2148
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 2149
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$7000(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2150
    const/4 v0, 0x0

    .line 2154
    :cond_0
    return v0

    .line 2148
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyze2()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1929
    new-instance v6, Ljava/util/Vector;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    .line 1930
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    .line 1931
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1932
    .local v3, id:I
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-direct {v0, p0, v3, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    .line 1933
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1934
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1935
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_0

    .line 1937
    invoke-direct {p0, v1, v3, v8}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 1938
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1940
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aput-object v4, v6, v1

    .line 1941
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, v1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {v6, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4502(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1933
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1944
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1945
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    .line 1946
    .local v5, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1944
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1949
    :cond_3
    add-int/lit8 v6, v1, -0x1

    if-ltz v6, :cond_4

    .line 1950
    add-int/lit8 v6, v1, -0x1

    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5702(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1953
    :cond_4
    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1954
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5802(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    goto :goto_3

    .line 1959
    .end local v5           #trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_5
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1960
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1963
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v1           #i:I
    .end local v3           #id:I
    :cond_6
    return-void
.end method

.method private applyViewfinderTracker(Lcom/scalado/base/Image;)V
    .locals 8
    .parameter "image"

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 276
    .local v0, dims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    .line 277
    .local v1, index:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 280
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Image dimensions doesn\'t match!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    :cond_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 284
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$502(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    .line 285
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v6, :cond_2

    .line 286
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 288
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v6, :cond_3

    .line 289
    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 292
    :cond_3
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    .line 293
    .local v5, transform:Lcom/scalado/caps/autorama/Transform;
    if-lez v1, :cond_5

    .line 294
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 295
    .local v2, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 296
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 297
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 298
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 299
    .local v3, p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$324(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 300
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$424(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 302
    .end local v3           #p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_4
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2           #p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_5
    iget v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 306
    return-void
.end method

.method private approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 1611
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1616
    if-le p2, p3, :cond_0

    .line 1618
    const/high16 v0, 0x3f80

    move p2, p3

    .line 1625
    :goto_0
    invoke-direct {p0, p2}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v2

    .line 1626
    invoke-direct {p0, p4, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1627
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1628
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V
    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V

    .line 1629
    return-object v1

    .line 1619
    :cond_0
    if-ge p2, p3, :cond_1

    .line 1621
    const/high16 v0, -0x4080

    goto :goto_0

    .line 1623
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "toImage == fromImage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateOptimalImages2()V
    .locals 2

    .prologue
    .line 1864
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    if-gez v0, :cond_0

    .line 1865
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Best bg image unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    .line 1871
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 1881
    return-void
.end method

.method private calculateStatistics()V
    .locals 6

    .prologue
    .line 1216
    const/4 v3, -0x1

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1218
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1219
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1220
    .local v1, size:I
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-le v1, v3, :cond_0

    .line 1221
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    .end local v1           #size:I
    .end local v2           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 1226
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_2
    return-void
.end method

.method private connect(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v11

    .line 3121
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v6

    .line 3123
    array-length v0, v11

    if-eqz v0, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    .line 3232
    :cond_0
    :goto_0
    return-void

    .line 3126
    :cond_1
    const-string v0, "*** Connecting imgs %d -> %d (#ids=(%d,%d))"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    array-length v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    array-length v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3142
    array-length v0, v11

    new-array v7, v0, [Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    .line 3143
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    array-length v0, v11

    if-ge v8, v0, :cond_3

    .line 3144
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v0, v7, v8

    .line 3145
    const/4 v0, 0x0

    move v9, v0

    :goto_2
    array-length v0, v6

    if-ge v9, v0, :cond_2

    .line 3146
    aget v2, v11, v8

    aget v4, v6, v9

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker;->distance(IIIILjava/util/HashMap;)F

    move-result v0

    .line 3147
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    aget v2, v6, v9

    invoke-direct {p0, v1, v2, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v1

    .line 3148
    aget-object v2, v7, v8

    aget v3, v6, v9

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->add(IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v2, v3, v0, v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9700(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 3145
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 3150
    :cond_2
    aget-object v0, v7, v8

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->sort()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9800(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    .line 3143
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 3152
    :cond_3
    array-length v0, v6

    new-array v2, v0, [Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 3153
    const/4 v0, 0x0

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_4

    .line 3154
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v1, v2, v0

    .line 3153
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3156
    :cond_4
    const/4 v0, 0x0

    :goto_4
    array-length v1, v7

    if-ge v0, v1, :cond_6

    .line 3157
    const/4 v1, 0x0

    :goto_5
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 3158
    aget-object v3, v2, v1

    aget-object v4, v7, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/4 v5, 0x0

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3600(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 3157
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3156
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3162
    :cond_6
    const/4 v0, 0x0

    :goto_6
    array-length v1, v2

    if-ge v0, v1, :cond_7

    .line 3163
    aget-object v1, v2, v0

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3700(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 3162
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3177
    :cond_7
    const/4 v0, 0x0

    aget-object v0, v2, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v0

    .line 3178
    const/4 v1, 0x0

    aget-object v1, v2, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_8

    .line 3179
    const/4 v1, 0x0

    aget-object v1, v2, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3800(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 3181
    :cond_8
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    mul-float v3, v0, v1

    .line 3184
    const/4 v1, 0x0

    .line 3185
    const/4 v0, 0x0

    move v9, v1

    :goto_7
    array-length v1, v7

    if-ge v0, v1, :cond_b

    .line 3186
    const-string v2, ""

    .line 3187
    const/4 v1, 0x0

    .line 3190
    :goto_8
    aget-object v4, v7, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_a

    if-eqz v1, :cond_9

    aget-object v4, v7, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_a

    .line 3191
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " %2d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v10, v7, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v10

    aget-object v10, v10, v1

    iget v10, v10, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3192
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3194
    :cond_a
    aget-object v2, v7, v0

    #setter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v2, v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10102(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)I

    .line 3195
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3185
    add-int/lit8 v0, v0, 0x1

    move v9, v1

    goto :goto_7

    .line 3201
    :cond_b
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 3203
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10300(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3204
    const/4 v1, 0x1

    move v10, v9

    move v9, v1

    .line 3205
    :goto_9
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10400(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v1

    if-nez v1, :cond_f

    array-length v1, v6

    if-ge v9, v1, :cond_f

    .line 3206
    invoke-direct {p0, v7, v10}, Lcom/scalado/app/rewind/RectTracker;->increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3207
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 3209
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10500(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I

    move-result v1

    const v2, 0x186a0

    if-le v1, v2, :cond_c

    move-object v6, v0

    .line 3216
    :goto_a
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10400(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3217
    const-string v0, "RectTracker"

    const-string v1, "Failed to connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 3219
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 3212
    :cond_c
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10300(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3213
    add-int/lit8 v1, v9, 0x1

    .line 3214
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v1

    goto :goto_9

    .line 3223
    :cond_d
    const/4 v0, 0x0

    move v7, v0

    :goto_b
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10600(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_e

    .line 3224
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10600(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v0

    aget v1, v0, v7

    .line 3225
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10700(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v0

    aget v2, v0, v7

    .line 3226
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(IIIILjava/util/HashMap;)V

    .line 3223
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b

    .line 3228
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Min matches = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3229
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3230
    const-string v1, "   %d->%d : %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3229
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    move-object v6, v0

    goto/16 :goto_a
.end method

.method private connectAllImages()V
    .locals 8

    .prologue
    .line 3092
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 3093
    .local v5, toOffsets:[I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 3094
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, imageIndex:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3095
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->numRectsInImage(I)I

    move-result v6

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-ne v6, v7, :cond_2

    .line 3096
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 3097
    aget v6, v5, v2

    add-int v4, v1, v6

    .line 3098
    .local v4, to:I
    if-ltz v4, :cond_0

    if-lt v4, v3, :cond_1

    .line 3096
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3101
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3102
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v6, v6, v0

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-eq v6, v7, :cond_0

    .line 3105
    invoke-direct {p0, v4, v1}, Lcom/scalado/app/rewind/RectTracker;->connect(II)V

    goto :goto_2

    .line 3094
    .end local v0           #deltaIndex:I
    .end local v2           #j:I
    .end local v4           #to:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3109
    :cond_3
    return-void

    .line 3092
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3514
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    if-eqz v2, :cond_0

    .line 3515
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/rewind/TrackerUtils;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3528
    :goto_0
    return-void

    .line 3518
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_1

    .line 3519
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3520
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 3521
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3522
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3524
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3526
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :cond_1
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2954
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2955
    .local v3, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2956
    .local v2, key:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2957
    .local v5, oldVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    array-length v6, v5

    new-array v4, v6, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2958
    .local v4, newVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 2959
    aget-object v6, v5, v0

    aput-object v6, v4, v0

    .line 2958
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2961
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2963
    .end local v0           #i:I
    .end local v2           #key:I
    .end local v4           #newVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #oldVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    return-object v3
.end method

.method private createFaceDetector()V
    .locals 2

    .prologue
    .line 3500
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/scalado/caps/face/FaceDetectorFactory;->getFaceDetector(ZI)Lcom/scalado/caps/face/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    .line 3502
    new-instance v0, Lcom/scalado/caps/face/FeatureSet;

    invoke-direct {v0}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    .line 3503
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3504
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3505
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3507
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v1, v0}, Lcom/scalado/caps/face/FaceDetector;->setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3511
    :goto_0
    return-void

    .line 3508
    :catch_0
    move-exception v0

    .line 3509
    const-string v0, "RectTracker"

    const-string v1, "Failed to set detectable features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2159
    if-eqz p4, :cond_0

    .line 2160
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 2162
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v5, -0x3f80

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private distance(IIIILjava/util/HashMap;)F
    .locals 3
    .parameter "fromImage"
    .parameter "fromId"
    .parameter "toImage"
    .parameter "toId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 3003
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-direct {p0, p2, p3, p1, p5}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3004
    .local v1, r1:Landroid/graphics/Rect;
    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3005
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    return v2
.end method

.method private enlargeRectangles(FF)V
    .locals 46
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 425
    .local v25, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 426
    .local v26, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_1

    .line 429
    const/high16 v3, 0x3fc0

    .line 431
    .local v3, baseX:F
    const v5, 0x3e4ccccd

    .line 435
    .local v5, breakPoint:F
    mul-float v42, v3, p2

    div-float v4, v42, p1

    .line 437
    .local v4, baseY:F
    sub-float v23, p1, v3

    .line 441
    .local v23, sxBackoffPart:F
    sub-float v24, p2, v4

    .line 442
    .local v24, syBackoffPart:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 444
    .local v22, rect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    if-eqz v42, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v42, v42, v43

    if-eqz v42, :cond_2

    .line 460
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v11, v42, v43

    .line 462
    .local v11, faceRelativeSizeX:F
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v12, v42, v43

    .line 468
    .local v12, faceRelativeSizeY:F
    cmpl-float v42, v11, v5

    if-lez v42, :cond_3

    .line 469
    const/16 v36, 0x0

    .line 480
    .local v36, xBackoffMultiplier:F
    :goto_2
    cmpl-float v42, v12, v5

    if-lez v42, :cond_4

    .line 481
    const/16 v39, 0x0

    .line 493
    .local v39, yBackoffMultiplier:F
    :goto_3
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1502(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 494
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v38

    .line 495
    .local v38, xc:F
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v41

    .line 496
    .local v41, yc:F
    mul-float v42, v23, v36

    add-float v42, v42, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v33, v42, v43

    .line 498
    .local v33, w:F
    mul-float v42, v24, v39

    add-float v42, v42, v4

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v14, v42, v43

    .line 501
    .local v14, h:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v38, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 502
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v41, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 503
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v38, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 504
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v41, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 505
    new-instance v42, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1602(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 456
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v14           #h:F
    .end local v33           #w:F
    .end local v36           #xBackoffMultiplier:F
    .end local v38           #xc:F
    .end local v39           #yBackoffMultiplier:F
    .end local v41           #yc:F
    :cond_2
    const-string v42, "No eye rects for img=%d, id=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1300(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    .restart local v11       #faceRelativeSizeX:F
    .restart local v12       #faceRelativeSizeY:F
    :cond_3
    const/high16 v42, 0x3f80

    div-float v43, v11, v5

    sub-float v36, v42, v43

    .restart local v36       #xBackoffMultiplier:F
    goto/16 :goto_2

    .line 483
    :cond_4
    const/high16 v42, 0x3f80

    div-float v43, v12, v5

    sub-float v39, v42, v43

    .restart local v39       #yBackoffMultiplier:F
    goto/16 :goto_3

    .line 510
    .end local v3           #baseX:F
    .end local v4           #baseY:F
    .end local v5           #breakPoint:F
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v23           #sxBackoffPart:F
    .end local v24           #syBackoffPart:F
    .end local v25           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v26           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v36           #xBackoffMultiplier:F
    .end local v39           #yBackoffMultiplier:F
    :cond_5
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 511
    .local v18, intersection:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 512
    .local v10, faceIntersection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 513
    .restart local v25       #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v15, v0, :cond_6

    .line 514
    add-int/lit8 v19, v15, 0x1

    .local v19, j:I
    :goto_5
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_14

    .line 515
    move/from16 v0, v19

    if-ne v15, v0, :cond_8

    .line 514
    :cond_7
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 518
    :cond_8
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 519
    .local v27, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 520
    .local v28, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_7

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_7

    .line 523
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 524
    .local v20, r0:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 525
    .local v21, r1:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 526
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 529
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 530
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 532
    .local v13, facesIntersects:Z
    if-eqz v13, :cond_9

    .line 533
    const-string v42, "*** Faces intersects: %d - %d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 536
    :cond_9
    const/4 v7, 0x0

    .line 541
    .local v7, didLock:Z
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v42

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_f

    .line 545
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_d

    .line 546
    move-object/from16 v30, v27

    .line 547
    .local v30, trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v31, v28

    .line 552
    .local v31, trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_7
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->width()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v6, v0

    .line 554
    .local v6, dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v34, v42, v6

    .line 555
    .local v34, wLeft:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v8, v0

    .line 556
    .local v8, diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v43, v34, v8

    add-float v42, v42, v43

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->round(F)I

    move-result v37

    .line 559
    .local v37, xBorder:I
    const/4 v9, 0x0

    .line 560
    .local v9, doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v42, v0

    cmpl-float v42, v8, v42

    if-ltz v42, :cond_e

    .line 561
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v37

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 563
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v37

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 565
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v37

    move/from16 v1, v42

    if-le v0, v1, :cond_a

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v37

    move/from16 v1, v42

    if-lt v0, v1, :cond_b

    .line 567
    :cond_a
    const/4 v9, 0x1

    .line 572
    :cond_b
    :goto_8
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 573
    const-string v42, "Locking. (diff=%f(%f), left=%s, right=%s)"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 579
    const/4 v7, 0x1

    .line 622
    .end local v30           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v31           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v34           #wLeft:F
    .end local v37           #xBorder:I
    :cond_c
    :goto_9
    if-eqz v7, :cond_7

    .line 623
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static/range {v27 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 624
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    goto/16 :goto_6

    .line 549
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    :cond_d
    move-object/from16 v30, v28

    .line 550
    .restart local v30       #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v31, v27

    .restart local v31       #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_7

    .line 570
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v34       #wLeft:F
    .restart local v37       #xBorder:I
    :cond_e
    const/4 v9, 0x1

    goto :goto_8

    .line 585
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v30           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v31           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v34           #wLeft:F
    .end local v37           #xBorder:I
    :cond_f
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_12

    .line 586
    move-object/from16 v32, v27

    .line 587
    .local v32, trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v28

    .line 592
    .local v29, trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_a
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v6, v0

    .line 594
    .restart local v6       #dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v35, v42, v6

    .line 595
    .local v35, wTop:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v8, v0

    .line 596
    .restart local v8       #diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v43, v35, v8

    add-float v42, v42, v43

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->round(F)I

    move-result v40

    .line 599
    .local v40, yBorder:I
    const/4 v9, 0x0

    .line 600
    .restart local v9       #doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v42, v0

    cmpl-float v42, v8, v42

    if-ltz v42, :cond_13

    .line 601
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 603
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 605
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v42

    if-le v0, v1, :cond_10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v42

    if-lt v0, v1, :cond_11

    .line 607
    :cond_10
    const/4 v9, 0x1

    .line 612
    :cond_11
    :goto_b
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 613
    const-string v42, "Locking. (diff=%f(%f), top=%s, bottom=%s)"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 619
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 589
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v29           #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v35           #wTop:F
    .end local v40           #yBorder:I
    :cond_12
    move-object/from16 v32, v28

    .line 590
    .restart local v32       #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v27

    .restart local v29       #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_a

    .line 610
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v35       #wTop:F
    .restart local v40       #yBorder:I
    :cond_13
    const/4 v9, 0x1

    goto :goto_b

    .line 513
    .end local v6           #dSum:F
    .end local v7           #didLock:Z
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v13           #facesIntersects:Z
    .end local v20           #r0:Landroid/graphics/Rect;
    .end local v21           #r1:Landroid/graphics/Rect;
    .end local v27           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v28           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v29           #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v35           #wTop:F
    .end local v40           #yBorder:I
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 629
    .end local v15           #i:I
    .end local v19           #j:I
    .end local v25           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->filterFaces()Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    .line 630
    return-void
.end method

.method private estimateDeltas()V
    .locals 15

    .prologue
    .line 1231
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    .line 1232
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1233
    .local v7, id:I
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1234
    .local v8, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    array-length v11, v8

    if-ge v5, v11, :cond_0

    .line 1235
    add-int/lit8 v11, v5, -0x1

    aget-object v10, v8, v11

    .line 1236
    .local v10, prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v1, v8, v5

    .line 1237
    .local v1, curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v10, :cond_1

    if-nez v1, :cond_2

    .line 1234
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1241
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1242
    .local v9, prev:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1243
    .local v0, cur:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float v3, v11, v12

    .line 1244
    .local v3, dx:F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    sub-float v4, v11, v12

    .line 1245
    .local v4, dy:F
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1246
    .local v2, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3600(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 1247
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v11, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3600(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    goto :goto_1

    .line 1250
    .end local v0           #cur:Landroid/graphics/Rect;
    .end local v1           #curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v5           #i:I
    .end local v7           #id:I
    .end local v8           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v9           #prev:Landroid/graphics/Rect;
    .end local v10           #prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 1251
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1252
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3700(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1253
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3700(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1254
    const-string v11, "Delta       %d -> %d: (%f,%f), std dev = (%f, %f), n = %d"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3800(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3900(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1258
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1259
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1260
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const-string v11, "(VFT) Delta %d -> %d: (%f,%f)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1263
    :cond_4
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v12

    aput v12, v11, v5

    .line 1250
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1265
    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_5
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 1266
    const-string v11, "Total Delta: (%f,%f) std dev = (%f, %f)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3800(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3900(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1269
    return-void
.end method

.method private filterFaces()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1992
    new-instance v2, Ljava/util/Vector;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/Vector;-><init>(I)V

    .line 1993
    .local v2, faces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$AbstractFace;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1994
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1995
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1996
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1993
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1998
    :cond_1
    const/4 v0, 0x1

    .line 1999
    .local v0, add:Z
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2000
    .local v5, lockedWith:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2001
    const/4 v0, 0x0

    .line 2005
    .end local v5           #lockedWith:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_3
    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2010
    .end local v0           #add:Z
    .end local v1           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    return-object v2
.end method

.method private findFirstImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1733
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1734
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1742
    :cond_0
    :goto_0
    return v0

    .line 1737
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1738
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1737
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1742
    goto :goto_0
.end method

.method private findLastImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1746
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1747
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1755
    :cond_0
    :goto_0
    return v0

    .line 1750
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1751
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1750
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1755
    goto :goto_0
.end method

.method private getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 3
    .parameter "index"

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1602
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    if-eqz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1605
    .restart local v0       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_0
    return-object v0
.end method

.method private getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 1
    .parameter "id"
    .parameter "index"

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    return-object v0
.end method

.method private getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 3
    .parameter
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 1813
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return-object v1

    .line 1816
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1817
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v2, v0, p3

    if-eqz v2, :cond_0

    .line 1818
    aget-object v1, v0, p3

    goto :goto_0
.end method

.method private getTransforms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1661
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 1664
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    goto :goto_0
.end method

.method private guessRects(I)V
    .locals 13
    .parameter

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 1523
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1524
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1525
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1526
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1529
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v1

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1530
    invoke-direct {p0, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v1

    .line 1531
    invoke-direct {p0, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v7

    .line 1532
    invoke-direct {p0, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v0

    .line 1536
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1539
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1542
    const/4 v0, 0x0

    move v9, v0

    move v8, v1

    .line 1543
    :goto_2
    if-lez v8, :cond_3

    if-ge v9, p1, :cond_3

    .line 1544
    add-int/lit8 v2, v8, -0x1

    .line 1545
    invoke-direct {p0, v6, v3, v8}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 1546
    new-instance v4, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1547
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1548
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    .line 1549
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-int v0, v0

    .line 1550
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1551
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1552
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1553
    invoke-direct {p0, v6, v3, v2, v0}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1554
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1555
    const-string v0, "Making up rect (img=%d id=%d %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1557
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1560
    :cond_2
    add-int/lit8 v0, v9, 0x1

    .line 1561
    add-int/lit8 v1, v8, -0x1

    move v9, v0

    move v8, v1

    .line 1562
    goto :goto_2

    .line 1563
    :cond_3
    if-lt v9, p1, :cond_4

    .line 1564
    invoke-direct {p0, v6, v11}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    .line 1565
    invoke-direct {p0, v0, v11}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    move-object v6, v0

    .line 1566
    goto/16 :goto_1

    .line 1569
    :cond_4
    const/4 v0, 0x0

    move v8, v7

    move v7, v0

    .line 1570
    :goto_3
    if-ltz v8, :cond_6

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_6

    if-ge v7, p1, :cond_6

    .line 1571
    add-int/lit8 v2, v8, 0x1

    .line 1572
    invoke-direct {p0, v6, v3, v8}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 1573
    new-instance v4, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1574
    invoke-direct {p0, v8}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1575
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1576
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1577
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1578
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1579
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1580
    invoke-direct {p0, v6, v3, v2, v0}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1581
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1582
    const-string v0, "Making up rect (img=%d id=%d %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1587
    :cond_5
    add-int/lit8 v0, v7, 0x1

    .line 1588
    add-int/lit8 v1, v8, 0x1

    move v7, v0

    move v8, v1

    .line 1589
    goto/16 :goto_3

    .line 1590
    :cond_6
    add-int v0, v9, v7

    .line 1591
    if-lez v0, :cond_8

    .line 1592
    invoke-direct {p0, v6, v11}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    .line 1593
    invoke-direct {p0, v0, v11}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    :goto_4
    move-object v6, v0

    .line 1595
    goto/16 :goto_1

    .line 1596
    :cond_7
    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 1597
    return-void

    :cond_8
    move-object v0, v6

    goto :goto_4
.end method

.method private idsOverlaps(Ljava/util/HashMap;II)Z
    .locals 4
    .parameter
    .parameter "id0"
    .parameter "id1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1760
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1761
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1762
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1763
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 1764
    const/4 v3, 0x1

    .line 1767
    :goto_1
    return v3

    .line 1762
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1767
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private inNumImages(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1719
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 1720
    .local v2, n:I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1721
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_0

    .line 1722
    const/4 v3, 0x0

    .line 1729
    :goto_0
    return v3

    .line 1724
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1725
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    .line 1726
    add-int/lit8 v2, v2, 0x1

    .line 1724
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1729
    goto :goto_0
.end method

.method private increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V
    .locals 2
    .parameter "buckets"
    .parameter "maxNum"

    .prologue
    .line 3235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3236
    aget-object v1, p1, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10100(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 3237
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10108(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    .line 3235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3240
    :cond_1
    return-void
.end method

.method private isComplete(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1825
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1826
    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not complete id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1828
    const/4 v0, 0x0

    .line 1831
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1835
    const-string v0, "Locking faces (img=%d) %d and %d."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1800(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1837
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v1

    .line 1838
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v2

    .line 1839
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1840
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2302(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1842
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1843
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1845
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1846
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2, v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2302(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1848
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1849
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1851
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1852
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1853
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1856
    :cond_5
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1857
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1858
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1861
    :cond_7
    return-void
.end method

.method private logTranslations()V
    .locals 24

    .prologue
    .line 1157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v14, v1

    .line 1158
    .local v14, fdw:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v13, v1

    .line 1159
    .local v13, fdh:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1160
    .local v5, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1161
    const/4 v15, 0x1

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    .line 1162
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    .line 1163
    .local v22, trPrev:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    .line 1164
    .local v21, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v22, :cond_1

    if-nez v21, :cond_2

    .line 1165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d -> %d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1161
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1169
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1170
    :cond_3
    const-string v1, "%d -> %d: no rects"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto :goto_1

    .line 1173
    :cond_4
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v19, v1, v2

    .line 1174
    .local v19, mw:F
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v17, v1, v2

    .line 1175
    .local v17, mh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 1176
    .local v11, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 1177
    .local v12, dy:F
    div-float v6, v11, v19

    .line 1178
    .local v6, relDx:F
    div-float v7, v12, v17

    .line 1179
    .local v7, relDy:F
    const-string v1, "%d -> %d: (dx, dy) = (%f, %f) (rel to f. size)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1182
    .local v18, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_a

    .line 1183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1184
    .local v20, sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    div-float v6, v11, v14

    .line 1185
    div-float v7, v12, v13

    .line 1186
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v8, v1, v14

    .line 1187
    .local v8, relVftDx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v9, v1, v13

    .line 1188
    .local v9, relVftDy:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", (%f, %f), vft=(%f, %f)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1190
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 1191
    sput v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 1193
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1194
    sput v7, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 1196
    :cond_6
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1197
    sput v8, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 1199
    :cond_7
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1200
    sput v9, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 1202
    :cond_8
    sget-object v1, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v1, :cond_9

    .line 1203
    sget-object v23, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    new-instance v1, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    sget v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v4, v15, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$1;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_9
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 1209
    .end local v8           #relVftDx:F
    .end local v9           #relVftDy:F
    .end local v20           #sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_a
    invoke-static/range {v18 .. v18}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1212
    .end local v5           #id:I
    .end local v6           #relDx:F
    .end local v7           #relDy:F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v15           #i:I
    .end local v17           #mh:F
    .end local v18           #msg:Ljava/lang/String;
    .end local v19           #mw:F
    .end local v21           #trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v22           #trPrev:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_b
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    .line 1213
    return-void
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3542
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3543
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    :cond_0
    return-void
.end method

.method private static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 3548
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3549
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_0
    return-void
.end method

.method private static final logdind(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3554
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3555
    const-string v0, "RectTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    :cond_0
    return-void
.end method

.method private static final logw(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3538
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    return-void
.end method

.method private meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "r0"
    .parameter "r1"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    .line 1648
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float/2addr v5, v6

    div-float v3, v5, v8

    .line 1649
    .local v3, xc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    add-float/2addr v5, v6

    div-float v4, v5, v8

    .line 1650
    .local v4, yc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 1651
    .local v2, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v5, v7

    .line 1652
    .local v0, h:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1653
    .local v1, r:Landroid/graphics/Rect;
    mul-float v5, v7, v2

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1654
    mul-float v5, v7, v0

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1655
    mul-float v5, v7, v2

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1656
    mul-float v5, v7, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1657
    return-object v1
.end method

.method private mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1442
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    .line 1443
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1444
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1445
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v7, v1, [F

    .line 1451
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1452
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1453
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v9, v11, :cond_2

    .line 1457
    if-eqz p2, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1461
    :cond_3
    invoke-direct {p0, v4, v9}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v1

    .line 1462
    invoke-direct {p0, v4, v11}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    .line 1463
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 1466
    const/4 v3, 0x0

    .line 1467
    const/4 v2, 0x0

    .line 1468
    const/4 v1, 0x0

    :goto_2
    iget-object v12, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 1469
    invoke-direct {p0, v4, v9, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v12

    .line 1470
    invoke-direct {p0, v4, v11, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v13

    .line 1471
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v12

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v12

    .line 1472
    aput v12, v7, v1

    .line 1473
    add-float/2addr v2, v12

    .line 1474
    const v13, 0x3e4ccccd

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 1468
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1476
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1479
    :cond_5
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 1480
    if-lez v3, :cond_6

    .line 1481
    const-string v1, "id=%d and id=%d #overlaps=%d."

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1484
    :cond_6
    const/4 v1, 0x0

    .line 1485
    iget-object v12, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ne v3, v12, :cond_8

    .line 1486
    const/4 v1, 0x1

    .line 1490
    :cond_7
    :goto_4
    if-eqz v1, :cond_2

    .line 1493
    const-string v1, "id=%d and id=%d equal, merging (approx.)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1495
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1496
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1497
    invoke-direct {p0, v4, v9, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1498
    invoke-direct {p0, v4, v11, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v12

    .line 1499
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v13

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 1500
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3, v13}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1202(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1501
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1495
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 1487
    :cond_8
    const/4 v12, 0x1

    if-le v3, v12, :cond_7

    const v3, 0x3e19999a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 1488
    const/4 v1, 0x1

    goto :goto_4

    .line 1504
    :cond_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1507
    :cond_a
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1510
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1511
    if-eqz p2, :cond_d

    .line 1512
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1518
    :cond_d
    return-object v4
.end method

.method private mergeIds(Ljava/util/HashMap;II)V
    .locals 4
    .parameter
    .parameter "master"
    .parameter "slave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1773
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1774
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1775
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 1776
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 1774
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1779
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    return-void
.end method

.method private mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1375
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v8

    .line 1376
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1377
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1378
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1384
    :cond_0
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1385
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1386
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v4, v13, :cond_2

    .line 1390
    if-eqz p2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1394
    :cond_3
    invoke-direct {p0, v8, v4}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v1

    .line 1395
    invoke-direct {p0, v8, v13}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v7

    .line 1396
    add-int/lit8 v3, v1, 0x1

    .line 1397
    if-ltz v1, :cond_2

    if-ltz v7, :cond_2

    add-int/lit8 v2, v1, 0x2

    if-ne v2, v7, :cond_2

    .line 1400
    invoke-direct {p0, v4, v3, v1, v8}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1401
    invoke-direct {p0, v13, v3, v7, v8}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1402
    invoke-direct {p0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v5

    .line 1403
    const v6, 0x3e4ccccd

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 1406
    invoke-direct {p0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1407
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1408
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1409
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v2, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1410
    const-string v2, ""

    move v6, v7

    .line 1411
    :goto_2
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1412
    invoke-direct {p0, v8, v13, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v7

    .line 1413
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 1414
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v7, v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 1415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1411
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1417
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " X"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1420
    :cond_5
    const-string v5, "Merging (approx.) %d with %d (in images %s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1423
    invoke-direct {p0, v8, v4, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1424
    invoke-direct {p0, v8, v4, v13}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1425
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1429
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1430
    if-eqz p2, :cond_8

    .line 1431
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1437
    :cond_8
    return-object v8
.end method

.method private mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1282
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v9

    .line 1283
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1284
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1285
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1286
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1290
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1291
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1294
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v5

    .line 1300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v5, v1, :cond_1

    .line 1303
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_1

    .line 1304
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1306
    const/4 v8, 0x0

    .line 1307
    const/4 v7, 0x0

    .line 1308
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1309
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-eq v1, v13, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v1}, Lcom/scalado/app/rewind/RectTracker;->idsOverlaps(Ljava/util/HashMap;II)Z

    move-result v1

    if-nez v1, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1318
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$Comparison;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$1;)V

    .line 1319
    if-eqz v7, :cond_3

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    invoke-static {v1, v7}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$4200(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v2

    if-lez v2, :cond_b

    :cond_3
    :goto_3
    move-object v7, v1

    move-object v8, v4

    .line 1323
    goto :goto_2

    .line 1327
    :cond_4
    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->isOk()Z
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$4300(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    .line 1330
    const-string v2, ""

    .line 1331
    add-int/lit8 v1, v5, 0x1

    move v15, v1

    move-object v1, v2

    move v2, v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1332
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1333
    if-eqz v4, :cond_5

    .line 1334
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4, v13}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 1335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1331
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1337
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " X"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1340
    :cond_6
    const-string v2, "Merging %d with %d (in images %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1342
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_7
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1346
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1350
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v5

    goto/16 :goto_1

    .line 1354
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1355
    if-eqz p2, :cond_a

    .line 1356
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1362
    :cond_a
    return-object v9

    :cond_b
    move-object v1, v7

    move-object v4, v8

    goto/16 :goto_3
.end method

.method private mergeRects(IIIILjava/util/HashMap;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3027
    if-ne p3, p4, :cond_0

    .line 3028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master image == slave image."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3030
    :cond_0
    sub-int v0, p3, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master image and slave image not next to each other."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3034
    :cond_1
    if-ne p1, p2, :cond_2

    .line 3035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master ID == slave ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3038
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 3039
    if-le p4, p3, :cond_3

    move v0, v1

    .line 3045
    :goto_0
    const-string v3, ""

    .line 3046
    add-int v2, p3, v0

    move v7, v2

    move-object v2, v3

    move v3, v7

    .line 3047
    :goto_1
    if-ltz v3, :cond_5

    if-ge v3, v4, :cond_5

    .line 3048
    invoke-direct {p0, p5, p2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    .line 3049
    if-eqz v5, :cond_4

    .line 3050
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3051
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 3055
    :goto_2
    add-int/2addr v3, v0

    .line 3056
    goto :goto_1

    .line 3042
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 3053
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " X"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 3057
    :cond_5
    const-string v0, "Merging %d with %d (in images %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3059
    invoke-direct {p0, p5, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 3060
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3061
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 3062
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 3063
    return-void
.end method

.method private nonOverlapsBetween(Ljava/util/HashMap;II)[I
    .locals 6
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 2969
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 2970
    .local v2, n:I
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2971
    .local v3, trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 2972
    .local v4, trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_0

    .line 2973
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2976
    .end local v3           #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v4           #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    new-array v0, v2, [I

    .line 2977
    .local v0, fromIds:[I
    const/4 v2, 0x0

    .line 2978
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2979
    .restart local v3       #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 2980
    .restart local v4       #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_2

    .line 2981
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    aput v5, v0, v2

    .line 2982
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2985
    .end local v3           #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v4           #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    return-object v0
.end method

.method private numRectsInImage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private optimizeSelection()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1884
    new-instance v7, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1885
    #calls: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4700(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    .line 1886
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4800(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iput-boolean v11, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 1888
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iput-boolean v3, v0, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    .line 1889
    const-string v0, "RectTracker"

    const-string v1, "Failed to determine best images."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :goto_0
    return-void

    .line 1892
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    .line 1893
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5000(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I

    move-result v5

    move v2, v3

    .line 1894
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1895
    const-string v4, "cand %f"

    new-array v6, v11, [Ljava/lang/Object;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1894
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1897
    :cond_1
    const-string v1, "bg = %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    move v4, v3

    .line 1898
    :goto_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_5

    .line 1899
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1900
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    .line 1901
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v2

    aget v2, v2, v4

    .line 1904
    if-gez v2, :cond_2

    .line 1905
    const-string v2, "%d (don\'t care)"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v5

    .line 1920
    :goto_3
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$1902(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)I

    .line 1921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id %d: "

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v3

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1898
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1907
    :cond_2
    if-eq v5, v2, :cond_4

    .line 1908
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->canReplace(II)Z
    invoke-static {v1, v5, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1909
    const-string v6, "%d, cost = %f"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v10

    aget v10, v10, v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1912
    :cond_3
    const-string v6, "%d, (don\'t dare, %d cost = %f)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v11

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v12

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v5

    .line 1914
    goto :goto_3

    .line 1917
    :cond_4
    const-string v6, "%d (bg)"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v5

    .line 1918
    goto :goto_3

    .line 1923
    :cond_5
    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 1924
    const-string v0, "num poss %d"

    new-array v1, v11, [Ljava/lang/Object;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$5500(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3415
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privateAddImage index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    if-nez v1, :cond_0

    .line 3418
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->createFaceDetector()V

    .line 3421
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v1, :cond_1

    .line 3422
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 3426
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3429
    const/4 v3, 0x0

    .line 3430
    const/4 v1, 0x5

    .line 3431
    if-nez p3, :cond_2

    .line 3432
    const/16 v1, 0x32

    .line 3434
    :cond_2
    const/4 v2, 0x0

    move-object v9, v3

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3435
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v3, p1}, Lcom/scalado/caps/face/FaceDetector;->detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;

    move-result-object v3

    .line 3434
    add-int/lit8 v2, v2, 0x1

    move-object v9, v3

    goto :goto_0

    .line 3437
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3438
    iget-wide v6, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    sub-long/2addr v1, v4

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3439
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move/from16 v0, p3

    if-ne v0, v1, :cond_4

    .line 3440
    const-string v1, "RectTracker.Benchmark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face detection time is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    :cond_4
    invoke-virtual {v9}, Lcom/scalado/caps/face/FaceCollection;->getSize()I

    move-result v10

    .line 3445
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collection.getSize() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    const-string v1, "[%d] Faces detected = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3447
    if-lez v10, :cond_a

    .line 3448
    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v10, :cond_a

    .line 3449
    invoke-virtual {v9, v8}, Lcom/scalado/caps/face/FaceCollection;->getFaceAt(I)Lcom/scalado/caps/face/Face;

    move-result-object v11

    .line 3450
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getSmilePercent()I

    move-result v12

    .line 3451
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getBlinkPercent()I

    move-result v13

    .line 3452
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3453
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3454
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getId()I

    move-result v3

    .line 3455
    if-ltz v12, :cond_5

    if-gez v13, :cond_5

    .line 3459
    :cond_5
    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 3461
    const/4 v4, 0x0

    .line 3462
    const/4 v5, 0x0

    .line 3463
    const/4 v6, 0x0

    .line 3464
    const/4 v7, 0x0

    .line 3465
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3466
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3467
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3469
    :cond_6
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3470
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3471
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3473
    :cond_7
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3474
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3475
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3477
    :cond_8
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3478
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3479
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_9
    move-object v1, p0

    move/from16 v2, p3

    .line 3481
    invoke-direct/range {v1 .. v7}, Lcom/scalado/app/rewind/RectTracker;->setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3482
    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v12, v13}, Lcom/scalado/app/rewind/RectTracker;->setSmileBlink(IIII)V

    .line 3484
    const-string v1, "%s, id = %d (s=%d, b=%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3448
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_1

    .line 3491
    :catch_0
    move-exception v1

    .line 3492
    const-string v2, "RectTracker"

    const-string v3, "Excpetion:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3494
    :cond_a
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v1, :cond_b

    .line 3495
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    .line 3497
    :cond_b
    return-void
.end method

.method private rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    .line 2112
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_1

    .line 2113
    invoke-direct {p0, p1, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    .line 2115
    if-eqz v5, :cond_0

    .line 2116
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v0

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v5, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6602(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)F

    .line 2117
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v0, p2, v2

    .line 2112
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2119
    :cond_0
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v4, -0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v0, p2, v2

    goto :goto_1

    .line 2129
    :cond_1
    invoke-direct {p0, p2}, Lcom/scalado/app/rewind/RectTracker;->allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    .line 2130
    if-eqz v0, :cond_3

    .line 2131
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_2

    .line 2132
    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v2, -0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2134
    :cond_2
    const/4 v0, 0x0

    .line 2142
    :goto_3
    return v0

    .line 2136
    :cond_3
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2137
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_5

    .line 2138
    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v1, :cond_4

    .line 2139
    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2137
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2142
    :cond_5
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private rankImages()I
    .locals 14

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 2015
    new-array v5, v4, [I

    .line 2021
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2022
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2025
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2026
    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 2027
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 2028
    add-int/lit8 v7, v2, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    aput-object v1, v6, v7

    .line 2027
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2043
    :cond_1
    array-length v0, v6

    new-array v7, v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2044
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2045
    const/4 v1, 0x0

    :goto_2
    array-length v2, v6

    if-ge v1, v2, :cond_2

    .line 2046
    aget-object v2, v6, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    aget-object v2, v2, v0

    .line 2047
    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {p0, v0, v8, v9, v2}, Lcom/scalado/app/rewind/RectTracker;->createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v2

    aput-object v2, v7, v1

    .line 2045
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2049
    :cond_2
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2050
    const/4 v1, 0x0

    :goto_3
    array-length v2, v6

    if-ge v1, v2, :cond_4

    .line 2051
    aget-object v2, v6, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    aget-object v8, v2, v0

    .line 2052
    const/4 v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 2053
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2054
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6102(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2055
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6202(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 2056
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_4
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6302(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 2050
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2056
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 2044
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2060
    :cond_5
    const/4 v0, 0x0

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    .line 2061
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2062
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2063
    new-array v6, v4, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2064
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v2

    invoke-direct {p0, v2, v6}, Lcom/scalado/app/rewind/RectTracker;->rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v2

    .line 2065
    add-int/lit8 v3, v4, -0x1

    aget-object v3, v6, v3

    iget v7, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 2066
    const-string v8, "   "

    .line 2067
    if-eqz v2, :cond_9

    .line 2068
    const-string v2, "id %d (best img = %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2069
    const/4 v2, 0x0

    :goto_6
    array-length v3, v6

    if-ge v2, v3, :cond_8

    .line 2070
    aget-object v3, v6, v2

    iget-object v3, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2071
    const-string v9, "%simg=%d, (score=%1.5f)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    aget-object v12, v6, v2

    iget v12, v12, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aget-object v12, v6, v2

    iget v12, v12, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2073
    if-eqz v3, :cond_7

    .line 2074
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2075
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rank=%d, (s=%d, b=%d)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2084
    :goto_7
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2069
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2078
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rank=%d, [no s & b]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 2082
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", [no rect]"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 2086
    :cond_8
    aget v2, v5, v7

    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v7

    .line 2094
    :goto_8
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0, v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6502(Lcom/scalado/app/rewind/RectTracker$AbstractFace;[Lcom/scalado/app/rewind/RectTracker$RankedId;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2061
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    .line 2088
    :cond_9
    const-string v2, "id %d (best img = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2089
    const-string v2, "%sWARNING: id %d couldn\'t determine best image."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v3, v7

    const/4 v7, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2092
    const/4 v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6402(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)Z

    goto :goto_8

    .line 2097
    :cond_a
    const/4 v2, -0x1

    .line 2098
    const/4 v0, -0x1

    .line 2099
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_c

    .line 2100
    aget v3, v5, v1

    if-le v3, v2, :cond_b

    .line 2101
    aget v0, v5, v1

    move v2, v0

    move v0, v1

    .line 2099
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2105
    :cond_c
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 2106
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 2107
    return v0
.end method

.method private rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 2996
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 2997
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 2998
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 1633
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1634
    .local v1, intRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1635
    .local v2, overlap:F
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1636
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 1637
    .local v0, intArea:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v3, v4

    .line 1638
    .local v3, totArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1639
    sub-float/2addr v3, v0

    .line 1640
    div-float v2, v0, v3

    .line 1644
    .end local v0           #intArea:F
    .end local v3           #totArea:F
    :goto_0
    return v2

    .line 1642
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleFaceDetection()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3531
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    .line 3532
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 3533
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    .line 3534
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3535
    return-void
.end method

.method private relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;
    .locals 8
    .parameter "trPrev"
    .parameter "trCur"

    .prologue
    const/4 v6, 0x0

    .line 1966
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1986
    :cond_0
    :goto_0
    return-object v6

    .line 1969
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1972
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1973
    .local v3, fdw:F
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1979
    .local v2, fdh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 1980
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 1984
    .local v1, dy:F
    div-float v4, v0, v3

    .line 1985
    .local v4, relDx:F
    div-float v5, v1, v2

    .line 1986
    .local v5, relDy:F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private reviseMaxNumOfRects()V
    .locals 5

    .prologue
    .line 3561
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 3562
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3563
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 3564
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 3565
    const-string v2, "RectTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reviseMaxNumOfRects size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-le v0, v2, :cond_0

    .line 3567
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 3562
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3570
    :cond_1
    return-void
.end method

.method private setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "image"
    .parameter "id"
    .parameter "leftEye"
    .parameter "rightEye"
    .parameter "mouth"
    .parameter "nose"

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 342
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 343
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 344
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    .line 346
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    aput-object v1, v3, v4

    .line 347
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_2
    aput-object v2, v1, v3

    .line 349
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    .line 346
    goto :goto_0
.end method

.method private updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 7
    .parameter
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1794
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1795
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1796
    .local v3, rectIndex:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 1797
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1798
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1799
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 1800
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1799
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1802
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    .end local v1           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #k:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aput-object v6, v5, p2

    .line 1805
    return-void
.end method

.method private updateMinMatches()V
    .locals 3

    .prologue
    .line 2989
    const v0, 0x7fffffff

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2990
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2991
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2990
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2993
    :cond_0
    return-void
.end method


# virtual methods
.method public analyze()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateStatistics()V

    .line 369
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->estimateDeltas()V

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 371
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v1, :cond_1

    .line 372
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    if-eqz v1, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->connectAllImages()V

    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 376
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 378
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->guessRects(I)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 385
    .end local v0           #i:I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    if-eqz v1, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->alignRectSizes()V

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->reviseMaxNumOfRects()V

    .line 392
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->logTranslations()V

    .line 394
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->isComplete(Ljava/util/HashMap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 395
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$State;->isComplete:Z

    .line 396
    return-void

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 257
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze()V

    .line 245
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze2()V

    .line 249
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->enlargeRectangles(FF)V

    .line 250
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->rankImages()I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 251
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateOptimalImages2()V

    .line 252
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->optimizeSelection()V

    .line 253
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 254
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0
.end method

.method public deltaX(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1026
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaY(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1039
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public getBestStartImage()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getId(II)I
    .locals 1
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    return v0
.end method

.method public getRect(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 813
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 814
    .local v0, r:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 829
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 830
    :cond_0
    const/4 v1, 0x0

    .line 832
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getSafeEnlargedRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 891
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 892
    .local v2, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    aget-object v5, v2, p1

    if-nez v5, :cond_2

    .line 895
    :cond_0
    const/4 v4, 0x0

    .line 916
    :cond_1
    :goto_0
    return-object v4

    .line 897
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 898
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 899
    const/4 v4, 0x0

    .line 900
    .local v4, r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_3

    .line 901
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 903
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 904
    .local v3, lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 907
    if-eqz v4, :cond_5

    .line 908
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 910
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v4       #r:Landroid/graphics/Rect;
    goto :goto_1

    .line 916
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    aget-object v5, v2, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    return v0
.end method

.method public logDump(Z)V
    .locals 13
    .parameter "smileBlink"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1087
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1088
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1089
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1090
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1091
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1089
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1094
    :cond_0
    if-nez p1, :cond_1

    .line 1095
    const-string v4, "[%d, %d] id=%d, rect=%s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 1103
    :cond_1
    const-string v4, "[%d, %d] id=%d, rect=%s, smile=%d, blink=%d, score=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 1087
    .end local v3           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v1           #j:I
    .end local v2           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_3
    const-string v4, "Face detection dims: %dx%d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public numRects()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    return v0
.end method

.method public numRects(I)I
    .locals 4
    .parameter "imageIndex"

    .prologue
    const/4 v0, -0x1

    .line 746
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numRects imageIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1074
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1075
    .local v1, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$502(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    goto :goto_0

    .line 1077
    .end local v1           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 1078
    iput-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 1079
    iput-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    .line 1080
    return-void
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "dims"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 217
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/TrackerUtils;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 218
    return-void
.end method

.method public setRectScaling(FF)V
    .locals 0
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 204
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 205
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 206
    return-void
.end method

.method public setScreenDims(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/rewind/TrackerUtils;->setScreenDims(II)V

    .line 193
    return-void
.end method

.method public setSmileBlink(IIII)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 360
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 361
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V
    invoke-static {v0, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V

    .line 362
    return-void
.end method

.method public trackImage(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v1, p1}, Lcom/scalado/app/rewind/TrackerUtils;->getFaceTrackingImage(I)Lcom/scalado/base/Image;

    move-result-object v0

    .line 222
    .local v0, image:Lcom/scalado/base/Image;
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    .line 225
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/scalado/app/rewind/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 226
    return-void
.end method
