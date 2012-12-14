.class public Lcom/scalado/app/rewind/ManualRewindViewer;
.super Lcom/scalado/app/rewind/RewindViewer;
.source "ManualRewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/ManualRewindViewer$1;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;,
        Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;
    }
.end annotation


# instance fields
.field private ZOOM_TIME:J

.field private mActive:Z

.field private mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

.field private mBackgroundIndex:I

.field private mBgLayer:Lcom/scalado/app/ui/Background;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBlockedUntilUpdated:Z

.field private mBlurInLTW:Z

.field private mBmps:Lcom/scalado/app/rewind/BitmapManager;

.field private mCommits:I

.field private mContext:Landroid/content/Context;

.field private mContinuousUpdates:Z

.field private mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

.field private mCurPaint:Landroid/graphics/Paint;

.field private mCurReplaceArea:Landroid/graphics/Rect;

.field private mCurZoomRect:Landroid/graphics/Rect;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDrawFaceRects:Z

.field private mDstRect:Landroid/graphics/Rect;

.field private mEntriesReady:I

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceRectScale:F

.field private mFaceRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/SelectionRect;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mFixedMagniferSize:Z

.field private mHalfSize:Lcom/scalado/base/Size;

.field private mIsAnimationStarted:Z

.field private mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

.field private mJobIndicatorOnFaceDet:Z

.field private mMagBitmap:Landroid/graphics/Bitmap;

.field private mMagnifierMaxSize:Lcom/scalado/base/Size;

.field private mMagnifierMinSize:Lcom/scalado/base/Size;

.field private mMaxZoomSize:Lcom/scalado/base/Size;

.field private mMinLensSize:Lcom/scalado/base/Size;

.field private mMinReplSize:Lcom/scalado/base/Size;

.field private mMinScreenHeight:I

.field private mMinScreenWidth:I

.field private mMinZoomSize:Lcom/scalado/base/Size;

.field private mMsg:Ljava/lang/String;

.field private mNumImages:I

.field private mOverlayColor:Z

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mPostview:Lcom/scalado/base/Image;

