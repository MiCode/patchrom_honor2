.class public Lcom/scalado/app/rewind/RewindApp;
.super Ljava/lang/Object;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RewindApp$1;,
        Lcom/scalado/app/rewind/RewindApp$ToUiHandler;,
        Lcom/scalado/app/rewind/RewindApp$JpegLoader;,
        Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;,
        Lcom/scalado/app/rewind/RewindApp$Rewinding;,
        Lcom/scalado/app/rewind/RewindApp$Capturing;,
        Lcom/scalado/app/rewind/RewindApp$Loading;,
        Lcom/scalado/app/rewind/RewindApp$ReceivingImages;,
        Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;,
        Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;,
        Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;,
        Lcom/scalado/app/rewind/RewindApp$Previewing;,
        Lcom/scalado/app/rewind/RewindApp$State;,
        Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;,
        Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;,
        Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityHandler:Landroid/os/Handler;

.field private mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

.field private mBgIndex:I

.field private mBurstSize:I

.field private mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

.field private mCapturing:Z

.field private mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

.field private mContext:Landroid/content/Context;

.field private mCurSurfaceView:Landroid/view/SurfaceView;

.field private mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFgIndex:I

.field private mIgnoreNextBackUp:Z

.field private mIsRunning:Z

.field private final mJpegData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

.field private mJpegs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewEnabled:Z

.field private mPreviewHeight:I

.field private mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

.field private mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mPreviewSurfaceView:Landroid/view/SurfaceView;

.field private mPreviewWidth:I

.field private mRewind:Lcom/scalado/app/rewind/RewindSession;

.field private mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

.field private mRewindSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

.field private mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mRewindSurfaceView:Landroid/view/SurfaceView;

.field private mSourcesLoaded:Z

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

.field private mThumbSize:Lcom/scalado/base/Size;

.field private mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

.field private mViewer:Lcom/scalado/app/rewind/RewindViewer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scalado/app/rewind/RewindApp$CameraInterface;ZILcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 3
    .parameter "context"
    .parameter "camera"
    .parameter "previewEnabled"
    .parameter "numImages"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "RewindApp"

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->TAG:Ljava/lang/String;

    .line 126
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    .line 127
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z

    .line 129
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    .line 133
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    .line 134
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

    .line 161
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    .line 165
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    .line 172
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    .line 190
    iget-object v0, p5, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p5, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length miss match for predefined images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    .line 202
    iput-boolean p3, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    .line 203
    iput p4, p0, Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I

    .line 204
    iput-object p5, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 205
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {v0, p4}, Lcom/scalado/app/rewind/AutoSession;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    .line 211
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegs:Ljava/util/Vector;

    .line 214
    :pswitch_0
    const-string v0, "RewindApp"

    const-string v1, "TestCamera(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/AutoSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/scalado/app/rewind/RewindApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindApp;->hideTopbar()V

    return-void
.end method

