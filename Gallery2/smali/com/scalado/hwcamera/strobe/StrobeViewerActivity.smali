.class public Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.super Landroid/app/Activity;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyMediaScannerListener;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;,
        Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private final mActivityOritation:I

.field private mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

.field private mBottomBarContent:Landroid/view/ViewGroup;

.field private mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentBackgroundIndex:I

.field private mDidRegister:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEncoders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/scalado/caps/codec/encoder/BitmapEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:I

.field private mFrameLayout:Landroid/view/ViewGroup;

.field private mImageSize:Lcom/scalado/base/Size;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewSize:Lcom/scalado/base/Size;

.field private final mImageViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDeletingFiles:Z

.field private mJpegQuality:I

.field private mJpegThumbnailHeight:I

.field private mJpegThumbnailWidth:I

.field private mLastFrame:I

.field private mLastX:F

.field private mLastY:F

.field private mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

.field private mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

.field private mMaskOn:Z

.field private final mMediaScannerListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mProgressSpinner:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRenderCallback:Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;

.field private final mRenderThread:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mSaveButton:Landroid/widget/Button;

.field private mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

.field private mState:I

.field private mStrobeObjectFocusOrder:[I

.field private final mStrobeObjectViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrobeObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbObjectClickListener:Landroid/view/View$OnClickListener;

.field private final mThumbObjectLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mToastDelayTime:I

.field private mWeakBackgroundMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mwillShown:[Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/high16 v0, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastX:F

    .line 128
    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastY:F

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mState:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    .line 156
    iput-boolean v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mMaskOn:Z

    .line 157
    iput v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    .line 158
    iput v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    .line 164
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-direct {v0, p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    .line 165
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectClickListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 168
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 170
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyMediaScannerListener;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyMediaScannerListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mMediaScannerListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 171
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;

    invoke-direct {v0, p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderCallback:Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    .line 179
    iput-boolean v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    .line 188
    iput v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mActivityOritation:I

    .line 189
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mToastDelayTime:I

    .line 1227
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$6;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$6;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->handler:Landroid/os/Handler;

    .line 1271
    iput-boolean v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z

    .line 1291
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$8;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$8;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1323
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I

    return v0
.end method

.method static synthetic access$1002(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFirstFrame:I

    return p1
.end method

.method static synthetic access$1100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I

    return v0
.end method

.method static synthetic access$1102(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastFrame:I

    return p1
.end method

.method static synthetic access$1200(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->clearBottomBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->clearStrobeObjects()V

    return-void
.end method

.method static synthetic access$1500(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->analysisCompleted()V

    return-void
.end method

.method static synthetic access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    return v0
.end method

.method static synthetic access$2402(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    return p1
.end method

.method static synthetic access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mwillShown:[Z

    return-object v0
.end method

.method static synthetic access$2800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V

    return-void
.end method

.method static synthetic access$3000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showControls()V

    return-void
.end method

.method static synthetic access$3100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mProgressSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderCallback:Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V

    return-void
.end method

.method static synthetic access$4200(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V

    return-void
.end method

.method static synthetic access$4300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastX:F

    return v0
.end method

.method static synthetic access$4302(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastX:F

    return p1
.end method

.method static synthetic access$4400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastY:F

    return v0
.end method

.method static synthetic access$4402(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastY:F

    return p1
.end method

.method static synthetic access$4500(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    return-object v0
.end method

.method static synthetic access$4600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Landroid/view/View;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getNearestIndex(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->doSaveImage(Lcom/scalado/caps/Session;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mIsDeletingFiles:Z

    return p1
.end method

.method static synthetic access$600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V

    return-void
.end method

.method static synthetic access$800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V

    return-void
.end method

.method private addStrobeObject(IILcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "object"
    .parameter "drawable"

    .prologue
    .line 879
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 880
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 881
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 882
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/16 v4, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 885
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 886
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 887
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    return-void
.end method

.method private addStrobeObjects(Lcom/scalado/base/Size;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 829
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 831
    const/4 v3, 0x2

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    .line 832
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 833
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 837
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getX()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 840
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 841
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v3, v8

    float-to-int v3, v3

    .line 842
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-int v5, v5

    .line 851
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 852
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getMask()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9, v3, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 864
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 865
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v9, v4, v2

    .line 866
    aget-object v8, v4, v2

    const/high16 v9, 0x437f

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 867
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v4, v11

    .line 868
    aget-object v5, v4, v11

    iget-boolean v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mMaskOn:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x80

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 870
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 871
    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 872
    invoke-virtual {v3, v11, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 873
    invoke-direct {p0, v6, v7, v0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->addStrobeObject(IILcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;Landroid/graphics/drawable/Drawable;)V

    .line 829
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    move v3, v2

    .line 868
    goto :goto_1

    .line 875
    :cond_1
    return-void
.end method

.method private analysisCompleted()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1187
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore;->getObjects()Ljava/util/List;

    move-result-object v1

    .line 1188
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1189
    const-string v2, "StrobeViewerActivity"

    const-string v3, "analysisComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v2, "StrobeViewerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeObjects.size() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore;->getShowState()[Z

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mwillShown:[Z

    .line 1194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1199
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1200
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mwillShown:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 1201
    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    .line 1199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1208
    const-string v0, "StrobeViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeObjects.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    iget v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/strobe/SessionStore;->setBackgroundIndex(I)V

    .line 1223
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setState(I)Z

    .line 1224
    :goto_1
    return-void

    .line 1212
    :cond_2
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V

    .line 1214
    const v1, 0x7f0e0264

    invoke-virtual {p0, v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 1216
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 1217
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private applyOpacityGradients()V
    .locals 4

    .prologue
    .line 925
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore;->getVisibleObject()Ljava/util/List;

    move-result-object v0

    .line 926
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 927
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 928
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 929
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v3, 0x437f

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 932
    :cond_0
    return-void
.end method

.method private clearBottomBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 893
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->scrollTo(II)V

    .line 894
    return-void
.end method

.method private clearStrobeObjects()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 901
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 902
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 903
    return-void
.end method

.method private controlsEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 726
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method

.method private deleteFolderSilently()V
    .locals 2

    .prologue
    .line 1273
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$7;

    invoke-direct {v1, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$7;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1284
    return-void
.end method

.method private doSaveImage(Lcom/scalado/caps/Session;)V
    .locals 26
    .parameter "session"

    .prologue
    .line 526
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMG_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/scalado/hwcamera/strobe/SessionStore;->getDateAndTime()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, baseName:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 531
    const-string v22, "%s/%s.jpg"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v5, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, fileName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 535
    .local v15, stream:Lcom/scalado/stream/FileStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 536
    .local v6, dims:Lcom/scalado/base/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/scalado/hwcamera/strobe/SessionStore;->getExifSession()Lcom/scalado/caps/exif/Session;

    move-result-object v10

    .line 538
    .local v10, exifSession:Lcom/scalado/caps/exif/Session;
    if-eqz v10, :cond_0

    .line 539
    new-instance v19, Lcom/scalado/base/Size;

    invoke-direct/range {v19 .. v19}, Lcom/scalado/base/Size;-><init>()V

    .line 540
    .local v19, thumbnailDims:Lcom/scalado/base/Size;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailWidth:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailHeight:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 543
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getWidth()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v23

    mul-int v22, v22, v23

    div-int/lit8 v9, v22, 0x5

    .line 547
    .local v9, estimatedThumbnailSize:I
    new-instance v17, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 548
    .local v17, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v21, Lcom/scalado/stream/BufferStream;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 550
    .local v21, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v20, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 554
    .local v20, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v18, 0x0

    .line 555
    .local v18, thumbnailData:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v13

    .line 556
    .local v13, it:Lcom/scalado/base/Iterator;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/scalado/base/Iterator;->step(I)F

    .line 560
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 561
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 564
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V

    .line 565
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/scalado/caps/exif/Session;->setExifToSession(Lcom/scalado/caps/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 579
    .end local v9           #estimatedThumbnailSize:I
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v16, Lcom/scalado/stream/FileStream;

    sget-object v22, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 580
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .local v16, stream:Lcom/scalado/stream/FileStream;
    :try_start_3
    new-instance v8, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v16

    invoke-direct {v8, v0, v6}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 581
    .local v8, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mJpegQuality:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x42c8

    div-float v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    .line 582
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v14

    .line 583
    .local v14, itFile:Lcom/scalado/base/Iterator;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/scalado/base/Iterator;->step(I)F

    .line 585
    const-string v22, "StrobeViewerActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "start scan file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mMediaScannerListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-object/from16 v25, v0

    invoke-static/range {v22 .. v25}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 601
    if-eqz v16, :cond_1

    .line 603
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 612
    .end local v6           #dims:Lcom/scalado/base/Size;
    .end local v8           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v10           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v14           #itFile:Lcom/scalado/base/Iterator;
    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    :cond_1
    :goto_1
    const-string v22, "StrobeViewerActivity"

    const-string v23, "doSaveImages hide spinner"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V

    .line 614
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    .line 615
    return-void

    .line 566
    .restart local v6       #dims:Lcom/scalado/base/Size;
    .restart local v9       #estimatedThumbnailSize:I
    .restart local v10       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v13       #it:Lcom/scalado/base/Iterator;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    .restart local v17       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v18       #thumbnailData:[B
    .restart local v19       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v20       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v21       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_0
    move-exception v7

    .line 567
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "StrobeViewerActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to set EXIF thumbnail. width="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getWidth()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", height="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", exception="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 598
    .end local v6           #dims:Lcom/scalado/base/Size;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #estimatedThumbnailSize:I
    .end local v10           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_1
    move-exception v7

    .line 599
    .restart local v7       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v22, "StrobeViewerActivity"

    const-string v23, "Exception when rendering to file."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 601
    if-eqz v15, :cond_1

    .line 603
    :try_start_7
    invoke-virtual {v15}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 604
    :catch_2
    move-exception v12

    .line 605
    .local v12, ioe:Ljava/io/IOException;
    const-string v22, "StrobeViewerActivity"

    const-string v23, "Exception when closing file."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 567
    .end local v12           #ioe:Ljava/io/IOException;
    .restart local v6       #dims:Lcom/scalado/base/Size;
    .restart local v9       #estimatedThumbnailSize:I
    .restart local v10       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v13       #it:Lcom/scalado/base/Iterator;
    .restart local v17       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v18       #thumbnailData:[B
    .restart local v19       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v20       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v21       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 604
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #estimatedThumbnailSize:I
    .end local v13           #it:Lcom/scalado/base/Iterator;
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    .restart local v8       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v14       #itFile:Lcom/scalado/base/Iterator;
    .restart local v16       #stream:Lcom/scalado/stream/FileStream;
    :catch_3
    move-exception v12

    .line 605
    .restart local v12       #ioe:Ljava/io/IOException;
    const-string v22, "StrobeViewerActivity"

    const-string v23, "Exception when closing file."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 601
    .end local v6           #dims:Lcom/scalado/base/Size;
    .end local v8           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v10           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v12           #ioe:Ljava/io/IOException;
    .end local v14           #itFile:Lcom/scalado/base/Iterator;
    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    :catchall_0
    move-exception v22

    :goto_4
    if-eqz v15, :cond_3

    .line 603
    :try_start_8
    invoke-virtual {v15}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 606
    :cond_3
    :goto_5
    throw v22

    .line 604
    :catch_4
    move-exception v12

    .line 605
    .restart local v12       #ioe:Ljava/io/IOException;
    const-string v23, "StrobeViewerActivity"

    const-string v24, "Exception when closing file."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 601
    .end local v12           #ioe:Ljava/io/IOException;
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #dims:Lcom/scalado/base/Size;
    .restart local v10       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v16       #stream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v22

    move-object/from16 v15, v16

    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_4

    .line 598
    .end local v15           #stream:Lcom/scalado/stream/FileStream;
    .restart local v16       #stream:Lcom/scalado/stream/FileStream;
    :catch_5
    move-exception v7

    move-object/from16 v15, v16

    .end local v16           #stream:Lcom/scalado/stream/FileStream;
    .restart local v15       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_3
.end method

.method private focusSort(I[I)Z
    .locals 7
    .parameter "focusPos"
    .parameter "order"

    .prologue
    const/4 v5, 0x1

    .line 950
    array-length v2, p2

    .line 952
    .local v2, numImages:I
    if-gt p1, v2, :cond_0

    if-gez p1, :cond_2

    .line 953
    :cond_0
    const/4 v5, 0x0

    .line 980
    :cond_1
    return v5

    .line 956
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 958
    move v3, v0

    .line 959
    .local v3, pos:I
    rem-int/lit8 v6, v0, 0x2

    if-ne v6, v5, :cond_3

    .line 960
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v4, p1, v6

    .line 961
    .local v4, value:I
    if-gez v4, :cond_4

    .line 962
    move v1, v0

    .local v1, j:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 963
    move v3, v1

    .line 964
    aput v1, p2, v3

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 969
    .end local v1           #j:I
    .end local v4           #value:I
    :cond_3
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    add-int v4, p1, v6

    .line 970
    .restart local v4       #value:I
    if-lt v4, v2, :cond_4

    .line 971
    move v1, v0

    .restart local v1       #j:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 972
    move v3, v1

    .line 973
    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x1

    aput v6, p2, v3

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 978
    .end local v1           #j:I
    :cond_4
    aput v4, p2, v3

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private focusSortStrobeObjects()V
    .locals 5

    .prologue
    .line 935
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    if-nez v2, :cond_0

    .line 936
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    .line 938
    :cond_0
    iget v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    invoke-direct {p0, v2, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->focusSort(I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 940
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    aget v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 943
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 939
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 947
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private getDistance(IIII)J
    .locals 4
    .parameter "enventX"
    .parameter "eventY"
    .parameter "rectX"
    .parameter "rectY"

    .prologue
    .line 1150
    sub-int v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    sub-int v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private getNearestIndex(Landroid/view/View;II)I
    .locals 10
    .parameter "v"
    .parameter "eventX"
    .parameter "eventY"

    .prologue
    .line 1155
    const/4 v4, 0x0

    .line 1156
    .local v4, index:I
    const-wide/16 v6, -0x1

    .line 1157
    .local v6, oldDistance:J
    const-wide/16 v0, 0x0

    .line 1158
    .local v0, currentDistance:J
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1159
    .local v5, mChildRect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1160
    iget-object v8, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    array-length v8, v8

    if-lt v3, v8, :cond_1

    .line 1182
    :cond_0
    return v4

    .line 1163
    :cond_1
    iget-object v8, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    iget-object v9, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I

    aget v9, v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1164
    .local v2, ds:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1165
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1166
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1168
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {p0, v8, v9, p2, p3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getDistance(IIII)J

    move-result-wide v0

    .line 1169
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    .line 1170
    move-wide v6, v0

    .line 1171
    move v4, v3

    .line 1159
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1173
    :cond_3
    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    .line 1174
    move-wide v6, v0

    .line 1175
    move v4, v3

    goto :goto_1
.end method

.method private hideSpinner()V
    .locals 1

    .prologue
    .line 632
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$3;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$3;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 429
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    .line 430
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    .line 432
    const-string v2, "StrobeViewerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG_IMAGE_MARGIN width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v2, Lcom/scalado/base/Size;

    iget v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    iget v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    .line 436
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    invoke-virtual {v2, v3}, Lcom/scalado/hwcamera/strobe/SessionStore;->setDisplayDims(Lcom/scalado/base/Size;)V

    .line 437
    const v2, 0x7f0c00d6

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;

    .line 438
    const v2, 0x7f0c00d3

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;

    .line 439
    const v2, 0x7f0c00d2

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    .line 440
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    new-instance v1, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    .line 443
    .local v1, onClickListener:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    const v2, 0x7f0c003c

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mProgressSpinner:Landroid/view/View;

    .line 449
    const v2, 0x7f0c00d1

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;

    .line 450
    const v2, 0x7f0c00d5

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;

    .line 451
    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    .line 452
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1311
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1313
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1314
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1315
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    .line 1321
    return-void
.end method

.method private loadBackgroundImage()V
    .locals 3

    .prologue
    .line 753
    iget v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    iget v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v0

    .line 757
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V

    goto :goto_0
.end method

.method private loadBackgroundImage(I)V
    .locals 5
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/Session;

    .line 762
    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 764
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 766
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 769
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    if-nez v4, :cond_0

    .line 772
    invoke-virtual {v1}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    .line 776
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    new-instance v4, Lcom/scalado/base/Size;

    invoke-direct {v4, v3, v2}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/scalado/base/Size;->shrinkToAspect(Lcom/scalado/base/Size;)V

    .line 779
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageViewSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/scalado/base/Size;->shrinkToAspect(Lcom/scalado/base/Size;)V

    .line 781
    const-string v1, "Strobe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using image size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 787
    if-nez v1, :cond_1

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 790
    invoke-direct {p0, v0, v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 793
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 797
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "text"
    .parameter "duration"
    .parameter "orientation"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_0

    .line 1236
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 1246
    :goto_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(II)V

    .line 1248
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 1249
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private render()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 748
    .local v0, h:Landroid/os/Handler;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    return-void
.end method

.method private renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 804
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    .line 805
    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    invoke-direct {v0, p2, v3}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 810
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v1, "Strobe"

    const-string v2, "Creating new encoder..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_0
    invoke-virtual {p1, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 817
    invoke-virtual {v0, v3}, Lcom/scalado/base/Iterator;->step(I)F

    .line 818
    return-void

    .line 813
    :cond_0
    const-string v1, "Strobe"

    const-string v2, "Using cached encoder..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetSessionStoreSilently()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 463
    :cond_0
    return-void
.end method

.method private setState(I)Z
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 645
    const-string v2, "StrobeViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mState:I

    if-eq p1, v2, :cond_1

    .line 647
    iput p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mState:I

    .line 648
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v2, v4

    .line 722
    :goto_0
    return v2

    .line 694
    :pswitch_1
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage()V

    .line 695
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    if-le v2, v5, :cond_0

    .line 696
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    iget v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v1

    .line 698
    .local v1, index:I
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 700
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V

    .line 701
    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->addStrobeObjects(Lcom/scalado/base/Size;)V

    .line 702
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V

    .line 703
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    if-nez v2, :cond_0

    .line 704
    new-instance v2, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    invoke-direct {v2, p0, v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    .line 705
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    new-array v5, v8, [Ljava/lang/Void;

    aput-object v7, v5, v4

    aput-object v7, v5, v3

    invoke-virtual {v2, v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v1           #index:I
    :cond_0
    move v2, v3

    .line 708
    goto :goto_0

    .line 710
    :pswitch_2
    new-instance v2, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    invoke-direct {v2, p0, v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    .line 711
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    new-array v5, v8, [Ljava/lang/Void;

    aput-object v7, v5, v4

    aput-object v7, v5, v3

    invoke-virtual {v2, v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 712
    goto :goto_0

    .line 714
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    .line 715
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V

    move v2, v3

    .line 716
    goto :goto_0

    :cond_1
    move v2, v4

    .line 722
    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUpOpacityGradients()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    .line 906
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v6}, Lcom/scalado/hwcamera/strobe/SessionStore;->getVisibleObject()Ljava/util/List;

    move-result-object v5

    .line 907
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v6}, Lcom/scalado/hwcamera/strobe/SessionStore;->getObjects()Ljava/util/List;

    move-result-object v1

    .line 908
    .local v1, allList:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 909
    .local v2, count:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 910
    .local v0, allCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 911
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v6}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getObjectIndex()I

    move-result v4

    .line 912
    .local v4, index:I
    iget v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    if-ge v4, v6, :cond_1

    .line 913
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    add-int/lit8 v7, v4, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v9

    iget v8, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setOpacity(F)V

    .line 910
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 915
    :cond_1
    iget v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    if-le v4, v6, :cond_0

    .line 916
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    sub-int v7, v0, v4

    int-to-float v7, v7

    mul-float/2addr v7, v9

    iget v8, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    sub-int v8, v0, v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setOpacity(F)V

    goto :goto_1

    .line 921
    .end local v4           #index:I
    :cond_2
    iget v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v6, v9}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setOpacity(F)V

    .line 922
    return-void
.end method

.method private showControls()V
    .locals 1

    .prologue
    .line 737
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$5;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$5;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method private showSpinner()V
    .locals 1

    .prologue
    .line 618
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$2;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$2;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 629
    return-void
.end method


# virtual methods
.method public cancelStrobe(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 521
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->finish()V

    .line 522
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 1289
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setContentView(I)V

    .line 195
    new-instance v0, Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-direct {v0}, Lcom/scalado/hwcamera/strobe/SessionStore;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    .line 196
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quality_key"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mJpegQuality:I

    .line 198
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jpeg_thumbnail_width_key"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailWidth:I

    .line 200
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jpeg_thumbnail_height_key"

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mJpegThumbnailHeight:I

    .line 203
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->init()V

    .line 204
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->installIntentFilter()V

    .line 205
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    invoke-direct {v0, p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    .line 206
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->start()V

    .line 208
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 468
    iget-boolean v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    if-eqz v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mDidRegister:Z

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_1

    .line 474
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    invoke-virtual {v3, v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;->cancel(Z)Z

    .line 475
    iput-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadSequenceTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadSequenceTask;

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_2

    .line 480
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    invoke-virtual {v3, v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;->cancel(Z)Z

    .line 481
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/SessionStore;->cancelAnalyze()V

    .line 482
    iput-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mAnalyzeTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$AnalyzeTask;

    .line 485
    :cond_2
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_3

    .line 487
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    invoke-virtual {v3, v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->cancel(Z)Z

    .line 488
    iput-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLoadStrobeObjectThumbnailTask:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;

    .line 491
    :cond_3
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 492
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 493
    .local v2, list:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 494
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 495
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 500
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    :cond_5
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mWeakBackgroundMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 501
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 502
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 503
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mEncoders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 504
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderThread:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 505
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->resetSessionStoreSilently()V

    .line 506
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1338
    packed-switch p1, :pswitch_data_0

    .line 1345
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1341
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1338
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1351
    packed-switch p1, :pswitch_data_0

    .line 1358
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1354
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1351
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 219
    :cond_0
    return-void
.end method

.method public saveImages(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 509
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V

    .line 510
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V

    .line 511
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->render()V

    .line 512
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->deleteFolderSilently()V

    .line 514
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 515
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setResult(ILandroid/content/Intent;)V

    .line 517
    return-void
.end method