.field private mPostviewBytes:[B

.field private mPostviewConfig:Lcom/scalado/base/Image$Config;

.field private mPostviewSize:Lcom/scalado/base/Size;

.field private mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mRectTrackerListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mStartIndex:I

.field private mState:I

.field private mSurfaceChanged:Z

.field private mT0:J

.field private mThumbsReady:I

.field private mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

.field private mTxtPaint:Landroid/graphics/Paint;

.field private mUiMgrListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

.field private mUpdatePreview:Z

.field private mWheel:Lcom/scalado/app/ui/Wheel;

.field private mWheelCallback:Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

.field private mWheelGroup:Lcom/scalado/app/ui/Group;

.field private mZoomedInBgAlpha:I

.field private mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

.field private pfd:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/content/Context;)V
    .locals 9
    .parameter "surfaceView"
    .parameter "context"

    .prologue
    const/high16 v8, -0x4000

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindViewer;-><init>(Landroid/view/SurfaceView;)V

    .line 75
    new-instance v0, Lcom/scalado/app/rewind/BitmapManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/BitmapManager;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    .line 82
    const/16 v0, 0x14

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I

    .line 85
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgrListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

    .line 86
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    .line 87
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelCallback:Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

    .line 91
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    .line 96
    new-instance v0, Lcom/scalado/base/Size;

    const/16 v1, 0x1e0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    .line 101
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDrawFaceRects:Z

    .line 102
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRectScale:F

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTrackerListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

    .line 114
    iput v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I

    .line 115
    iput v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBackgroundIndex:I

    .line 116
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    .line 122
    iput v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    .line 124
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    .line 125
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mContinuousUpdates:Z

    .line 127
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    .line 128
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    .line 129
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    .line 130
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    .line 131
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    .line 132
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    .line 133
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFixedMagniferSize:Z

    .line 135
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->ZOOM_TIME:J

    .line 137
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mActive:Z

    .line 139
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlurInLTW:Z

    .line 141
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayColor:Z

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    .line 143
    const/16 v0, 0xa0

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomedInBgAlpha:I

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    .line 150
    iput v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 152
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    .line 164
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 175
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0xe6

    const/16 v3, 0xdc

    const/16 v4, 0xd2

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgrListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->setListener(Lcom/scalado/app/ui/UiManager$UiManagerListener;)V

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 186
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 191
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 194
    iput-object p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mContext:Landroid/content/Context;

    .line 196
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ScreenAnimation;)Lcom/scalado/app/rewind/ScreenAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Background;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/PaintFlagsDrawFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->endShowWheel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->endHideWheel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Wheel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Group;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/scalado/app/rewind/ManualRewindViewer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->startHideWheel(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/scalado/app/rewind/ManualRewindViewer;IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mContinuousUpdates:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestMagnifiedUpdate()V

    return-void
.end method

.method static synthetic access$2300(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/scalado/app/rewind/ManualRewindViewer;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->needUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I

    return v0
.end method

.method static synthetic access$2700(Lcom/scalado/app/rewind/ManualRewindViewer;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/ui/SelectionRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->startShowWheel(Lcom/scalado/app/ui/SelectionRect;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->asyncFaceDetectionComplete()V

    return-void
.end method

.method static synthetic access$3002(Lcom/scalado/app/rewind/ManualRewindViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/scalado/app/rewind/ManualRewindViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I

    return v0
.end method

.method static synthetic access$3300(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/scalado/app/rewind/ManualRewindViewer;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    return v0
.end method

.method static synthetic access$3508(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    return v0
.end method

.method static synthetic access$3600(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->startAsyncDetectFaces()V

    return-void
.end method

.method static synthetic access$3700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/AsyncTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    return v0
.end method

.method static synthetic access$3900(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/scalado/app/rewind/ManualRewindViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->ZOOM_TIME:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/scalado/app/rewind/ManualRewindViewer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->drawSrcMgrBg(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/ManualRewindViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    return-object v0
.end method

.method private adjustZoomRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 965
    const/high16 v0, 0x4060

    invoke-static {p1, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 966
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 967
    invoke-static {p1, v0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 968
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    invoke-static {p1, v0, v1}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 969
    return-void
.end method

.method private asyncFaceDetectionComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/scalado/app/ui/JobIndicator;->onJobEnded(I)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RectTracker;->getBestStartImage()I

    move-result v3

    .line 660
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RectTracker;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDrawFaceRects:Z

    .line 662
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v4

    filled-new-array {v0, v4}, [I

    move-result-object v0

    const-class v4, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    .line 664
    if-gez v3, :cond_9

    move v0, v2

    :goto_1
    move v3, v2

    .line 669
    :goto_2
    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    if-ge v3, v4, :cond_4

    .line 670
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5, v3}, Lcom/scalado/app/rewind/RectTracker;->numRects(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 671
    const-string v4, "ManualRewindViewer"

    const-string v5, "WARNING! rects in %d not maximal!"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v2

    .line 674
    :goto_3
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 675
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v3

    new-instance v6, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    invoke-direct {v6, p0, v8}, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    aput-object v6, v5, v4

    .line 676
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v6, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->getId(II)I

    move-result v6

    iput v6, v5, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    .line 677
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v6, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->getRect(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 674
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    .line 660
    goto :goto_0

    .line 669
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 681
    :cond_4
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->prepareFaceWidgets()V

    .line 682
    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I

    .line 683
    if-ltz v0, :cond_5

    .line 684
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, v0}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 685
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, v0}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 686
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    .line 688
    :cond_5
    iput v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 689
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AsyncTracker;->finish()V

    .line 690
    iput-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 692
    const-string v3, "ManualRewindViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bench: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mT0:J

    sub-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v1, :cond_6

    .line 694
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v1, v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onFaceDetecionComplete(I)V

    .line 696
    :cond_6
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v1, :cond_7

    .line 697
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 699
    :cond_7
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v1, :cond_8

    .line 700
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 702
    :cond_8
    invoke-virtual {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->selectBackground(I)V

    .line 703
    return-void

    :cond_9
    move v0, v3

    goto/16 :goto_1
.end method

.method private calculateMagnifierSize(Landroid/graphics/Rect;FLcom/scalado/base/Size;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getCoordTransform()Lcom/scalado/app/rewind/CoordTransform;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->curSourceDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 1055
    invoke-virtual {v0}, Lcom/scalado/app/rewind/CoordTransform;->canvasDims()Lcom/scalado/base/Size;

    move-result-object v2

    .line 1056
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1057
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1058
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1060
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 1061
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3}, Lcom/scalado/base/Rect;-><init>()V

    .line 1062
    invoke-static {p1, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1063
    invoke-virtual {v0, v2, v3}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1064
    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1066
    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1069
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1071
    :cond_0
    const-string v2, "ManualRewindViewer"

    const-string v3, "WARNING: zoom lvl!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_1
    invoke-virtual {p3, v0}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1074
    invoke-virtual {p3, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1075
    return-void
.end method

.method private drawSrcMgrBg(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1147
    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 1150
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    .line 1153
    :cond_0
    if-nez v1, :cond_2

    .line 1155
    const-string v0, "ManualRewindViewer"

    const-string v2, "canvas is null in drawSrcMgrBg"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    if-eqz v1, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1176
    :cond_1
    :goto_0
    return-void

    .line 1159
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1160
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getSourceManager()Lcom/scalado/app/rewind/SourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 1162
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->lockDisplayed()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1163
    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1164
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1165
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/BitmapManager;->unlockDisplayed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1171
    if-eqz v1, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    const-string v2, "ManualRewindViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in drawSrcMgrBg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1171
    if-eqz v1, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1171
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1172
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v0
.end method

.method private endHideWheel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 1106
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setZoom(F)V

    .line 1107
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->resetScreen()V

    .line 1108
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_2

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCancelButtonState:Z

    .line 1116
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/SelectionRect;

    .line 1120
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/SelectionRect;->setRectVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    const-string v0, "ManualRewindViewer"

    const-string v1, "endHideWheel null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_3
    iput-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 1127
    return-void
.end method

.method private endShowWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 908
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayColor:Z

    if-eqz v3, :cond_3

    .line 909
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    .line 913
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getMagnifiedPreview()Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/Wheel;->setImage(Lcom/scalado/base/Image;)V

    .line 914
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    invoke-virtual {v3, v2}, Lcom/scalado/app/ui/Group;->showOnTop(Z)V

    .line 915
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->resetScreen()V

    .line 916
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RewindSession;->setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 917
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->setBgFx(Z)V

    .line 918
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestRender()V

    .line 919
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v1

    .line 921
    .local v0, getMagnified:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestMagnifiedUpdate()V

    .line 924
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v3, :cond_1

    .line 925
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v3}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 927
    :cond_1
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v3, :cond_2

    .line 928
    iput-boolean v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCancelButtonState:Z

    .line 929
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 931
    :cond_2
    iput-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 932
    return-void

    .line 911
    .end local v0           #getMagnified:Z
    :cond_3
    iput-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 919
    goto :goto_1
.end method

.method private hideBgSelector()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 825
    :cond_0
    return-void
.end method

.method private needUpdate(I)Z
    .locals 1
    .parameter "fgIndex"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisplay()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method private prepareFaceWidgets()V
    .locals 5

    .prologue
    .line 706
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/SelectionRect;

    .line 707
    .local v2, r:Lcom/scalado/app/ui/SelectionRect;
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, v2}, Lcom/scalado/app/ui/UiManager;->removeWidget(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 709
    .end local v2           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 710
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 711
    new-instance v3, Lcom/scalado/app/ui/SelectionRect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v3, v4}, Lcom/scalado/app/ui/SelectionRect;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 712
    .local v3, selRect:Lcom/scalado/app/ui/SelectionRect;
    invoke-virtual {v3}, Lcom/scalado/app/ui/SelectionRect;->hide()V

    .line 713
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/SelectionRect;->setStatic(Z)V

    .line 714
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/SelectionRect;->setListener(Lcom/scalado/app/ui/SelectionRect$RectListener;)V

    .line 716
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, v3}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    .line 717
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    .end local v0           #i:I
    .end local v3           #selRect:Lcom/scalado/app/ui/SelectionRect;
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/SelectionRect;

    .line 721
    .restart local v2       #r:Lcom/scalado/app/ui/SelectionRect;
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, v2}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    goto :goto_2

    .line 723
    .end local v2           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_2
    return-void
.end method

.method private privateClear()V
    .locals 13

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 360
    .local v1, canvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 361
    if-nez v1, :cond_1

    .line 362
    const-string v7, "ManualRewindViewer"

    const-string v8, "Failed to lock canvas."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    if-eqz v1, :cond_0

    .line 398
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    if-eqz v1, :cond_4

    .line 366
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 367
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 368
    iget v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v5, v7, 0x2

    .line 369
    .local v5, x:I
    iget v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v6, v7, 0x2

    .line 370
    .local v6, y:I
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 371
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    .line 373
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    if-eqz v7, :cond_3

    .line 374
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewSize:Lcom/scalado/base/Size;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewConfig:Lcom/scalado/base/Image$Config;

    new-instance v10, Lcom/scalado/base/Size;

    iget v11, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v12, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v10, v11, v12}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v11, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/scalado/app/rewind/ImageUtils;->convert([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image;

    move-result-object v4

    .line 378
    .local v4, image:Lcom/scalado/base/Image;
    iput-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 379
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    .line 381
    .end local v4           #image:Lcom/scalado/base/Image;
    :cond_3
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    if-eqz v7, :cond_4

    .line 382
    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/scalado/base/Size;

    iget v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v8, v9, v10}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 386
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 387
    .local v2, dst:Landroid/graphics/Rect;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v7, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 388
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 397
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #dst:Landroid/graphics/Rect;
    :cond_4
    if-eqz v1, :cond_0

    .line 398
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v3

    .line 394
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    const-string v7, "ManualRewindViewer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception in privateClear "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    if-eqz v1, :cond_0

    .line 398
    iget-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 397
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_5

    .line 398
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v7
.end method

.method private privateCommit()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 810
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->hideBgSelector()V

    .line 811
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->needUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->commit()V

    .line 814
    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    .line 815
    return-void
.end method

.method private replaceAreaZoomRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 937
    .line 938
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 939
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 940
    const-string v2, "ManualRewindViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "* replaceArea"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 944
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3}, Lcom/scalado/base/Rect;-><init>()V

    .line 945
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 946
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4, v0, v0}, Lcom/scalado/app/rewind/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 947
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 948
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 949
    if-eqz p4, :cond_0

    .line 950
    invoke-virtual {p4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 953
    :cond_0
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->adjustZoomRect(Landroid/graphics/Rect;)V

    .line 954
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 956
    const-string v0, "ManualRewindViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* replaceArea 4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    if-eqz p3, :cond_1

    .line 958
    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 960
    :cond_1
    return-void
.end method

.method private requestMagnifiedUpdate()V
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->getMagnifierSize()Lcom/scalado/base/Size;

    move-result-object v0

    .line 801
    .local v0, magDims:Lcom/scalado/base/Size;
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    .line 803
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->zoomToReplacement()V

    .line 804
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession;->setBlur(Z)V

    .line 805
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession;->updateMagnified(Landroid/graphics/Bitmap;)V

    .line 806
    return-void
.end method

.method private setBgFx(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlurInLTW:Z

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setBlur(Z)V

    .line 1134
    :cond_0
    return-void
.end method

.method private setFaceRects(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 727
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 728
    new-instance v2, Lcom/scalado/app/ui/SelectionRect;

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v2, v3}, Lcom/scalado/app/ui/SelectionRect;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 729
    invoke-virtual {v2}, Lcom/scalado/app/ui/SelectionRect;->hide()V

    .line 730
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/SelectionRect;->setStatic(Z)V

    .line 731
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/SelectionRect;->setListener(Lcom/scalado/app/ui/SelectionRect$RectListener;)V

    .line 733
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v3, v2}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    .line 734
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/SelectionRect;

    .line 739
    invoke-virtual {v0}, Lcom/scalado/app/ui/SelectionRect;->show()V

    goto :goto_1

    .line 746
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RectTracker;->numRects(I)I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/SelectionRect;

    .line 750
    iget v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/scalado/app/ui/SelectionRect;->updateLayout(II)V

    .line 751
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2, v0}, Lcom/scalado/app/ui/UiManager;->drawFirst(Lcom/scalado/app/ui/Widget;)V

    .line 752
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    .line 753
    iget-object v3, v2, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/scalado/app/ui/SelectionRect;->setRect(Landroid/graphics/Rect;)V

    .line 754
    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/SelectionRect;->setObject(Ljava/lang/Object;)V

    .line 755
    iget-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDrawFaceRects:Z

    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/SelectionRect;->setDraw(Z)V

    .line 756
    if-eqz p2, :cond_2

    .line 758
    invoke-virtual {v0}, Lcom/scalado/app/ui/SelectionRect;->zoomIn()V

    .line 760
    :cond_2
    invoke-virtual {v0}, Lcom/scalado/app/ui/SelectionRect;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 763
    :catch_0
    move-exception v0

    .line 764
    const-string v2, "ManualRewindViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when setting face rects for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 768
    :cond_3
    return-void
.end method

.method private setupZoomRect(IILandroid/graphics/Rect;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 972
    const/4 v0, 0x0

    .line 973
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 974
    if-ne p1, p2, :cond_4

    .line 975
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v3, v3, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 977
    const-string v3, "jimmy"

    const-string v4, "setupZoomRect %d == %d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 987
    const-string v0, "jimmy"

    const-string v3, "setupZoomRect replaceArea == null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v3, v3, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 992
    :cond_1
    const-string v3, "jimmy"

    const-string v4, "setupZoomRect 1 (L %d, R %d)( T %d, B %d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    if-eq p1, p2, :cond_2

    .line 999
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v4, v4, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v3, p1, v4}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 1000
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v5, v5, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v4, p2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 1001
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1002
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1003
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1004
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v1, v5}, Lcom/scalado/app/rewind/RectTracker;->deltaX(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1005
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->deltaY(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1006
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1007
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1008
    const/16 v3, 0x32

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1011
    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v3, v3, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v4, v4, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRectScale:F

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1013
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4, v1}, Lcom/scalado/app/rewind/RewindSession;->setMaxTranslation(I)V

    .line 1014
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1, v3}, Lcom/scalado/app/rewind/RewindSession;->setFeathering(I)V

    .line 1017
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1018
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3}, Lcom/scalado/base/Rect;-><init>()V

    .line 1019
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1020
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4, v2, v2}, Lcom/scalado/app/rewind/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1021
    invoke-static {v2, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1022
    invoke-static {v2, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1025
    const/high16 v0, 0x4060

    invoke-static {v1, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 1026
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1027
    invoke-static {v1, v0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 1029
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v0

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    invoke-static {v1, v0, v2}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 1030
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1031
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, v3}, Lcom/scalado/app/rewind/RewindSession;->setMagnifiedPreviewRect(Lcom/scalado/base/Rect;)V

    .line 1033
    if-eqz p3, :cond_3

    .line 1034
    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1036
    :cond_3
    return-void

    .line 979
    :cond_4
    if-eq p1, p2, :cond_0

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v3, v3, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    if-ltz v3, :cond_0

    .line 981
    const-string v0, "jimmy"

    const-string v3, "setupZoomRect %d != %d)"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v3, v3, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v0, p2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private startAsyncDetectFaces()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 631
    iput v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 634
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/SelectionRect;

    .line 635
    .local v1, r:Lcom/scalado/app/ui/SelectionRect;
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v3, v1}, Lcom/scalado/app/ui/UiManager;->removeWidget(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 638
    .end local v1           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getSourceManager()Lcom/scalado/app/rewind/SourceManager;

    move-result-object v2

    .line 640
    .local v2, srcMgr:Lcom/scalado/app/rewind/SourceManager;
    new-instance v3, Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    invoke-direct {v3, v2, v4}, Lcom/scalado/app/rewind/RectTracker;-><init>(Lcom/scalado/app/rewind/SourceManager;I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 641
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setScreenDims(II)V

    .line 642
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/high16 v4, 0x4000

    const/high16 v5, 0x4020

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setRectScaling(FF)V

    .line 643
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 644
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/AsyncTracker;->setTracker(Lcom/scalado/app/rewind/RectTracker;)V

    .line 645
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTrackerListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/AsyncTracker;->setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V

    .line 647
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/scalado/app/rewind/RewindSession;->setJobListener(Lcom/scalado/app/rewind/JobListener;I)V

    .line 648
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    if-eqz v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/JobIndicator;->onJobStarted(I)V

    .line 651
    :cond_1
    return-void
.end method

.method private startHideWheel(Z)V
    .locals 3
    .parameter "commit"

    .prologue
    const/4 v2, 0x0

    .line 1078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 1079
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Group;->hide()V

    .line 1080
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->setBgFx(Z)V

    .line 1081
    if-nez p1, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, v2, v2}, Lcom/scalado/app/rewind/RewindSession;->setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1092
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/RewindSession;->lockScreen(ILcom/scalado/base/Size;)V

    .line 1093
    iput-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    .line 1095
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 1101
    :cond_2
    return-void

    .line 1084
    :cond_3
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v1

    iput v1, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    .line 1085
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateCommit()V

    .line 1086
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    if-nez v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    goto :goto_0
.end method

.method private startShowWheel(Lcom/scalado/app/ui/SelectionRect;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 834
    iput-boolean v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 835
    invoke-virtual {p1}, Lcom/scalado/app/ui/SelectionRect;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 836
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 837
    invoke-virtual {p1}, Lcom/scalado/app/ui/SelectionRect;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    .line 838
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    if-gez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v2

    iput v2, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    invoke-virtual {v0, v2}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 842
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/Wheel;->select(I)V

    .line 843
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/Wheel;->markPosition(I)V

    .line 845
    const-string v0, "ManualRewindViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v3, v3, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    const-string v0, "ManualRewindViewer"

    const-string v2, "!= != != Rects not equal!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/SelectionRect;

    .line 850
    invoke-virtual {v0}, Lcom/scalado/app/ui/SelectionRect;->hide()V

    .line 851
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/scalado/app/ui/SelectionRect;->setRectVisibility(Z)V

    goto :goto_0

    .line 854
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 857
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 858
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 859
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v6, v6, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v4, v5, v6}, Lcom/scalado/app/rewind/RectTracker;->getSafeEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 862
    invoke-static {v3, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 863
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3, v0, v0}, Lcom/scalado/app/rewind/RewindSession;->setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 864
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 867
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 868
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v4

    invoke-direct {p0, v3, v4, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V

    .line 870
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 871
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 872
    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    .line 873
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFixedMagniferSize:Z

    if-nez v0, :cond_6

    .line 874
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 875
    const/high16 v3, 0x3fc0

    invoke-direct {p0, v1, v3, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->calculateMagnifierSize(Landroid/graphics/Rect;FLcom/scalado/base/Size;)V

    .line 879
    :goto_1
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession;->setMagnifierSize(Lcom/scalado/base/Size;)V

    .line 883
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 884
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFixedMagniferSize:Z

    if-eqz v0, :cond_3

    .line 885
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v2, v0, v1}, Lcom/scalado/app/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/Wheel;->setPosition(Landroid/graphics/Rect;)V

    .line 888
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Wheel;->setSize(I)V

    .line 889
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Wheel;->setPivot(I)V

    .line 890
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v0, v2}, Lcom/scalado/app/ui/Wheel;->getRect(Landroid/graphics/Rect;)V

    .line 893
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->hideBgSelector()V

    .line 894
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_4

    .line 895
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 897
    :cond_4
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_5

    .line 898
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 901
    :cond_5
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    .line 904
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, v7, v1}, Lcom/scalado/app/rewind/RewindSession;->lockScreen(ILcom/scalado/base/Size;)V

    .line 905
    return-void

    .line 877
    :cond_6
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    goto :goto_1
.end method

.method private zoomToReplacement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1138
    .local v0, zoomRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 1139
    .local v1, zoomRectC:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v3

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->replaceAreaZoomRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1141
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1142
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, v1, v4}, Lcom/scalado/app/rewind/RewindSession;->setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1143
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    .line 286
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateClear()V

    .line 289
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->startHideWheel(Z)V

    .line 272
    return-void
.end method

.method public display()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mActive:Z

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    .line 410
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->onDisplay()V

    .line 415
    :cond_0
    return-void
.end method

.method public getCancelState()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCancelButtonState:Z

    return v0
.end method

.method public manualBackPressed()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/ui/UiManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    iget v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 559
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/UiManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 563
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 566
    :cond_1
    iget v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    if-ne v2, v1, :cond_0

    .line 569
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 570
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateCommit()V

    move v0, v1

    .line 571
    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/UiManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSurfaceChanged(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x3fe0

    const-wide v7, 0x3fd3333333333333L

    .line 577
    const-string v3, "ManualRewindViewer"

    const-string v4, "onSurfaceChanged E"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iput-boolean v11, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 579
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 580
    iput p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    .line 581
    iput p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    .line 582
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scalado/app/rewind/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 584
    new-instance v3, Lcom/scalado/base/Size;

    invoke-direct {v3, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mScreenDims:Lcom/scalado/base/Size;

    .line 585
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v3, p1, p2}, Lcom/scalado/app/ui/UiManager;->setSize(II)V

    .line 586
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I

    .line 587
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I

    .line 588
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 589
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 591
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 592
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 593
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 594
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 596
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 597
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 599
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 600
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 601
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 602
    .local v2, wh:I
    mul-int/lit8 v3, v2, 0x18

    div-int/lit8 v2, v3, 0x19

    .line 604
    int-to-float v3, v2

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v4, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->relRimW:F

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v5}, Lcom/scalado/app/ui/Wheel;->getIndicatorExtraY()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 606
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v3, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 607
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v3, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 609
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4420

    div-float/2addr v3, v4

    const/high16 v4, 0x428c

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 610
    .local v1, size:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11, v11, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 611
    .local v0, jobRect:Landroid/graphics/Rect;
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v0, v3, v4}, Lcom/scalado/app/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 612
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    invoke-virtual {v3, v0}, Lcom/scalado/app/ui/JobIndicator;->setPos(Landroid/graphics/Rect;)V

    .line 614
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 615
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-nez v3, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->onDisplay()V

    .line 617
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    .line 618
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateClear()V

    .line 622
    :cond_0
    const-string v3, "ManualRewindViewer"

    const-string v4, "onSurfaceChanged X"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBackgroundIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestRender()V

    .line 628
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 502
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    if-eqz v2, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    iget v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    if-nez v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

    if-nez v2, :cond_0

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 532
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2, p1}, Lcom/scalado/app/ui/UiManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 533
    goto :goto_0

    .line 520
    :pswitch_1
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v2, v1}, Lcom/scalado/app/ui/Wheel;->setIsPressed(Z)V

    goto :goto_1

    .line 526
    :pswitch_2
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v2, v0}, Lcom/scalado/app/ui/Wheel;->setIsPressed(Z)V

    goto :goto_1

    .line 535
    :cond_2
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v2, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    goto :goto_0

    .line 546
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/BitmapManager;->clear()V

    .line 457
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->reset()V

    .line 458
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    .line 317
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    if-nez v0, :cond_1

    .line 793
    const-string v0, "ManualRewindViewer"

    const-string v1, "(Render) Out of bitmaps!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession;->render(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    if-nez v0, :cond_0

    .line 779
    const-string v0, "ManualRewindViewer"

    const-string v1, "(Update) Out of bitmaps!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession;->update(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 423
    iput v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 424
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->finish()V

    .line 427
    :cond_0
    iput-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    .line 428
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 429
    iput v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    .line 430
    iput v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mThumbsReady:I

    .line 431
    iput-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mActive:Z

    .line 432
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->hideBgSelector()V

    .line 433
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    invoke-virtual {v0}, Lcom/scalado/app/ui/JobIndicator;->hide()V

    .line 435
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AsyncTracker;->setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V

    .line 437
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AsyncTracker;->finish()V

    .line 438
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, v3}, Lcom/scalado/app/ui/UiManager;->stop(Z)V

    .line 443
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onExit()V

    .line 446
    :cond_2
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 447
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    .line 448
    return-void
.end method

.method public save(Ljava/lang/String;III)V
    .locals 1
    .parameter "path"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindSession;->outputTo(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public selectBackground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 256
    iput p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBackgroundIndex:I

    .line 257
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, p1}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 258
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 260
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getPreviewBackground()Lcom/scalado/base/Image;

    move-result-object v1

    .line 262
    .local v1, img:Lcom/scalado/base/Image;
    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 263
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2, v0}, Lcom/scalado/app/rewind/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 264
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 265
    return-void
.end method

.method public setConfig(Lcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 8
    .parameter "config"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 201
    new-instance v0, Lcom/scalado/app/ui/Wheel;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/ui/Wheel;-><init>(Lcom/scalado/app/ui/UiManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    .line 203
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->relCenter:Landroid/graphics/PointF;

    iget v4, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->relR:F

    iget v5, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->relRimW:F

    iget v6, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorY:F

    iget v7, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorExtraY:F

    invoke-virtual/range {v0 .. v7}, Lcom/scalado/app/ui/Wheel;->setLayoutParams(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFFF)V

    .line 206
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelCallback:Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Wheel;->setCallback(Lcom/scalado/app/ui/Wheel$WheelCallback;)V

    .line 208
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmapNormals:[I

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Wheel;->setIndicatorBitmapNormals([I)V

    .line 209
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmapPresseds:[I

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Wheel;->setIndicatorBitmapPresseds([I)V

    .line 211
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    .line 212
    new-instance v0, Lcom/scalado/app/ui/Group;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/scalado/app/ui/Group;-><init>(Lcom/scalado/app/ui/UiManager;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    .line 213
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Group;->addChild(Lcom/scalado/app/ui/Widget;)V

    .line 215
    new-instance v0, Lcom/scalado/app/ui/JobIndicator;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v2, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->jobbingBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/ui/JobIndicator;-><init>(Lcom/scalado/app/ui/UiManager;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    .line 216
    new-instance v0, Lcom/scalado/app/ui/Background;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/scalado/app/ui/Background;-><init>(Lcom/scalado/app/ui/UiManager;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;

    .line 217
    return-void
.end method

.method public setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V
    .locals 4
    .parameter "rewind"
    .parameter "numImages"

    .prologue
    const/4 v3, 0x0

    .line 230
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 231
    iput p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    .line 232
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    new-instance v1, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setCallback(Lcom/scalado/app/rewind/RewindSession$RewindCallback;)V

    .line 237
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    sget-object v1, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V

    .line 239
    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    .line 240
    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mThumbsReady:I

    .line 245
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker;

    iget v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AsyncTracker;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    .line 246
    return-void
.end method

.method public showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 1
    .parameter "buffer"
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    .line 293
    iput-object p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewSize:Lcom/scalado/base/Size;

    .line 294
    iput-object p3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewConfig:Lcom/scalado/base/Image$Config;

    .line 295
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateClear()V

    .line 298
    :cond_0
    return-void
.end method

.method public startBenchmark()V
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mT0:J

    .line 465
    return-void
.end method
