.class Lcom/android/hwcamera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3003
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3003
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$ImageCapture;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/hwcamera/Camera$ImageCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3003
    invoke-direct {p0}, Lcom/android/hwcamera/Camera$ImageCapture;->capture()V

    return-void
.end method

.method private capture()V
    .locals 14

    .prologue
    const/4 v5, 0x2

    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 3005
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$5600(Lcom/android/hwcamera/Camera;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 3006
    const-string v5, "Camera"

    const-string v6, "Don\'t capture, it\'s SNAPSHOT_IN_PROGRESS!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_0
    :goto_0
    return-void

    .line 3009
    :cond_1
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v8, 0x3

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v7, v8}, Lcom/android/hwcamera/Camera;->access$5602(Lcom/android/hwcamera/Camera;I)I

    .line 3010
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mJpegImageData:[B
    invoke-static {v7, v11}, Lcom/android/hwcamera/Camera;->access$8802(Lcom/android/hwcamera/Camera;[B)[B

    .line 3023
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v7

    if-ne v7, v6, :cond_a

    .line 3026
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3033
    :goto_1
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$10900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 3034
    .local v2, loc:Landroid/location/Location;
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mGpsSignalState:Z
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$11000(Lcom/android/hwcamera/Camera;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3035
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/hwcamera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 3036
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mLocationState:Z
    invoke-static {v7, v6}, Lcom/android/hwcamera/Camera;->access$7402(Lcom/android/hwcamera/Camera;Z)Z

    .line 3040
    :goto_2
    invoke-static {v12}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 3041
    invoke-static {}, Lcom/android/hwcamera/Util;->stopFaceDetection()V

    .line 3042
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3043
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #setter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v7, v8, v9}, Lcom/android/hwcamera/Camera;->access$6802(Lcom/android/hwcamera/Camera;J)J

    .line 3044
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6800(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 3045
    const-string v7, "yyyy:MM:dd kk:mm:ss"

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$6800(Lcom/android/hwcamera/Camera;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3046
    .local v0, datetime:Ljava/lang/String;
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Flow] Picture capture time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    .end local v0           #datetime:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsMute:Z
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3050
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v8, "camera_sound_state"

    invoke-virtual {v7, v8, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3055
    :goto_3
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3056
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/hwcamera/Camera$ImageSaver;->resetSavedPictureCnt(I)V

    .line 3057
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v8

    #calls: Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z
    invoke-static {v7, v8}, Lcom/android/hwcamera/Camera;->access$8100(Lcom/android/hwcamera/Camera;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3058
    const/4 v1, 0x0

    .line 3059
    .local v1, interval:I
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 3060
    :cond_3
    const/16 v1, 0xfa

    .line 3063
    :cond_4
    invoke-static {v1}, Lcom/android/hwcamera/Util;->setBurstShootingInterval(I)Z

    .line 3064
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8200(Lcom/android/hwcamera/Camera;)I

    move-result v5

    invoke-static {v5}, Lcom/android/hwcamera/Util;->setBurstTotalCaptures(I)V

    .line 3065
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8200(Lcom/android/hwcamera/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/Camera$ImageSaver;->resetSavedPictureCnt(I)V

    .line 3066
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v6

    new-instance v7, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v7, v8, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v5, v6, v11, v11, v7}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3102
    .end local v1           #interval:I
    :goto_4
    const-string v5, "ro.camera.support.led"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3103
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$7500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 3104
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$7500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;)V

    .line 3107
    :cond_5
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4200(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-lez v5, :cond_6

    .line 3111
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$10800(Lcom/android/hwcamera/Camera;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_15

    .line 3112
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$10800(Lcom/android/hwcamera/Camera;)I

    move-result v6

    #setter for: Lcom/android/hwcamera/Camera;->mReviewOrientation:I
    invoke-static {v5, v6}, Lcom/android/hwcamera/Camera;->access$11602(Lcom/android/hwcamera/Camera;I)I

    .line 3121
    :cond_6
    :goto_5
    const/4 v4, 0x0

    .line 3122
    .local v4, reviewState:Z
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4200(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3123
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v13, :cond_7

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHdrDone:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$7700(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3124
    const/4 v4, 0x1

    .line 3126
    :cond_7
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-eq v5, v13, :cond_8

    .line 3127
    const/4 v4, 0x1

    .line 3129
    :cond_8
    if-eqz v4, :cond_9

    .line 3130
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v5, v12}, Lcom/android/hwcamera/Camera;->setSwipingEnabled(Z)V

    .line 3133
    :cond_9
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->needNewSnapShotAnim()Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$11700(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3134
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v5, v5, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->getCameraRotation()I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11800(Lcom/android/hwcamera/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto/16 :goto_0

    .line 3028
    .end local v2           #loc:Landroid/location/Location;
    .end local v4           #reviewState:Z
    :cond_a
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$7900(Lcom/android/hwcamera/Camera;)I

    move-result v8

    iget-object v9, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$10800(Lcom/android/hwcamera/Camera;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/hwcamera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    goto/16 :goto_1

    .line 3038
    .restart local v2       #loc:Landroid/location/Location;
    :cond_b
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mLocationState:Z
    invoke-static {v7, v12}, Lcom/android/hwcamera/Camera;->access$7402(Lcom/android/hwcamera/Camera;Z)Z

    goto/16 :goto_2

    .line 3052
    :cond_c
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v8, "camera_sound_state"

    invoke-virtual {v7, v8, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 3068
    :cond_d
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v7

    if-ne v7, v13, :cond_10

    .line 3069
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mShowProcess:Z
    invoke-static {v7, v6}, Lcom/android/hwcamera/Camera;->access$11202(Lcom/android/hwcamera/Camera;Z)Z

    .line 3070
    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$11300(Lcom/android/hwcamera/Camera;)Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_6
    invoke-virtual {v7, v5}, Lcom/android/hwcamera/Camera$ImageSaver;->resetSavedPictureCnt(I)V

    .line 3071
    invoke-static {}, Lcom/android/hwcamera/Util;->hasHwExtCamera()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3072
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    new-instance v6, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v6, v7, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v5, v11, v11, v11, v6}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_4

    :cond_e
    move v5, v6

    .line 3070
    goto :goto_6

    .line 3074
    :cond_f
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$11400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$11500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    move-result-object v8

    new-instance v9, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v10, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v9, v10, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_4

    .line 3077
    :cond_10
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_11

    .line 3078
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mShowProcess:Z
    invoke-static {v5, v6}, Lcom/android/hwcamera/Camera;->access$11202(Lcom/android/hwcamera/Camera;Z)Z

    .line 3079
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v6

    new-instance v7, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v7, v8, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v5, v6, v11, v11, v7}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_4

    .line 3081
    :cond_11
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v6, :cond_12

    .line 3082
    sget v5, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result v3

    .line 3083
    .local v3, panorama_mini_pic_height:I
    const/4 v5, 0x6

    const/high16 v6, 0x3e80

    new-instance v7, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v7, v8, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-static {v3, v5, v6, v11, v7}, Lcom/android/hwcamera/Util;->startPanorama(IIFLandroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3085
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 3086
    .end local v3           #panorama_mini_pic_height:I
    :cond_12
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_14

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4300(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3088
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicturesRemaining:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-lez v5, :cond_13

    .line 3089
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$11400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$11500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    move-result-object v8

    new-instance v9, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v10, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v9, v10, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_4

    .line 3092
    :cond_13
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 3098
    :cond_14
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$11400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$11500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    move-result-object v8

    new-instance v9, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v10, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v9, v10, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_4

    .line 3115
    :cond_15
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3116
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mReviewOrientation:I
    invoke-static {v5, v12}, Lcom/android/hwcamera/Camera;->access$11602(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_5
.end method
