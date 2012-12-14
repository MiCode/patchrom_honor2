.class public Lcom/android/hwcamera/panorama/PanoramaActivity;
.super Lcom/android/hwcamera/panorama/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;,
        Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCancelComputation:Z

.field private mCancelTextView:Landroid/widget/TextView;

.field private mCaptureIndicator:Landroid/widget/TextView;

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOk:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDidRegister:Z

.field private mFastIndicationBorder:Landroid/view/View;

.field private mFromGooglePanoramaSpf:Landroid/content/SharedPreferences;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mIsClickBack:Z

.field private mIsClicktoCamera:Z

.field private mIsInternalStorageExist:Z

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

.field private mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/View;

.field private mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

.field private mPausing:Z

.field private mPicturesRemaining:I

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordSound:Lcom/android/hwcamera/SoundPlayer;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRotateToast:Landroid/widget/Toast;

.field private mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCamer:Landroid/widget/ImageView;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

.field private mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTransformMatrix:[F

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/ActivityBase;-><init>()V

    .line 140
    iput-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDidRegister:Z

    .line 141
    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    .line 142
    iput-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRotateToast:Landroid/widget/Toast;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 206
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    .line 217
    iput-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 221
    iput-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsClicktoCamera:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsClickBack:Z

    .line 228
    iput-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelTextView:Landroid/widget/TextView;

    .line 1631
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$14;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/panorama/PanoramaActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/panorama/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/panorama/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/panorama/PanoramaActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/panorama/PanoramaActivity;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->switchToCameraMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/panorama/PanoramaActivity;)Lcom/android/hwcamera/panorama/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/panorama/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/panorama/PanoramaActivity;)Lcom/android/hwcamera/panorama/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/panorama/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/hwcamera/panorama/PanoramaActivity;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCaptureIfNeed()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/panorama/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/panorama/PanoramaActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/panorama/PanoramaActivity;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->checkRemaining(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/panorama/PanoramaActivity;Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->makeToastifNeeded(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->checkCurrentStorage()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelComputation:Z

    .line 1048
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1050
    monitor-exit v1

    .line 1051
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCurrentStorage()V
    .locals 7

    .prologue
    .line 1437
    .line 1438
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 1439
    iget-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    if-nez v1, :cond_3

    .line 1440
    const/4 v0, 0x1

    move v2, v0

    .line 1443
    :goto_0
    if-eqz v2, :cond_1

    .line 1444
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 1449
    :goto_1
    const-wide/32 v3, 0x1400000

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1450
    const-string v3, "PanoramaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->checkRemaining(J)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    .line 1456
    :goto_2
    iget v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 1458
    invoke-direct {p0, v2, v0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateStorageHint(ZJ)V

    .line 1460
    :cond_0
    return-void

    .line 1446
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    goto :goto_1

    .line 1453
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private checkRemaining(J)I
    .locals 5
    .parameter

    .prologue
    .line 1606
    const/high16 v0, 0x10

    .line 1607
    const-wide/32 v1, 0x1400000

    sub-long v1, p1, v1

    int-to-long v3, v0

    div-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->clear()V

    goto :goto_0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 572
    return-void
.end method

.method private createContentView()V
    .locals 6

    .prologue
    const v5, 0x7f09002d

    const v4, 0x7f09002b

    const/4 v3, 0x0

    .line 809
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setContentView(I)V

    .line 811
    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 813
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 815
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    .line 816
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/panorama/PanoProgressBar;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    .line 817
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setBackgroundColor(I)V

    .line 818
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDoneColor(I)V

    .line 819
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColor:I

    .line 820
    const v0, 0x7f09002e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColorFast:I

    .line 821
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 822
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    new-instance v2, Lcom/android/hwcamera/panorama/PanoramaActivity$9;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$9;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;)V

    .line 832
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    .line 833
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    .line 834
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 835
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 836
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 837
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    .line 839
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/panorama/PanoProgressBar;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    .line 840
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorWidth(F)V

    .line 841
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setMaxProgress(I)V

    .line 842
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setBackgroundColor(I)V

    .line 843
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setDoneColor(I)V

    .line 845
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureIndicator:Landroid/widget/TextView;

    .line 847
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 848
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 851
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initThumbnailMaskView()V

    .line 855
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelTextView:Landroid/widget/TextView;

    .line 857
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    .line 861
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 862
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$10;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$10;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 870
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 871
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    .line 872
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->getRenderer()Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->setMosaicSurfaceCreateListener(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;)V

    .line 879
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 880
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 881
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 882
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    .line 883
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 506
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 507
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 508
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 509
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 511
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 512
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 515
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 518
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 519
    if-ge v0, v4, :cond_0

    .line 520
    iput v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    .line 521
    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    .line 522
    move v4, v0

    .line 523
    const/4 v2, 0x1

    goto :goto_0

    .line 526
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1121
    sparse-switch p0, :sswitch_data_0

    .line 1131
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1123
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1129
    :goto_0
    return-object v0

    .line 1125
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1127
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1129
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 671
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 783
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 785
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    if-nez v0, :cond_2

    .line 1144
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;-><init>(III)V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    .line 1147
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->initialize()V

    goto :goto_0
.end method

.method private initSoundRecorder()V
    .locals 6

    .prologue
    .line 1152
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1154
    const/high16 v1, 0x1000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1157
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 1165
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    const-string v0, "PanoramaActivity"

    const-string v1, "System video record sound not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    goto :goto_0
.end method

.method private initThumbnailButton()V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V

    .line 958
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1616
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1617
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1618
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1619
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1620
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1621
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1622
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDidRegister:Z

    .line 1625
    return-void
.end method

.method private isStorageSpaceEnough()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1419
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    if-ge v0, v1, :cond_0

    .line 1420
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->checkCurrentStorage()V

    .line 1423
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1

    .line 1424
    const-string v0, "PanoramaActivity"

    const-string v1, "storage space is low: include sd card and phone "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v0, 0x0

    .line 1427
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1373
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1374
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1366
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1368
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1369
    return-void
.end method

.method private leaveGooglePanoramaSetSomeValue()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1384
    const-string v0, "googlePanoramaPreference"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFromGooglePanoramaSpf:Landroid/content/SharedPreferences;

    .line 1385
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFromGooglePanoramaSpf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1386
    iget-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsClicktoCamera:Z

    if-eqz v1, :cond_1

    .line 1387
    const-string v1, "isGooglePanorama"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1388
    const-string v1, "backButtonIsClickInGooglePanorama"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1389
    const-string v1, "leaveGooglePanoramaByUnknow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1396
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1397
    return-void

    .line 1390
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsClickBack:Z

    if-eqz v1, :cond_0

    .line 1391
    const-string v1, "backButtonIsClickInGooglePanorama"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1392
    const-string v1, "isGooglePanorama"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1393
    const-string v1, "leaveGooglePanoramaByUnknow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private makeToastifNeeded(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "text"
    .parameter "duration"
    .parameter "orientation"

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRotateToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1591
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRotateToast:Landroid/widget/Toast;

    .line 1598
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRotateToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1599
    return-void

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRotateToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRotateToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    .line 1040
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1044
    :cond_0
    return-void
.end method

.method private openCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, mCameraId:I
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 493
    invoke-static {v1}, Lcom/android/hwcamera/Util;->getCameraOrientation(I)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraOrientation:I
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 496
    .local v2, ress:Landroid/content/res/Resources;
    const v3, 0x7f0e0129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e012a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 483
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 484
    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    .line 487
    :cond_0
    return-void
.end method

.method private releaseSoundRecorder()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    .line 1177
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1065
    iput v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 1067
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 1069
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->reset()V

    .line 1073
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1074
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1362
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1363
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 1077
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reset()V

    .line 1078
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->startCameraPreview()V

    .line 1079
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    .line 1035
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1036
    return-void
.end method

.method private saveLocationInit()V
    .locals 5

    .prologue
    .line 445
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 447
    invoke-static {}, Lcom/android/hwcamera/Storage;->isInternalStorageExist()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    .line 448
    const-string v2, "PanoramaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internal storage exist is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-boolean v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_save_location_key"

    const-string v3, "memorycard"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 453
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 464
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_save_location_key"

    const v4, 0x7f0e0206

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, saveLocationValue:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_0
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    iget-wide v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTimeTaken:J

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTimeTaken:J

    const/4 v8, 0x1

    move v6, p4

    move-object v7, p1

    move v9, p2

    move v10, p3

    invoke-static/range {v0 .. v10}, Lcom/android/hwcamera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I[BZII)Landroid/net/Uri;

    move-result-object v5

    .line 1095
    if-eqz v5, :cond_0

    if-eqz p4, :cond_0

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1103
    const-string v2, "Orientation"

    invoke-static {p4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 1107
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1109
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :cond_0
    :goto_0
    return-object v5

    .line 1111
    :catch_0
    move-exception v1

    .line 1112
    const-string v1, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set exif data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 277
    rem-int/lit8 v1, p1, 0x5a

    if-eqz v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_0
    const v1, 0x7f0c0012

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 281
    .local v0, shutterCenter:Lcom/android/hwcamera/RotateImageView;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setOrientation(I)V

    .line 284
    :cond_1
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter

    .prologue
    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    return-void

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseCamera()V

    .line 1310
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->openCamera()V

    .line 475
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 476
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 477
    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 478
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 530
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 531
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 532
    const-string v6, "PanoramaActivity"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0, v5, v9, v10}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 534
    const-string v6, "PanoramaActivity"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0, v5, v9, v9}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 538
    :cond_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v7, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 541
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 543
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 544
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 545
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 546
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 549
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 550
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 557
    :goto_0
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 559
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mHorizontalViewAngle:F

    .line 560
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mVerticalViewAngle:F

    .line 561
    return-void

    .line 553
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 1014
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1015
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1019
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$13;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$13;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1031
    return-void
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 676
    packed-switch p1, :pswitch_data_0

    .line 690
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 1082
    if-eqz p1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    return-void
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 775
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 777
    return-void
.end method

.method private startCameraPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1317
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCameraPreview mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCameraPreview()V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1328
    :try_start_0
    const-string v0, "PanoramaActivity"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_camera_framerate_panorama"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getHWConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1332
    if-lez v0, :cond_1

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    .line 1333
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1334
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    .line 1344
    return-void

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseCamera()V

    .line 1341
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopCameraPreview()V
    .locals 3

    .prologue
    .line 1347
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 1351
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraState:I

    .line 1352
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 736
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->hideTooFastIndication()V

    .line 738
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->hideDirectionIndicators()V

    .line 739
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 743
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 744
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCameraPreview()V

    .line 746
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 748
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showDialog(Ljava/lang/String;)V

    .line 750
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$8;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 768
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 769
    return-void
.end method

.method private stopCaptureIfNeed()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1688
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->cancelHighResComputation()V

    .line 1690
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_0

    .line 1691
    invoke-direct {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    .line 1692
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reset()V

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1696
    return-void
.end method

.method private switchToCameraMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 885
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 892
    :goto_0
    return v0

    .line 886
    :cond_0
    invoke-static {p0}, Lcom/android/hwcamera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 889
    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsClicktoCamera:Z

    .line 891
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->finish()V

    goto :goto_0
.end method

.method private updatePhoneStorageHint(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1547
    .line 1548
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v4

    .line 1549
    const-wide/32 v0, 0x1400000

    cmp-long v0, v4, v0

    if-lez v0, :cond_5

    .line 1550
    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->checkRemaining(J)I

    move-result v0

    move v3, v0

    .line 1555
    :goto_0
    const/4 v0, 0x3

    .line 1556
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 1559
    const v0, 0x7f0e0269

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 1575
    :goto_1
    if-eqz v0, :cond_0

    .line 1576
    iget v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->makeToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 1579
    :cond_0
    if-eqz v1, :cond_1

    .line 1580
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1581
    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    .line 1583
    :cond_1
    return-void

    .line 1560
    :cond_2
    const-wide/16 v6, -0x2

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 1563
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1

    .line 1566
    :cond_3
    if-lt v3, v0, :cond_4

    .line 1567
    const/4 v1, 0x1

    .line 1568
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1571
    :cond_4
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41a0

    .line 790
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setReady()V

    .line 791
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->requestRender()V

    .line 796
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showTooFastIndication()V

    .line 802
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    float-to-int v0, p3

    .line 806
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setProgress(I)V

    .line 807
    return-void

    .line 800
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 802
    :cond_2
    float-to-int v0, p4

    goto :goto_1
.end method

.method private updateSDCardStorageHint(J)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, -0x1

    const-wide/16 v7, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1477
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z

    if-nez v0, :cond_3

    .line 1479
    cmp-long v0, p1, v9

    if-nez v0, :cond_1

    .line 1481
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1489
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->makeToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 1539
    :cond_0
    :goto_1
    return-void

    .line 1482
    :cond_1
    cmp-long v0, p1, v7

    if-nez v0, :cond_2

    .line 1484
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1487
    :cond_2
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1494
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v3

    .line 1495
    const-wide/32 v5, 0x1400000

    cmp-long v0, v3, v5

    if-lez v0, :cond_a

    .line 1496
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->checkRemaining(J)I

    move-result v0

    move v3, v0

    .line 1501
    :goto_2
    const/4 v0, 0x3

    .line 1502
    cmp-long v4, p1, v9

    if-nez v4, :cond_6

    .line 1504
    if-lt v3, v0, :cond_5

    .line 1506
    const v0, 0x7f0e0268

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1531
    :goto_3
    if-eqz v0, :cond_4

    .line 1532
    iget v4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->makeToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 1535
    :cond_4
    if-eqz v1, :cond_0

    .line 1536
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 1537
    iput v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I

    goto :goto_1

    .line 1509
    :cond_5
    const v0, 0x7f0e0269

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_3

    .line 1511
    :cond_6
    cmp-long v4, p1, v7

    if-nez v4, :cond_8

    .line 1513
    if-lt v3, v0, :cond_7

    .line 1515
    const v0, 0x7f0e026a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1518
    :cond_7
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_3

    .line 1522
    :cond_8
    if-lt v3, v0, :cond_9

    .line 1524
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1527
    :cond_9
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_3

    :cond_a
    move v3, v2

    goto :goto_2
.end method

.method private updateStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 1463
    if-eqz p1, :cond_0

    .line 1464
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateSDCardStorageHint(J)V

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updatePhoneStorageHint(J)V

    goto :goto_0
.end method

.method private updateThumbnailButton()V
    .locals 3

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 963
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 964
    :cond_0
    invoke-static {v0}, Lcom/android/hwcamera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v1, :cond_2

    .line 967
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 971
    :goto_0
    return-void

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnResume()V
    .locals 4

    .prologue
    const v3, 0x7f0e012a

    const/4 v2, 0x0

    .line 1222
    const-string v0, "PanoramaActivity"

    const-string v1, "doonResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 1226
    iput-boolean v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    .line 1227
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->enable()V

    .line 1229
    iput v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 1231
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setupCamera()V

    .line 1233
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initSoundRecorder()V

    .line 1237
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1238
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->onResume()V

    .line 1240
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->initThumbnailButton()V

    .line 1241
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1243
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1255
    :goto_0
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    invoke-static {p0, v3}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1248
    :catch_1
    move-exception v0

    .line 1250
    invoke-static {p0, v3}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public generateFinalMosaic(Z)Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1266
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1267
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1302
    :goto_0
    return-object v5

    .line 1269
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1270
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1274
    if-nez v1, :cond_2

    .line 1275
    const-string v0, "PanoramaActivity"

    const-string v1, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 1279
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 1280
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 1282
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 1284
    const-string v2, "PanoramaActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1288
    :cond_3
    const-string v1, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", W = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", H = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1293
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1294
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1295
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1297
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    const-string v1, "PanoramaActivity"

    const-string v2, "Exception in storing final mosaic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    new-instance v5, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 564
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 565
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 567
    iget v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public initThumbnailMaskView()V
    .locals 2

    .prologue
    .line 394
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    .line 395
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$3;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

    .line 408
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 409
    return-void
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1702
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1717
    :goto_0
    return-void

    .line 1705
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1710
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->onCancelButtonClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1702
    :sswitch_data_0
    .sparse-switch
        0x7f0c0023 -> :sswitch_0
        0x7f0c0024 -> :sswitch_0
        0x7f0c006b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x80

    const/4 v5, 0x0

    .line 294
    invoke-super {p0, p1}, Lcom/android/hwcamera/panorama/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 296
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 298
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->requestWindowFeature(I)Z

    .line 307
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->setRequestedOrientation(I)V

    .line 309
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->createContentView()V

    .line 311
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 312
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 313
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 317
    :cond_0
    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    .line 319
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    .line 321
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogOk:Ljava/lang/String;

    .line 326
    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$1;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 371
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0241

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 375
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDialogOk:Ljava/lang/String;

    new-instance v4, Lcom/android/hwcamera/panorama/PanoramaActivity$2;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$2;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 386
    new-instance v1, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 387
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, p0, v5}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 388
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->saveLocationInit()V

    .line 390
    return-void
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 668
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$6;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 663
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    if-nez v0, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runViewFinder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 666
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runMosaicCapture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 429
    sparse-switch p1, :sswitch_data_0

    .line 439
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/panorama/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 431
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsClickBack:Z

    goto :goto_0

    .line 429
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 423
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/panorama/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 419
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMosaicSurfaceChanged()V
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$4;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public onMosaicSurfaceCreated(I)V
    .locals 1
    .parameter "textureID"

    .prologue
    .line 607
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity$5;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 619
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1181
    invoke-super {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->onPause()V

    .line 1183
    iput-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    .line 1184
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->cancelHighResComputation()V

    .line 1186
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_0

    .line 1187
    invoke-direct {p0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    .line 1188
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reset()V

    .line 1196
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDidRegister:Z

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDidRegister:Z

    .line 1202
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseCamera()V

    .line 1203
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->releaseSoundRecorder()V

    .line 1204
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->onPause()V

    .line 1206
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setVisibility(I)V

    .line 1208
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 1209
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->disable()V

    .line 1210
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->resetScreenOn()V

    .line 1212
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->leaveGooglePanoramaSetSomeValue()V

    .line 1215
    invoke-static {}, Lcom/android/hwcamera/Storage;->saveLocationUnInit()V

    .line 1217
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1218
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 1411
    invoke-super {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->onResume()V

    .line 1412
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->installIntentFilter()V

    .line 1413
    const/16 v0, 0x3e8

    .line 1414
    .local v0, delayCheckStorageTime:I
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1415
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 906
    :pswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 911
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 914
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mRecordSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 915
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 921
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 469
    invoke-super {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->onStart()V

    .line 470
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V

    .line 471
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/hwcamera/Util;->viewUri(Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1356
    invoke-super {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->onUserInteraction()V

    .line 1357
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1358
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 924
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->reset()V

    .line 925
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setRightIncreasing(Z)V

    .line 926
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$11;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 949
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 950
    return-void
.end method

.method public runMosaicCapture()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->preprocess([F)V

    .line 635
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->lockPreviewReadyFlag()V

    .line 637
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->transferGPUtoCPU()V

    .line 639
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->waitUntilPreviewReady()V

    .line 640
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->processFrame()V

    .line 641
    return-void
.end method

.method public runViewFinder()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->preprocess([F)V

    .line 625
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setReady()V

    .line 626
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicView:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->requestRender()V

    .line 627
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 974
    new-instance v0, Lcom/android/hwcamera/panorama/PanoramaActivity$12;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$12;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 1010
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->reportProgress()V

    .line 1011
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 694
    iput-boolean v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCancelComputation:Z

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mTimeTaken:J

    .line 696
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I

    .line 697
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 698
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    invoke-direct {p0, v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->showDirectionIndicators(I)V

    .line 700
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mSwitchCamer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/hwcamera/panorama/MosaicFrameProcessor;

    new-instance v1, Lcom/android/hwcamera/panorama/PanoramaActivity$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/panorama/PanoramaActivity$7;-><init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 724
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoProgressBar;->reset()V

    .line 727
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setIndicatorWidth(F)V

    .line 728
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setMaxProgress(I)V

    .line 729
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/android/hwcamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 730
    iget v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 731
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->keepScreenOn()V

    .line 732
    return-void
.end method
