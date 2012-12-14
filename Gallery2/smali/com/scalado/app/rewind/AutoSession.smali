.class public Lcom/scalado/app/rewind/AutoSession;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoSession$1;,
        Lcom/scalado/app/rewind/AutoSession$Replacement;,
        Lcom/scalado/app/rewind/AutoSession$LooperThread;,
        Lcom/scalado/app/rewind/AutoSession$ToUiHandler;,
        Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    }
.end annotation


# instance fields
.field private mBestBgIndex:I

.field private mDecoders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/caps/codec/decoder/JpegDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFirstTime:Z

.field private mImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

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

.field private mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

.field private mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

.field private mLtwCompleted:Z

.field private mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

.field private mMaxJpegSize:I

.field private mMaxRelAbsTransl:F

.field private mMergedImg:Lcom/scalado/base/Image;

.field private mMergedJpeg:Lcom/scalado/base/Buffer;

.field private mMinFeathering:I

.field private mNotReplaced:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mNumImages:I

.field private mNumReceived:I

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mReplacements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mScreenImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/scalado/caps/Session;

.field private mSrcDims:Lcom/scalado/base/Size;

.field private mT0:J

.field private mT0All:J

.field private mT1:J

.field private mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "numImages"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    .line 44
    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    .line 73
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    .line 82
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AutoSession;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 94
    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    .line 112
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    .line 113
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 114
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->start()V

    .line 115
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateRecycle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/AutoSession;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/AutoSession;->doSaveSourceJpeg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/scalado/app/rewind/AutoSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/AutoSession;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateAddJpeg(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/AutoSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateGetMergedImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/AutoSession;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateGetSourceImage(I)V

    return-void
.end method

.method private decodeJpeg(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    .line 429
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 430
    .local v5, srcJpeg:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, v5}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 431
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v6, Lcom/scalado/stream/BufferStream;

    invoke-direct {v6, v1, v8}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 432
    .local v6, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v6}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 433
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    .line 435
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v4, v7}, Lcom/scalado/base/Iterator;->step(I)F

    .line 436
    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v2, v0

    .line 437
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v7, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findFaceDetectionDims()V

    .line 444
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v7, v8}, Lcom/scalado/app/rewind/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 445
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/scalado/app/rewind/RectTracker;->setScreenDims(II)V

    .line 447
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findMinFeathering()V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v3

    .line 439
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "AutoSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when scaling image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doLtw()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    .line 318
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->replaceFaces()V

    .line 319
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->renderScreen()V

    .line 320
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->sendReplacementInfo()V

    .line 321
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->log()V

    .line 322
    return-void
.end method