.method static synthetic access$1800(Lcom/scalado/app/rewind/RewindApp;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RewindApp;->setViewVisibilities(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/scalado/app/rewind/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindApp;->mSourcesLoaded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$JpegLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$JpegLoader;)Lcom/scalado/app/rewind/RewindApp$JpegLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/scalado/app/rewind/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/scalado/app/rewind/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/scalado/app/rewind/RewindApp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->showLtw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/scalado/app/rewind/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/scalado/app/rewind/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$3100(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/scalado/app/rewind/RewindApp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/base/Buffer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->addJpeg(Lcom/scalado/base/Buffer;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/scalado/app/rewind/RewindApp;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/SourceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindApp;->createSourceManager()V

    return-void
.end method

.method static synthetic access$4000(Lcom/scalado/app/rewind/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/scalado/app/rewind/RewindApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/RewindApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/RewindApp;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    return-object v0
.end method

.method private addJpeg(Lcom/scalado/base/Buffer;)V
    .locals 13
    .parameter "bb"

    .prologue
    const/4 v11, 0x0

    .line 396
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v10, v10, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    if-nez v10, :cond_1

    .line 397
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    if-nez v10, :cond_0

    .line 399
    move-object v1, p1

    .line 400
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v8, Lcom/scalado/stream/BufferStream;

    invoke-direct {v8, v1, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 401
    .local v8, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 403
    .local v6, iterator:Lcom/scalado/base/Iterator;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v6, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 404
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 405
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 406
    .local v3, dims:Lcom/scalado/base/Size;
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 407
    .local v0, ar:F
    const v10, 0x3dcccccd

    iget v11, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    int-to-float v11, v11

    mul-float v9, v10, v11

    .line 408
    .local v9, w:F
    div-float v5, v9, v0

    .line 409
    .local v5, h:F
    new-instance v10, Lcom/scalado/base/Size;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v0           #ar:F
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v3           #dims:Lcom/scalado/base/Size;
    .end local v5           #h:F
    .end local v6           #iterator:Lcom/scalado/base/Iterator;
    .end local v8           #stream:Lcom/scalado/stream/BufferStream;
    .end local v9           #w:F
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 416
    .local v7, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    invoke-virtual {v10, v7}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 411
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    .restart local v6       #iterator:Lcom/scalado/base/Iterator;
    .restart local v8       #stream:Lcom/scalado/stream/BufferStream;
    :catch_0
    move-exception v4

    .line 412
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "RewindApp"

    const-string v11, "Exception in addJpeg:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSourceManager()V
    .locals 9

    .prologue
    const/16 v5, 0x32

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 712
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    if-nez v4, :cond_0

    .line 713
    new-instance v3, Lcom/scalado/base/Size;

    invoke-direct {v3, v5, v5}, Lcom/scalado/base/Size;-><init>(II)V

    .line 717
    .local v3, tnSize:Lcom/scalado/base/Size;
    :goto_0
    const-string v4, "RewindApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDisplayWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v4, "RewindApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDisplayHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v1, Lcom/scalado/app/rewind/SourceManager$Configuration;

    iget v4, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v1, v4, v5, v7, v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 721
    .local v1, fgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    new-instance v0, Lcom/scalado/app/rewind/SourceManager$Configuration;

    iget v4, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 723
    .local v0, bgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    new-instance v2, Lcom/scalado/app/rewind/SourceManager$Configuration;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v2, v4, v5, v7, v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 725
    .local v2, tnCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    new-instance v4, Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {v4, v1, v0, v2}, Lcom/scalado/app/rewind/SourceManager;-><init>(Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/app/rewind/SourceManager$Configuration;)V

    iput-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 726
    new-instance v4, Lcom/scalado/app/rewind/RewindSession;

    iget-object v5, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {v4, v5}, Lcom/scalado/app/rewind/RewindSession;-><init>(Lcom/scalado/app/rewind/SourceManager;)V

    iput-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 727
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v5, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget v6, p0, Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I

    invoke-virtual {v4, v5, v6}, Lcom/scalado/app/rewind/RewindViewer;->setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V

    .line 728
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindViewer;->display()V

    .line 729
    const-string v4, "RewindApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRewind = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iput v8, p0, Lcom/scalado/app/rewind/RewindApp;->mBgIndex:I

    .line 731
    iput v8, p0, Lcom/scalado/app/rewind/RewindApp;->mFgIndex:I

    .line 732
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mBgIndex:I

    invoke-virtual {v4, v5}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 733
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mFgIndex:I

    invoke-virtual {v4, v5}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 734
    return-void

    .line 715
    .end local v0           #bgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v1           #fgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v2           #tnCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v3           #tnSize:Lcom/scalado/base/Size;
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    .restart local v3       #tnSize:Lcom/scalado/base/Size;
    goto/16 :goto_0
.end method

.method private final hideTopbar()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 825
    :cond_0
    return-void
.end method

.method private privateCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z

    if-nez v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v2, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    if-ne v2, v1, :cond_0

    .line 520
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "myTouch_4G_Slide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v3, v4}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    new-instance v2, Lcom/scalado/app/rewind/RewindApp$Capturing;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scalado/app/rewind/RewindApp$Capturing;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 528
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setViewVisibilities(II)V
    .locals 1
    .parameter "vfVis"
    .parameter "ltwVis"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 819
    :cond_1
    return-void
.end method

.method private setupPreviewSurface(Landroid/content/Context;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 3
    .parameter "context"
    .parameter "surfaceView"
    .parameter "ltwView"

    .prologue
    const/4 v2, 0x0

    .line 300
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    .line 301
    iput-object p3, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    .line 303
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 305
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 307
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 308
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 312
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 313
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 315
    return-void
.end method

.method private final showLtw(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 807
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RewindApp;->setViewVisibilities(II)V

    .line 809
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method private startPreview(Z)V
    .locals 3
    .parameter "reset"

    .prologue
    .line 425
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 428
    :cond_0
    if-eqz p1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    invoke-interface {v1}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->previewRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->stopPreview()V

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->startPreview(Z)Z

    move-result v0

    .line 435
    .local v0, success:Z
    if-nez v0, :cond_3

    .line 436
    const-string v1, "RewindApp"

    const-string v2, "Error when starting preview."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    goto :goto_0
.end method

.method private switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    .locals 3
    .parameter "newTask"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-ne p1, v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 831
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/app/rewind/RewindApp$State;->beforeSwitching()V

    .line 832
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$State;->end()V

    .line 835
    :cond_1
    const-string v0, "RewindApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    .line 837
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$State;->start()V

    goto :goto_0
.end method


# virtual methods
.method public capture()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindApp;->privateCapture()Z

    .line 500
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 458
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    invoke-virtual {v0, v2}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->removeMessages(I)V

    .line 459
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    invoke-virtual {v0, v2}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->cancel(Z)Z

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->recycle()V

    .line 464
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 465
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "RewindApp"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 223
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lcom/scalado/app/rewind/RewindViewer;)V
    .locals 3
    .parameter "context"
    .parameter "activity"
    .parameter "surfaceView"
    .parameter "ltwView"
    .parameter "viewer"

    .prologue
    const/4 v2, 0x0

    .line 232
    const-string v0, "RewindApp"

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mContext:Landroid/content/Context;

    .line 234
    invoke-direct {p0, p1, p3, p4}, Lcom/scalado/app/rewind/RewindApp;->setupPreviewSurface(Landroid/content/Context;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 237
    const/16 v0, 0x140

    iput v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I

    .line 238
    const/16 v0, 0xf0

    iput v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I

    .line 241
    invoke-virtual {p0, p5}, Lcom/scalado/app/rewind/RewindApp;->setViewer(Lcom/scalado/app/rewind/RewindViewer;)V

    .line 242
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->setConfig(Lcom/scalado/app/rewind/RewindViewerConfig;)V

    .line 244
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;

    invoke-direct {v1, p0, v2}, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V

    .line 250
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;

    invoke-direct {v0, p0, v2}, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 251
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public loadImages()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->startBenchmark()V

    .line 632
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 633
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_3"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_4"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "RewindApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewind App onCreate savedInstanceState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 656
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/rewind/RewindViewer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 659
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v1, :cond_3

    .line 672
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/rewind/RewindApp$State;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    :sswitch_1
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 659
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 680
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/rewind/RewindViewer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 683
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 696
    :cond_2
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v2, :cond_3

    .line 697
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/rewind/RewindApp$State;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 701
    goto :goto_0

    .line 685
    :sswitch_1
    iget-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    if-eqz v2, :cond_2

    .line 686
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    goto :goto_0

    .line 683
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 270
    const-string v0, "RewindApp"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 272
    const-string v1, "data_key_0"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 273
    const-string v1, "data_key_1"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 274
    const-string v1, "data_key_2"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 275
    const-string v1, "data_key_3"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 276
    const-string v1, "data_key_4"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 278
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 648
    :pswitch_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 449
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager;->reset()V

    .line 452
    :cond_0
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 453
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 455
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "RewindApp"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    .line 511
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->refresh()V

    .line 514
    :cond_0
    return-void
.end method

.method public saveRewind(Ljava/lang/String;III)V
    .locals 1
    .parameter "path"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindViewer;->save(Ljava/lang/String;III)V

    .line 581
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    .line 267
    return-void
.end method

.method public setPreviewConfig(III)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "pixelFormat"

    .prologue
    .line 318
    iput p1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I

    .line 319
    iput p2, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I

    .line 320
    invoke-static {p3}, Lcom/scalado/app/rewind/PixelFormat;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    .line 322
    return-void
.end method

.method public setRewindActivityHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;

    .line 738
    return-void
.end method

.method public setViewer(Lcom/scalado/app/rewind/RewindViewer;)V
    .locals 2
    .parameter "viewer"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    .line 287
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    instance-of v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RewindViewerConfig.mMode == REWIND_AUTO, but viewer is not AutoFixViewer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    check-cast v0, Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;->setAutoReplacer(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->startPreview(Z)V

    .line 444
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->stopPreview()Z

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    .line 474
    return-void
.end method
