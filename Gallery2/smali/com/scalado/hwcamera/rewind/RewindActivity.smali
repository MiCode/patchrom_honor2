.class public Lcom/scalado/hwcamera/rewind/RewindActivity;
.super Landroid/app/Activity;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;,
        Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;,
        Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;,
        Lcom/scalado/hwcamera/rewind/RewindActivity$MyTopbarListener;,
        Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;,
        Lcom/scalado/hwcamera/rewind/RewindActivity$MediaScannerNotifier;,
        Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;
    }
.end annotation


# instance fields
.field private mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;

.field private mCapturingEnabled:Z

.field private mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

.field private mDidRegister:Z

.field private mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

.field private mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

.field private mIsDeletingFiles:Z

.field private mJpegQuality:I

.field private mJpegThumbnailHeight:I

.field private mJpegThumbnailWidth:I

.field private mMyHandler:Landroid/os/Handler;

.field private mOkBtn:Lcom/scalado/hwcamera/rewind/Button;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRewindApp:Lcom/scalado/app/rewind/RewindApp;

.field private mRewindSurfaceView:Landroid/view/SurfaceView;

.field private mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;

.field private mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

.field private mViewer:Lcom/scalado/app/rewind/RewindViewer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCapturingEnabled:Z

    .line 73
    const/16 v0, 0x400

    iput v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mPreviewWidth:I

    .line 74
    const/16 v0, 0x258

    iput v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mPreviewHeight:I

    .line 98
    new-instance v0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;

    .line 101
    iput-object v2, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 106
    iput-boolean v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z

    .line 107
    iput-boolean v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    .line 720
    new-instance v0, Lcom/scalado/hwcamera/rewind/RewindActivity$3;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/rewind/RewindActivity$3;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 736
    return-void
.end method

