.class final Lcom/android/hwcamera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V
    .locals 1
    .parameter
    .parameter "loc"

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2165
    #getter for: Lcom/android/hwcamera/Camera;->mLocationState:Z
    invoke-static {p1}, Lcom/android/hwcamera/Camera;->access$7400(Lcom/android/hwcamera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    iput-object p2, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2170
    :goto_0
    return-void

    .line 2168
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 2174
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-boolean v6, v6, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v6, :cond_1

    .line 2335
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    const-string v6, "ro.camera.support.led"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2184
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 2187
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 2193
    :cond_3
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Camera;->access$7602(Lcom/android/hwcamera/Camera;J)J

    .line 2197
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7100(Lcom/android/hwcamera/Camera;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    .line 2198
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$7100(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mShutterToPictureDisplayedTime:J

    .line 2199
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$7600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$7100(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 2206
    :goto_1
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v8, v8, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterupTime:J
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7300(Lcom/android/hwcamera/Camera;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 2210
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Flow] onPictureTaken Snapshot to Snapshot dt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$7600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterupTime:J
    invoke-static {v10}, Lcom/android/hwcamera/Camera;->access$7300(Lcom/android/hwcamera/Camera;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_4
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$3408(Lcom/android/hwcamera/Camera;)I

    .line 2214
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$4200(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2215
    const/4 v4, 0x0

    .line 2216
    .local v4, reviewState:Z
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHdrDone:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7700(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2217
    const/4 v4, 0x1

    .line 2219
    :cond_5
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    .line 2220
    const/4 v4, 0x1

    .line 2222
    :cond_6
    if-eqz v4, :cond_7

    .line 2223
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v7, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mHdrDone:Z
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$7702(Lcom/android/hwcamera/Camera;Z)Z

    .line 2224
    if-eqz p1, :cond_7

    .line 2225
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->decordPictureForReview([B)V
    invoke-static {v6, p1}, Lcom/android/hwcamera/Camera;->access$7800(Lcom/android/hwcamera/Camera;[B)V

    .line 2226
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2230
    .end local v4           #reviewState:Z
    :cond_7
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2240
    const-wide/16 v6, 0x12c

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v8, v8, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    sub-long v0, v6, v8

    .line 2241
    .local v0, delay:J
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "want startPreview, delay time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7900(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7900(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_10

    .line 2245
    :cond_8
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v6}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    .line 2251
    .end local v0           #delay:J
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v7

    #calls: Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$8100(Lcom/android/hwcamera/Camera;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2252
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$3400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8200(Lcom/android/hwcamera/Camera;)I

    move-result v7

    if-lt v6, v7, :cond_13

    .line 2253
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->stopBurst()V
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8300(Lcom/android/hwcamera/Camera;)V

    .line 2254
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    .line 2261
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 2266
    const-string v6, "Camera"

    const-string v7, "start Rewind activity"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_a
    :goto_3
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_b

    .line 2288
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2291
    :cond_b
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 2292
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_14

    .line 2293
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/android/hwcamera/Camera;->hdrProcessing([BLandroid/location/Location;)V
    invoke-static {v6, p1, v7}, Lcom/android/hwcamera/Camera;->access$8500(Lcom/android/hwcamera/Camera;[BLandroid/location/Location;)V

    .line 2300
    :cond_c
    :goto_4
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 2301
    .local v5, s:Landroid/hardware/Camera$Size;
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 2306
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Flow] addImage() mPicNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$3400(Lcom/android/hwcamera/Camera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " jpegData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/android/hwcamera/Camera$ImageSaver;->addImage([BLandroid/location/Location;II)V

    .line 2309
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v6

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, p1, v7}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->addDecodeThumbnail([BI)V

    .line 2321
    .end local v5           #s:Landroid/hardware/Camera$Size;
    :cond_d
    :goto_5
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8000(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2323
    .local v2, now:J
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$7600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    sub-long v7, v2, v7

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mJpegCallbackFinishTime:J

    .line 2324
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegCallbackFinishTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v8, v8, Lcom/android/hwcamera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Camera;->access$7602(Lcom/android/hwcamera/Camera;J)J

    .line 2328
    .end local v2           #now:J
    :cond_e
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v7, Lcom/android/hwcamera/Camera$JpegPictureCallback$1;

    invoke-direct {v7, p0}, Lcom/android/hwcamera/Camera$JpegPictureCallback$1;-><init>(Lcom/android/hwcamera/Camera$JpegPictureCallback;)V

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2202
    :cond_f
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$7200(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mShutterToPictureDisplayedTime:J

    .line 2203
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$7600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v9}, Lcom/android/hwcamera/Camera;->access$7200(Lcom/android/hwcamera/Camera;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/hwcamera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 2247
    .restart local v0       #delay:J
    :cond_10
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8000(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2267
    .end local v0           #delay:J
    :cond_11
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_12

    .line 2268
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 2272
    const-string v6, "Camera"

    const-string v7, "start _ACTION activity"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2273
    :cond_12
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 2274
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v6}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    .line 2276
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v7, 0x1

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$5602(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_3

    .line 2281
    :cond_13
    const-string v6, "ro.camera.support.led"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2282
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$7500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;)V

    goto/16 :goto_3

    .line 2295
    :cond_14
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    if-nez v6, :cond_c

    .line 2296
    const-string v6, "Camera"

    const-string v7, "on PictureTaken, mParameters is null !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    #setter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$8602(Lcom/android/hwcamera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto/16 :goto_4

    .line 2312
    :cond_15
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mJpegImageData:[B
    invoke-static {v6, p1}, Lcom/android/hwcamera/Camera;->access$8802(Lcom/android/hwcamera/Camera;[B)[B

    .line 2313
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mQuickCapture:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$8900(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 2314
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 2316
    :cond_16
    iget-object v6, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->doAttach()V
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$9000(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_5
.end method