.method private doSaveSourceJpeg(ILjava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "filename"

    .prologue
    .line 518
    const-string v0, "AutoSession"

    const-string v1, "Outputting source %d to %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, p2}, Lcom/scalado/app/rewind/FileUtils;->save(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private findFaceDetectionDims()V
    .locals 10

    .prologue
    .line 452
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 453
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 454
    .local v3, srcDims:Lcom/scalado/base/Size;
    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    .line 455
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    .line 456
    .local v4, w:I
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 461
    .local v2, h:I
    const/16 v5, 0x3c0

    .line 462
    .local v5, wBase:I
    const/16 v7, 0x320

    .line 463
    .local v7, wBaseMin:I
    const/16 v6, 0x4b0

    .line 464
    .local v6, wBaseMax:I
    div-int/lit8 v8, v4, 0x4

    if-lt v8, v7, :cond_2

    div-int/lit8 v8, v4, 0x4

    if-gt v8, v6, :cond_2

    .line 465
    div-int/lit8 v4, v4, 0x4

    .line 469
    :goto_0
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 470
    .local v0, ar:F
    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 471
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_0

    .line 472
    add-int/lit8 v4, v4, 0x1

    .line 474
    :cond_0
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_1

    .line 475
    add-int/lit8 v2, v2, 0x1

    .line 477
    :cond_1
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 478
    return-void

    .line 467
    .end local v0           #ar:F
    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method private findMinFeathering()V
    .locals 7

    .prologue
    .line 481
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 482
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 483
    .local v3, srcDims:Lcom/scalado/base/Size;
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    .line 484
    .local v4, w:I
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 485
    .local v2, h:I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x454c

    div-float/2addr v5, v6

    const/high16 v6, 0x4100

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 487
    .local v1, f:I
    const/4 v5, 0x2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    .line 488
    return-void
.end method

.method private log()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 637
    const-string v2, "AutoSession"

    const-string v3, "--- Faces ---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v2, "AutoSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Faces detected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v2, "AutoSession"

    const-string v3, "Replaced faces = %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v2, v8}, Lcom/scalado/app/rewind/RectTracker;->logDump(Z)V

    .line 641
    const-string v2, "AutoSession"

    const-string v3, "--- Replaced faces ---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v2, "AutoSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time (since all imgs) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v6, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v2, "AutoSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time (total) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v6, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v2, "AutoSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected bg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v2, "AutoSession"

    const-string v3, "Max rel abs trans = %f"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxRelAbsTransl:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 648
    .local v1, repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    const-string v2, "AutoSession"

    const-string v3, "Replace area = %s, feath. = %d, max. trans. = %d"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v5}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFeathering:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mMaxTransl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v2, "AutoSession"

    const-string v3, "   id = %d, bg = %d, fg = %d"

    new-array v4, v11, [Ljava/lang/Object;

    iget v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v2, "AutoSession"

    const-string v3, "   bg = %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectBg:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v2, "AutoSession"

    const-string v3, "   fg = %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectFg:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    .end local v1           #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    :cond_0
    const-string v2, "AutoSession"

    const-string v3, "***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method private privateAddJpeg(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 287
    iget v1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-lt v1, v2, :cond_1

    .line 288
    const-string v1, "AutoSession"

    const-string v2, "All images arleady added!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    if-eqz v1, :cond_2

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    .line 293
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 295
    :cond_2
    iget v1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v1, v2, :cond_3

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    if-nez v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/high16 v2, 0x4020

    const/high16 v3, 0x4040

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->setRectScaling(FF)V

    .line 302
    :cond_4
    iget v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 303
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 305
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/AutoSession;->decodeJpeg(I)V

    .line 306
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/AutoSession;->scaleDown(I)V

    .line 308
    iget v1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 309
    iget v1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v1, v2, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->doLtw()V

    goto :goto_0
.end method

.method private privateGetMergedImage()V
    .locals 4

    .prologue
    .line 541
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    return-void
.end method

.method private privateGetSourceImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, image:Lcom/scalado/base/Image;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 549
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #image:Lcom/scalado/base/Image;
    check-cast v0, Lcom/scalado/base/Image;

    .line 551
    .restart local v0       #image:Lcom/scalado/base/Image;
    :cond_0
    if-nez v0, :cond_1

    .line 552
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderScreen(I)Lcom/scalado/base/Image;

    move-result-object v0

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 555
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    return-void
.end method

.method private privateRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 702
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 703
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 704
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 705
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 706
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    .line 707
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedJpeg:Lcom/scalado/base/Buffer;

    .line 709
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 711
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 713
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 714
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 715
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 717
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 718
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 719
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 721
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 723
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 724
    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    .line 725
    return-void
.end method

.method private renderOutput(Ljava/lang/String;)V
    .locals 11
    .parameter "filename"

    .prologue
    .line 492
    const-string v8, "AutoSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Outputting to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v6, 0x0

    .line 495
    .local v6, stream:Lcom/scalado/stream/FileStream;
    :try_start_0
    new-instance v7, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v7, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 496
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .local v7, stream:Lcom/scalado/stream/FileStream;
    :try_start_1
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 497
    .local v0, dims:Lcom/scalado/base/Size;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v2, v7, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 498
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 499
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 500
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v9, 0x8c

    invoke-virtual {v8, v9, p1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 502
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 506
    if-eqz v7, :cond_2

    .line 508
    :try_start_2
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 514
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .end local v5           #msg:Landroid/os/Message;
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    :cond_0
    :goto_0
    return-void

    .line 509
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dims:Lcom/scalado/base/Size;
    .restart local v2       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    .restart local v5       #msg:Landroid/os/Message;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catch_0
    move-exception v3

    .line 510
    .local v3, ioe:Ljava/io/IOException;
    const-string v8, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 511
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_0

    .line 503
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .end local v5           #msg:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 504
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v8, "AutoSession"

    const-string v9, "Exception when rendering to file."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    if-eqz v6, :cond_0

    .line 508
    :try_start_4
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 509
    :catch_2
    move-exception v3

    .line 510
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v8, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 506
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_1

    .line 508
    :try_start_5
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 511
    :cond_1
    :goto_3
    throw v8

    .line 509
    :catch_3
    move-exception v3

    .line 510
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v9, "AutoSession"

    const-string v10, "Exception when closing file."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 506
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_2

    .line 503
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_1

    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dims:Lcom/scalado/base/Size;
    .restart local v2       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    .restart local v5       #msg:Landroid/os/Message;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :cond_2
    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_0
.end method

.method private renderScreen(I)Lcom/scalado/base/Image;
    .locals 6
    .parameter "index"

    .prologue
    .line 338
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 339
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 340
    .local v3, session:Lcom/scalado/caps/Session;
    new-instance v1, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v4, v5}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 341
    .local v1, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v2, v3, v1}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 342
    .local v2, screen:Lcom/scalado/caps/screen/Screen;
    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 343
    return-object v1