.method static synthetic access$1300(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/IndexSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Topbar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/scalado/hwcamera/rewind/RewindActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->addToMediaStore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/scalado/hwcamera/rewind/RewindActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->saveRewind()V

    return-void
.end method

.method static synthetic access$2400(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/scalado/hwcamera/rewind/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/scalado/hwcamera/rewind/RewindActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V

    return-void
.end method

.method private addToMediaStore(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 555
    .line 558
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 562
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 563
    if-eqz v1, :cond_6

    .line 564
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 567
    :goto_0
    const/4 v4, 0x1

    if-ne v4, v1, :cond_0

    :goto_1
    move v1, v0

    .line 587
    :goto_2
    const/4 v0, 0x0

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 589
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "_display_name"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v0, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    const-string v0, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v0, "_data"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 596
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 605
    :goto_3
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x6

    if-ne v0, v1, :cond_1

    .line 570
    const/16 v0, 0x5a

    goto :goto_1

    .line 571
    :cond_1
    const/4 v0, 0x3

    if-ne v0, v1, :cond_2

    .line 572
    const/16 v0, 0xb4

    goto :goto_1

    .line 573
    :cond_2
    const/16 v0, 0x8

    if-ne v0, v1, :cond_5

    .line 574
    const/16 v0, 0x10e

    goto :goto_1

    .line 578
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    .line 580
    new-array v1, v1, [B

    .line 581
    if-eqz v1, :cond_4

    .line 582
    invoke-static {v1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_4
    move v1, v0

    .line 584
    goto :goto_2

    .line 598
    :catch_0
    move-exception v0

    .line 600
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 602
    :catchall_0
    move-exception v0

    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v1, v0

    goto/16 :goto_0
.end method

.method private createViewerConfig()Lcom/scalado/app/rewind/RewindViewerConfig;
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    .line 324
    new-instance v4, Lcom/scalado/app/rewind/RewindViewerConfig;

    invoke-direct {v4}, Lcom/scalado/app/rewind/RewindViewerConfig;-><init>()V

    .line 325
    .local v4, viewerCfg:Lcom/scalado/app/rewind/RewindViewerConfig;
    iget-object v6, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    .line 326
    iget-object v6, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->indexSelector:Lcom/scalado/app/rewind/ExtIndexSelector;

    .line 327
    iget-object v6, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/scalado/hwcamera/rewind/Button;

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    .line 328
    iget-object v6, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    .line 329
    sget-boolean v6, Lcom/android/hwcamera/Config;->saveEnabled:Z

    if-eqz v6, :cond_0

    .line 330
    iget-object v6, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020174

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 336
    .local v5, wheelBitmap:Landroid/graphics/Bitmap;
    const-string v6, "RewindActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object v5, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelBitmap:Landroid/graphics/Bitmap;

    .line 344
    new-array v1, v11, [I

    fill-array-data v1, :array_0

    .line 349
    .local v1, normalWheels:[I
    new-array v3, v11, [I

    fill-array-data v3, :array_1

    .line 354
    .local v3, pressedWheels:[I
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020055

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 357
    iput-object v1, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmapNormals:[I

    .line 358
    iput-object v3, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmapPresseds:[I

    .line 365
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->relCenter:Landroid/graphics/PointF;

    .line 366
    const v6, 0x3ef15f16

    iput v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->relR:F

    .line 367
    const v6, 0x3d88c6f3

    iput v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->relRimW:F

    .line 368
    const v6, 0x3f6523af

    iput v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorY:F

    .line 369
    const v6, 0x3d78af8b

    iput v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorExtraY:F

    .line 372
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 373
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 374
    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 375
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020173

    invoke-static {v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    .local v0, jobbing:Landroid/graphics/Bitmap;
    iput-object v0, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->jobbingBitmap:Landroid/graphics/Bitmap;

    .line 379
    invoke-direct {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->setPredefinedImages(Lcom/scalado/app/rewind/RewindViewerConfig;)V

    .line 381
    sget v6, Lcom/android/hwcamera/Config;->rewindMode:I

    iput v6, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    .line 382
    return-object v4

    .line 344
    :array_0
    .array-data 0x4
        0x51t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
    .end array-data

    .line 349
    :array_1
    .array-data 0x4
        0x52t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private deleteFolderSilently()V
    .locals 2

    .prologue
    .line 677
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/scalado/hwcamera/rewind/RewindActivity$2;

    invoke-direct {v1, p0}, Lcom/scalado/hwcamera/rewind/RewindActivity$2;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 688
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 240
    const v4, 0x7f040037

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->setContentView(I)V

    .line 242
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "quality_key"

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mJpegQuality:I

    .line 244
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "jpeg_thumbnail_width_key"

    const/16 v6, 0xa0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mJpegThumbnailWidth:I

    .line 246
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "jpeg_thumbnail_height_key"

    const/16 v6, 0x78

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mJpegThumbnailHeight:I

    .line 250
    const v4, 0x7f0c00af

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    .line 252
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 255
    const v4, 0x7f0c00b1

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scalado/hwcamera/rewind/Topbar;

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

    .line 256
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

    new-instance v5, Lcom/scalado/hwcamera/rewind/RewindActivity$MyTopbarListener;

    invoke-direct {v5, p0, v7}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyTopbarListener;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/scalado/hwcamera/rewind/Topbar;->setListener(Lcom/scalado/hwcamera/rewind/Topbar$TopbarListener;)V

    .line 257
    const v4, 0x7f0c004b

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scalado/hwcamera/rewind/IndexSelector;

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    .line 258
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    iget-object v5, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

    invoke-virtual {v4, v5}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setTopbar(Lcom/scalado/hwcamera/rewind/Timeoutable;)V

    .line 259
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    new-instance v5, Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;

    invoke-direct {v5, p0, v7}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setIndexListener(Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;)V

    .line 260
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    sget v5, Lcom/android/hwcamera/Config;->burstSize:I

    invoke-virtual {v4, v5}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setNumberOfItems(I)V

    .line 261
    sget-boolean v4, Lcom/android/hwcamera/Config;->backgroundSelectionEnabled:Z

    if-nez v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setVisibility(I)V

    .line 265
    :cond_0
    new-instance v3, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;

    invoke-direct {v3, p0, v7}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V

    .line 266
    .local v3, onClickListener:Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;
    const v4, 0x7f0c00b2

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scalado/hwcamera/rewind/Button;

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;

    .line 267
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;

    invoke-virtual {v4, v3}, Lcom/scalado/hwcamera/rewind/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;

    invoke-virtual {v4}, Lcom/scalado/hwcamera/rewind/Button;->hide()V

    .line 269
    const v4, 0x7f0c0030

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scalado/hwcamera/rewind/Button;

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/scalado/hwcamera/rewind/Button;

    .line 270
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/scalado/hwcamera/rewind/Button;

    invoke-virtual {v4, v3}, Lcom/scalado/hwcamera/rewind/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/scalado/hwcamera/rewind/Button;

    invoke-virtual {v4}, Lcom/scalado/hwcamera/rewind/Button;->hide()V

    .line 272
    const v4, 0x7f0c0032

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scalado/hwcamera/rewind/Button;

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;

    .line 273
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;

    invoke-virtual {v4, v3}, Lcom/scalado/hwcamera/rewind/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;

    invoke-virtual {v4}, Lcom/scalado/hwcamera/rewind/Button;->hide()V

    .line 276
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->initRewind()V

    .line 278
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f3

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 280
    .local v1, diodOn:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f2

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, diodOff:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    invoke-virtual {v4, v0, v1}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setCheckBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 284
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;

    invoke-virtual {v4, p0}, Lcom/scalado/hwcamera/rewind/Topbar;->setActivity(Landroid/app/Activity;)V

    .line 286
    return-void
.end method

.method private initRewind()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->createViewerConfig()Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 291
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :pswitch_0
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v1, p0}, Lcom/scalado/app/rewind/ManualRewindViewer;-><init>(Landroid/view/SurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    .line 305
    :goto_0
    new-instance v0, Lcom/scalado/app/rewind/RewindApp;

    sget-boolean v3, Lcom/android/hwcamera/Config;->previewEnabled:Z

    sget v4, Lcom/android/hwcamera/Config;->burstSize:I

    iget-object v5, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RewindApp;-><init>(Landroid/content/Context;Lcom/scalado/app/rewind/RewindApp$CameraInterface;ZILcom/scalado/app/rewind/RewindViewerConfig;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    .line 307
    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    iget-object v8, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    move-object v5, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/scalado/app/rewind/RewindApp;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lcom/scalado/app/rewind/RewindViewer;)V

    .line 310
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    invoke-direct {v1, p0, v2}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V

    .line 311
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->setRewindActivityHandler(Landroid/os/Handler;)V

    .line 312
    sget-boolean v0, Lcom/android/hwcamera/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    iget v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mPreviewHeight:I

    iget v3, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mPreviewFormat:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp;->setPreviewConfig(III)V

    .line 316
    :cond_0
    return-void

    .line 297
    :pswitch_1
    new-instance v0, Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    .line 298
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;

    sget v1, Lcom/android/hwcamera/Config;->burstSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/IndexSelector;->setNumberOfItems(I)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    .line 162
    return-void
.end method

.method private loadImages()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V

    .line 481
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->loadImages()V

    .line 482
    return-void
.end method

.method private predefPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getDcimPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Rewind_preload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveRewind()V
    .locals 6

    .prologue
    .line 485
    sget-boolean v0, Lcom/android/hwcamera/Config;->saveEnabled:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 492
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 494
    sget v0, Lcom/android/hwcamera/Config;->rewindMode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 495
    const-string v0, "AUTO_REW"

    .line 499
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DCIM_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "yyyy-MM-dd_kk.mm.ss"

    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    iget v2, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mJpegQuality:I

    iget v3, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mJpegThumbnailWidth:I

    iget v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mJpegThumbnailHeight:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/scalado/app/rewind/RewindApp;->saveRewind(Ljava/lang/String;III)V

    goto :goto_0

    .line 497
    :cond_2
    const-string v0, "REW"

    goto :goto_1
.end method

.method private setPredefinedImages(Lcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x5

    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "setPredefinedImages E"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/android/hwcamera/Storage;->getRewindPath()Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LTWIMG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, ".jpg"

    .line 390
    sget v2, Lcom/android/hwcamera/Config;->sampleNumn:I

    if-nez v2, :cond_2

    .line 391
    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "4"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 394
    iput-object v2, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    .line 396
    array-length v0, v2

    sput v0, Lcom/android/hwcamera/Config;->burstSize:I

    .line 414
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    .line 418
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$1200(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/android/hwcamera/Config;->burstSize:I

    .line 420
    :cond_1
    sget v0, Lcom/android/hwcamera/Config;->burstSize:I

    iget-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_4

    .line 421
    const-string v0, "RewindActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config.burstSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/hwcamera/Config;->burstSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v0, "RewindActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predefinedImages.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "burst size != # images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    sget v0, Lcom/android/hwcamera/Config;->sampleNumn:I

    if-ne v0, v5, :cond_3

    .line 399
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LTWIMG_640x480_00.jpg"

    aput-object v1, v0, v7

    const-string v1, "LTWIMG_640x480_01.jpg"

    aput-object v1, v0, v5

    const-string v1, "LTWIMG_640x480_02.jpg"

    aput-object v1, v0, v6

    const-string v1, "LTWIMG_640x480_03.jpg"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "LTWIMG_640x480_04.jpg"

    aput-object v2, v0, v1

    .line 402
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 403
    iput-object v0, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 404
    iput-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    goto/16 :goto_0

    .line 405
    :cond_3
    sget v0, Lcom/android/hwcamera/Config;->sampleNumn:I

    if-ne v0, v6, :cond_0

    .line 406
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LTWIMG_P_2796x1864_00.jpg"

    aput-object v1, v0, v7

    const-string v1, "LTWIMG_P_2796x1864_01.jpg"

    aput-object v1, v0, v5

    const-string v1, "LTWIMG_P_2796x1864_02.jpg"

    aput-object v1, v0, v6

    const-string v1, "LTWIMG_P_2796x1864_03.jpg"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "LTWIMG_P_2796x1864_04.jpg"

    aput-object v2, v0, v1

    .line 409
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 410
    iput-object v0, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    .line 411
    iput-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    goto/16 :goto_0

    .line 426
    :cond_4
    return-void

    .line 402
    nop

    :array_0
    .array-data 0x4
        0x38t 0x14t 0x1t 0x0t
        0x48t 0x14t 0x1t 0x0t
        0xe7t 0x13t 0x1t 0x0t
        0x6dt 0x13t 0x1t 0x0t
        0x19t 0x18t 0x1t 0x0t
    .end array-data

    .line 409
    :array_1
    .array-data 0x4
        0x10t 0xeet 0xct 0x0t
        0x18t 0xb6t 0xct 0x0t
        0x72t 0x9ft 0xct 0x0t
        0xb8t 0xf7t 0xct 0x0t
        0xc1t 0xe4t 0xct 0x0t
    .end array-data
.end method

.method private setProgressBarVisible(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0f002c

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 168
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 170
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 171
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 172
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040032

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 175
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/scalado/hwcamera/rewind/RewindActivity$1;

    invoke-direct {v1, p0}, Lcom/scalado/hwcamera/rewind/RewindActivity$1;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V

    .line 673
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 674
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0x400

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v4, "RewindActivity"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v4, "RewindActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "model = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, v8}, Lcom/scalado/hwcamera/rewind/RewindActivity;->requestWindowFeature(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 118
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 119
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 120
    .local v2, w:I
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 121
    .local v0, h:I
    const-string v4, "RewindActivity"

    const-string v5, "Window = %dx%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    new-instance v4, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->predefPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rewindconfig"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V

    iput-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    .line 127
    const-string v4, "RewindActivity"

    const-string v5, "Read config from \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->filename()Ljava/lang/String;
    invoke-static {v8}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$200(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabledSet:Z
    invoke-static {v4}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$300(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabled:Z
    invoke-static {v4}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$400(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)Z

    move-result v4

    sput-boolean v4, Lcom/android/hwcamera/Config;->previewEnabled:Z

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mRewindModeSet:Z
    invoke-static {v4}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$500(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->mRewindMode:I
    invoke-static {v4}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$600(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)I

    move-result v4

    sput v4, Lcom/android/hwcamera/Config;->rewindMode:I

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->numImages()I
    invoke-static {v4}, Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;->access$700(Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;)I

    move-result v4

    sput v4, Lcom/android/hwcamera/Config;->burstSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->init()V

    .line 143
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v4, p1}, Lcom/scalado/app/rewind/RewindApp;->onCreate(Landroid/os/Bundle;)V

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->loadImages()V

    .line 147
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->installIntentFilter()V

    .line 149
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "RewindActivity"

    const-string v5, "Failed to read config file. No worries, ignoring."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object v10, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mFileConfig:Lcom/scalado/hwcamera/rewind/RewindActivity$FileConfig;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "RewindActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 231
    iget-boolean v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mDidRegister:Z

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->destroy()V

    .line 236
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 237
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/rewind/RewindApp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 440
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/rewind/RewindApp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 443
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 465
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 451
    :sswitch_1
    iget-boolean v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mCapturingEnabled:Z

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindApp;->capture()V

    goto :goto_0

    .line 456
    :sswitch_2
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->saveRewind()V

    goto :goto_0

    .line 443
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0x1d -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V

    .line 220
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 222
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 206
    const-string v0, "RewindActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    const-string v0, "RewindActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->resume()V

    .line 213
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 197
    const-string v0, "RewindActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 225
    const-string v0, "RewindActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 469
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v1, p1}, Lcom/scalado/app/rewind/RewindApp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const/4 v0, 0x0

    goto :goto_0
.end method
