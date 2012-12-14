.class final Lcom/android/hwcamera/VideoCamera$FrameCallback;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameCallback"
.end annotation


# instance fields
.field bFirstRun:Z

.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->bFirstRun:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2129
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$FrameCallback;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    const/16 v4, 0x63

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2138
    const-string v1, "videocamera"

    const-string v2, "onPreviewFrame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2141
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2142
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2143
    const-string v1, "videocamera"

    const-string v2, "SNAP_SHOT_ANIM_MESSAGE press HomeExit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z
    invoke-static {v1, v5}, Lcom/android/hwcamera/VideoCamera;->access$902(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 2145
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2153
    .end local v0           #mKeyguardManager:Landroid/app/KeyguardManager;
    :goto_0
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->bFirstRun:Z

    if-eqz v1, :cond_0

    .line 2154
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->bFirstRun:Z

    .line 2155
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$7900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/VolumePlusButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/hwcamera/VolumePlusButton;->enableVolumePlusButton(Z)V

    .line 2158
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 2160
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2165
    :cond_0
    return-void

    .line 2147
    .restart local v0       #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2150
    .end local v0           #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$FrameCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