.end method

.method private renderScreen()V
    .locals 5

    .prologue
    .line 325
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 326
    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 327
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 328
    .local v0, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/screen/Screen;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v2, v3, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 329
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    .line 331
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    .line 332
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    return-void
.end method

.method private replaceFaces()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method private scaleDown(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 413
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 414
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 415
    .local v5, session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 417
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 419
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 420
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 426
    return-void

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AutoSession"

    const-string v7, "Exception when rendering image!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendReplacementInfo()V
    .locals 11

    .prologue
    .line 663
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v4

    .line 664
    .local v4, n:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 665
    .local v8, replacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 666
    .local v7, repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 667
    .local v0, cr:Lcom/scalado/base/Rect;
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v10, v7, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v9, v10, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 668
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 669
    .local v6, r:Landroid/graphics/Rect;
    invoke-static {v0, v6}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 670
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    .end local v0           #cr:Lcom/scalado/base/Rect;
    .end local v6           #r:Landroid/graphics/Rect;
    .end local v7           #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    .local v5, notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 675
    .restart local v7       #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 676
    .restart local v0       #cr:Lcom/scalado/base/Rect;
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v10, v7, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v9, v10, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 677
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 678
    .restart local v6       #r:Landroid/graphics/Rect;
    invoke-static {v0, v6}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 679
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    .end local v0           #cr:Lcom/scalado/base/Rect;
    .end local v6           #r:Landroid/graphics/Rect;
    .end local v7           #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    :cond_1
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/util/ArrayList;

    .line 682
    .local v2, lists:[Ljava/util/ArrayList;
    const/4 v9, 0x0

    aput-object v8, v2, v9

    .line 683
    const/4 v9, 0x1

    aput-object v5, v2, v9

    .line 684
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v10, 0xa0

    invoke-virtual {v9, v10, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 685
    .local v3, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v9, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 686
    return-void
.end method


# virtual methods
.method public getMergedImage()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$100(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$100(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method

.method public getSourceImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$100(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$100(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    .line 158
    return-void
.end method

.method public setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 3
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 118
    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    .line 119
    iput-object p2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    .line 120
    return-void
.end method
