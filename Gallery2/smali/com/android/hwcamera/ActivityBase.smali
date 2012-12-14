.class public abstract Lcom/android/hwcamera/ActivityBase;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ActivityBase$MyAppBridge;,
        Lcom/android/hwcamera/ActivityBase$HideCameraAppView;
    }
.end annotation


# static fields
.field private static LOGV:Z


# instance fields
.field protected mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

.field protected mCameraAppView:Landroid/view/View;

.field protected mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field protected mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHideCameraAppView:Lcom/android/hwcamera/ActivityBase$HideCameraAppView;

.field private mIsDeletePicOnGallery:Z

.field private mIsSwitchStorage:Z

.field private mOnResumePending:Z

.field private mOriginBucketId:Ljava/lang/String;

.field protected mPausing:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field protected mShowCameraAppView:Z

.field private mSingleTapArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mIsDeletePicOnGallery:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 77
    new-instance v0, Lcom/android/hwcamera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$1;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Lcom/android/hwcamera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$2;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 266
    return-void
.end method

.method static synthetic access$002(Lcom/android/hwcamera/ActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/hwcamera/ActivityBase;->mIsDeletePicOnGallery:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/hwcamera/ActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/ActivityBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;->isPanoramaActivity()Z

    move-result v0

    return v0
.end method

.method private isKeyguardLocked()Z
    .locals 2

    .prologue
    .line 254
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 257
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public changeMediaSetPath()V
    .locals 7

    .prologue
    .line 530
    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/Storage;->isDirectoryAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 531
    const-string v3, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMediaSetPath: the storage path is not available:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, bucketId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mOriginBucketId:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mOriginBucketId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 536
    :cond_1
    const-string v3, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMediaSetPath: is the same bucketId so donot change,:bucketId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_2
    const-string v3, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMediaSetPath bucketId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mOriginBucketId:Ljava/lang/String;

    .line 541
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v1, data:Landroid/os/Bundle;
    const-string v2, "/local/all/"

    .line 543
    .local v2, path:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    const-string v3, "media-set-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v3, "media-item-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v3, "app-bridge"

    iget-object v4, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 547
    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->changeMediaSetPath(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v2, v1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$800(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 548
    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method protected createCameraScreenNail(Z)V
    .locals 3
    .parameter

    .prologue
    .line 495
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 496
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 497
    const-string v2, "/local/all/"

    .line 502
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mOriginBucketId:Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mOriginBucketId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v2, "media-item-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    .line 510
    const-string v0, "app-bridge"

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 512
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 513
    return-void

    .line 502
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected abstract doOnResume()V
.end method

.method protected enableSlideToGallery(ZZ)V
    .locals 4
    .parameter "enable"
    .parameter "immediately"

    .prologue
    const/16 v3, 0x12

    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setSwipingEnabled(Z)V

    .line 416
    if-eqz p1, :cond_1

    .line 417
    if-eqz p2, :cond_2

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setSwipingEnabled(Z)V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected enableSlideToGalleryImmediately(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 408
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/hwcamera/ActivityBase;->enableSlideToGallery(ZZ)V

    .line 409
    return-void
.end method

.method protected exitGallery()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    const/4 v1, -0x1

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$400(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)Z

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected gotoGallery()Z
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    const/4 v1, 0x1

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$400(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)Z

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected gotoGalleryWithOutAnimation()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    const/4 v1, 0x1

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithOutCaptureAnimation(I)Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$200(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)Z

    .line 397
    :cond_0
    return-void
.end method

.method protected notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$700(Lcom/android/hwcamera/ActivityBase$MyAppBridge;)V

    .line 482
    return-void
.end method

.method protected notifyStorageInfoChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 516
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setSwipingEnabled(Z)V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z

    .line 521
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 522
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 128
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->requestWindowFeature(I)Z

    .line 130
    const v0, 0x7f0f001b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setTheme(I)V

    .line 131
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setRequestedOrientation(I)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 596
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 248
    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 250
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 434
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-eqz p1, :cond_0

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mIsDeletePicOnGallery:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->updateRemaining()V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mIsDeletePicOnGallery:Z

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_2

    .line 457
    :cond_1
    :goto_1
    return-void

    .line 448
    :cond_2
    iput-boolean p1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    .line 449
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mPausing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHideCameraAppView:Lcom/android/hwcamera/ActivityBase$HideCameraAppView;

    if-nez v0, :cond_3

    .line 452
    new-instance v0, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/hwcamera/ActivityBase;Lcom/android/hwcamera/ActivityBase$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHideCameraAppView:Lcom/android/hwcamera/ActivityBase$HideCameraAppView;

    .line 453
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 456
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->updateCameraAppView()V

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 216
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayoutChange()V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 15
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 555
    iget-object v12, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-nez v12, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-boolean v12, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v12, :cond_0

    .line 557
    move/from16 v0, p2

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, p7

    if-ne v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_2

    move/from16 v0, p5

    move/from16 v1, p9

    if-eq v0, v1, :cond_0

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->onLayoutChange()V

    .line 562
    sub-int v11, p4, p2

    .line 563
    .local v11, width:I
    sub-int v4, p5, p3

    .line 564
    .local v4, height:I
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v12

    rem-int/lit16 v12, v12, 0xb4

    if-nez v12, :cond_3

    .line 565
    iget-object v12, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v11, v4}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 571
    :goto_1
    const-string v12, "ActivityBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onLayoutChange width:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v12, "ActivityBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onLayoutChange mCameraScreenNail width:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v14}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v14}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 577
    .local v7, root:Landroid/view/View;
    const/4 v12, 0x4

    new-array v8, v12, [I

    .line 578
    .local v8, rootLocation:[I
    const/4 v12, 0x4

    new-array v10, v12, [I

    .line 579
    .local v10, viewLocation:[I
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 580
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 581
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v5, v12, v13

    .line 582
    .local v5, l:I
    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    sub-int v9, v12, v13

    .line 583
    .local v9, t:I
    add-int v6, v5, v11

    .line 584
    .local v6, r:I
    add-int v2, v9, v4

    .line 585
    .local v2, b:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 586
    .local v3, frame:Landroid/graphics/Rect;
    const-string v12, "ActivityBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set CameraRelativeFrame as "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v12, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setCameraRelativeFrame(Landroid/graphics/Rect;)V
    invoke-static {v12, v3}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$900(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 569
    .end local v2           #b:I
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v5           #l:I
    .end local v6           #r:I
    .end local v7           #root:Landroid/view/View;
    .end local v8           #rootLocation:[I
    .end local v9           #t:I
    .end local v10           #viewLocation:[I
    :cond_3
    iget-object v12, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v4, v11}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 193
    sget-boolean v1, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityBase"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 195
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 196
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iput-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    .line 198
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    :cond_1
    iput-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z

    .line 202
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 159
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 160
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ActivityBase;->setSwipingEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    sget-boolean v1, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityBase"

    const-string v2, "onRsume. mOnResumePending=true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iput-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-boolean v1, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityBase"

    const-string v2, "onRsume. mOnResumePending=false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->doOnResume()V

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 379
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp2("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 362
    const-string v1, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSingleTapUp1("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 375
    :goto_0
    return v1

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/android/hwcamera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 368
    .local v0, relativeLocation:[I
    aget v1, v0, v3

    sub-int/2addr p1, v1

    .line 369
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 370
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 373
    goto :goto_0

    :cond_2
    move v1, v3

    .line 375
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged.hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mOnResumePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->doOnResume()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    .line 153
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 486
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 490
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 491
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ActivityBase;->setResult(I)V

    .line 227
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 230
    iput p1, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    .line 231
    iput-object p2, p0, Lcom/android/hwcamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 233
    return-void
.end method

.method protected setSingleTapArea(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 359
    return-void
.end method

.method protected setSwipingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwipingEnabled++:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$500(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Z)V

    .line 405
    :cond_0
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->updateCameraAppView(Z)V

    .line 478
    return-void
.end method

.method protected updateCameraAppView(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract updateRemaining()V
.end method

.method protected abstract updateThumbnailButton(Z)V
.end method
