.class public Lcom/android/hwcamera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static HwCustProcessClass:Ljava/lang/Class;

.field private static HwExtCameraClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static HwExtCameraFieldList:[Ljava/lang/reflect/Field;

.field private static HwExtCameraInstance:Ljava/lang/Object;

.field private static HwExtCameraMethodList:[Ljava/lang/reflect/Method;

.field private static ParameterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private static mExposureCompensationStep:F

.field private static mIsCafEnded:Z

.field private static mMaxExposureCompensation:I

.field private static mMediaRecorder:Landroid/media/MediaRecorder;

.field private static mMinExposureCompensation:I

.field private static mParameters:Landroid/hardware/Camera$Parameters;

.field private static sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

.field private static sIsTabletUI:Z

.field private static sLocation:[I

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 314
    invoke-static {}, Lcom/android/hwcamera/Util;->getHwCustProcessClass()V

    .line 868
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    .line 869
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    .line 870
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    .line 871
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraFieldList:[Ljava/lang/reflect/Field;

    .line 876
    sput-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    .line 878
    sput-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 879
    sput-object v1, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 882
    sput-object v1, Lcom/android/hwcamera/Util;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 883
    sput v2, Lcom/android/hwcamera/Util;->mMaxExposureCompensation:I

    .line 884
    sput v2, Lcom/android/hwcamera/Util;->mMinExposureCompensation:I

    .line 885
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/Util;->mExposureCompensationStep:F

    .line 2909
    sput-boolean v2, Lcom/android/hwcamera/Util;->mIsCafEnded:Z

    .line 3066
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/hwcamera/Util;->sLocation:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;

    .line 310
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 311
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 575
    if-nez p0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 578
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2676
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2677
    return-void
.end method

.method public static calDisplayMetrics(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3060
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3061
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3062
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Lcom/android/hwcamera/hwui/MenuCommon;->setDensity(F)V

    .line 3063
    return-void
.end method

.method public static calValidTouchFocusArea()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3012
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3013
    const/4 v1, 0x0

    .line 3014
    .local v1, rightBoard:I
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3015
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v3

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 3019
    :goto_0
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v2

    invoke-static {v5, v5, v1, v2}, Lcom/android/hwcamera/hwui/MenuCommon;->setValidTouchFocusArea(IIII)V

    .line 3029
    .end local v1           #rightBoard:I
    :goto_1
    return-void

    .line 3017
    .restart local v1       #rightBoard:I
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v1

    goto :goto_0

    .line 3021
    .end local v1           #rightBoard:I
    :cond_1
    const/4 v0, 0x0

    .line 3022
    .local v0, bottomBoard:I
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3023
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v3

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 3027
    :goto_2
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v2

    invoke-static {v5, v5, v2, v0}, Lcom/android/hwcamera/hwui/MenuCommon;->setValidTouchFocusArea(IIII)V

    goto :goto_1

    .line 3025
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v0

    goto :goto_2
.end method

.method public static cancelPanorama()V
    .locals 3

    .prologue
    .line 1947
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1948
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "cancelPanorama"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1949
    if-eqz v0, :cond_0

    .line 1950
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    :goto_0
    return-void

    .line 1952
    :cond_0
    const-string v0, "Util"

    const-string v1, "stopPanorama HwExtCameraClass can\'t find stopPanorama()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1955
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v1, "stopPanorama HwExtCameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static cancelTakePictureEx()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2094
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 2095
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "cancelTakePictureEx"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2096
    if-eqz v1, :cond_0

    .line 2097
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    const/4 v0, 0x1

    .line 2109
    :goto_0
    return v0

    .line 2100
    :cond_0
    const-string v1, "Util"

    const-string v2, "cancelTakePictureEx interface not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v1

    .line 2106
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2103
    :cond_1
    :try_start_1
    const-string v1, "Util"

    const-string v2, "not support"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 765
    :cond_0
    return-object p0
.end method

.method public static checkUsbStorageIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, bUsb:Z
    if-eqz p0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 345
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, getPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "/mnt/usb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    const/4 v0, 0x1

    .line 353
    .end local v1           #getPath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return v0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 793
    if-le p0, p2, :cond_0

    .line 795
    .end local p2
    :goto_0
    return p2

    .line 794
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 795
    goto :goto_0
.end method

.method public static clearShootMode()V
    .locals 3

    .prologue
    .line 2435
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2436
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "clearShotMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2437
    if-eqz v0, :cond_0

    .line 2438
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2441
    :catch_0
    move-exception v0

    .line 2442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 542
    if-nez p0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 544
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 508
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 509
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 511
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 513
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 517
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 528
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 511
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 513
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 522
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 524
    goto :goto_2

    .line 525
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 528
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 444
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 448
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 449
    const/4 v1, 0x1

    .line 450
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 451
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 457
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 2668
    sget-object v1, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    monitor-enter v1

    .line 2669
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/hwcamera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2670
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 377
    sget v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 769
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2699
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2705
    :goto_0
    return-void

    .line 2701
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2702
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2703
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2704
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2708
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2714
    :goto_0
    return-void

    .line 2710
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2711
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2712
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2713
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getBrightnessStep()I
    .locals 5

    .prologue
    .line 2274
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 2275
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2276
    const/4 v1, 0x0

    .line 2277
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 2278
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 2281
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 461
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 462
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 463
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2373
    .line 2376
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2377
    sget-object v0, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    const-string v3, "getInt"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2378
    sget-object v3, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2379
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 2392
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2379
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2382
    goto :goto_0

    .line 2386
    :catch_0
    move-exception v0

    .line 2387
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 2391
    goto :goto_0

    .line 2389
    :catch_1
    move-exception v0

    move v0, v1

    .line 2391
    goto :goto_0

    .line 2390
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static getContrastStep()I
    .locals 5

    .prologue
    .line 2138
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 2139
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2140
    const/4 v1, 0x0

    .line 2141
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 2142
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 2145
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getDelayTime(I)I
    .locals 2
    .parameter

    .prologue
    .line 2839
    const-string v0, "ro.autotest.delaytimes"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2840
    mul-int/2addr v0, p0

    return v0
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 829
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 830
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 832
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 833
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 834
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 838
    :goto_0
    return v1

    .line 836
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 799
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 801
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 807
    :goto_0
    :pswitch_0
    return v1

    .line 803
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 804
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 805
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 2514
    sget v0, Lcom/android/hwcamera/Util;->mExposureCompensationStep:F

    return v0
.end method

.method public static getHWConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2396
    .line 2399
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2400
    sget-object v0, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    const-string v1, "getInt"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2401
    sget-object v1, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 2409
    :cond_0
    :goto_0
    return p2

    .line 2404
    :catch_0
    move-exception v0

    .line 2405
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2407
    :catchall_0
    move-exception v0

    throw v0

    .line 2406
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getHwConfigStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2415
    const/4 v1, 0x0

    .line 2417
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2418
    sget-object v0, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    const-string v2, "getString"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2419
    sget-object v2, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2426
    :goto_0
    if-nez v0, :cond_0

    .line 2429
    :goto_1
    return-object p2

    .line 2421
    :catch_0
    move-exception v0

    .line 2422
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 2425
    goto :goto_0

    .line 2423
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 2425
    goto :goto_0

    .line 2424
    :catchall_0
    move-exception v0

    throw v0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static getHwCustProcessClass()V
    .locals 3

    .prologue
    .line 320
    :try_start_0
    const-string v1, "android.provider.SettingsEx$Systemex"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->HwCustProcessClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 321
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 322
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "Util"

    const-string v2, "android.provider.SettingsEx$Systemex is missing "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;
    .locals 7
    .parameter "cameraId"

    .prologue
    const/4 v2, 0x0

    .line 916
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "U8860"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    :goto_0
    return-object v2

    .line 920
    :cond_0
    :try_start_0
    const-string v3, "com.huawei.hwextcamera.HwExtCamera"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    .line 921
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 922
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    .line 935
    new-instance v3, Lcom/android/hwcamera/HwCamera;

    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/android/hwcamera/HwCamera;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 936
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 937
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2343
    const-string v0, "KEY_HUAWEI_BRIGHTNESS"

    if-ne p0, v0, :cond_0

    .line 2344
    const-string v0, "getBrightnessKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    :goto_0
    return-object v0

    .line 2345
    :cond_0
    const-string v0, "KEY_HUAWEI_CONTRAST"

    if-ne p0, v0, :cond_1

    .line 2346
    const-string v0, "getContrastKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2347
    :cond_1
    const-string v0, "KEY_HUAWEI_ISO"

    if-ne p0, v0, :cond_2

    .line 2348
    const-string v0, "getIsoKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2349
    :cond_2
    const-string v0, "KEY_HUAWEI_SATURATION"

    if-ne p0, v0, :cond_3

    .line 2350
    const-string v0, "getSaturationKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2352
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "methodStr"

    .prologue
    .line 2356
    const-string v2, ""

    .line 2358
    .local v2, keyValue:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 2359
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2360
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 2361
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 2368
    .end local v2           #keyValue:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .local v3, keyValue:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2365
    .end local v3           #keyValue:Ljava/lang/String;
    .restart local v2       #keyValue:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2366
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .line 2368
    .end local v2           #keyValue:Ljava/lang/String;
    .restart local v3       #keyValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMaxBrightness()I
    .locals 2

    .prologue
    .line 2288
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 2289
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2292
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMaxContrast()I
    .locals 2

    .prologue
    .line 2152
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 2153
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2156
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 2503
    sget v0, Lcom/android/hwcamera/Util;->mMaxExposureCompensation:I

    return v0
.end method

.method public static getMaxSaturation()I
    .locals 2

    .prologue
    .line 2465
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 2466
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2469
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinBrightness()I
    .locals 2

    .prologue
    .line 2299
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 2300
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2301
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2303
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinContrast()I
    .locals 2

    .prologue
    .line 2163
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 2164
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2165
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2167
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 2509
    sget v0, Lcom/android/hwcamera/Util;->mMinExposureCompensation:I

    return v0
.end method

.method public static getMinSaturation()I
    .locals 2

    .prologue
    .line 2476
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 2477
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2478
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2480
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMiniPanorama()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1899
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1900
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "getMiniPanorama"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1901
    if-eqz v0, :cond_0

    .line 1902
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1914
    :goto_0
    return-object v0

    .line 1904
    :cond_0
    const-string v0, "Util"

    const-string v1, "startPanorama HwExtCameraClass can\'t find startPanorama()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1908
    :cond_1
    const-string v0, "Util"

    const-string v1, "startPanorama HwExtCameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1911
    :catch_0
    move-exception v0

    .line 1912
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPackageInfo(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 332
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 333
    .local v1, info:Landroid/content/pm/PackageInfo;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HwCamera versionName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; versionCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Util"

    const-string v4, "getPackageInfo error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getParameterInstance()V
    .locals 3

    .prologue
    .line 991
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    .line 994
    sget-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 998
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 999
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "Util"

    const-string v2, "Got getParameterInstance exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRedEyeReductionSupported()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1452
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1453
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setRedEyeReduction"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1454
    if-eqz v2, :cond_0

    .line 1463
    :goto_0
    return v0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    .line 1463
    goto :goto_0
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .parameter "reference"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3069
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3070
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v0, v2, v4

    .line 3071
    .local v0, referenceX:I
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v1, v2, v5

    .line 3072
    .local v1, referenceY:I
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3073
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 3074
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v3, v2, v5

    sub-int/2addr v3, v1

    aput v3, v2, v5

    .line 3075
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    return-object v2
.end method

.method public static getSaturationStep()I
    .locals 5

    .prologue
    .line 2451
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 2452
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2453
    const/4 v1, 0x0

    .line 2454
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 2455
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 2458
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getSupportedBrightnessDegrees()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2310
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v1

    div-int/2addr v0, v1

    .line 2311
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxBrightness()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v2

    div-int v2, v1, v2

    .line 2313
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2314
    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-gt v0, v2, :cond_0

    .line 2315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2317
    :cond_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedBrightnessValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2252
    const/4 v1, 0x0

    .line 2254
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2255
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "getSupportedBrightnessValues"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2256
    if-eqz v0, :cond_0

    .line 2257
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2259
    :cond_0
    :try_start_1
    const-string v0, "Util"

    const-string v2, "getSupportedBrightnessValues interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 2262
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass not support"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSupportedContrastDegrees()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2174
    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 2175
    const/4 v0, 0x0

    .line 2184
    :goto_0
    return-object v0

    .line 2177
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v1

    div-int/2addr v0, v1

    .line 2178
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxContrast()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v2

    div-int v2, v1, v2

    .line 2180
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2181
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-gt v0, v2, :cond_1

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2184
    :cond_1
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportedContrastValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2116
    const/4 v1, 0x0

    .line 2118
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2119
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "getSupportedContrastValues"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2120
    if-eqz v0, :cond_0

    .line 2121
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2123
    :cond_0
    :try_start_1
    const-string v0, "Util"

    const-string v2, "getSupportedContrastValues interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 2126
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass not support"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2128
    :catch_0
    move-exception v0

    .line 2129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSupportedDistortionValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1610
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1611
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "getSupportFaceDistortions"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1612
    if-eqz v0, :cond_0

    .line 1613
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1617
    :goto_0
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :goto_1
    return-object v0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 1621
    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSupportedFaceDetectionModes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1399
    :try_start_0
    const-string v1, "FaceTracking"

    .line 1400
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1401
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "isFeatureSupported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1402
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1403
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    const-string v1, "on,off"

    .line 1409
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1412
    :goto_1
    return-object v0

    .line 1410
    :catch_0
    move-exception v1

    .line 1411
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getSupportedHdrMode()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1050
    const/4 v3, 0x0

    .line 1051
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v7, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    .line 1052
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v5, supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "on"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v7, "off"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v4

    .line 1056
    .local v4, shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "hdr"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1057
    .local v0, bRetVal:Z
    if-eqz v0, :cond_0

    .line 1088
    .end local v0           #bRetVal:Z
    .end local v3           #result:Ljava/lang/Object;
    .end local v4           #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v0       #bRetVal:Z
    .restart local v3       #result:Ljava/lang/Object;
    .restart local v4       #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v5, v6

    .line 1060
    goto :goto_0

    .line 1062
    .end local v0           #bRetVal:Z
    .end local v4           #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v7, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v7, :cond_2

    .line 1063
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :cond_2
    const/4 v2, 0x0

    .line 1068
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v7, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v8, "getSupportedHdrMode"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1073
    :goto_1
    if-eqz v2, :cond_4

    .line 1074
    :try_start_2
    sget-object v7, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Object;
    :cond_3
    :goto_2
    move-object v5, v6

    .line 1088
    goto :goto_0

    .line 1076
    .restart local v3       #result:Ljava/lang/Object;
    :cond_4
    sget-object v7, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v8, "exhdr-values"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, result:Ljava/lang/String;
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSupportedHdrMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1080
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v1

    .line 1086
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1070
    .end local v1           #ex:Ljava/lang/Exception;
    .local v3, result:Ljava/lang/Object;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static getSupportedIsoValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1686
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1687
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "getSupportedIsoValues"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1688
    if-eqz v0, :cond_2

    .line 1689
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1702
    :goto_0
    if-nez v0, :cond_1

    .line 1708
    :goto_1
    return-object v1

    .line 1694
    :cond_0
    sget-object v0, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 1695
    sget-object v0, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v2, "getSupportedIsoValues"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1696
    if-eqz v0, :cond_2

    .line 1697
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1705
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSupportedSaturationDegrees()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2487
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v1

    div-int/2addr v0, v1

    .line 2488
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxSaturation()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v2

    div-int v2, v1, v2

    .line 2490
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2491
    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-gt v0, v2, :cond_0

    .line 2492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2494
    :cond_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedSaturationValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2324
    const/4 v1, 0x0

    .line 2326
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2327
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "getSupportedSaturationValues"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2328
    if-eqz v0, :cond_0

    .line 2329
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2331
    :cond_0
    :try_start_1
    const-string v0, "Util"

    const-string v2, "getSupportedSaturationValues interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 2334
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass not support"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSupportedShootModeValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1739
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1742
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getSupportedShootingModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1743
    if-eqz v0, :cond_3

    .line 1744
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1746
    :goto_0
    check-cast v0, Ljava/util/List;

    .line 1747
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1748
    const-string v0, "panorama"

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1749
    const-string v0, "panorama"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    move-object v0, v1

    .line 1764
    :goto_2
    return-object v0

    .line 1752
    :cond_1
    const-string v0, "single"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedHdrMode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1754
    const-string v0, "hdr"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1756
    :cond_2
    const-string v0, "panorama"

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1757
    const-string v0, "panorama"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 1764
    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static getSupportedTargetTrackingState()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1587
    :try_start_0
    const-string v1, "TargetTracking"

    .line 1588
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1589
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "isFeatureSupported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1590
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1591
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1592
    const-string v1, "on,off"

    .line 1595
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1598
    :goto_1
    return-object v0

    .line 1596
    :catch_0
    move-exception v1

    .line 1597
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static hasHwExtCamera()Z
    .locals 1

    .prologue
    .line 947
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasPauseResumeMethodInMediaRecorder()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 953
    :try_start_0
    const-string v11, "android.media.MediaRecorder"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 954
    .local v6, mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 955
    .local v9, methods:[Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 956
    .local v8, methodName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 957
    .local v3, isContainPause:Z
    const/4 v4, 0x0

    .line 958
    .local v4, isContainResume:Z
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v7, v0, v2

    .line 959
    .local v7, method:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 960
    const-string v11, "pause"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 961
    const/4 v3, 0x1

    .line 958
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    :cond_1
    const-string v11, "resume"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 963
    const/4 v4, 0x1

    goto :goto_1

    .line 966
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v10, 0x1

    .line 970
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v3           #isContainPause:Z
    .end local v4           #isContainResume:Z
    .end local v5           #len$:I
    .end local v8           #methodName:Ljava/lang/String;
    .end local v9           #methods:[Ljava/lang/reflect/Method;
    :cond_3
    :goto_2
    return v10

    .line 967
    :catch_0
    move-exception v1

    .line 968
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/hwcamera/Util;->sIsTabletUI:Z

    .line 362
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 363
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 365
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 366
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 368
    new-instance v2, Lcom/android/hwcamera/Util$ImageFileNamer;

    const v3, 0x7f0e01cf

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/hwcamera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    .line 370
    return-void

    .line 359
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2826
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2828
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2829
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2830
    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2831
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2833
    :cond_0
    return-void
.end method

.method public static invokePauseResumeMethodInMediaRecorder(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "medthName"
    .parameter "obj"

    .prologue
    .line 975
    if-nez p1, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 979
    .local v1, mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 980
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 981
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 983
    .end local v1           #mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBuildVersionAboveICS()Z
    .locals 2

    .prologue
    .line 2835
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCAFEnded()Z
    .locals 1

    .prologue
    .line 2912
    sget-boolean v0, Lcom/android/hwcamera/Util;->mIsCafEnded:Z

    return v0
.end method

.method public static isCAFSucceed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2985
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 2986
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getCAFStatus"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2987
    if-eqz v0, :cond_1

    .line 2988
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 2998
    :goto_0
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCAFStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    return v0

    :cond_0
    move v0, v2

    .line 2988
    goto :goto_0

    .line 2990
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v2, "getCAFStatus interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    .line 2993
    :cond_2
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass not support"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2995
    :catch_0
    move-exception v0

    .line 2996
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isEmptyRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rect"

    .prologue
    .line 3093
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 3080
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3081
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3083
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNullArea(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x0

    .line 3088
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isPanoramaSupported(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1858
    const-string v0, "panorama"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanoramaSupportedByScalado()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1839
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    const/4 v0, 0x0

    .line 1841
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1842
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getSupportedShootingModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1843
    if-eqz v2, :cond_0

    .line 1844
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1846
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 1847
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isPanoramaSupported(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1854
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1849
    goto :goto_0

    .line 1851
    :catch_0
    move-exception v0

    .line 1852
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 1854
    goto :goto_0
.end method

.method public static isPointInRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 2
    .parameter "rect"
    .parameter "point"

    .prologue
    .line 3004
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    .line 3006
    const/4 v0, 0x1

    .line 3008
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedLocation()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2077
    :try_start_0
    const-string v2, "android.media.MediaRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2078
    if-eqz v2, :cond_0

    .line 2079
    const-string v3, "setLocation"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2080
    if-eqz v2, :cond_0

    .line 2087
    :goto_0
    return v0

    .line 2084
    :catch_0
    move-exception v0

    .line 2085
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isTabletUI()Z
    .locals 1

    .prologue
    .line 373
    sget-boolean v0, Lcom/android/hwcamera/Util;->sIsTabletUI:Z

    return v0
.end method

.method public static isTouchFocusAreaValid(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 3046
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3047
    .local v0, touchPoint:Landroid/graphics/Point;
    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 3048
    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 3049
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getValidTouchFocusArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/hwcamera/Util;->isPointInRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3050
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getZoomControlLayoutHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getZoomControlLayoutRectLandscape()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/hwcamera/Util;->isPointInRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3055
    :cond_0
    :goto_0
    return v1

    .line 3053
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTouchFocusAreaValid(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3032
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3033
    .local v0, touchPoint:Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 3034
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 3035
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getValidTouchFocusArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/hwcamera/Util;->isPointInRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3036
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getZoomControlLayoutHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getZoomControlLayoutRectLandscape()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/hwcamera/Util;->isPointInRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3041
    :cond_0
    :goto_0
    return v1

    .line 3039
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2617
    if-nez p0, :cond_0

    .line 2629
    :goto_0
    return v0

    .line 2620
    :cond_0
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2621
    if-nez v1, :cond_1

    .line 2622
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to open URI. URI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2626
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2625
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2629
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static lockPanoramaDirection(I)V
    .locals 5
    .parameter

    .prologue
    .line 1972
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1973
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "lockPanoramaDirection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1974
    if-eqz v0, :cond_0

    .line 1975
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    :goto_0
    return-void

    .line 1977
    :cond_0
    const-string v0, "Util"

    const-string v1, "stopPanorama HwExtCameraClass can\'t find lockDirection()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1980
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v1, "lockDirection HwExtCameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 552
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 553
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 554
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 556
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 570
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 560
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/hwcamera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 562
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 564
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 565
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 566
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 568
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 569
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/HwCamera;
    .locals 4
    .parameter "activity"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 583
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 585
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    new-instance v2, Lcom/android/hwcamera/CameraDisabledException;

    invoke-direct {v2}, Lcom/android/hwcamera/CameraDisabledException;-><init>()V

    throw v2

    .line 590
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 591
    :catch_0
    move-exception v1

    .line 594
    .local v1, e:Lcom/android/hwcamera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 597
    :cond_1
    throw v1
.end method

.method public static optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2887
    const/4 v1, 0x0

    .line 2889
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2890
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v2, "optmizeFocusAreaRect"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Point;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2893
    if-eqz v0, :cond_0

    .line 2894
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2905
    :goto_0
    return-object v0

    .line 2897
    :cond_0
    const-string v0, "Util"

    const-string v2, "optmizeFocusAreaRect interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 2900
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass not support"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2902
    :catch_0
    move-exception v0

    .line 2903
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2690
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2691
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mediacenter.mediaplayerservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2695
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2696
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2697
    return-void
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 2647
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2649
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2652
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2653
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2654
    return-void

    :cond_0
    move v0, v1

    .line 2647
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 2638
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2639
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2640
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2641
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2642
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 389
    if-nez p1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    if-eqz p0, :cond_5

    .line 390
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 391
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 392
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 393
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 394
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_6

    .line 395
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 402
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 404
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 408
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 410
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_5

    .line 411
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_4
    move-object p0, v7

    .line 420
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    return-object p0

    .line 396
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_6
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_7

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_8

    .line 397
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 399
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 504
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static setBlinkDetection(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1549
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1550
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setBlinkDetection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1551
    if-eqz v0, :cond_0

    .line 1552
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setBurstShootingInterval(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2017
    .line 2019
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 2020
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setBurstShotInterval"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2021
    if-eqz v2, :cond_0

    .line 2022
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    :goto_0
    return v0

    .line 2025
    :cond_0
    const-string v0, "Util"

    const-string v2, "setBurstShootingInterval interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    .line 2028
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2030
    :catch_0
    move-exception v0

    .line 2031
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 2032
    goto :goto_0
.end method

.method public static setBurstTotalCaptures(I)V
    .locals 5
    .parameter

    .prologue
    .line 2041
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2042
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setBurstTotalCaptures"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2043
    if-eqz v0, :cond_0

    .line 2044
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    :goto_0
    return-void

    .line 2046
    :cond_0
    const-string v0, "Util"

    const-string v1, "setBurstShootingInterval interface not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2049
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v1, "HwExtCameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setCameraDevice(Lcom/android/hwcamera/HwCamera;)V
    .locals 3
    .parameter "cameraDevice"

    .prologue
    .line 890
    sput-object p0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 892
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/Util;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 894
    sget-object v0, Lcom/android/hwcamera/Util;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 895
    const-string v0, "Util"

    const-string v1, "error! mParameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    sget-object v0, Lcom/android/hwcamera/Util;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    sput v0, Lcom/android/hwcamera/Util;->mMaxExposureCompensation:I

    .line 899
    sget-object v0, Lcom/android/hwcamera/Util;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    sput v0, Lcom/android/hwcamera/Util;->mMinExposureCompensation:I

    .line 900
    sget-object v0, Lcom/android/hwcamera/Util;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    sput v0, Lcom/android/hwcamera/Util;->mExposureCompensationStep:F

    .line 901
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxExposureCompensation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/hwcamera/Util;->mMaxExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinExposureCompensation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/hwcamera/Util;->mMinExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExposureCompensationStep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/hwcamera/Util;->mExposureCompensationStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V
    .locals 5
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 849
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 850
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 851
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 853
    .local v0, degrees:I
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 854
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 855
    .local v2, result:I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 859
    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 860
    return-void

    .line 857
    .end local v2           #result:I
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public static setDistortionValue(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1626
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1627
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setFaceDistortion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1628
    if-eqz v0, :cond_0

    .line 1629
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFaceOrientation(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1562
    .line 1564
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1565
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setFaceOrientation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1566
    if-eqz v2, :cond_0

    .line 1567
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :goto_0
    return v0

    .line 1570
    :cond_0
    const-string v0, "Util"

    const-string v2, "setFaceOrientation interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    .line 1573
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1575
    :catch_0
    move-exception v0

    .line 1577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 2782
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 2785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v8

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2788
    if-eqz p1, :cond_1

    .line 2789
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2790
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 2791
    cmpl-double v0, v1, v6

    if-nez v0, :cond_0

    cmpl-double v0, v3, v6

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2793
    :goto_0
    if-eqz v0, :cond_1

    .line 2794
    const-string v0, "Util"

    const-string v5, "Set gps location"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 2796
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 2797
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2799
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 2806
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2809
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    .line 2810
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2816
    :cond_1
    return-void

    .line 2791
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2804
    :cond_3
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1
.end method

.method public static setHWExtCameraHandler(Landroid/os/Handler;)V
    .locals 5
    .parameter

    .prologue
    .line 1493
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1494
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setHandler"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1495
    if-eqz v0, :cond_0

    .line 1496
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHdrMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1100
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1101
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setHdrMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    sget-object v0, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 1108
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :cond_2
    const/4 v0, 0x0

    .line 1113
    :try_start_1
    sget-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v2, "setHdrMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1118
    :goto_1
    if-eqz v0, :cond_3

    .line 1119
    :try_start_2
    sget-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1121
    :cond_3
    if-eqz p1, :cond_4

    .line 1122
    :try_start_3
    const-string v0, "exhdr"

    invoke-virtual {p1, v0, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_4
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "exhdr"

    invoke-virtual {v0, v1, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1115
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static setHdrSaveMode(ZLandroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "value"
    .parameter "params"

    .prologue
    .line 1183
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1184
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setHdrSaveMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1186
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1187
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 1192
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 1194
    :cond_2
    const/4 v2, 0x0

    .line 1195
    .local v2, tmpVal:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 1196
    const-string v2, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_1
    const/4 v1, 0x0

    .line 1203
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "setHdrSetting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1208
    :goto_2
    if-eqz v1, :cond_4

    .line 1209
    :try_start_2
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1219
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #tmpVal:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1220
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1198
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #tmpVal:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v2, "false"

    goto :goto_1

    .line 1211
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_4
    if-eqz p1, :cond_5

    .line 1212
    const-string v3, "exhdrsetting"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1214
    :cond_5
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "exhdrsetting"

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1205
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static setIsCafEnded(Z)V
    .locals 0
    .parameter "mIsCafEnded"

    .prologue
    .line 2978
    sput-boolean p0, Lcom/android/hwcamera/Util;->mIsCafEnded:Z

    .line 2979
    return-void
.end method

.method public static setLocation(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2060
    :try_start_0
    const-string v0, "android.media.MediaRecorder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    const-string v1, "setLocation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2063
    if-eqz v0, :cond_0

    .line 2064
    sget-object v1, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setRecordDistortionValue(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1644
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 1646
    :try_start_1
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setRecordFaceDistortion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1647
    if-eqz v0, :cond_0

    .line 1648
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const-string v0, "Util"

    const-string v1, "Using the setRecordFaceDistortion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    :try_start_2
    const-string v0, "Util"

    const-string v1, "Using the setDistortionValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-static {p0}, Lcom/android/hwcamera/Util;->setDistortionValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1656
    :catch_1
    move-exception v0

    .line 1657
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setRedEyeReduction(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1437
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1438
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setRedEyeReduction"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_0

    .line 1440
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 2765
    const/4 v1, 0x0

    .line 2766
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 2767
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 2768
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2769
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 2774
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2775
    return-void

    .line 2771
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static setShootingMode(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1995
    .line 1997
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1998
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setShotMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2000
    if-eqz v2, :cond_0

    .line 2001
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    :goto_0
    return v0

    .line 2004
    :cond_0
    const-string v0, "Util"

    const-string v2, "setShootingMode interface not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    .line 2007
    :cond_1
    const-string v0, "Util"

    const-string v2, "HwExtCameraClass is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 2011
    goto :goto_0
.end method

.method public static setSilentOption(Ljava/lang/Object;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2846
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    .line 2847
    if-eqz v0, :cond_1

    .line 2848
    const-string v1, "setSilentOption"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2850
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2851
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    :goto_0
    return-void

    .line 2853
    :cond_0
    const-string v0, "Util"

    const-string v1, "cameraClass can\'t find setSilentOption(boolean silent)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2859
    :catch_0
    move-exception v0

    .line 2860
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2856
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v1, "cameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setSmileDetection(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1535
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1536
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "setSmileDetection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_0

    .line 1538
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2866
    new-instance v0, Lcom/android/hwcamera/Util$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Util$2;-><init>(Landroid/app/Activity;)V

    .line 2872
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0129

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2879
    return-void
.end method

.method public static showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 605
    new-instance v0, Lcom/android/hwcamera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 611
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 618
    return-void
.end method

.method public static slideInControlBar(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "controlBar"
    .parameter "dtView"

    .prologue
    const/4 v5, 0x0

    .line 646
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, animDt:F
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 654
    .local v1, durat:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 656
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v0, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 661
    .local v2, transAnim:Landroid/view/animation/Animation;
    :goto_1
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slideInControlBar animDt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 663
    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 658
    .end local v2           #transAnim:Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 659
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v5, v5, v0, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2       #transAnim:Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public static slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "view"
    .parameter "dtView"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 716
    if-nez p0, :cond_0

    .line 736
    :goto_0
    return-void

    :cond_0
    move-object v3, p0

    .line 719
    check-cast v3, Lcom/android/hwcamera/hwui/Panel;

    .line 720
    .local v3, panel:Lcom/android/hwcamera/hwui/Panel;
    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/Panel;->setVisibility(I)V

    .line 721
    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/Panel;->setHandleVisiable(I)V

    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, animDt:F
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/Panel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 725
    .local v2, durat:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v1, v4

    .line 727
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 732
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 733
    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 734
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/Panel;->getHandle()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 729
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v1, v4

    .line 730
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v6, v1, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public static slideOutControlBar(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "controlBar"
    .parameter "dtView"

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 688
    .local v0, durat:I
    invoke-static {p0, p1, v0}, Lcom/android/hwcamera/Util;->slideOutControlBar(Landroid/view/View;Landroid/view/View;I)V

    .line 689
    return-void
.end method

.method public static slideOutControlBar(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .parameter "controlBar"
    .parameter "dtView"
    .parameter "durat"

    .prologue
    const/4 v3, 0x0

    .line 668
    if-nez p0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 671
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    const/4 v0, 0x0

    .line 675
    .local v0, animDt:F
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 677
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v3, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 682
    .local v1, transAnim:Landroid/view/animation/Animation;
    :goto_1
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slideOutControlBar animDt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 684
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 679
    .end local v1           #transAnim:Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 680
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v3, v3, v3, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1       #transAnim:Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public static slideOutPanelHandler(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "view"
    .parameter "dtView"

    .prologue
    const/4 v6, 0x0

    .line 693
    if-nez p0, :cond_0

    .line 711
    :goto_0
    return-void

    :cond_0
    move-object v3, p0

    .line 696
    check-cast v3, Lcom/android/hwcamera/hwui/Panel;

    .line 697
    .local v3, panel:Lcom/android/hwcamera/hwui/Panel;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/Panel;->setHandleVisiable(I)V

    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, animDt:F
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/Panel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 701
    .local v2, durat:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v1, v4

    .line 703
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v1, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 708
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 709
    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 710
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/Panel;->getHandle()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 705
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v1, v4

    .line 706
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v6, v6, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2522
    if-nez p0, :cond_1

    .line 2523
    const/4 v0, 0x0

    .line 2531
    :cond_0
    return-object v0

    .line 2526
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2528
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2529
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static startFaceDetection()V
    .locals 3

    .prologue
    .line 1507
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1508
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "startFaceDetectionEx"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_0

    .line 1510
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startPanorama(IIFLandroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1870
    .line 1871
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1872
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "startPanorama"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/hardware/Camera$PictureCallback;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/hardware/Camera$PictureCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1874
    if-eqz v0, :cond_0

    .line 1875
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    :goto_0
    return-void

    .line 1878
    :cond_0
    const-string v0, "Util"

    const-string v1, "startPanorama HwExtCameraClass can\'t find startPanorama()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1882
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v1, "startPanorama HwExtCameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static stopFMRadioPlay(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2682
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2683
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2684
    return-void
.end method

.method public static stopFaceDetection()V
    .locals 3

    .prologue
    .line 1521
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1522
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "stopFaceDetectionEx"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1523
    if-eqz v0, :cond_0

    .line 1524
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopPanorama(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1925
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1926
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v1, "stopPanorama"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_0

    .line 1929
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    :goto_0
    return-void

    .line 1931
    :cond_0
    const-string v0, "Util"

    const-string v1, "stopPanorama HwExtCameraClass can\'t find stopPanorama()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1934
    :cond_1
    :try_start_1
    const-string v0, "Util"

    const-string v1, "stopPanorama HwExtCameraClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static transformDPtoPX(ILandroid/content/Context;)I
    .locals 4
    .parameter "width"
    .parameter "contex"

    .prologue
    .line 841
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 842
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v2, 0x1

    int-to-float v3, p0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 843
    .local v1, widthf:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 812
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :goto_0
    return-void

    .line 817
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cooliris.media.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v1

    .line 820
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 821
    :catch_1
    move-exception v0

    .line 822
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
