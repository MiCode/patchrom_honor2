.class Lcom/android/hwcamera/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;

.field tlatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5100(Lcom/android/hwcamera/VideoCamera;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera$1;->tlatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1145
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v5, 0x0

    #setter for: Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z
    invoke-static {v4, v5}, Lcom/android/hwcamera/VideoCamera;->access$5202(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 1146
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V
    invoke-static {v4}, Lcom/android/hwcamera/VideoCamera;->access$5300(Lcom/android/hwcamera/VideoCamera;)V

    .line 1148
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z
    invoke-static {v4}, Lcom/android/hwcamera/VideoCamera;->access$5400(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z
    invoke-static {v4}, Lcom/android/hwcamera/VideoCamera;->access$5500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5700(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    :goto_1
    #setter for: Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z
    invoke-static {v4, v2}, Lcom/android/hwcamera/VideoCamera;->access$5602(Lcom/android/hwcamera/VideoCamera;Z)Z
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$1;->tlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1162
    :goto_2
    :try_start_2
    const-string v2, "videocamera"

    const-string v4, "[Flow] onCreate start preview"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->startPreview()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$5800(Lcom/android/hwcamera/VideoCamera;)V
    :try_end_2
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1168
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :cond_2
    move v2, v3

    .line 1153
    goto :goto_1

    .line 1159
    :catch_1
    move-exception v1

    .line 1160
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v4}, Lcom/android/hwcamera/VideoCamera;->access$5202(Lcom/android/hwcamera/VideoCamera;Z)Z
    :try_end_3
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1170
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .restart local v0       #e:Lcom/android/hwcamera/CameraHardwareException;
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$5202(Lcom/android/hwcamera/VideoCamera;Z)Z

    goto :goto_0
.end method
