.class public Lcom/scalado/app/rewind/RewindSession;
.super Ljava/lang/Object;
.source "RewindSession.java"

# interfaces
.implements Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RewindSession$1;,
        Lcom/scalado/app/rewind/RewindSession$LooperThread;,
        Lcom/scalado/app/rewind/RewindSession$LTWHandler;,
        Lcom/scalado/app/rewind/RewindSession$MagnifierParams;,
        Lcom/scalado/app/rewind/RewindSession$ScreenParams;,
        Lcom/scalado/app/rewind/RewindSession$LTWParams;,
        Lcom/scalado/app/rewind/RewindSession$LTWRequest;,
        Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

.field private mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

.field private mCommits:I

.field private final mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

.field private mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

.field private mCreateOwnDecoders:Z

.field private mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

.field private final mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

.field private mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

.field private mDecoders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/caps/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field private mDstImage:Lcom/scalado/base/Image;

.field private mError:Z

.field private mFilters:I

.field private mFullRect:Lcom/scalado/base/Rect;

.field private mJobId:I

.field private mJobListener:Lcom/scalado/app/rewind/JobListener;

.field private mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

.field private mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

.field private mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

.field private mRender:Z

.field private mRunning:Z

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSession:Lcom/scalado/caps/Session;

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

.field private mSrcSize:Lcom/scalado/base/Size;

.field private mSyncObj:Ljava/lang/Object;

.field private mTransform:Lcom/scalado/app/rewind/CoordTransform;

.field private mUpdated:Z

