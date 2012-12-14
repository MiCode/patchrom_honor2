.class final Lcom/android/hwcamera/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2072
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2072
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$ShutterCallback;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Camera;->access$6702(Lcom/android/hwcamera/Camera;J)J

    .line 2076
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$6800(Lcom/android/hwcamera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/hwcamera/Camera;->mShutterLag:J

    .line 2077
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onShutter mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v2, v2, Lcom/android/hwcamera/Camera;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2080
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsMute:Z
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$7000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/SoundPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$7000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2087
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ShutterCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->showProgress()V

    .line 2090
    :cond_1
    return-void
.end method
