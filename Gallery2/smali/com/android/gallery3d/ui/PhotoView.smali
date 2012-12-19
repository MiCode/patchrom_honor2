.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mImageCenter:Landroid/graphics/Point;

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const v8, 0x7fffffff

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 161
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 164
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 176
    new-instance v2, Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, -0x3

    invoke-direct {v2, v3, v7}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 178
    const/4 v2, 0x7

    new-array v2, v2, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 195
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageCenter:Landroid/graphics/Point;

    .line 197
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 198
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 199
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 201
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 202
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 222
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 229
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 231
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    .line 234
    new-instance v2, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 236
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 237
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/gallery3d/ui/EdgeView;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    .line 238
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 239
    new-instance v2, Lcom/android/gallery3d/ui/UndoBarView;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    .line 240
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 241
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 249
    const v2, 0x7f0e003a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

    .line 252
    const v2, 0x7f0e003c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 256
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 258
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 259
    new-instance v2, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 261
    new-instance v2, Lcom/android/gallery3d/ui/PositionController;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 282
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f0200f1

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 283
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v7, :cond_1

    .line 284
    if-nez v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 283
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 290
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->canUndoLastPicture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$2500(III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3702(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$372(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$376(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 1656
    sub-int v0, p1, p0

    .line 1663
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 1664
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 1665
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 1666
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1686
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 1668
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 1678
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 1679
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1682
    :cond_2
    if-ge p1, p2, :cond_3

    .line 1683
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1686
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private canUndoLastPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1361
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 1630
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1631
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1634
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 1636
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 1637
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1418
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1345
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1346
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1348
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1349
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1350
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1351
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    .line 1352
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_4
    move v2, v5

    .line 1347
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_5
    move v3, v5

    .line 1348
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_6
    move v1, v5

    .line 1349
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_7
    move v0, v5

    .line 1350
    goto :goto_4
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 915
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 916
    return-void
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 902
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 903
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 907
    div-int/lit8 v4, p2, 0x6

    .line 909
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 910
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 1556
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 544
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 1734
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 1735
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 1736
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 1735
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    return v0
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 919
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 1692
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 1699
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1701
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 1703
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1331
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1333
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1334
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1728
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1266
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1268
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1269
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1270
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-nez p1, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1275
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1269
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1270
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1272
    goto :goto_3
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 461
    .local v0, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 463
    return-void

    .line 461
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 4
    .parameter "deleteLast"

    .prologue
    const/4 v3, 0x7

    .line 1321
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1322
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1323
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1326
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1545
    :goto_0
    return v0

    .line 1543
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1544
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1545
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 1549
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1552
    :goto_0
    return v0

    .line 1550
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 1551
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1552
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1525
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v3

    .line 1527
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1528
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 1529
    .local v2, viewW:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v2}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v4

    add-int/lit16 v1, v4, 0x100

    .line 1532
    .local v1, threshold:I
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    if-le v4, v1, :cond_2

    .line 1533
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1534
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-le v4, v1, :cond_0

    .line 1535
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1492
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1514
    :cond_0
    :goto_0
    return v3

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1497
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1498
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1499
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1500
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 1506
    :cond_2
    const/high16 v4, -0x3c6a

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 1508
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1509
    :cond_4
    const/high16 v4, 0x4396

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1511
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1428
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1430
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1433
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1428
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1441
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1442
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1444
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1445
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1446
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1447
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1448
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 1460
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1451
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1452
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1453
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1454
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1455
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1456
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 1460
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1573
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1466
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    .line 1467
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1468
    .local v0, r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_1

    .line 1469
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    .line 1481
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1476
    .restart local v0       #r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1565
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1569
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1598
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1626
    :goto_0
    return v1

    .line 1599
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1600
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1602
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1603
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1604
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 1623
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1624
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1625
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1605
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v4, :cond_7

    .line 1606
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1607
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1612
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 1613
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1614
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 1618
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1619
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1621
    goto :goto_0
.end method

.method private switchWithOutCaptureAnimationLocked(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1790
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1813
    :goto_0
    return v1

    .line 1791
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1792
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1794
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1795
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1796
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    .line 1810
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1811
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1812
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1797
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    .line 1798
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1799
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1804
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1805
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1808
    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 507
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 508
    .local v1, h:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 509
    move v5, v6

    .line 510
    .local v5, tmp:I
    move v6, v1

    .line 511
    move v1, v5

    .line 513
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 514
    .local v2, l:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 515
    .local v4, t:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 516
    .local v3, r:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 519
    .local v0, b:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 526
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void

    .line 520
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 521
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 522
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 523
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 519
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public buildFallbackEffect(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 13
    .parameter "root"
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1752
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1753
    .local v10, location:Landroid/graphics/Rect;
    invoke-virtual {p1, p0, v10}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1755
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1756
    .local v7, fullRect:Landroid/graphics/Rect;
    new-instance v6, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v6}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    .line 1757
    .local v6, effect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    const/4 v8, -0x3

    .local v8, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v8, v1, :cond_2

    .line 1758
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    .line 1759
    .local v9, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v9, :cond_1

    .line 1757
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1760
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    .line 1761
    .local v0, sc:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isShowingPlaceholder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1765
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1766
    .local v11, rect:Landroid/graphics/Rect;
    invoke-static {v7, v11}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1767
    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1769
    new-instance v12, Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v12, v1, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 1770
    .local v12, texture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-interface {p2, v12}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 1771
    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v5

    move-object v1, p2

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1772
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 1773
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v6, v1, v11, v12}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V

    goto :goto_1

    .line 1775
    .end local v0           #sc:Lcom/android/gallery3d/ui/ScreenNail;
    .end local v9           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v11           #rect:Landroid/graphics/Rect;
    .end local v12           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_2
    return-object v6
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public gifParse(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .parameter "path"
    .parameter "isLocal"
    .parameter "context"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;-><init>(Lcom/android/gallery3d/ui/TileImageView;Ljava/lang/String;ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->start()V

    .line 298
    :cond_0
    return-void
.end method

.method public gifStopParse()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->setGifParseStop()V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->interrupt()V

    .line 306
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifParseThread:Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;

    .line 308
    :cond_1
    return-void
.end method

.method public notifyDataChange([III)V
    .locals 12
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 392
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 393
    iput p3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 396
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 397
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 398
    .local v8, k:I
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 399
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x7

    if-ge v6, v0, :cond_0

    .line 400
    aget v0, p1, v6

    if-ne v0, v8, :cond_2

    .line 401
    add-int/lit8 v0, v6, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 408
    .end local v6           #i:I
    .end local v8           #k:I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 409
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 415
    :cond_1
    const/4 v6, -0x3

    .restart local v6       #i:I
    :goto_1
    const/4 v0, 0x3

    if-gt v6, v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 417
    .local v10, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v1, v6, 0x3

    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    .line 415
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 399
    .end local v10           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v8       #k:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 421
    .end local v8           #k:I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v11

    .line 424
    .local v11, wasDeleting:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 427
    const/4 v6, -0x3

    :goto_4
    const/4 v0, 0x3

    if-gt v6, v0, :cond_6

    .line 428
    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 424
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 431
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v7

    .line 435
    .local v7, isDeleting:Z
    if-eqz v11, :cond_7

    if-nez v7, :cond_7

    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 438
    .local v9, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    .end local v9           #m:Landroid/os/Message;
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 443
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 456
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 457
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 468
    sub-int v6, p4, p2

    .line 469
    .local v6, w:I
    sub-int v2, p5, p3

    .line 470
    .local v2, h:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 471
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/EdgeView;->layout(IIII)V

    .line 472
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/android/gallery3d/ui/UndoBarView;->measure(II)V

    .line 473
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/UndoBarView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/android/gallery3d/ui/UndoBarView;->layout(IIII)V

    .line 475
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 476
    .local v5, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 477
    .local v1, displayRotation:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 478
    .local v0, compensation:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 480
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 481
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 486
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_2

    .line 487
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 488
    .local v4, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 486
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v3           #i:I
    .end local v4           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 495
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 496
    if-eqz p1, :cond_3

    .line 497
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 499
    :cond_3
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 929
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1290
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1291
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1295
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1372
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v7

    .line 1375
    .local v0, full:Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v6, :cond_0

    .line 1376
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1377
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v6, v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 1378
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 1384
    :cond_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v6, :cond_2

    .line 1385
    const/4 v4, 0x0

    .line 1400
    .local v4, neighbors:I
    :goto_1
    move v1, v4

    .local v1, i:I
    :goto_2
    neg-int v6, v4

    if-lt v1, v6, :cond_6

    .line 1401
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1402
    .local v5, r:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6, p1, v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1400
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0           #full:Z
    .end local v1           #i:I
    .end local v4           #neighbors:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_1
    move v0, v8

    .line 1372
    goto :goto_0

    .line 1389
    .restart local v0       #full:Z
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-nez v6, :cond_3

    move v3, v7

    .line 1390
    .local v3, inPageMode:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v7

    .line 1392
    .local v2, inCaptureAnimation:Z
    :goto_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 1393
    const/4 v4, 0x1

    .restart local v4       #neighbors:I
    goto :goto_1

    .end local v2           #inCaptureAnimation:Z
    .end local v3           #inPageMode:Z
    .end local v4           #neighbors:I
    :cond_3
    move v3, v8

    .line 1389
    goto :goto_3

    .restart local v3       #inPageMode:Z
    :cond_4
    move v2, v8

    .line 1390
    goto :goto_4

    .line 1395
    .restart local v2       #inCaptureAnimation:Z
    :cond_5
    const/4 v4, 0x3

    .restart local v4       #neighbors:I
    goto :goto_1

    .line 1405
    .end local v2           #inCaptureAnimation:Z
    .end local v3           #inPageMode:Z
    .restart local v1       #i:I
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1406
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1408
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1409
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1410
    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1303
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1304
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1305
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1299
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 533
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 538
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 1745
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 314
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 1581
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1263
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1589
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1591
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1593
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public switchWithOutCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1781
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1783
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithOutCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1785
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