.field private mUpdates:I


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/SourceManager;)V
    .locals 4
    .parameter "srcMgr"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCreateOwnDecoders:Z

    .line 75
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RewindSession;->mRender:Z

    .line 77
    iput v1, p0, Lcom/scalado/app/rewind/RewindSession;->mFilters:I

    .line 80
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    .line 85
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    .line 89
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;

    invoke-direct {v0, v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;-><init>(Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    .line 91
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    invoke-direct {v0, p0, v2}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;-><init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    .line 92
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    invoke-direct {v0, p0, v2}, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;-><init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    .line 94
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    .line 98
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;

    invoke-direct {v0, v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;-><init>(Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    .line 99
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    invoke-direct {v0, p0, v2}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;-><init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    .line 112
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LooperThread;

    invoke-direct {v0, p0, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread;-><init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    .line 117
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;-><init>(Lcom/scalado/app/rewind/RewindSession;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSyncObj:Ljava/lang/Object;

    .line 125
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdated:Z

    .line 127
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mError:Z

    .line 129
    iput v1, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    .line 130
    iput v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCommits:I

    .line 192
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 193
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0, p0}, Lcom/scalado/app/rewind/SourceManager;->registerListener(Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;)V

    .line 194
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/16 v1, 0x64

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$402(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I

    .line 195
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/16 v1, 0x32

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$502(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I

    .line 196
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    const/high16 v1, 0x3f80

    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$602(Lcom/scalado/app/rewind/RewindSession$ScreenParams;F)F

    .line 197
    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 198
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->start()V

    .line 199
    return-void
.end method

.method static synthetic access$2600(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/CoordTransform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/caps/screen/Screen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->updateRequest(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/SourceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$LTWHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/scalado/app/rewind/RewindSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession;->recycle()V

    return-void
.end method

.method static synthetic access$4500(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RewindSession;->renderRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RewindSession;->asyncRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    return-object v0
.end method

.method static synthetic access$4808(Lcom/scalado/app/rewind/RewindSession;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCommits:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCommits:I

    return v0
.end method

.method static synthetic access$4902(Lcom/scalado/app/rewind/RewindSession;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    return p1
.end method

.method static synthetic access$5300(Lcom/scalado/app/rewind/RewindSession;Ljava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindSession;->renderOutput(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$5400(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RewindSession;->getScreenRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/scalado/app/rewind/RewindSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession;->resetScreenRequest()V

    return-void
.end method

.method private asyncRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "params"
    .parameter "magParams"
    .parameter "dstBitmap"

    .prologue
    .line 1281
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RewindSession;->doRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1283
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1285
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1287
    .end local v0           #callbackMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private calculateScreen()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1648
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    .line 1649
    new-instance v1, Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    .line 1650
    new-instance v2, Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1652
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0, v7}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v0

    .line 1653
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1654
    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 1655
    new-instance v4, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v4, v3, v2}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 1656
    new-instance v2, Lcom/scalado/base/Point;

    invoke-direct {v2, v7, v7}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1657
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v5, v1}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1658
    invoke-virtual {v4, v2}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 1659
    invoke-virtual {v4, v3}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v5

    .line 1660
    const-string v6, "to Session"

    invoke-direct {p0, v2, v1, v6}, Lcom/scalado/app/rewind/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1661
    const-string v1, "to Session"

    invoke-direct {p0, v3, v5, v1}, Lcom/scalado/app/rewind/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v2, v7}, Lcom/scalado/base/Point;->setX(I)V

    .line 1664
    invoke-virtual {v2, v7}, Lcom/scalado/base/Point;->setY(I)V

    .line 1665
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/scalado/base/Point;->setX(I)V

    .line 1666
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/scalado/base/Point;->setY(I)V

    .line 1667
    invoke-virtual {v4, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 1668
    invoke-virtual {v4, v3}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v5

    .line 1669
    const-string v6, "from Session"

    invoke-direct {p0, v2, v1, v6}, Lcom/scalado/app/rewind/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1670
    const-string v2, "from Session"

    invoke-direct {p0, v3, v5, v2}, Lcom/scalado/app/rewind/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1672
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1673
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1674
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v6

    invoke-virtual {v5}, Lcom/scalado/base/Point;->getX()I

    move-result v7

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v1

    sub-int v1, v5, v1

    invoke-direct {v2, v3, v6, v7, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 1676
    new-instance v1, Lcom/scalado/app/rewind/CoordTransform;

    invoke-direct {v1, v0, v4, v2}, Lcom/scalado/app/rewind/CoordTransform;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    .line 1677
    return-void
.end method

.method private calculateScreen2(Lcom/scalado/caps/screen/Screen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1680
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1681
    new-instance v1, Lcom/scalado/base/Point;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1682
    invoke-virtual {p1, v0}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v2

    .line 1683
    invoke-virtual {p1, v1}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v3

    .line 1684
    const-string v4, "to Session"

    invoke-direct {p0, v0, v2, v4}, Lcom/scalado/app/rewind/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1685
    const-string v0, "to Session"

    invoke-direct {p0, v1, v3, v0}, Lcom/scalado/app/rewind/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    .line 1688
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v1

    .line 1689
    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1690
    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v3

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v2

    sub-int v2, v3, v2

    .line 1691
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 1692
    new-instance v0, Lcom/scalado/app/rewind/CoordTransform;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-direct {v0, v1, p1, v3}, Lcom/scalado/app/rewind/CoordTransform;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    .line 1693
    return-void
.end method

.method private static final copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 1629
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 1630
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 1631
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 1632
    return-void
.end method

.method private static final copySize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1636
    invoke-virtual {p0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1637
    return-void
.end method

.method private createScreen(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Z
    .locals 4
    .parameter "size"
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 894
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_0

    .line 895
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession;->createSession()V

    .line 897
    :cond_0
    const/4 v0, 0x0

    .line 898
    .local v0, screenChanged:Z
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 900
    :cond_1
    iput-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_3

    .line 903
    new-instance v1, Lcom/scalado/base/Image;

    invoke-direct {v1, p1, p2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 904
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-static {p1, v1}, Lcom/scalado/app/rewind/RewindSession;->copySize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 905
    iput-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 907
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v1, :cond_4

    .line 908
    new-instance v1, Lcom/scalado/caps/screen/Screen;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    invoke-direct {v1, v2, v3}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 909
    const/4 v0, 0x1

    .line 911
    :cond_4
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v2, Lcom/scalado/caps/screen/Screen$RenderMode;->QUALITY:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 912
    return v0
.end method

.method private createSession()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 916
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    if-nez v2, :cond_0

    .line 917
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 919
    :cond_0
    const/4 v0, 0x0

    .line 920
    .local v0, setDecoder:Z
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v2, :cond_3

    .line 921
    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    .line 922
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    .line 923
    .local v1, vp:Lcom/scalado/base/Rect;
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mFullRect:Lcom/scalado/base/Rect;

    .line 929
    .end local v1           #vp:Lcom/scalado/base/Rect;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 930
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/Session;->setDecoder(Lcom/scalado/caps/Decoder;)V

    .line 932
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 934
    :cond_2
    return-void

    .line 925
    :cond_3
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 926
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;)Z
    .locals 10
    .parameter "params"
    .parameter "magParams"

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x3f80

    const/4 v5, 0x1

    .line 843
    iget-object v6, p0, Lcom/scalado/app/rewind/RewindSession;->mSyncObj:Ljava/lang/Object;

    monitor-enter v6

    .line 844
    const/4 v3, 0x0

    .line 845
    .local v3, screenChanged:Z
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession;->createSession()V

    .line 846
    iget-boolean v7, p0, Lcom/scalado/app/rewind/RewindSession;->mRender:Z

    if-nez v7, :cond_0

    .line 847
    monitor-exit v6

    .line 890
    :goto_0
    return v5

    .line 851
    :cond_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    .line 852
    .local v0, cfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v2

    .line 853
    .local v2, imgCfg:Lcom/scalado/base/Image$Config;
    if-nez p2, :cond_8

    .line 854
    new-instance v4, Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->width()I

    move-result v7

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->height()I

    move-result v8

    invoke-direct {v4, v7, v8}, Lcom/scalado/base/Size;-><init>(II)V

    .line 859
    .local v4, size:Lcom/scalado/base/Size;
    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/scalado/app/rewind/RewindSession;->createScreen(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Z

    move-result v3

    .line 860
    if-nez p2, :cond_1

    if-eqz v3, :cond_1

    .line 861
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v7}, Lcom/scalado/app/rewind/RewindSession;->calculateScreen2(Lcom/scalado/caps/screen/Screen;)V

    .line 864
    :cond_1
    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    invoke-virtual {v7, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    #calls: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->isDefaultZoom()Z
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2400(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move v1, v5

    .line 867
    .local v1, dirty:Z
    :cond_3
    if-eqz p2, :cond_4

    .line 868
    const/4 v1, 0x1

    .line 870
    :cond_4
    if-eqz v1, :cond_6

    .line 871
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {v7}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v7

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 872
    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/scalado/app/rewind/RewindSession;->setEffect(I)V

    .line 874
    :cond_5
    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$600(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)F

    move-result v7

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_9

    .line 875
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$600(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)F

    move-result v8

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 876
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$600(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 881
    :goto_2
    const/4 v7, 0x0

    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mDirty:Z
    invoke-static {p1, v7}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2102(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Z)Z

    .line 882
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #calls: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->copyFrom(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)V
    invoke-static {v7, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2500(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;)V

    .line 884
    :cond_6
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v7}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 885
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    if-eqz v7, :cond_7

    .line 886
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-interface {v7, v8}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onScreenChanged(Lcom/scalado/caps/screen/Screen;)V

    .line 889
    :cond_7
    monitor-exit v6

    goto/16 :goto_0

    .end local v0           #cfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v1           #dirty:Z
    .end local v2           #imgCfg:Lcom/scalado/base/Image$Config;
    .end local v4           #size:Lcom/scalado/base/Size;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 856
    .restart local v0       #cfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .restart local v2       #imgCfg:Lcom/scalado/base/Image$Config;
    :cond_8
    :try_start_1
    iget-object v4, p2, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    .restart local v4       #size:Lcom/scalado/base/Size;
    goto :goto_1

    .line 878
    .restart local v1       #dirty:Z
    :cond_9
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    const/high16 v8, 0x42a0

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 879
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2000(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private doUpdate(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 784
    const/4 v0, -0x1

    .line 785
    .local v0, curBg:I
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v5

    .line 786
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RewindSession;->mError:Z

    .line 787
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1200(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    invoke-virtual {p1, v4}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    monitor-exit v5

    .line 840
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1200(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 791
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v0

    .line 793
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/4 v6, 0x0

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z
    invoke-static {v4, v6}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1202(Lcom/scalado/app/rewind/RewindSession$LTWParams;Z)Z

    .line 794
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 795
    const/4 v3, 0x0

    .line 796
    .local v3, updated:Z
    const/4 v2, 0x1

    .line 797
    .local v2, performUpdate:Z
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$900(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Z

    move-result v4

    if-eqz v4, :cond_2

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$800(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v4

    if-gez v4, :cond_3

    .line 798
    :cond_2
    const/4 v2, 0x0

    .line 800
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 801
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setBackgroundSource(I)V

    .line 802
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 803
    iput v7, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    .line 806
    :cond_4
    if-eqz v2, :cond_7

    .line 807
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    if-lez v4, :cond_5

    .line 808
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v4}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->discard()V

    .line 809
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    .line 811
    :cond_5
    const-string v4, "RewindSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1100(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V

    .line 813
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1000(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v5

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$400(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v6

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$500(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceArea(Lcom/scalado/base/Rect;II)V

    .line 815
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$800(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    .line 817
    :try_start_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v4}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->update()V

    .line 818
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 825
    :goto_1
    const/4 v3, 0x1

    .line 832
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    monitor-enter v5

    .line 833
    :try_start_2
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    const/4 v6, 0x1

    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mDirty:Z
    invoke-static {v4, v6}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2102(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Z)Z

    .line 834
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 835
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v5

    .line 836
    :try_start_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #calls: Lcom/scalado/app/rewind/RewindSession$LTWParams;->copyFrom(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    invoke-static {v4, p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$2300(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    .line 837
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdated:Z

    .line 838
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/4 v6, 0x1

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z
    invoke-static {v4, v6}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1202(Lcom/scalado/app/rewind/RewindSession$LTWParams;Z)Z

    .line 839
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 794
    .end local v2           #performUpdate:Z
    .end local v3           #updated:Z
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 819
    .restart local v2       #performUpdate:Z
    .restart local v3       #updated:Z
    :catch_0
    move-exception v1

    .line 820
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    const-string v4, "RewindSession"

    const-string v5, "update error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v5

    .line 822
    const/4 v4, 0x1

    :try_start_5
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RewindSession;->mError:Z

    .line 823
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 826
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :cond_7
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    if-lez v4, :cond_6

    .line 827
    const-string v4, "RewindSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doUpdate (discard): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v4, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    .line 829
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v4}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->discard()V

    .line 830
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    goto :goto_2

    .line 834
    :catchall_3
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4
.end method

.method private fullScreenRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "params"
    .parameter "dstBitmap"

    .prologue
    .line 1290
    if-nez p2, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->needReRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1297
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v4

    .line 1298
    :try_start_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v1

    .line 1299
    .local v1, index:I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1305
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v3, v1}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundImage(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1306
    .local v0, bb:Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 1299
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1310
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/scalado/app/rewind/RewindSession;->doRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1312
    :try_start_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v2

    .line 1314
    .local v2, ioe:Ljava/lang/IllegalStateException;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1315
    const-string v3, "RewindSession"

    const-string v4, "Exception copyPixelsFromBuffer "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getScreenRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    .locals 6
    .parameter "params"
    .parameter "size"
    .parameter "user"

    .prologue
    const/4 v5, 0x0

    .line 1341
    if-eqz p2, :cond_4

    .line 1342
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1344
    :cond_0
    iput-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1345
    iput-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 1355
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v3, :cond_2

    .line 1356
    invoke-direct {p0, p2}, Lcom/scalado/app/rewind/RewindSession;->resetScreenRequest(Lcom/scalado/base/Size;)V

    .line 1358
    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v3

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1359
    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/scalado/app/rewind/RewindSession;->setEffect(I)V

    .line 1360
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I

    move-result v4

    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2202(Lcom/scalado/app/rewind/RewindSession$ScreenParams;I)I

    .line 1363
    :cond_3
    new-instance v2, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    invoke-direct {v2, p3, v5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(ILcom/scalado/app/rewind/RewindSession$1;)V

    .line 1364
    .local v2, req:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1366
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    invoke-virtual {v3, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1367
    return-void

    .line 1348
    .end local v0           #callbackMsg:Landroid/os/Message;
    .end local v2           #req:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    :cond_4
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    .line 1349
    .local v1, cfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->width()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->height()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1351
    :cond_5
    iput-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1352
    iput-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    goto :goto_0
.end method

.method private final logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1696
    const-string v0, "RewindSession"

    const-string v1, "(%d, %d) -> (%d, %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    return-void
.end method

.method private final needReRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Z
    .locals 5
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1611
    iget v3, p0, Lcom/scalado/app/rewind/RewindSession;->mUpdates:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession;->mFilters:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCommits:I

    if-lez v3, :cond_2

    :cond_0
    move v0, v2

    .line 1612
    .local v0, ltwDirty:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 1613
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    monitor-enter v3

    .line 1614
    :try_start_0
    #calls: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->isDefaultZoom()Z
    invoke-static {p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2400(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1616
    const/4 v0, 0x1

    .line 1622
    :goto_1
    monitor-exit v3

    .line 1624
    :cond_1
    return v0

    .end local v0           #ltwDirty:Z
    :cond_2
    move v0, v1

    .line 1611
    goto :goto_0

    .line 1618
    .restart local v0       #ltwDirty:Z
    :cond_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mConsistentScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    invoke-virtual {p1, v4}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 1622
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1530
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0, p0}, Lcom/scalado/app/rewind/SourceManager;->removeListener(Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;)V

    .line 1531
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 1532
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    .line 1533
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1534
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 1535
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 1536
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1537
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    .line 1538
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mDecoders:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1540
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mDecoders:Ljava/util/Vector;

    .line 1542
    :cond_0
    return-void
.end method

.method private refreshSession()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1474
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    if-nez v3, :cond_0

    .line 1475
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v3}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1478
    :cond_0
    const/4 v1, 0x0

    .line 1479
    .local v1, setDecoder:Z
    const/4 v0, 0x0

    .line 1480
    .local v0, screenChanged:Z
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v3, :cond_3

    .line 1481
    new-instance v3, Lcom/scalado/caps/Session;

    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v3, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    .line 1482
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v2

    .line 1483
    .local v2, vp:Lcom/scalado/base/Rect;
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mFullRect:Lcom/scalado/base/Rect;

    .line 1489
    .end local v2           #vp:Lcom/scalado/base/Rect;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1490
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/Session;->setDecoder(Lcom/scalado/caps/Decoder;)V

    .line 1492
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1494
    :cond_2
    return-void

    .line 1485
    :cond_3
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1486
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private renderOutput(Ljava/lang/String;III)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1385
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_1
    if-lez p2, :cond_2

    const/16 v2, 0x64

    if-le p2, v2, :cond_3

    .line 1390
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jpegQuality must between 0 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1394
    :cond_3
    if-ltz p3, :cond_4

    if-gez p4, :cond_5

    .line 1395
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thumbnailWidth and thumbnailHeight must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_5
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1400
    :try_start_0
    const-string v2, "kangwei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jpegQuality : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession;->refreshSession()V

    .line 1402
    const-string v2, "RewindSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outputting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    :try_start_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    .line 1407
    new-instance v2, Lcom/scalado/caps/exif/Session;

    iget-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    invoke-direct {v2, v5}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 1410
    new-instance v5, Lcom/scalado/base/Size;

    invoke-direct {v5}, Lcom/scalado/base/Size;-><init>()V

    .line 1411
    invoke-virtual {v5, p3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1412
    invoke-virtual {v5, p4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1414
    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x5

    .line 1418
    new-instance v7, Lcom/scalado/base/Buffer;

    invoke-direct {v7, v6}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 1419
    new-instance v6, Lcom/scalado/stream/BufferStream;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1421
    new-instance v8, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v8, v6, v5}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1427
    iget-object v6, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v6, v8}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 1428
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1431
    invoke-virtual {v7}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v6

    new-array v6, v6, [B

    .line 1432
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1434
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1448
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v2, v0}, Lcom/scalado/caps/exif/Session;->setExifToSession(Lcom/scalado/caps/Session;)V

    .line 1450
    new-instance v2, Lcom/scalado/stream/FileStream;

    sget-object v0, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v2, p1, v0}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1451
    :try_start_4
    new-instance v0, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v0, v2, v4}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1452
    int-to-float v1, p2

    const/high16 v4, 0x42c8

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    .line 1453
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v1, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 1454
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1455
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, p1, v4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;Lcom/scalado/app/rewind/RewindSession$1;)V

    .line 1456
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1458
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1462
    if-eqz v2, :cond_6

    .line 1464
    :try_start_5
    invoke-virtual {v2}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1470
    :cond_6
    :goto_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1471
    return-void

    .line 1435
    :catch_0
    move-exception v7

    .line 1436
    :try_start_7
    const-string v8, "RewindSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set EXIF thumbnail. width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", size="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v6, :cond_7

    array-length v0, v6

    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", exception="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1459
    :catch_1
    move-exception v0

    .line 1460
    :goto_2
    :try_start_8
    const-string v2, "RewindSession"

    const-string v4, "Exception when rendering to file."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1462
    if-eqz v1, :cond_6

    .line 1464
    :try_start_9
    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 1465
    :catch_2
    move-exception v0

    .line 1466
    :try_start_a
    const-string v1, "RewindSession"

    const-string v2, "Exception when closing file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    .line 1465
    :catch_3
    move-exception v0

    .line 1466
    :try_start_b
    const-string v1, "RewindSession"

    const-string v2, "Exception when closing file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 1462
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_8

    .line 1464
    :try_start_c
    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1467
    :cond_8
    :goto_4
    :try_start_d
    throw v0

    .line 1465
    :catch_4
    move-exception v1

    .line 1466
    const-string v2, "RewindSession"

    const-string v4, "Exception when closing file."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 1462
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 1459
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private renderRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "params"
    .parameter "dstBitmap"

    .prologue
    .line 1321
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RewindSession;->fullScreenRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    .line 1322
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1324
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1325
    return-void
.end method

.method private resetScreenRequest()V
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindSession;->resetScreenRequest(Lcom/scalado/base/Size;)V

    .line 1381
    return-void
.end method

.method private resetScreenRequest(Lcom/scalado/base/Size;)V
    .locals 4
    .parameter "size"

    .prologue
    .line 1371
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    .line 1372
    .local v0, cfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    if-nez p1, :cond_0

    .line 1373
    new-instance p1, Lcom/scalado/base/Size;

    .end local p1
    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->height()I

    move-result v3

    invoke-direct {p1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    .line 1375
    .restart local p1
    :cond_0
    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v1

    .line 1376
    .local v1, imgCfg:Lcom/scalado/base/Image$Config;
    invoke-direct {p0, p1, v1}, Lcom/scalado/app/rewind/RewindSession;->createScreen(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Z

    .line 1377
    return-void
.end method

.method private final restrictImageIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 779
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 780
    return p1
.end method

.method private final restrictRect(Lcom/scalado/base/Rect;)V
    .locals 8
    .parameter "rect"

    .prologue
    .line 1709
    const/4 v1, 0x0

    .line 1710
    .local v1, padding:I
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    .line 1711
    .local v2, size:Lcom/scalado/base/Size;
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    .line 1712
    .local v4, x:I
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    .line 1713
    .local v3, w:I
    if-ge v4, v1, :cond_0

    .line 1714
    sub-int v6, v1, v4

    sub-int/2addr v3, v6

    .line 1715
    move v4, v1

    .line 1717
    :cond_0
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1

    .line 1718
    add-int/lit8 v4, v4, 0x1

    .line 1720
    :cond_1
    add-int v6, v4, v3

    add-int/2addr v6, v1

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 1721
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v3, v6, v4

    .line 1723
    :cond_2
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_3

    .line 1724
    add-int/lit8 v3, v3, -0x1

    .line 1726
    :cond_3
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    .line 1727
    .local v5, y:I
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    .line 1728
    .local v0, h:I
    if-ge v5, v1, :cond_4

    .line 1729
    sub-int v6, v1, v5

    sub-int/2addr v0, v6

    .line 1730
    move v5, v1

    .line 1732
    :cond_4
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_5

    .line 1733
    add-int/lit8 v5, v5, 0x1

    .line 1735
    :cond_5
    add-int v6, v5, v0

    add-int/2addr v6, v1

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 1736
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v0, v6, v5

    .line 1738
    :cond_6
    rem-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_7

    .line 1739
    add-int/lit8 v0, v0, -0x1

    .line 1741
    :cond_7
    invoke-virtual {p1, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 1742
    invoke-virtual {p1, v5}, Lcom/scalado/base/Rect;->setY(I)V

    .line 1743
    invoke-virtual {p1, v3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 1744
    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 1745
    return-void
.end method

.method private setEffect(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1497
    packed-switch p1, :pswitch_data_0

    .line 1523
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->removeAllFilters()V

    .line 1524
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession;->mFilters:I

    .line 1527
    :goto_0
    return-void

    .line 1499
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 1501
    const v2, 0x309198

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 1513
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1514
    new-instance v1, Lcom/scalado/caps/filter/photoart/Blur;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v1, v2}, Lcom/scalado/caps/filter/photoart/Blur;-><init>(Lcom/scalado/caps/Session;)V

    .line 1515
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/scalado/caps/filter/photoart/Blur;->set(ILcom/scalado/base/Rect;)V

    .line 1516
    sget-object v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->RECTANGULAR:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    invoke-virtual {v1, v0}, Lcom/scalado/caps/filter/photoart/Blur;->setRegionMode(Lcom/scalado/caps/filter/photoart/Blur$RegionMode;)V

    .line 1518
    invoke-virtual {v1}, Lcom/scalado/caps/filter/photoart/Blur;->commit()V

    .line 1519
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession;->mFilters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession;->mFilters:I

    goto :goto_0

    .line 1504
    :cond_0
    int-to-float v0, v0

    const v2, 0x4b124e67

    div-float/2addr v0, v2

    .line 1509
    const/high16 v2, 0x3f80

    const/high16 v3, 0x40e0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1511
    const/16 v2, 0x8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 1497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final transformLength(I)I
    .locals 6
    .parameter "length"

    .prologue
    .line 1701
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->width()I

    move-result v3

    .line 1702
    .local v3, wScreen:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager;->getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->height()I

    move-result v0

    .line 1703
    .local v0, hScreen:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1704
    .local v1, lScreen:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1705
    .local v2, lSession:I
    mul-int v4, p1, v2

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method private updateRequest(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    .locals 8
    .parameter "params"

    .prologue
    .line 1328
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mJobListener:Lcom/scalado/app/rewind/JobListener;

    if-eqz v4, :cond_0

    .line 1329
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mJobListener:Lcom/scalado/app/rewind/JobListener;

    iget v5, p0, Lcom/scalado/app/rewind/RewindSession;->mJobId:I

    invoke-interface {v4, v5}, Lcom/scalado/app/rewind/JobListener;->onJobStarted(I)V

    .line 1331
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1332
    .local v0, t0:J
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->doUpdate(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    .line 1333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1334
    .local v2, t1:J
    const-string v4, "RewindSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mJobListener:Lcom/scalado/app/rewind/JobListener;

    if-eqz v4, :cond_1

    .line 1336
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession;->mJobListener:Lcom/scalado/app/rewind/JobListener;

    iget v5, p0, Lcom/scalado/app/rewind/RewindSession;->mJobId:I

    invoke-interface {v4, v5}, Lcom/scalado/app/rewind/JobListener;->onJobEnded(I)V

    .line 1338
    :cond_1
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .prologue
    .line 539
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public curSourceDimensions()Lcom/scalado/base/Size;
    .locals 4

    .prologue
    .line 398
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v0

    .line 400
    .local v0, entry:Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 401
    .end local v0           #entry:Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    .line 605
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 608
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 609
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 610
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getBackground()I
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCoordTransform()Lcom/scalado/app/rewind/CoordTransform;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    return-object v0
.end method

.method public getForeground()I
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$800(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMagnifiedPreview()Lcom/scalado/base/Image;
    .locals 4

    .prologue
    .line 648
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$800(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v2, v3}, Lcom/scalado/app/rewind/SourceManager;->getMagnifiedImage(ILcom/scalado/base/Rect;)Lcom/scalado/base/Image;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMagnifierSize()Lcom/scalado/base/Size;
    .locals 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 386
    :try_start_0
    new-instance v0, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/SourceManager;->getMagnifierWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/SourceManager;->getMagnifierHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    monitor-exit v1

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreviewBackground()Lcom/scalado/base/Image;
    .locals 4

    .prologue
    .line 661
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v2

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v0

    .line 663
    .local v0, entry:Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 664
    .end local v0           #entry:Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSourceManager()Lcom/scalado/app/rewind/SourceManager;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    return-object v0
.end method

.method public lockScreen(ILcom/scalado/base/Size;)V
    .locals 8
    .parameter "user"
    .parameter "size"

    .prologue
    .line 623
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v7

    .line 624
    :try_start_0
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;ILcom/scalado/app/rewind/RewindSession$1;)V

    .line 626
    .local v0, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 628
    .local v6, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    monitor-exit v7

    .line 630
    return-void

    .line 629
    .end local v0           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    .end local v6           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBackgroundReady(ILcom/scalado/base/Image;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-nez v0, :cond_0

    .line 1554
    const-string v0, "RewindSession"

    const-string v1, "ignoring onThumbnailReady, source manager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :goto_0
    return-void

    .line 1557
    :cond_0
    const/4 v0, 0x0

    .line 1572
    if-nez v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 1574
    const-string v1, "RewindSession"

    const-string v2, "Adding decoder %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v1, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->addSource(Lcom/scalado/caps/Decoder;)V

    .line 1578
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    invoke-interface {v0, p1, p2}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onBackgroundReady(ILcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method public onEntryReady(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1583
    if-nez p1, :cond_0

    .line 1584
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession;->calculateScreen()V

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onEntryReady(I)V

    .line 1588
    return-void
.end method

.method public outputTo(Ljava/lang/String;III)V
    .locals 9
    .parameter "filename"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 583
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v8

    .line 584
    :try_start_0
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 585
    monitor-exit v8

    .line 594
    :goto_0
    return-void

    .line 587
    :cond_0
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;IIILcom/scalado/app/rewind/RewindSession$1;)V

    .line 589
    .local v0, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 590
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 592
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    monitor-exit v8

    goto :goto_0

    .end local v0           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public render(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 450
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v7

    .line 451
    :try_start_0
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 452
    monitor-exit v7

    .line 461
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/scalado/app/rewind/RewindSession$1;)V

    .line 456
    .local v0, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 458
    .local v6, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 459
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    monitor-exit v7

    goto :goto_0

    .end local v0           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    .end local v6           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetScreen()V
    .locals 8

    .prologue
    .line 464
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v7

    .line 465
    :try_start_0
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/scalado/app/rewind/RewindSession$1;)V

    .line 466
    .local v0, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v1, v2, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 468
    .local v6, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 469
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    monitor-exit v7

    .line 471
    return-void

    .line 470
    .end local v0           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    .end local v6           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->restrictImageIndex(I)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$702(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBlur(Z)V
    .locals 3
    .parameter "blur"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v0, :cond_0

    .line 740
    monitor-exit v1

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I
    invoke-static {v2, v0}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2202(Lcom/scalado/app/rewind/RewindSession$ScreenParams;I)I

    .line 743
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 742
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/scalado/app/rewind/RewindSession$RewindCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    .line 209
    return-void
.end method

.method public setFeathering(I)V
    .locals 2
    .parameter "feathering"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->transformLength(I)I

    move-result p1

    .line 413
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$402(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setForeground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->restrictImageIndex(I)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$802(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJobListener(Lcom/scalado/app/rewind/JobListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "id"

    .prologue
    .line 733
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession;->mJobListener:Lcom/scalado/app/rewind/JobListener;

    .line 734
    iput p2, p0, Lcom/scalado/app/rewind/RewindSession;->mJobId:I

    .line 735
    return-void
.end method

.method public setMagnifiedPreviewRect(Lcom/scalado/base/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v0}, Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 358
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v2, v2, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v2, v3}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMagnifierSize(Lcom/scalado/base/Size;)V
    .locals 4
    .parameter "dims"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 378
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 379
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/scalado/app/rewind/SourceManager;->setMagnifierSize(II)V

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxTranslation(I)V
    .locals 2
    .parameter "maxTranslation"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession;->transformLength(I)I

    move-result p1

    .line 406
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$502(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V
    .locals 2
    .parameter "prio"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1102(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 4
    .parameter "rect"
    .parameter "dst"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 289
    if-eqz p1, :cond_1

    .line 290
    :try_start_0
    const-string v0, "RewindSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReplaceArea (screen coords): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/4 v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$902(Lcom/scalado/app/rewind/RewindSession$LTWParams;Z)Z

    .line 294
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1000(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 296
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1000(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindSession;->restrictRect(Lcom/scalado/base/Rect;)V

    .line 297
    if-eqz p2, :cond_0

    .line 298
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$1000(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToScreen(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 303
    :cond_0
    :goto_0
    monitor-exit v1

    .line 304
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/4 v2, 0x0

    #setter for: Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$902(Lcom/scalado/app/rewind/RewindSession$LTWParams;Z)Z

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setZoom(F)V
    .locals 3
    .parameter "zoom"

    .prologue
    .line 722
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$602(Lcom/scalado/app/rewind/RewindSession$ScreenParams;F)F

    .line 724
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    const/4 v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mDirty:Z
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2102(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Z)Z

    .line 725
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 713
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #calls: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->setZoom(Lcom/scalado/base/Rect;)V
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$1900(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Rect;)V

    .line 715
    if-eqz p2, :cond_0

    .line 716
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    #getter for: Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->access$2000(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 718
    :cond_0
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 6
    .parameter "area"
    .parameter "dst"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v1

    .line 323
    :try_start_0
    const-string v0, "jimmy"

    const-string v2, "transformReplaceArea area (X %d, Y %d)(W %d, H %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "jimmy"

    const-string v2, "transformReplaceArea dst 1(X %d, Y %d)(W %d, H %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 335
    const-string v0, "jimmy"

    const-string v2, "transformReplaceArea dst 2(X %d, Y %d)(W %d, H %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, p2}, Lcom/scalado/app/rewind/RewindSession;->restrictRect(Lcom/scalado/base/Rect;)V

    .line 340
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;

    invoke-virtual {v0, p2, p2}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToScreen(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 341
    monitor-exit v1

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 479
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v7

    .line 480
    :try_start_0
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 481
    monitor-exit v7

    .line 491
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/scalado/app/rewind/RewindSession$1;)V

    .line 485
    .local v0, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 487
    .local v6, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 488
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 489
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    monitor-exit v7

    goto :goto_0

    .end local v0           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    .end local v6           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMagnified(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 521
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    monitor-enter v7

    .line 522
    :try_start_0
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 523
    monitor-exit v7

    .line 532
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mCurParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession;->mCurMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/scalado/app/rewind/RewindSession$1;)V

    .line 527
    .local v0, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 529
    .local v6, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 530
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession;->mLooperThread:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    monitor-exit v7

    goto :goto_0

    .end local v0           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    .end local v6           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
