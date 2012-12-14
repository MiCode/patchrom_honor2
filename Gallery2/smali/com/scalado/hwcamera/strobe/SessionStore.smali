.class public final Lcom/scalado/hwcamera/strobe/SessionStore;
.super Ljava/lang/Object;
.source "SessionStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;,
        Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;,
        Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;,
        Lcom/scalado/hwcamera/strobe/SessionStore$SessionCallback;,
        Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;
    }
.end annotation


# static fields
.field public static final BASE_PATH:Ljava/io/File;

.field public static final JPEG_FILE_FILTER:Ljava/io/FileFilter;


# instance fields
.field private final mAllSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalysisObserver:Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;

.field private final mAnalyzedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnalyzer:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

.field private mBackgroundIndex:I

.field private mDisplayDims:Lcom/scalado/base/Size;

.field private mExifSession:Lcom/scalado/caps/exif/Session;

.field private mImagesDumped:Z

.field private mSessionCallback:Lcom/scalado/hwcamera/strobe/SessionStore$SessionCallback;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/hwcamera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "Camera"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/hwcamera/strobe/SessionStore;->BASE_PATH:Ljava/io/File;

    .line 68
    new-instance v0, Lcom/scalado/hwcamera/strobe/SessionStore$1;

    invoke-direct {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$1;-><init>()V

    sput-object v0, Lcom/scalado/hwcamera/strobe/SessionStore;->JPEG_FILE_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

    new-instance v1, Lcom/scalado/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/scalado/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;-><init>(Lcom/scalado/hwcamera/strobe/SessionStore$1;)V

    invoke-direct {v0, p0, v1}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;-><init>(Lcom/scalado/hwcamera/strobe/SessionStore;Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mImagesDumped:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mBackgroundIndex:I

    .line 603
    return-void
.end method

.method private createExifSession(Lcom/scalado/stream/Stream;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 589
    if-nez p1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "stream can not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    if-nez v1, :cond_1

    .line 595
    :try_start_0
    new-instance v1, Lcom/scalado/caps/exif/Session;

    invoke-direct {v1, p1}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_1
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 598
    const-string v1, "SessionStore"

    const-string v2, "error when create exif session"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDateAndTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 573
    .local v0, calendar:Ljava/util/Calendar;
    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private privateAnalyze(III)V
    .locals 14
    .parameter "start"
    .parameter "end"
    .parameter "numberOfImages"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore;->resetAnalysis()V

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v10, p3, 0x3

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 441
    .local v8, usedSessions:Ljava/lang/StringBuilder;
    const/high16 v10, 0x3f80

    sub-int v11, p2, p1

    int-to-float v11, v11

    move/from16 v0, p3

    int-to-float v12, v0

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 443
    .local v3, step:F
    int-to-float v9, p1

    .local v9, v:F
    :goto_0
    move/from16 v0, p2

    int-to-float v10, v0

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    .line 444
    float-to-int v2, v9

    .line 445
    .local v2, index:I
    iget-object v10, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    iget-object v11, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    add-float/2addr v9, v3

    goto :goto_0

    .line 448
    .end local v2           #index:I
    :cond_0
    const-string v10, "SessionStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Used sessions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 452
    .local v4, t1:J
    iget-object v10, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v10}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->analyze()V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 454
    .local v6, t2:J
    const-string v10, "SessionStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Analysis took: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v10, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;

    if-eqz v10, :cond_1

    .line 456
    iget-object v10, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;

    invoke-interface {v10}, Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;->analysisComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v4           #t1:J
    .end local v6           #t2:J
    :cond_1
    :goto_1
    return-void

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addStrobeObjects(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized analyze(IIILcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "numberOfImages"
    .parameter "observer"

    .prologue
    .line 398
    monitor-enter p0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 399
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start and end value must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :cond_1
    if-le p1, p2, :cond_2

    .line 404
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start value must less than end value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_2
    if-gtz p3, :cond_3

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfImages must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_3
    invoke-virtual {p0, p4}, Lcom/scalado/hwcamera/strobe/SessionStore;->setAnalysisObserver(Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;)V

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/hwcamera/strobe/SessionStore;->privateAnalyze(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized canAnalyze()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelAnalyze()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->cancelAnalyze()V

    .line 431
    return-void
.end method

.method public declared-synchronized doRender(Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;)V
    .locals 9
    .parameter "callback"

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mBackgroundIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 569
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore;->getStrobe()Lcom/scalado/caps/strobe/Strobe;

    move-result-object v3

    .line 555
    .local v3, strobe:Lcom/scalado/caps/strobe/Strobe;
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 556
    .local v2, object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/scalado/caps/strobe/Strobe;->setBlendValue(ID)V

    .line 557
    const-string v4, "SessionStore"

    const-string v5, "\tsetBlendValue(%d, %f)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getOpacity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 551
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v3           #strobe:Lcom/scalado/caps/strobe/Strobe;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 562
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #strobe:Lcom/scalado/caps/strobe/Strobe;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    iget v5, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mBackgroundIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual {v4}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v1

    .line 563
    .local v1, index:I
    const-string v4, "SessionStore"

    const-string v5, "\tblend(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v3, v1}, Lcom/scalado/caps/strobe/Strobe;->blend(I)V

    .line 566
    if-eqz p1, :cond_0

    .line 567
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/strobe/Strobe;->getDecoder()Lcom/scalado/caps/strobe/StrobeDecoder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-interface {p1, v4}, Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;->onStrobeRenderCompleted(Lcom/scalado/caps/Session;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getAllSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAnalyzedSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayDims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mDisplayDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getExifSession()Lcom/scalado/caps/exif/Session;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    return-object v0
.end method

.method public declared-synchronized getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShowState()[Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->getShowable()[Z

    move-result-object v0

    return-object v0
.end method

.method public getStrobe()Lcom/scalado/caps/strobe/Strobe;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzer:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->getStrobe()Lcom/scalado/caps/strobe/Strobe;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getVisibleObject()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 253
    .local v1, obj:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 251
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #obj:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v2           #visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 257
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized loadPreloadeSequence(Landroid/content/res/AssetManager;)V
    .locals 14
    .parameter "assetManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore;->reset()V

    .line 322
    const-string v12, "sequence"

    invoke-virtual {p1, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v11, v0

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v8, v0, v9

    .line 323
    .local v8, file:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sequence/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 324
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 326
    .local v3, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 327
    .local v6, fc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v6, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 328
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 329
    invoke-static {v3}, Lcom/scalado/base/Buffer;->createDirect(Ljava/nio/ByteBuffer;)Lcom/scalado/base/Buffer;

    move-result-object v1

    .line 330
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v2, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v12

    invoke-direct {v2, v1, v12}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 332
    .local v2, bufferStream:Lcom/scalado/stream/BufferStream;
    new-instance v5, Lcom/scalado/caps/codec/decoder/DecoderFactory;

    invoke-direct {v5}, Lcom/scalado/caps/codec/decoder/DecoderFactory;-><init>()V

    .line 333
    .local v5, factory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    new-instance v12, Lcom/scalado/caps/codec/decoder/JpegDecoderProvider;

    invoke-direct {v12}, Lcom/scalado/caps/codec/decoder/JpegDecoderProvider;-><init>()V

    invoke-virtual {v5, v12}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 334
    new-instance v12, Lcom/scalado/caps/codec/decoder/PngDecoderProvider;

    invoke-direct {v12}, Lcom/scalado/caps/codec/decoder/PngDecoderProvider;-><init>()V

    invoke-virtual {v5, v12}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 336
    invoke-virtual {v5, v2}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->createDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v10

    .line 337
    .local v10, it:Lcom/scalado/base/Iterator;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/scalado/base/Iterator;->step(I)F

    .line 338
    invoke-virtual {v10}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/Decoder;

    .line 339
    .local v4, decoder:Lcom/scalado/caps/Decoder;
    iget-object v12, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    new-instance v13, Lcom/scalado/caps/Session;

    invoke-direct {v13, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 341
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #bufferStream:Lcom/scalado/stream/BufferStream;
    .end local v3           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #decoder:Lcom/scalado/caps/Decoder;
    .end local v5           #factory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    .end local v6           #fc:Ljava/nio/channels/FileChannel;
    .end local v7           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #file:Ljava/lang/String;
    .end local v10           #it:Lcom/scalado/base/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 321
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public declared-synchronized loadSequence(Ljava/lang/String;)V
    .locals 11
    .parameter "dirPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore;->reset()V

    .line 352
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, dir:Ljava/io/File;
    sget-object v9, Lcom/scalado/hwcamera/strobe/SessionStore;->JPEG_FILE_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v2, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 354
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_1
    :try_start_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 358
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v3, v0, v5

    .line 359
    .local v3, file:Ljava/io/File;
    new-instance v8, Lcom/scalado/stream/FileStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v8, v9, v10}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 361
    .local v8, stream:Lcom/scalado/stream/FileStream;
    iget-object v9, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    if-nez v9, :cond_2

    .line 362
    invoke-direct {p0, v8}, Lcom/scalado/hwcamera/strobe/SessionStore;->createExifSession(Lcom/scalado/stream/Stream;)V

    .line 366
    :cond_2
    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 367
    .local v6, it:Lcom/scalado/base/Iterator;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/scalado/base/Iterator;->step(I)F

    .line 368
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/Decoder;

    .line 369
    .local v1, decoder:Lcom/scalado/caps/Decoder;
    iget-object v9, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    new-instance v10, Lcom/scalado/caps/Session;

    invoke-direct {v10, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 371
    .end local v1           #decoder:Lcom/scalado/caps/Decoder;
    .end local v3           #file:Ljava/io/File;
    .end local v6           #it:Lcom/scalado/base/Iterator;
    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    :cond_3
    iget-object v9, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/scalado/hwcamera/strobe/SessionStore$SessionCallback;

    if-eqz v9, :cond_0

    .line 372
    iget-object v9, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/scalado/hwcamera/strobe/SessionStore$SessionCallback;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/scalado/hwcamera/strobe/SessionStore$SessionCallback;->onSessionCreated(Lcom/scalado/caps/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 281
    .local v1, obj:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #obj:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 285
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 286
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 287
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 288
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 289
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mImagesDumped:Z

    .line 290
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mSessionCallback:Lcom/scalado/hwcamera/strobe/SessionStore$SessionCallback;

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resetAnalysis()V
    .locals 6

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 296
    .local v2, obj:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #obj:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 300
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mStrobeObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 302
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/Session;

    .line 304
    .local v3, session:Lcom/scalado/caps/Session;
    new-instance v0, Lcom/scalado/caps/filter/Flip;

    invoke-direct {v0, v3}, Lcom/scalado/caps/filter/Flip;-><init>(Lcom/scalado/caps/Session;)V

    .line 305
    .local v0, f:Lcom/scalado/caps/filter/Flip;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/scalado/caps/filter/Flip;->set(ZZ)V

    .line 306
    invoke-virtual {v0}, Lcom/scalado/caps/filter/Flip;->commit()V

    .line 308
    invoke-virtual {v3}, Lcom/scalado/caps/Session;->removeAllFilters()V

    goto :goto_1

    .line 310
    .end local v0           #f:Lcom/scalado/caps/filter/Flip;
    .end local v3           #session:Lcom/scalado/caps/Session;
    :cond_2
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalyzedSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    monitor-exit p0

    return-void
.end method

.method public setAnalysisObserver(Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAnalysisObserver:Lcom/scalado/hwcamera/strobe/SessionStore$AnalysisObserver;

    .line 378
    return-void
.end method

.method public declared-synchronized setBackgroundIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 266
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mAllSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must between 0 and the number ofimages added in SessionStore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mBackgroundIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    monitor-exit p0

    return-void
.end method

.method public setDisplayDims(Lcom/scalado/base/Size;)V
    .locals 0
    .parameter "dims"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore;->mDisplayDims:Lcom/scalado/base/Size;

    .line 578
    return-void
.end method
